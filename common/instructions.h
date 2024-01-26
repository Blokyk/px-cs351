#pragma once

#include <stdbool.h>
#include <stdint.h>

// INSTR(format, name, opcode, f3, f7, operation)
#include "instructions.x"

typedef enum {
    ERROR_FMT, REG, IMM, LOAD, STORE, BRANCH, UPPER, JUMP, PSEUDO
} instr_format_t;

#define opname_of(opcode, f3, f7) opcode | (f3 << 7) | (f7 << 10)
#define _opname_of(name) op_ ## name
typedef enum {
#define INSTR(_0, name, opcode, f3, f7, _1) _opname_of(name) = opname_of(opcode, f3, f7),
    X_REAL_INSTRS
#undef INSTR

    // because they don't have any unique identifier derivable from
    // we need to change the new starting_point for the pseudo-instr
    // x-macro, so they might accidentally overlap with existing opnames
    op_err = 0b1 << 31,

#define P_INSTR(name, _0, _1, _2) _opname_of(name),
    X_PSEUDO_INSTRS
#undef P_INSTR
} opname_t;

typedef uint8_t regnum_t;

typedef struct {
    opname_t opname;
    union {
        struct { regnum_t rd; regnum_t rs1; regnum_t rs2; } as_reg;
        struct { regnum_t rd; regnum_t rs; int32_t operand; } as_imm;
        struct { regnum_t rbase; regnum_t rval; int32_t offset; } as_store;
        struct { regnum_t rs1; regnum_t rs2; int32_t offset; } as_branch;
        struct { regnum_t rd; int32_t operand; } as_upper;
        struct { regnum_t rd; int32_t offset; } as_jump;
        struct { uint32_t raw_instr; int32_t err_code; } as_error;
    };
} instr_t;

#define opcode_of(opname) (unsigned)((opname) & 0b1111111)
#define f3_of(opname)     ((unsigned)((opname) &  0b1110000000) >> 7)
#define f7_of(opname)     ((unsigned)((opname) & ~0b1111111111) >> 10)

instr_format_t format_of(opname_t op);
const char* fmt_opcode(opname_t op);
char* fmt_instr(instr_t instr);