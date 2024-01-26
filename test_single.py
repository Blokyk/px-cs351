#!/usr/bin/python3

import os
import sys
import tempfile
import test

"""
Script for testing a single file, either for the assembler (.s files)
or for the emulator (.hex file), by using `test.py` for the output diffing
"""

if not (len(sys.argv) == 2):
    print("Usage: test_single.py tests/<name.s | name.hex>")
    exit(1)

if not os.path.exists(sys.argv[1]):
    print("File " + sys.argv[1] + " doesn't exist.")
    exit(1)

tmp_dir = tempfile.TemporaryDirectory()

_, ext = os.path.splitext(sys.argv[1])
if ext == ".s":
    test.TestRISCVAssembler().test_assembler(sys.argv[1], tmp_dir.name)
elif ext == ".hex":
    test.TestRISCVEmulation().test_emulator(sys.argv[1], tmp_dir.name)
else:
    print(f"Couldn't determine test type for file {sys.argv[1]}")
    exit(1)
