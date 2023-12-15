#include "decoder.h"

#include <stdio.h>

#include "utils.h"
#include "../common/utils.h"

#define get_opcode(val) get_bits(val, 0, 6)
#define get_f3(val) get_bits(val, 12, 14)

#define get_f7(val) get_bits(val, 25, 31)
#define get_rd(val) ((regnum_t)get_bits(val, 7, 11))
#define get_rs1(val) ((regnum_t)get_bits(val, 15, 19))
#define get_rs2(val) ((regnum_t)get_bits(val, 20, 24))
#define get_imm_i(val) sign_extend(get_bits(val, 20, 31), 11)
#define get_imm_s(val) sign_extend((get_f7(val) << 5) | get_bits(val, 7, 11), 11)
#define get_imm_sb(val) sign_extend((get_bit(val, 31) << 12) | (get_bits(val, 25, 30) << 5) | (get_bits(val, 8, 11) << 1) | (get_bit(val, 7) << 11), 12)
#define get_imm_uj(val) sign_extend((get_bit(val, 31) << 20) | (get_bits(val, 21, 30) << 1) | (get_bit(val, 21) << 11) | (get_bits(val, 12, 20) << 12), 20)

opname_t decode_opname(uint32_t raw_instr) {
    unsigned opcode = get_opcode(raw_instr);

    // while `opcode` isn't *actually* the opname of the instr, we
    // know that opcodes are enough to determine the format of an
    // instruction AND that every (opcode, f3?, f7?) tuple has at
    // least one valid instr with f3=0 and f7=0 (iff the opcode is
    // valid obviously). Thus, we can pass that to `format_of` and
    // we know it'll at least be able to tell us the format of the
    // current instr

    unsigned f3 = 0, f7 = 0;
    switch (format_of(opcode)) {
        case REG:
            f7 = get_f7(raw_instr);
            // fall through
        case IMM:
        case LOAD:
        case STORE:
        case BRANCH:
            f3 = get_f3(raw_instr);
            break;
        case JUMP:
            break;
        default:
            return op_err;
    }

    printf("opcode = 0x%x, f3 = 0x%x, f7 = 0x%x\n", opcode, f3, f7);

    return opname_of(opcode, f3, f7);
}

instr_t decode(uint32_t raw_instr) {
    instr_t instr;
    instr.opname = decode_opname(raw_instr);

    if (instr.opname == op_err)
        return instr;

    switch (format_of(instr.opname)) {
        case REG:
            instr.as_reg.rd = get_rd(raw_instr);
            instr.as_reg.rs1 = get_rs1(raw_instr);
            instr.as_reg.rs2 = get_rs2(raw_instr);
            break;
        case IMM:
        case LOAD:
            // todo: when implementing slti & co, check imm value is valid
            instr.as_imm.rd = get_rd(raw_instr);
            instr.as_imm.rs = get_rs1(raw_instr);
            instr.as_imm.operand = get_imm_i(raw_instr);
            break;
        case STORE:
            instr.as_store.rbase = get_rs1(raw_instr);
            instr.as_store.rval = get_rs2(raw_instr);
            instr.as_store.offset = get_imm_s(raw_instr);
            break;
        case BRANCH:
            instr.as_branch.rs1 = get_rs1(raw_instr);
            instr.as_branch.rs2 = get_rs2(raw_instr);
            instr.as_branch.offset = get_imm_sb(raw_instr);
            break;
        case JUMP:
            instr.as_jump.rd = get_rd(raw_instr);
            instr.as_jump.offset = get_imm_uj(raw_instr);
            break;
        default:
            fprintf(stderr, "Unknown or invalid instruction: 0x%08x!\n", raw_instr);
            instr.opname = op_err;
            break;
    }

    return instr;
}