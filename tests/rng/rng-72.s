# Seed: 1215525107

# Generation 228

# == filling regs ==
addi     t2,   x0, 0x7fb
addi     t5,   x0, 0x7cb
addi     t6,   x0, 0x7a3
addi     sp,   x0, 0x5c9
addi     s6,   x0, 0x7ac

# == code ==
andi     a3,   s6, 0x7f0
add      t5,   t4,   sp
addi     ra,   s7, 0x37c
andi     sp,   t0, 0x5
sh       tp, 2012(ra)
sd       x0, 1996(a1)
lui      a0, 0xd2cd1
bgeu     t6,  s10, 0x4
add      a1,   a7,   s9
sb      s10, 530(s0)
beq      a0,   gp, 0x0
ori      t4,   s7, 0x61
slti     t1,   s5, 0x7ec
lbu     s10, 26(t2)
add      a6,   a7,   t6
ori      s3,   tp, 0x19
srli     t2,   a3, 0x5
addi     a7,   a1, 0x7cc
ld       t4, 1960(t2)
sra      a2,   a5,  s11
srl      ra,   s0,   t2
or       a5,   t5,   s2
blt      a3,   t3, -0x24 # (0xffffffdc)
srl      s5,   s7,   t2
sra      a5,   s1,   s7
lh       a3, 96(a6)
xori    s11,   a0, 0x193
lwu      s4, 2026(a7)
lhu      s7, 1963(s7)
lw       s8, 19(t5)

# EXPECTED
# x6: 0x1
# x7: 0x3d
# x10: -0x2d32f000
# x16: 0x7a3
# x17: 0x7cc
# x19: 0x19
# x22: 0x7ac
# x27: -0x2d32ee6d
# x30: 0x5c9
# x31: 0x7a3
