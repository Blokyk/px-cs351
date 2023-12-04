#pragma once

#include <stddef.h>
#include <stdint.h>

#include "../common/instructions.h"

#define ERROR_PC UINT64_MAX

typedef struct {
    size_t pc;
    int64_t regs[32];
    uint8_t *mem_base;
} cpu_t;

// #define init_cpu(memory, mem_size) (cpu_t){ .pc = (size_t)memory, .regs = { [2] = (int64_t)(memory) + mem_size }, .mem_base = NULL }
#define init_cpu(memory, mem_size) ((cpu_t){ .pc = 0, .regs = { [2] = mem_size }, .mem_base = memory })

void step(cpu_t *cpu);