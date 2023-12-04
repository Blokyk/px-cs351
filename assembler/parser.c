#include "parser.h"

#include <assert.h>
#include <ctype.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <stdbool.h>

#include "span.h"

#define fits_in_n_bits(l, n) (l < (1 << n) && l > -((1 << (n-1)) + 1))
#define trim_comma_and_space() do { trim_left(&src_code, ' '); trim_left(&src_code, ','); trim_left(&src_code, ' '); } while(0)

void trim_left(span_t *span, char ignored_char) {
    const char *str = span->str;
    size_t length = span->length;

    if (length == 0)
        return;

    if (length >= 1 && str[0] != ignored_char)
        return;

    size_t i = 1;

    while (i < length && str[i] == ignored_char) i++;

    span->str = str + i;
    span->length = length - i;
}

// @return The length of the line once left-trimmed
int cleanup_line_start(span_t *span) {
    while (span->length != 0 && isspace(span->str[0])) {
        span->str++; span->length--;
    }

    if (span->length == 0 || span->str[0] == '#')
        return 0;

    return span->length;
}

bool check_line_ending(span_t *span) {
    // check that the rest of the line is either empty or whitespace
    trim_left(span, ' ');
    if (span->length != 0) {
        if (span->str[0] == '#')
            return true;

        char* line_str = as_string(span);
        fprintf(stderr, "\x1b[31mExpected a newline or end-of-file, but got '%s' instead!\x1b[0m\n", line_str);
        free(line_str);
        return false;
    }
    return true;
}

// ! mutates span directly !
span_t eat_next_word(span_t *span) {
    size_t i = 0;
    while (i < span->length && !isspace(span->str[i]) && span->str[i] != ',' && span->str[i] != '#') i++;

    if (i == 0) {
        char *word_str = as_string(span);
        if (word_str[0] == '\0')
            fprintf(stderr, "\x1b[31mUnexpected end-of-file, expected a name or number!\x1b[0m\n");
        else
            fprintf(stderr, "\x1b[31mExpected a name or number, but got '%s' instead!\x1b[0m\n", word_str);
        free(word_str);
        exit(1);
    }


    span_t word;
    split(span, i, &word, span);
    return word;
}

opname_t parse_op_name(span_t span) {
    // this will just sequentially compare each instr name with the span content

    #define min(a, b) (a < b ? a : b)
    #define INSTR(_0, name, _1, _2, _3, _4)\
        if (strncasecmp(#name, span.str, span.length /* #name will be null-terminated so it's fine */) == 0)\
            return _opname_of(name);\

        X_INSTRS
    #undef INSTR

    char *name_str = as_string(&span);
    fprintf(stderr, "\x1b[31mCouldn't understand mnemonic '%s'\x1b[0m\n", name_str);
    free(name_str);
    return op_ERROR;
}

bool try_parse_num(span_t span, int32_t *res) {
    // technically, we shouldn't be reading or writing anything
    // beyond `span.str[length-1]`, since it is theoretically
    // possible to create a span_t over any arbitrary piece of
    // memory, as we could be writing into memory concurrently
    // used by another app, thus completely corrupting its state;
    //
    // however, in practice, `span_t`s are always created over
    // NULL-terminated strings here, which means that they always
    // have at least one controlled character at `span.str[length]`
    // that's controlled by us, which means if we corrupt anything
    // it'll be ours; and since we don't do any threaded parsing, we
    // don't have to worry about corrupting state outside, as long as
    // we fix anything we break before the function returns (or we
    // exit before any other function looks at the span)
    //
    // anyway, we abuse that fact here to temporarily make this span
    // into a c-string, by replacing `span.str[length]` with '\0'
    // (and switching it back later obviously), so that we can call
    // sscanf directly, which will take care of sign, base, etc

    char old_terminator = ((char*)span.str)[span.length];
    ((char*)span.str)[span.length] = '\0';

    int chars_read;
    int scanf_res = sscanf(span.str, "%i%n", res, &chars_read);

    ((char*)span.str)[span.length] = old_terminator;

    if (scanf_res == EOF || (size_t)chars_read != span.length)
        // todo: implement 0b base specifier
        goto INVALID_IMM_VALUE;
    else
        return true;

INVALID_IMM_VALUE: {
        char *num_str = as_string(&span);
        fprintf(stderr, "\x1b[31m'%s' is not a valid number!\x1b[0m\n", num_str);
        free(num_str);
        return false;
    }
}

bool try_parse_imm(span_t span, uint8_t bits, int32_t *imm) {
    if (!try_parse_num(eat_next_word(&span), imm))
        return false;

    if (!fits_in_n_bits(*imm, bits)) {
        fprintf(stderr, "\x1b[31mValue '%d' cannot be used an operand here, because it doesn't fit in %d bits\x1b[0m\n", *imm, bits);
        return false;
    }

    return true;
}

bool try_parse_reg(span_t span, regnum_t *reg) {
    if (2 > span.length || span.length > 3) {
        // only valid register name of length 4
        if (span.length == 4 && strncasecmp("zero", span.str, 4) == 0) {
            *reg = 0;
            return true;
        }

        goto INVALID_REG_NAME;
    }

    // first we check for special registers which are
    // easy to recognize, like sp, gp, tp, which all
    // have 'p' as the second letter, or 'ra' which
    // is the only valid register name with 'a' as
    // the second letter
    //
    // if none of those worked, we parse the numeric
    // part of the name and then map them to absolute
    // indices (i.e. the x0-x31 numbers)

    char reg_type = tolower(span.str[0]);

    if (!isdigit(span.str[1])) {
        if (tolower(span.str[1]) == 'p') {
            switch (reg_type) {
                case 's': *reg = 2; return true;
                case 'g': *reg = 3; return true;
                case 't': *reg = 4; return true;
            }
        } else if (tolower(span.str[1]) == 'a') {
            if (reg_type == 'r') {
                *reg = 1;
                return true;
            }
        }

        goto INVALID_REG_NAME;
    }

    int32_t pretty_idx;

    if (!try_parse_num(slice_by_start(&span, 1), &pretty_idx))
        return false;

    if (pretty_idx < 0)
        goto INVALID_REG_NAME;

    int32_t abs_idx;
    switch (reg_type) {
        case 'x':
            if (pretty_idx > 31) goto INVALID_REG_NAME;
            abs_idx = pretty_idx;
            break;
        case 't':
            if (pretty_idx > 6) goto INVALID_REG_NAME;
            abs_idx = pretty_idx < 3 ? pretty_idx + 5 : pretty_idx - 3 + 28;
            break;
        case 's':
            if (pretty_idx > 11) goto INVALID_REG_NAME;
            abs_idx = pretty_idx < 2 ? pretty_idx + 8 : pretty_idx - 2 + 18;
            break;
        case 'a':
            if (pretty_idx > 7) goto INVALID_REG_NAME;
            abs_idx = pretty_idx + 10;
            break;
        default:
            goto INVALID_REG_NAME;
    }

    assert(0 <= abs_idx && abs_idx <= 31);

    *reg = (regnum_t)abs_idx;
    return true;

INVALID_REG_NAME: {
        char *reg_str = as_string(&span);
        fprintf(stderr, "\x1b[31m'%s' is not a valid register name!\x1b[0m\n", reg_str);
        free(reg_str);
        return false;
    }
}

bool try_parse_offset_and_reg(span_t *src_code, uint8_t bits, int32_t *offset, regnum_t* reg) {
    if (!try_parse_imm(eat_next_word(src_code), bits, offset))
        return false;

    trim_left(src_code, ' ');

    if (src_code->str[0] != '(') {
        fprintf(stderr, "\x1b[31mExpected '(' in `offset(reg)` notation, but got '%c'\x1b[0m\n", src_code->str[0]);
        return false;
    }

    *src_code = slice_by_start(src_code, 1); // eat the '('
    trim_left(src_code, ' ');

    if (!try_parse_reg(eat_next_word(src_code), reg))
        return false;

    trim_left(src_code, ' ');

    if (src_code->str[0] != ')') {
        fprintf(stderr, "\x1b[31mMissing closing ')' in `offset(reg)` notation (got '%c' instead)\x1b[0m\n", src_code->str[0]);
        return false;
    }

    *src_code = slice_by_start(src_code, 1); // eat the ')'
    return true;
}

bool try_parse_single_instr(span_t src_code, instr_t *instr) {
    // todo: implement pseudo-instr

    instr->opname = parse_op_name(eat_next_word(&src_code));

    if (instr->opname == op_ERROR)
        return false;

    trim_left(&src_code, ' ');

    switch (format_of(instr->opname)) {
        case REG: {
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_reg.rd)))
                return false;
            trim_comma_and_space();
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_reg.rs1)))
                return false;
            trim_comma_and_space();
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_reg.rs2)))
                return false;
            break;
        }
        case IMM: {
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_imm.rd)))
                return false;
            trim_comma_and_space();
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_imm.rs)))
                return false;
            trim_comma_and_space();
            if (!try_parse_imm(eat_next_word(&src_code), 12, &(instr->as_imm.operand)))
                return false;

            break;
        }
        case LOAD: {
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_imm.rd)))
                return false;

            trim_comma_and_space();

            if (!try_parse_offset_and_reg(&src_code, 12, &(instr->as_imm.operand), &(instr->as_imm.rs)))
                return false;

            break;
        }
        case STORE: {
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_store.rval)))
                return false;

            trim_comma_and_space();

            if (!try_parse_offset_and_reg(&src_code, 12, &(instr->as_store.offset), &(instr->as_store.rbase)))
                return false;

            break;
        }
        case BRANCH: {
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_branch.rs1)))
                return false;

            trim_comma_and_space();

            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_branch.rs2)))
                return false;

            trim_comma_and_space();

            if (!try_parse_imm(eat_next_word(&src_code), 13, &(instr->as_branch.offset)))
                return false;

            if (instr->as_branch.offset % 2 != 0) {
                fprintf(stderr, "\x1b[31mBranch or jump offsets must be 2-byte aligned\x1b[0m\n");
                return false;
            }

            break;
        }
        case JUMP: {
            if (!try_parse_reg(eat_next_word(&src_code), &(instr->as_jump.rd)))
                return false;

            trim_comma_and_space();

            if (!try_parse_imm(eat_next_word(&src_code), 21, &(instr->as_jump.offset)))
                return false;

            if (instr->as_jump.offset % 2 != 0) {
                fprintf(stderr, "\x1b[31mBranch or jump offsets must be 2-byte aligned\x1b[0m\n");
                return false;
            }

            break;
        }
        default:
            return false;
    }

    if (!check_line_ending(&src_code))
        return false;

    return true;
}

instr_t parse_line(const char* src_line, size_t length) {
    span_t line_span = (span_t){ .str = src_line, .length = length };

    if (cleanup_line_start(&line_span) == 0)
        return (instr_t){ .opname = op_ERROR };

    instr_t instr;
    if (!try_parse_single_instr(line_span, &instr))
        return (instr_t){ .opname = op_ERROR };

    return instr;
}