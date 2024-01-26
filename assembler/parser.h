#pragma once

#include <stdbool.h>
#include <stddef.h>

#include "../common/instructions.h"

typedef enum { EMPTY_PARSE, ERROR_PARSE } parse_error_code_t;

instr_t parse_line(const char* src_line, size_t length, int line_number);
