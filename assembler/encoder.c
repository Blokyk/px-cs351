#include "encoder.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#include "../common/utils.h"

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

            // some I instructions need a certain value in
            // the IMM field (or parts of it), so we use the
            // f7 field to encode that, since the other I
            // instructions don't use it
            if (f7 != 0x0)
                operand |= f7;

            return (uint32_t)(opcode
                | (rd << 7)
                | (f3 << 12)
                | (rs << 15)
                | (operand << 20)
            );
        }
        case STORE: {
            regnum_t rval = instr.as_store.rval;
            regnum_t rbase = instr.as_store.rbase;

            uint32_t offset = instr.as_store.offset;
            uint32_t lo = get_bits(offset, 0, 4);
            uint32_t hi = get_bits(offset, 5, 11);

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
            assert(offset % 2 == 0);

            uint32_t b11 = get_bit(offset, 11);
            uint32_t b4_1 = get_bits(offset, 1, 4);
            uint32_t b10_5 = get_bits(offset, 5, 10);
            uint32_t b12 = get_bit(offset, 12);

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
        case UPPER: {
            regnum_t rd = instr.as_upper.rd;
            uint32_t operand = instr.as_upper.operand;

            return (uint32_t)(opcode
                | (rd << 7)
                | (operand << 12)
            );
        }
        case JUMP: {
            regnum_t rd = instr.as_jump.rd;

            uint32_t offset = instr.as_jump.offset;
            assert(offset % 2 == 0);

            uint32_t b19_12 = get_bits(offset, 12, 19);
            uint32_t b11 = get_bit(offset, 11);
            uint32_t b10_1 = get_bits(offset, 1, 10);
            uint32_t b20 = get_bit(offset, 20);

            return (uint32_t)(opcode
                | (rd << 7)
                | (b19_12 << 12)
                | (b11 << 20)
                | (b10_1 << 21)
                | (b20 << 31)
            );
        }
        default: {
            char *instr_str = fmt_instr(instr);
            fprintf(stderr, "\e[31mFATAL: Tried to encode unknown instruction: %s\e[0m\n", instr_str);
            free(instr_str);
            exit(1);
        }
    }
}