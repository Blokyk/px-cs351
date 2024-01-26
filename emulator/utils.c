#include "utils.h"

#include "../common/utils.h"

int32_t sign_extend(uint32_t val, uint8_t sign_idx) {
    // if the bit at sign_idx was 0, then this is a positive
    // number and we don't need to do anything
    if (get_bit(val, sign_idx) == 0)
        return (int32_t)val;

    // fill bits above $sign_idx with 1's
    return (int32_t)(mask_bits(sign_idx, 31) | val);
}