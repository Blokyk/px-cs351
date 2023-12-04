#include "span.h"

#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>

char* as_string(const span_t *span) {
    char* out_str = malloc(span->length + 1); // \0 terminator
    strncpy(out_str, span->str, span->length);
    out_str[span->length] = '\0';
    return out_str;
}

span_t slice_by_start(const span_t *span, size_t start_inclusive) {
    return slice_by_length(span, start_inclusive, span->length - start_inclusive);
}

span_t slice_by_length(const span_t *span, size_t start_inclusive, size_t new_length) {
    assert(start_inclusive + new_length <= span->length);

    return (span_t){
        .str = span->str + start_inclusive,
        .length = new_length
    };
}

span_t slice_by_index(const span_t *span, size_t start_inclusive, size_t end_exclusive) {
    assert(start_inclusive < end_exclusive);
    assert(end_exclusive <= span->length);

    return (span_t){
        .str = span->str + start_inclusive,
        .length = (end_exclusive - start_inclusive)
    };
}

span_t shrink(const span_t *span, size_t new_length) {
    assert(new_length <= span->length);

    return (span_t){
        .str = span->str,
        .length = new_length
    };
}

void split(const span_t *span, size_t s1_end_exclusive, span_t *s1, span_t *s2) {
    assert(s1_end_exclusive <= span->length);

    *s1 = shrink(span, s1_end_exclusive);
    *s2 = slice_by_start(span, s1_end_exclusive);
}
