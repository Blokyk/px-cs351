li t0, 0x2b # '+'
li t1, 0x31 # '1'
li t2, 0x32 # '2'
li t3, 0x2d # '-'

addi     sp,   sp, -5
sb       t0, 0(sp) # +
sb       t1, 1(sp) # 1
sb       t3, 2(sp) # -
sb       t2, 3(sp) # 2
sb       t1, 4(sp) # 1
add      a0,   x0, sp

jal ra, 0x8 # call eval

j 0x74 # jump to exit

# eval([a0] char *s) -> [a0] int:
    addi     sp,   sp, -32
    sd       ra,  0(sp)
    sd       s0,  8(sp)
    sd       s1, 16(sp)
    sd       s2, 24(sp)

    lb       s0, 0(a0) # load curr char into s0

    addi     t0,   s0, -0x30 # t0 = currChar - '0'
    li       t1,  0xa # t1 = '9'-1
    bltu     t1,   t0, 0xc # eval_op # if currChar is not a digit, eval_op(); otherwise, return currChar - '0'

    # eval_num:
        mv       a0, t0
        j        0x30 # eval_ret

    # eval_op:
        # parse rest of the expression by eating curr char calling eval(s+1)
        mv       s2, a0 # save expr pointer before passing it and advancing it

        # eval first operand
        addi     a0,   a0, 0x1
        jal      ra,   -0x34 # call eval
        mv       s1,   a0 # save result in s1

        # eval second operand
        addi     a0,   s2, 0x2
        jal      ra,   -0x40 # call eval

        li       t0, 0x2d # '-'
        beq      s0,   t0, 0xc # eval_sub

        # eval_add:
            add      a0,   s1,   a0
            j        0x8 # eval_ret

        # eval_sub:
            sub      a0,   s1,   a0

    # eval_ret:
        ld       s2, 24(sp)
        ld       s1, 16(sp)
        ld       s0,  8(sp)
        ld       ra,  0(sp)
        addi     sp,    sp, 32
        ret

# exit:
addi sp, sp, 5 # 'erase' expr string

# EXPECTED
# ra: -
# sp: 0x4000
# a0: 2
# s0: 0
# s1: 0
# s2: 0
# t0: -
# t1: -
# t2: -
# t3: -