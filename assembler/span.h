#pragma once

#include <stddef.h>

typedef struct { const char* str; size_t length; } span_t;

char* as_string(const span_t *span);
span_t slice_by_start(const span_t *span, size_t start_inclusive);
span_t slice_by_length(const span_t *span, size_t start_inclusive, size_t new_length);
span_t slice_by_index(const span_t *span, size_t start_inclusive, size_t end_exclusive);
span_t shrink(const span_t *span, size_t new_length);

void split(const span_t *span, size_t s1_end_exclusive, span_t *s1, span_t *s2);

// technically, we shouldn't be reading or writing anything
// beyond `span.str[length-1]`, since it is theoretically
// possible to create a span_t over any arbitrary piece of
// memory, so we could be writing into memory concurrently
// used by another app, thus completely corrupting its state.
//
// however, in practice, `span_t`s are always created over
// NULL-terminated strings here, which means that they always
// have at least one character at `span.str[length]` that's
// controlled by us, which means if we corrupt anything it'll
// be ours; and since we don't do any threaded parsing, we don't
// have to worry about corrupting state outside, as long as we
// fix anything we break before the function returns (or we exit
// before any other function looks at the span.)
//
// anyway, we abuse that fact here to temporarily make this span
// into a c-string, by replacing `span.str[length]` with '\0'
// (and switching it back later obviously), so that we can call
// sscanf directly, which will take care of sign, base, etc

// NEVER use a return inside the block!!!
#define as_tmp_string(span, ...)\
    do {\
        char old_terminator = ((char*)((span).str))[(span).length];\
        ((char*)((span).str))[(span).length] = '\0';\
        __VA_ARGS__;\
        ((char*)((span).str))[(span).length] = old_terminator;\
    } while(0)
