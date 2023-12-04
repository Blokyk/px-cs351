#include "decoder.h"

#include <stdio.h>

#include "utils.h"

const uint32_t OPCODE_MASK = (uint32_t)0b1111111;
const uint32_t FUNCT3_MASK = (uint32_t)0b111 << 12;
const uint32_t FUNCT7_MASK = (uint32_t)0b1111111 << 25;

const uint32_t RD_MASK  = (uint32_t)0b11111 << 7;
const uint32_t RS1_MASK = (uint32_t)0b11111 << 15;
const uint32_t RS2_MASK = (uint32_t)0b11111 << 20;

const uint32_t IMM_I_MASK  = FUNCT7_MASK + RS2_MASK;
const uint32_t IMM_U_MASK = ~(RD_MASK + OPCODE_MASK);

opname_t decode_opname(uint32_t raw_instr) {
    unsigned opcode = opcode_of(raw_instr);

    // while `opcode` isn't *actually* the opname of the instr,
    // we know that opcodes are enough to determine the format
    // an instruction AND that every (opcode, f3?, f7?) tuple
    // has at least one valid instr with f3=0 and f7=0 (iff
    // the opcode is valid obviously). Thus, we can pass that
    // to `format_of` and we know it'll at least be able to
    // tell us the format of the current instr

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
            return op_ERROR;
    }

    return opname_of(opcode, f3, f7);
}

instr_t decode(uint32_t raw_instr) {
    instr_t instr;
    instr.opname = decode_opname(raw_instr);

    if (instr.opname == op_ERROR)
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
            instr.opname = op_ERROR;
            break;
    }

    return instr;
}