#include "cpu.h"

#include <stdio.h>
#include <stdlib.h>

#include "decoder.h"

void step(cpu_t *cpu) {
    uint32_t raw_instr = *(uint32_t*)(cpu->mem_base + cpu->pc);
    instr_t curr_instr = decode(raw_instr);

    size_t old_pc = cpu->pc;

    if (curr_instr.opname == op_err) {
        // we use 0x0 as a "marker" instr, so we don't want an error in that case
        if (raw_instr != 0x0)
            fprintf(stderr, "\e[31mUnknown or invalid instruction: 0x%08x!\e[0m\n", raw_instr);

        cpu->pc = ERROR_PC;
        return;
    }

    char *instr_str = fmt_instr(curr_instr);
    printf("%s\n", instr_str);
    free(instr_str);

    regnum_t rd_num, rs1_num, rs2_num;
    int32_t imm;
    switch (format_of(curr_instr.opname)) {
        case REG:
            rd_num = curr_instr.as_reg.rd;
            rs1_num = curr_instr.as_reg.rs1;
            rs2_num = curr_instr.as_reg.rs2;
            break;
        case IMM:
        case LOAD:
            rd_num = curr_instr.as_imm.rd;
            rs1_num = curr_instr.as_imm.rs;
            imm = curr_instr.as_imm.operand;
            break;
        case STORE:
            rs1_num = curr_instr.as_store.rbase;
            rs2_num = curr_instr.as_store.rval;
            imm = curr_instr.as_store.offset;
            break;
        case BRANCH:
            rs1_num = curr_instr.as_branch.rs1;
            rs2_num = curr_instr.as_branch.rs2;
            imm = curr_instr.as_branch.offset;
            break;
        case JUMP:
            rd_num = curr_instr.as_jump.rd;
            imm = curr_instr.as_jump.offset;
            break;
        default:
            fprintf(stderr, "\e[1;31mwtfffff\e[0m\n");
            exit(1);
    }

    // used in the "pseudo-code" in instr def
    #define pc cpu->pc
    #define regs(num) cpu->regs[num]
    #define mem(offset) (cpu->mem_base + (offset))
    #define branch(condition) pc += (condition) ? (offset) : 0

    #define rd regs(rd_num)
    #define rs1 regs(rs1_num)
    #define rs2 regs(rs2_num)
    #define rs rs1
    #define rbase rs1
    #define rval rs2
    #define offset imm

    switch (curr_instr.opname) {
    #define INSTR(_0, name, _1, _2, _3, operation) \
        case _opname_of(name):\
            operation;\
            break;

        X_REAL_INSTRS
    #undef INSTR

        default:
            fprintf(stderr, "\e[1;31mwtfffff\e[0m\n");
            exit(1);
    }

    #undef pc
    #undef regs
    #undef mem
    #undef branch

    #undef rd
    #undef rs1
    #undef rs2
    #undef rs
    #undef rbase
    #undef rval
    #undef offset

    cpu->regs[0] = 0;

    // we only want to advance $pc if we didn't branch or jump
    if (cpu->pc == old_pc)
        cpu->pc += 4;
}