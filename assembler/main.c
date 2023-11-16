#include <stdio.h>

int main(int argc, char **argv)
{
    /* ./riscv-assembler <ASSEMBLER INPUT> <HEX OUTPUT> */
    if(argc != 3) {
        printf("usage: ./riscv-assembler <ASSEMBLER INPUT> <HEX OUTPUT>\n");
        return 1;
    }

    char *asm_input_path = argv[1];
    FILE *asm_input_file = fopen(asm_input_path, "r");

    char *hex_output_path = argv[2];
    FILE *hex_output_file = fopen(hex_output_path, "w");

    fclose(asm_input_file);
    fclose(hex_output_file);

    return 0;
}
