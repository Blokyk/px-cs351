# Seed: 1305195548

# Generation 25

# == filling regs ==
addi   a4, x0, 0x7dc
addi   x0, x0, 0x35
addi   s3, x0, 0x10f
addi   a3, x0, 0x5d
addi   s6, x0, 0x21

# == code ==
add    s8, s1, s4
sll    s3, t4, s7
addi   s1, gp, 0x18f
bltu   sp, s9, 0x54
slli   t0, ra, 0x15
sb     s9, 98(a2)
sra    s3, t3, t5
sra    gp, tp, s5
and    s2, a5, s0
xori   a3, t1, 0x7d6
lui    s3, 0xfffe4
sd     ra, 2014(t4)
sltu   t2, s9, s6
and    a5, ra, tp
srl    a3, s2, s6
xor    a6, sp, x0
slti   a1, a2, 0x2fa
sb     s9, 1352(t3)
slt    s3, a5, t3
andi   a5, a3, 0x4bc
sra    a0, a6, s6
srli   t2, t3, 0x11
andi   s0, a1, 0x7dc
andi   x0, t0, 0x7a9
sd     a2, 98(a1)
blt    gp, a3, -0x60 # (0xffffffa0)
slli   s7, s10, 0x9
slt    a3, a0, a7
blt    a6, a6, -0x3c # (0xffffffc4)
addi   t5, ra, 0x1ee

# EXPECTED
# x2: 0x4000
# x9: 0x18f
# x10: 0x2000
# x11: 0x1
# x14: 0x7dc
# x16: 0x4000
# x22: 0x21
# x30: 0x1ee
