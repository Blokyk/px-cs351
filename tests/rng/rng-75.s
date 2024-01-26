# Seed: 1375985729

# Generation 234

# == filling regs ==
addi   a4, x0, 0x412
addi   s3, x0, 0x10
addi   s7, x0, 0x7c6
addi   a5, x0, 0x7aa
addi   s3, x0, 0x7cf

# == code ==
lbu    s1, 40(a7)
addi   t3, s7, 0x7f8
blt    tp, s8, -0x38 # (0xffffffc8)
slli   x0, t1, 0x3
lh     s3, 1174(ra)
add    x0, t6, t1
ori    s7, t5, 0x46e
addi   a5, a0, 0x7f9
srli   a4, t0, 0x3
xor    t3, t1, t0
sub    s8, s3, t5
xori   a0, sp, 0x7c4
slli   gp, s7, 0x16
sd     a7, 28(s3)
srl    a0, s3, s5
lh     a1, 1982(s0)
xor    t0, tp, s6
sltiu  a1, a1, 0x699
sltiu  a0, tp, 0x382
ori    s7, gp, 0x23
sd     a1, 5(t2)
lbu    t4, 1691(t0)
sw     s10, 1298(a4)
sub    s9, a3, s3
sd     a3, 1572(a4)
srl    a2, s8, a6
xori   t3, s5, 0x678
xor    s9, gp, s0
slli   s5, s7, 0x4
lui    sp, 0x21

# EXPECTED
# x2: 0x21000
# x3: 0x11b800000
# x9: 0x33
# x10: 0x1
# x11: 0x1
# x15: 0x7f9
# x21: 0x11b8000230
# x23: 0x11b800023
# x25: 0x11b800000
# x28: 0x678
