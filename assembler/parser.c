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
#include "../common/utils.h"

// ARGH GLOBAL STATE! ...ok sorry for the jump scare, but it seems
// like the only other solution that doesn't require rewriting the
// whole parser is using `setjmp` and `longjmp`, and I don't know
// how frowned up those are sooooo ._.
char *last_parse_error = NULL;
#define set_parser_error(fmt, ...) asprintf(&last_parse_error, fmt __VA_OPT__(,) __VA_ARGS__)

void trim_left(span_t *span, char ignored_char) {
    while (span->length != 0 && span->str[0] == ignored_char) {
        span->str++; span->length--;
    }
}

void trim_space(span_t *span) {
    while (span->length != 0 && isspace(span->str[0])) {
        span->str++; span->length--;
    }
}

void trim_comma_and_space(span_t *span) {
    trim_space(span);

    // we only want to trim a single comma, no more
    if (span->length != 0 && span->str[0] == ',') {
        span->str++; span->length--;
    }

    trim_space(span);
}

void cleanup_line_start(span_t *span) {
    trim_space(span);

    // if there's a comment, pretend the line is empty
    if (span->length != 0 && span->str[0] == '#')
        span->length = 0;
}

bool check_line_ending(span_t *span) {
    trim_space(span);

    if (span->length == 0)
        return true;
    if (span->str[0] == '#')
        return true;

    as_tmp_string(*span,
        set_parser_error("Expected a newline or end-of-file, but got '%s' instead!", span->str)
    );
    return false;
}

// word: ([0-9A-Za-z]|-|_|.)+
// ! mutates span directly !
span_t eat_next_word(span_t *span) {
    size_t i = 0;
    while (i < span->length && (isalnum(span->str[i]) || span->str[i] == '-' || span->str[i] == '_' || span->str[i] == '.')) i++;

    if (i == 0) {
        if (span->length == 0) {
            set_parser_error("Unexpected end-of-file, expected a name or number!");
        } else {
            as_tmp_string(*span,
                set_parser_error("Expected a name or number, but got '%s' instead!", span->str)
            );
        }
    }

    span_t word;
    split(span, i, &word, span);
    return word;
}

opname_t parse_op_name(span_t span) {
    // this will just sequentially compare each instr name with the span content

    #define P_INSTR(name, _0, _1, _2) INSTR(,name,,,,)
    #define INSTR(_0, name, _1, _2, _3, _4)\
        if ((span.length == sizeof(#name)-1) && strncasecmp(#name, span.str, span.length) == 0)\
            return _opname_of(name);

        X_ALL_INSTRS
    #undef INSTR
    #undef P_INSTR

    as_tmp_string(span,
        set_parser_error("Couldn't understand mnemonic '%s'", span.str);
    );

    return op_err;
}

bool try_parse_num(span_t span, int32_t *res) {
    if (span.length == 0)
        return false;

    // we need to offset the starting char in case there's a sign or a base specifier
    size_t i = 0;

    int8_t sign = 1;
    uint8_t base = 10;
    if (span.str[0] == '-') {
        i++;
        sign = -1;
    } else if (span.str[0] == '+') {
        i++;
    }

    if (span.str[i] == '0') {
        switch (span.length-i) {
            case 1:
                *res = 0;
                return true;
            case 2:
                *res = span.str[i+1] - '0';
                if (*res < 0 || *res > 7)
                    goto INVALID_NUM;
                *res = sign * *res;
                return true;
            default:
                char base_char = span.str[i+1];
                if (base_char == 'x') {
                    i += 2;
                    base = 16;
                } else if (base_char == 'b') {
                    i += 2;
                    base = 2;
                } else {
                    i += 1;
                    base = 8;
                }

                break;
        }
    }

    uint64_t tmp_res = 0;
    while (i < span.length) {
        if (!isxdigit(span.str[i]))
            goto INVALID_NUM;

        uint8_t num = span.str[i] - '0';

        if (base == 16 && (uint8_t)(tolower(span.str[i]) - 'a') < 7)
            num = tolower(span.str[i]) - 'a' + 10;
        else if (num >= base)
            goto INVALID_NUM;

        tmp_res = tmp_res*base + num;

        // exit early if parsing would overflow an int32_t
        if (tmp_res > UINT32_MAX)
            goto INVALID_NUM;

        i++;
    }

    *res = (int32_t)(sign*tmp_res);
    return true;

INVALID_NUM:
    as_tmp_string(span,
        set_parser_error("'%s' is not a valid number!", span.str)
    );
    return false;
}

bool try_parse_imm(span_t *src_code, int32_t *imm) {
    trim_comma_and_space(src_code);
    span_t num_span = eat_next_word(src_code);
    if (num_span.length == 0 || !try_parse_num(num_span, imm))
        return false;

    return true;
}

bool try_parse_reg(span_t *src_code, regnum_t *reg) {
    trim_comma_and_space(src_code);
    span_t regname_span = eat_next_word(src_code);

    if (regname_span.length == 0)
        return false;

    if (2 > regname_span.length || regname_span.length > 3) {
        // only valid register name of length 4
        if (regname_span.length == 4 && strncasecmp("zero", regname_span.str, 4) == 0) {
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

    char reg_type = tolower(regname_span.str[0]);

    if (!isdigit(regname_span.str[1])) {
        if (tolower(regname_span.str[1]) == 'p') {
            switch (reg_type) {
                case 's': *reg = 2; return true;
                case 'g': *reg = 3; return true;
                case 't': *reg = 4; return true;
            }
        } else if (tolower(regname_span.str[1]) == 'a') {
            if (reg_type == 'r') {
                *reg = 1;
                return true;
            }
        }

        goto INVALID_REG_NAME;
    }

    int32_t pretty_idx;

    if (!try_parse_num(slice_by_start(&regname_span, 1), &pretty_idx))
        return false;

    // parse_num can parse *any* number, including negative ones
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
        as_tmp_string(regname_span,
            set_parser_error("'%s' is not a valid register name!", regname_span.str)
        );
        return false;
    }
}

bool try_parse_offset_and_reg(span_t *src_code, int32_t *offset, regnum_t* reg) {
    if (!try_parse_imm(src_code, offset))
        return false;

    trim_space(src_code);

    if (src_code->str[0] != '(') {
        set_parser_error("Expected '(' in `offset(reg)` notation, but got '%c'", src_code->str[0]);
        return false;
    }

    *src_code = slice_by_start(src_code, 1); // eat the '('

    trim_space(src_code);

    // since try_parse_reg ignores commas as well, we need to guard against it ourselves
    if (src_code->str[0] == ',') {
        set_parser_error("Unexpected ',' character in `imm(reg)` syntax, expected a register name\n!");
        return false;
    }

    if (!try_parse_reg(src_code, reg))
        return false;

    trim_left(src_code, ' ');

    if (src_code->str[0] != ')') {
        set_parser_error("Missing closing ')' in `offset(reg)` notation (got '%c' instead)", src_code->str[0]);
        return false;
    }

    *src_code = slice_by_start(src_code, 1); // eat the ')'
    return true;
}

bool validate_imm(int32_t imm, uint8_t bits) {
    #define fits_in_n_bits(l, n) ((l) < (1 << (n)) && (l) > -((1 << ((n)-1)) + 1))

    // if imm is positive, it might be an overflow, so pretend the sign bit isn't here first,
    if (fits_in_n_bits(imm, bits-(imm > 0)))
        return true;

    // if this is a positive value that can only fit by including the sign bit, emit a warning
    if (imm > 0 && fits_in_n_bits(imm, bits)) {
        fprintf(stderr, "\e[33mWARN: Value '%d' will be interpreted as signed value '%d'\e[0m\n", imm, ((imm << (32-bits)) >> (32-bits)));
        return true;
    }

    set_parser_error("Value '%d' cannot be used an operand here, because it doesn't fit in %d bits", imm, bits);
    return false;
    #undef fits_in_n_bits
}

bool validate_code_offset(int32_t offset) {
    if (offset % 2 == 0)
        return true;

    set_parser_error("Branch or jump offsets must be 2-byte aligned (and %d isn't)", offset);
    return false;
}

bool validate_instr(instr_t instr) {
    switch (format_of(instr.opname)) {
        case REG:
            return true;
        case IMM:
        case LOAD:
            return validate_imm(instr.as_imm.operand, 12);
        case STORE:
            return validate_imm(instr.as_store.offset, 12);
        case BRANCH:
            return validate_imm(instr.as_branch.offset, 13)
                && validate_code_offset(instr.as_branch.offset);
        case JUMP:
            return validate_imm(instr.as_jump.offset, 21)
                && validate_code_offset(instr.as_jump.offset);
        default:
            assert(false && "unknown instr got into validate_instr!!!\n");
            return false;
    }
}

bool try_parse_single_instr(span_t src_code, instr_t *instr) {
    span_t opname_span = eat_next_word(&src_code);
    if (opname_span.length == 0)
        return false;

    instr->opname = parse_op_name(opname_span);

    if (instr->opname == op_err)
        return false;

    trim_left(&src_code, ' ');

    switch (format_of(instr->opname)) {
        case REG: {
            if (!try_parse_reg(&src_code, &(instr->as_reg.rd)))
                return false;
            if (!try_parse_reg(&src_code, &(instr->as_reg.rs1)))
                return false;
            if (!try_parse_reg(&src_code, &(instr->as_reg.rs2)))
                return false;
            break;
        }
        case IMM: {
            if (!try_parse_reg(&src_code, &(instr->as_imm.rd)))
                return false;
            if (!try_parse_reg(&src_code, &(instr->as_imm.rs)))
                return false;
            if (!try_parse_imm(&src_code, &(instr->as_imm.operand)))
                return false;

            break;
        }
        case LOAD: {
            if (!try_parse_reg(&src_code, &(instr->as_imm.rd)))
                return false;

            if (!try_parse_offset_and_reg(&src_code, &(instr->as_imm.operand), &(instr->as_imm.rs)))
                return false;

            break;
        }
        case STORE: {
            if (!try_parse_reg(&src_code, &(instr->as_store.rval)))
                return false;

            if (!try_parse_offset_and_reg(&src_code, &(instr->as_store.offset), &(instr->as_store.rbase)))
                return false;

            break;
        }
        case BRANCH: {
            if (!try_parse_reg(&src_code, &(instr->as_branch.rs1)))
                return false;

            if (!try_parse_reg(&src_code, &(instr->as_branch.rs2)))
                return false;

            if (!try_parse_imm(&src_code, &(instr->as_branch.offset)))
                return false;

            break;
        }
        case JUMP: {
            if (!try_parse_reg(&src_code, &(instr->as_jump.rd)))
                return false;

            if (!try_parse_imm(&src_code, &(instr->as_jump.offset)))
                return false;

            break;
        }
        case PSEUDO: {
            switch (instr->opname) {
                #define P_INSTR(name, reg_count, imm_count, translation)\
                    case _opname_of(name): {\
                        int32_t imms[imm_count];\
                        regnum_t regs[reg_count];\
                        for (int i = 0; i < reg_count; i++) {\
                            if (!try_parse_reg(&src_code, &(regs[i])))\
                                return false;\
                        }\
                        for (int i = 0; i < imm_count; i++) {\
                            if (!try_parse_imm(&src_code, &(imms[i])))\
                                return false;\
                        }\
                        *instr = translation;\
                        break;\
                    }

                    X_PSEUDO_INSTRS
                #undef P_INSTR
                default:
                    set_parser_error("Unimplemented pseudo-instr '%s' in parser\n", fmt_opcode(instr->opname));
                    return false;
            }
            break;
        }
        default:
            set_parser_error("Unimplemented opcode '%s' in parser\n", fmt_opcode(instr->opname));
            return false;
    }

    if (!check_line_ending(&src_code))
        return false;

    // final checks
    // need to put them here bc it simplifies pseudo-instr handling
    if (!validate_instr(*instr))
        return false;

    return true;
}

instr_t parse_line(const char* src_line, size_t length, int line_number) {
    span_t line_span = (span_t){ .str = src_line, .length = length };

    cleanup_line_start(&line_span);

    // if the line is empty after cleanup
    if (line_span.length == 0)
        return (instr_t){ .opname = op_err, .err_code = 0};

    instr_t instr;
    if (!try_parse_single_instr(line_span, &instr)) {
        if (last_parse_error != NULL) {
            fprintf(stderr, "\e[31mError occurred on line \e[1m%d\e[22m:\n\t%s\e[0m\n", line_number, last_parse_error);
            free(last_parse_error);
            last_parse_error = NULL;
        } else {
            char *instr_str = fmt_instr(instr);
            fprintf(stderr, "\e[31mFailed to parse instr... \e[2m(Last known state: %s)\e[0m\n", instr_str);
            free(instr_str);
        }

        return (instr_t){ .opname = op_err, .err_code = 1};
    }

    return instr;
}