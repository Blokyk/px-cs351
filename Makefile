AUTEURS := CourvoisierZoe

DEFINES := _GNU_SOURCE

CC ?= gcc
CFLAGS := -O0 -Wall -Wextra -g -fsanitize=address -fsanitize=undefined -fsanitize=leak $(addprefix -D,$(DEFINES))

SRC_COMMON := $(wildcard common/*.c) $(wildcard common/*.h) common/instructions.x

EXE_ASM := riscv-assembler
SRC_ASM := $(SRC_COMMON) $(wildcard assembler/*.c) $(wildcard assembler/*.h)

EXE_EMU := riscv-emulator
SRC_EMU := $(SRC_COMMON) $(wildcard emulator/*.c) $(wildcard emulator/*.h)

ifeq (${PYTEST_CAPTURE},0)
	CAPTURE := no
else
	CAPTURE := fd
endif

TEST_DIR := tests

all: asm emu

h help:
	@echo "Targets: all, asm, emu test, tests/<test-name>, clean, cleanall, pack"

asm: $(EXE_ASM)
emu: $(EXE_EMU)

$(EXE_ASM): $(SRC_ASM)
	$(CC) $(filter %.c,$^) -o $@ $(CFLAGS)

$(EXE_EMU): $(SRC_EMU)
	$(CC) $(filter %.c,$^) -o $@ $(CFLAGS)

test: $(EXE_ASM) $(EXE_EMU) test.py
	@python3 test.py -v --tb=short --no-header --capture=$(CAPTURE)

.PHONY: all asm emu test clean cleanall tar pack help

$(TEST_DIR)/%: all
	@echo -e '---- \x1b[1mAssembling\x1b[2m [riscv-assembler $@.s $@.hex]\x1b[0m ----\n'
	@./riscv-assembler $@.s $@.hex
	@echo -e '\n---- \x1b[1mExecuting\x1b[2m [riscv-emulator $@.hex $@.state]\x1b[0m ----\n'
	@./riscv-emulator $@.hex $@.state
	@echo -e '\n---- \x1b[1mFinal state\x1b[2m [$@.state]\x1b[0m ----'
	@cat $@.state

cleanall: clean
	@ rm -rf __pycache__ .pytest_cache .hypothesis
	@ rm -f $(EXE_EMU) $(EXE_ASM)

clean:
	@ find tests \( -name '*.o' -o -name '*.s' -name '*.bin' -o -name '*.hex' -o -name '*.state' \) -delete

pack: tar
tar: all cleanall
	@ tar -cvzf ../$(AUTEURS).tgz *
	@ echo "==="; echo "Created: ../$(AUTEURS).tgz"
