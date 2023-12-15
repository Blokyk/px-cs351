#pragma once

#include <stdint.h>

#include "utils.h"
#include "../common/instructions.h"

instr_t decode(uint32_t raw_instr);