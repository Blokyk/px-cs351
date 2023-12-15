#include "utils.h"

#include "../common/utils.h"

int32_t sign_extend(uint32_t val, uint8_t sign_idx) {
    if (get_bit(val, sign_idx) == 0)
        return (int32_t)val;

    // int(-1) = uint_max, so once shifted, upper will be full of 1's,
    // and lower will have the original value
    return (int32_t)(mask_bits(sign_idx, 31) | val);
}