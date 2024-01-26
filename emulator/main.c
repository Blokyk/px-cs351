#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

#include <sys/types.h>

#include "cpu.h"

int main(int argc, char **argv) {
    /* ./riscv-emulator <HEX INPUT> <EMULATION OUTPUT> */
    if(argc != 3) {
        printf("Usage: ./riscv-emulator <HEX INPUT> <EMULATION OUTPUT>\n");
        printf("error: invalid command\n");
        return 1;
    }

    char *hex_input_path = argv[1];
    FILE *hex_input_file = fopen(hex_input_path, "r");

    if (hex_input_file == NULL) {
        perror(hex_input_path);
        return 1;
    }

    char *emu_output_path = argv[2];
    FILE *emu_output_file = fopen(emu_output_path, "w");

    if (hex_input_file == NULL) {
        perror(emu_output_path);
        return 1;
    }

    // by default, memory size is 16KiB, i.e. 0x4000 bytes in hex
    size_t mem_size = 0x4000;
    uint32_t *memory = malloc(mem_size);
    bzero(memory, mem_size);

    size_t i = 0;
    // read a line containing containing just a hex number
    // from the .hex file until there's nothing left
    while (fscanf(hex_input_file, " %x \n", (uint32_t*)(memory + i)) == 1) {
        i++;

        // if there's too many instructions for the current memory size, double it
        //
        // we check after incrementing since at that point, `i` will
        // be 1+idx_of_last_parsed_instr, i.e. the number of valid
        // instructions that were parsed
        if (i*4 == mem_size) {
            mem_size *= 2;
            memory = realloc(memory, mem_size);
            bzero(memory + mem_size/2, mem_size/2);
        }
    }

    cpu_t cpu = init_cpu((uint8_t*)memory, mem_size);

    while (step(&cpu)) {
        dump_regs(&cpu);

        #if DEBUG
            // in debug, wait for a keypress on each step
            getchar();
        #endif
    }

    // dump regs in the `.state` format
    for (int i = 0; i < 32; i++)
        fprintf(emu_output_file, "x%d: %ld\n", i, cpu.regs[i]);

    free(memory);
    fclose(hex_input_file);
    fclose(emu_output_file);

    return 0;
}
