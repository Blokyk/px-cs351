#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

#include "encoder.h"
#include "parser.h"
#include "../common/instructions.h"

int main(int argc, char **argv) {
    if(argc != 3) {
        printf("usage: ./riscv-assembler <ASSEMBLER INPUT> <HEX OUTPUT>\n");
        return 1;
    }

    char *asm_input_path = argv[1];
    FILE *asm_input_file = fopen(asm_input_path, "r");

    if (asm_input_file == NULL) {
        perror(asm_input_path);
        return 1;
    }

    char *hex_output_path = argv[2];
    FILE *hex_output_file = fopen(hex_output_path, "w");

    if (hex_output_file == NULL) {
        perror(hex_output_path);
        return 1;
    }

    char *line = NULL;
    size_t _;
    ssize_t n;
    while ((n = getline(&line, &_, asm_input_file)) != -1) {
        if (!feof(asm_input_file)) {
            // remove ending '\n'
            n--;
            if (n == 0) continue;
        }

        instr_t instr = parse_line(line, n);

        if (instr.opname != op_ERROR) {
            char *instr_str = fmt_instr(instr);
            printf("%-35s    -> %08x\n", instr_str, encode(instr));
            fprintf(hex_output_file, "%08x\n", encode(instr));
            free(instr_str);
        } else {
            printf("\e[2mLine was not an instruction: %.*s\e[0m\n", (int)n, line);
        }

    }
    free(line);

    // free(asm_str);
    fclose(asm_input_file);
    fclose(hex_output_file);

    return 0;
}
