#include "instructions.h"

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

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

char* fmt_instr(instr_t instr) {
    #define as_signed_bits(n, val) ((int32_t)((uint32_t)val << (32-n)) >> (32-n))

    const char * const opcode_str = fmt_opcode(instr.opname);

    char *out;

    switch(format_of(instr.opname)) {
        case REG:
            asprintf(&out, "%-5s    x%d, x%d, x%d", opcode_str, instr.as_reg.rd, instr.as_reg.rs1, instr.as_reg.rs2);
            break;
        case IMM:
            asprintf(&out, "%-5s    x%d, x%d, %d", opcode_str, instr.as_imm.rd, instr.as_imm.rs, as_signed_bits(12, instr.as_imm.operand));
            break;
        case LOAD:
            asprintf(&out, "%-5s    x%d, %d(x%d)", opcode_str, instr.as_imm.rd, instr.as_imm.operand, instr.as_imm.rs);
            break;
        case STORE:
            asprintf(&out, "%-5s    x%d, %d(x%d)", opcode_str, instr.as_store.rval, instr.as_store.offset, as_signed_bits(12, instr.as_store.rbase));
            break;
        case BRANCH:
            asprintf(&out, "%-5s    x%d, x%d, %d", opcode_str, instr.as_branch.rs1, instr.as_branch.rs2, as_signed_bits(13, instr.as_branch.offset));
            break;
        case JUMP:
            asprintf(&out, "%-5s    x%d, %d", opcode_str, instr.as_jump.rd, as_signed_bits(21, instr.as_jump.offset));
            break;
        case PSEUDO:
            fprintf(stderr, "WARN: Printing of pseudo-instructions isn't supported.\n");
            asprintf(&out, "<pseudo:%s>", opcode_str);
            break;
        default:
            asprintf(&out, "<0x%x>", instr.opname);
            break;
    }

    return out;
    #undef as_signed_bits
}