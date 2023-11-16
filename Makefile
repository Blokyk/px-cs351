AUTEURS := BoulartEmilie_CourvoisierZoe

EXE_ASM := riscv-assembler
SRC_ASM := $(wildcard assembler/*.c)

EXE_EMU := riscv-emulator
SRC_EMU := $(wildcard emulator/*.c)

TEST_DIR := tests/

help:
	@echo "Targets: all, test, clean, cleanall, pack"

all: $(EXE_ASM) $(EXE_EMU)

$(EXE_ASM): $(SRC_ASM)
	gcc $^ -o $@ -Wall -Wextra -O0 -g

$(EXE_EMU): $(SRC_EMU)
	gcc $^ -o $@ -Wall -Wextra -O0 -g

test:  $(EXE_ASM) $(EXE_EMU) test.py
	@python3 test.py -v --tb=short --no-header

.PHONY: all test clean cleanall pack help

cleanall: clean
	@ rm -rf __pycache__ .pytest_cache .hypothesis
	@ rm -f $(EXE_EMU) $(EXE_ASM)

clean:
	@ find tests \( -name '*.o' -o -name '*.s' -name '*.bin' -o -name '*.hex' -o -name '*.state' \) -delete

pack: all cleanall
	@ tar -cvzf ../$(AUTEURS).tgz *
	@ echo "==="; echo "Created: ../$(AUTEURS).tgz"
