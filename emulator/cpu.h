#pragma once

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

#include "../common/instructions.h"

typedef struct {
    uint64_t pc;
    int64_t regs[32];
    uint8_t *mem_base;
    size_t mem_size;
} cpu_t;

cpu_t init_cpu(uint8_t *memory, size_t mem_size);
bool step(cpu_t *cpu);
void dump_regs(cpu_t *cpu);