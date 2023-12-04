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

    uint32_t *memory = malloc(0x4000);
    bzero(memory, 0x4000);

    int i = 0;
    while (fscanf(hex_input_file, " %x \n", (uint32_t*)(memory + i)) != EOF)
        i++;

    cpu_t cpu = init_cpu((uint8_t*)memory, 0x4000);

    while (cpu.pc != ERROR_PC) {
        step(&cpu);

        // for (int i = 0; i < 31; i++) {
        //     char* fmt = i < 10 ? " x%d: %c\e[2m0x\e[0m%lx\n" : "x%d: %c\e[2m0x\e[0m%lx\n";
        //     fprintf(stdout, fmt, i, cpu.regs[i] < 0 ? '-' : ' ', cpu.regs[i]);
        // }
    }

    for (int i = 0; i < 31; i++) {
        char* fmt = i < 10 ? " x%d: %c\e[2m0x\e[0m%lx\n" : "x%d: %c\e[2m0x\e[0m%lx\n";
        fprintf(stdout, fmt, i, cpu.regs[i] < 0 ? '-' : ' ', cpu.regs[i]);
        fprintf(emu_output_file, "x%d: %ld\n", i, cpu.regs[i]);
    }

    free(memory);
    fclose(hex_input_file);
    fclose(emu_output_file);

    return 0;
}
