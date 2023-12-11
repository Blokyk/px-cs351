#include "encoder.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

uint32_t encode(instr_t instr) {
    opname_t opname = instr.opname;

    unsigned f3 = f3_of(opname);
    unsigned f7 = f7_of(opname);
    unsigned opcode = opcode_of(opname);

    switch (format_of(opname)) {
        case REG: {
            regnum_t rd = instr.as_reg.rd;
            regnum_t rs1 = instr.as_reg.rs1;
            regnum_t rs2 = instr.as_reg.rs2;

            return (uint32_t)(opcode
                | (rd << 7)
                | (f3 << 12)
                | (rs1 << 15)
                | (rs2 << 20)
                | (f7 << 25)
            );
        }
        case IMM:
        case LOAD: {
            regnum_t rd = instr.as_imm.rd;
            regnum_t rs = instr.as_imm.rs;
            uint32_t operand = instr.as_imm.operand;

            return (uint32_t)(opcode
                | (rd << 7)
                | (f3 << 12)
                | (rs << 15)
                | (operand << 20)
            );
        }
        case STORE: {
            unsigned IMM_MASK = 0b11111;
            regnum_t rval = instr.as_store.rval;
            regnum_t rbase = instr.as_store.rbase;

            uint32_t offset = instr.as_store.offset;
            uint32_t lo = offset & IMM_MASK;
            uint32_t hi = (offset & ~IMM_MASK) >> 5;

            return (uint32_t)(opcode
                | (lo << 7)
                | (f3 << 12)
                | (rbase << 15)
                | (rval << 20)
                | (hi << 25)
            );
        }
        case BRANCH: {
            regnum_t rs1 = instr.as_branch.rs1;
            regnum_t rs2 = instr.as_branch.rs2;

            uint32_t offset = instr.as_branch.offset;
            uint32_t b11 = (offset   & 0b0100000000000) >> 11;
            uint32_t b4_1 = (offset  & 0b0000000011110) >> 1;
            uint32_t b10_5 = (offset & 0b0011111100000) >> 5;
            uint32_t b12 = (offset   & 0b1000000000000) >> 12;

            return (uint32_t)(opcode
                | (b11 << 7)
                | (b4_1 << 8)
                | (f3 << 12)
                | (rs1 << 15)
                | (rs2 << 20)
                | (b10_5 << 25)
                | (b12 << 31)
            );
        }
        case JUMP: {
            regnum_t rd = instr.as_jump.rd;

            uint32_t offset = instr.as_jump.offset;
            assert(offset % 2 == 0);

            //                            1   1
            //                            4   0   C   8   4   0
            uint32_t b19_12 = (offset & 0b011111111000000000000) >> 12;
            uint32_t b11 = (offset    & 0b000000000100000000000) >> 11;
            uint32_t b10_1 = (offset  & 0b000000000011111111110) >> 1;
            uint32_t b20 = (offset    & 0b100000000000000000000) >> 20;

            return (uint32_t)(opcode
                | (rd << 7)
                | (b19_12 << 12)
                | (b11 << 20)
                | (b10_1 << 21)
                | (b20 << 31)
            );
        }
        default:
            char *instr_str = fmt_instr(instr);
            fprintf(stderr, "\x1b[31mFATAL: Tried to encode unknown instruction: %s\x1b[0m\n", instr_str);
            free(instr_str);
            exit(1);
    }
}