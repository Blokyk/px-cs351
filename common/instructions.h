#pragma once

#include <stdbool.h>
#include <stdint.h>

// INSTR(format, name, opcode, f3, f7, operation)
#include "instructions.x"

typedef enum {
    ERROR_FMT, REG, IMM, LOAD, STORE, BRANCH, JUMP
} instr_format_t;

#define opname_of(opcode, f3, f7) opcode | (f3 << 7) | (f7 << 10)
#define _opname_of(name) op_ ## name
typedef enum {
    op_err,
#define INSTR(_0, name, opcode, f3, f7, _1) _opname_of(name) = opname_of(opcode, f3, f7),
    X_INSTRS
#undef INSTR
} opname_t;

typedef uint8_t regnum_t;

typedef struct {
    opname_t opname;
    union {
        struct { regnum_t rd; regnum_t rs1; regnum_t rs2; } as_reg;
        struct { regnum_t rd; regnum_t rs; int32_t operand; } as_imm;
        struct { regnum_t rbase; regnum_t rval; int32_t offset; } as_store;
        struct { regnum_t rs1; regnum_t rs2; int32_t offset; } as_branch;
        struct { regnum_t rd; int32_t operand; } as_upper_imm;
        struct { regnum_t rd; int32_t offset; } as_jump;
        int32_t err_code;
    };
} instr_t;

#define opcode_of(opname) ((opname) & 0b1111111)
#define f3_of(opname) ((unsigned)(opname & 0b1110000000) >> 7)
#define f7_of(opname) ((unsigned)(opname & 0b11111110000000000) >> 10)

instr_format_t format_of(opname_t op);
const char* fmt_opcode(opname_t op);
char* fmt_instr(instr_t instr);