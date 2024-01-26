#include "instructions.h"

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

#include "utils.h"

const char* fmt_opcode(opname_t op) {
    switch (op) {
        #define INSTR(_0, name, _1, _2, _3, _4) case _opname_of(name): return #name;
        #define P_INSTR(name, _0, _1, _2) case _opname_of(name): return #name;
            X_ALL_INSTRS
        #undef P_INSTR
        #undef INSTR
        default:
            return "<?instr?>";
    }
}

instr_format_t format_of(opname_t op) {
    switch (op) {
        #define P_INSTR(name, _0, _1, _2) INSTR(PSEUDO, name,,,,)
        #define INSTR(format, name, _0, _1, _2, _3) case _opname_of(name): return format;
            X_ALL_INSTRS
        #undef P_INSTR
        #undef INSTR
        default:
            return ERROR_FMT;
    }
}

bool has_unsigned_operand(opname_t opname) {
    // if the instruction name ends with a 'u', then it definitely has an unsigned operand
    switch (opname) {
        #define INSTR(type, name, _0, _1, _2, _3) case _opname_of(name): return type == IMM && #name[sizeof(#name)-2] == 'u';
            X_REAL_INSTRS
        #undef INSTR
        default:
            return false;
    }
}

char* fmt_instr(instr_t instr) {
    #define as_signed_bits(n, val) ((int32_t)((uint32_t)val << (32-n)) >> (32-n))
    #define as_unsigned_bits(n, val) (((uint32_t)val << (32-n)) >> (32-n))

    const char * const opcode_str = fmt_opcode(instr.opname);

    char *out;

    int ret_code = 0;

    switch(format_of(instr.opname)) {
        case REG:
            ret_code = asprintf(&out, "%-5s    x%d, x%d, x%d", opcode_str, instr.as_reg.rd, instr.as_reg.rs1, instr.as_reg.rs2);
            break;
        case IMM:
            if (has_unsigned_operand(instr.opname))
                ret_code = asprintf(&out, "%-5s    x%d, x%d, %u", opcode_str, instr.as_imm.rd, instr.as_imm.rs, as_unsigned_bits(12, instr.as_imm.operand));
            else
                ret_code = asprintf(&out, "%-5s    x%d, x%d, %d", opcode_str, instr.as_imm.rd, instr.as_imm.rs, as_signed_bits(12, instr.as_imm.operand));
            break;
        case LOAD:
            ret_code = asprintf(&out, "%-5s    x%d, %d(x%d)", opcode_str, instr.as_imm.rd, as_signed_bits(12, instr.as_imm.operand), instr.as_imm.rs);
            break;
        case STORE:
            ret_code = asprintf(&out, "%-5s    x%d, %d(x%d)", opcode_str, instr.as_store.rval, as_signed_bits(12, instr.as_store.offset), instr.as_store.rbase);
            break;
        case BRANCH:
            ret_code = asprintf(&out, "%-5s    x%d, x%d, %d", opcode_str, instr.as_branch.rs1, instr.as_branch.rs2, as_signed_bits(13, instr.as_branch.offset));
            break;
        case UPPER:
            ret_code = asprintf(&out, "%-5s    x%d, %d", opcode_str, instr.as_upper.rd, instr.as_upper.operand);
            break;
        case JUMP:
            ret_code = asprintf(&out, "%-5s    x%d, %d", opcode_str, instr.as_jump.rd, as_signed_bits(21, instr.as_jump.offset));
            break;
        case PSEUDO:
            fprintf(stderr, "WARN: Printing of pseudo-instructions isn't supported.\n");
            ret_code = asprintf(&out, "<pseudo:%s>", opcode_str);
            break;
        case ERROR_FMT:
            if (instr.as_error.err_code != 0) {
                ret_code = asprintf(&out, "<error:%d>", instr.as_error.err_code);
            } else if (instr.as_error.raw_instr != 0) {
                uint32_t raw_instr = instr.as_error.raw_instr;
                ret_code = asprintf(
                    &out,
                    "<0x%02x 0x%02x 0x%02x 0x%02x>",
                    get_bits(raw_instr, 0, 7),
                    get_bits(raw_instr, 8, 15),
                    get_bits(raw_instr, 16, 23),
                    get_bits(raw_instr, 24, 31)
                );
            } else {
                ret_code = asprintf(&out, "<null instr>");
            }
            break;
        default:
            fprintf(
                stderr,
                "Unknown instruction format (%d) for opname %s\n",
                format_of(instr.opname),
                opcode_str
            );
            abort();
            break;
    }

    if (ret_code == -1) {
        fprintf(stderr, "FATAL: error occurred while printing instruction (asprintf returned -1)\n");
        abort();
    }

    return out;
    #undef as_signed_bits
}