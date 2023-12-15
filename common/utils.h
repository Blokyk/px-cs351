#pragma once

#define mask_bits(start, end) ((((uint32_t)~0 >> start) << (31-(end-start))) >> (31-end))
#define get_bits(val, start, end) ((((uint32_t)val) & mask_bits(start, end)) >> start)
#define get_bit(val, idx) get_bits(val, idx, idx)