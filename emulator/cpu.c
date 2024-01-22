#include "cpu.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "decoder.h"

uint8_t* try_access_mem(cpu_t *cpu, size_t address) {
    if (address < cpu->mem_size)
        return cpu->mem_base + address;

    fprintf(stderr,
        "\e[31mOut-of-bounds access @ \e[1m0x%lx\e[22m (max address is \e[1m0x%lx\e[22m)\e[0m\n",
        address, cpu->mem_size
    );

    cpu->pc = ERROR_PC;
    return NULL;
}

void env_call(cpu_t *cpu) {
    fprintf(stderr, "ecall triggered! (pc=0x%16lx, sp=0x%16lx)\n", cpu->pc, cpu->regs[2]);
    dump_regs(cpu);
}

void env_break(cpu_t *cpu) {
    fprintf(stderr, "ebreak triggered! (pc=0x%16lx, sp=0x%16lx)\n", cpu->pc, cpu->regs[2]);
    __asm__ volatile("int $0x03");
}

void step(cpu_t *cpu) {
    uint32_t *raw_instr_ptr = (uint32_t*)try_access_mem(cpu, cpu->pc);

    if (raw_instr_ptr == NULL)
        return;

    uint32_t raw_instr = *raw_instr_ptr;

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
    int64_t imm;
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
    #define mem(offset) ({ uint8_t *addr = try_access_mem(cpu, offset); if (addr == NULL) return; addr; })
    #define branch(condition) pc += (condition) ? (offset) : 0
    #define ecall() env_call(cpu)
    #define ebreak() env_break(cpu)

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
            abort();
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

    if (cpu->pc != old_pc) {
        // check PC is still 4-byte aligned
        if ((cpu->pc & 0b11) != 0) {
            char *instr_str = fmt_instr(curr_instr);
            fprintf(
                stderr,
                "\e[31mMisaligned PC after executing '%s'. Target addresses for jumps and branches must be aligned to 4 bytes.\n",
                instr_str
            );
            free(instr_str);
            return;
        }
    } else {
        // we only want to advance $pc if we didn't branch or jump
        cpu->pc += 4;
    }
}

void dump_regs(cpu_t *cpu) {
    char fmt[] = " x%d: %c\e[2m0x\e[0m%16lx\n";

    for (int i = 0; i < 32; i++) {
        if (cpu->regs[i] == 0)
            continue;

        // ignore leading space if reg name will have more than 2 digits
        char *i_fmt = i < 10 ? fmt : fmt+1;

        printf(i_fmt, i, cpu->regs[i] < 0 ? '-' : ' ', cpu->regs[i] < 0 ? -cpu->regs[i] : cpu->regs[i]);
    }
}