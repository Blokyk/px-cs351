#pragma once

#include <stdint.h>

// #define sign_extend(val, signIdx) ((uint32_t)((((int32_t)val) << (31-signIdx)) >> signIdx))

int32_t sign_extend(uint32_t val, uint8_t sign_idx);