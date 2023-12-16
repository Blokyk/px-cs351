#pragma once

#include <stdbool.h>
#include <stddef.h>

#include "../common/instructions.h"

instr_t parse_line(const char* src_line, size_t length, int line_number);
