#pragma once

#include <stddef.h>

typedef struct { const char* str; size_t length; } span_t;

char* as_string(const span_t *span);
span_t slice_by_start(const span_t *span, size_t start_inclusive);
span_t slice_by_length(const span_t *span, size_t start_inclusive, size_t new_length);
span_t slice_by_index(const span_t *span, size_t start_inclusive, size_t end_exclusive);
span_t shrink(const span_t *span, size_t new_length);

void split(const span_t *span, size_t s1_end_exclusive, span_t *s1, span_t *s2);