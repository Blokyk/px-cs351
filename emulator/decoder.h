#pragma once

#include <stdint.h>

#include "utils.h"
#include "../common/instructions.h"

#define get_opcode(raw_instr) ((raw_instr) & OPCODE_MASK)
#define get_f3(raw_instr) (((raw_instr) & FUNCT3_MASK) >> 12)
#define get_f7(raw_instr) (((raw_instr) & FUNCT7_MASK) >> 25)

#define get_rd(raw_instr) ((regnum_t)(((raw_instr) & RD_MASK) >> 7))
#define get_rs1(raw_instr) ((regnum_t)(((raw_instr) & RS1_MASK) >> 15))
#define get_rs2(raw_instr) ((regnum_t)(((raw_instr) & RS2_MASK) >> 20))
#define get_imm_i(raw_instr) sign_extend((((raw_instr) & IMM_I_MASK) >> 20), 11)
#define get_imm_s(raw_instr) sign_extend((get_f7(raw_instr) >> (25-5)) | get_rd(raw_instr), 11)
#define get_imm_sb(raw_instr) sign_extend(\
          (((raw_instr & ((uint32_t)0b1 << 31)) >> 31) << 12)\
        | (((raw_instr & ((uint32_t)0b1 << 7)) >> 7) << 11)\
        | (((raw_instr & ((uint32_t)0b111111 << 25)) >> 25) << 5)\
        | (((raw_instr & ((uint32_t)0b1111 << 8)) >> 8) << 1)\
    , 12);
#define get_imm_u(raw_instr) ((raw_instr) & IMM_U_MASK /* no shift or sign extension because it's the upper bits */)
#define get_imm_uj(raw_instr) \
    sign_extend(\
          ((((raw_instr) & ((uint32_t)0b1 << 31)) >> 31) << 20) \
        | ((((raw_instr) & ((uint32_t)0b1111111111 << 21)) >> 21) << 1) \
        | ((((raw_instr) & ((uint32_t)0b1 << 20)) >> 20) << 11) \
        | ((((raw_instr) & ((uint32_t)0b11111111 << 12)) >> 12) << 12) \
    , 20)

instr_t decode(uint32_t raw_instr);