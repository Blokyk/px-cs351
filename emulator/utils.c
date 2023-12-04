#include "utils.h"

int32_t sign_extend(int32_t val, uint8_t sign_idx) {
    if (((val & ((uint32_t)0b1 << sign_idx)) >> sign_idx) == 0)
        return (int32_t)val;

    // int(-1) = uint(32'b1), so once shifted, upper will be full of 1's,
    // and lower will have the original value
    return (int32_t)(((uint32_t)~0 << sign_idx) | val);
}