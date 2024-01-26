# Seed: 1434999140

# Generation 86

# == filling regs ==
addi   s4, x0, 0x7e8
addi   t4, x0, 0x7bc
addi   s2, x0, 0x14
addi   s10, x0, 0x7c4
addi   t2, x0, 0xea

# == code ==
lh     a7, 1990(s1)
xori   a3, gp, 0x21
auipc  t2, 0xfffa0
xor    a3, t1, t4
sltu   t0, s7, t1
or     s6, s9, a2
or     s1, a2, a0
andi   ra, a2, 0x1e
blt    x0, ra, -0x2c # (0xffffffd4)
sb     x0, 22(gp)
sltu   s0, s0, a4
andi   s1, t4, 0x680
sltiu  s9, t3, 0x28
slli   gp, s4, 0x1b
bne    x0, t0, 0x34
beq    s2, s1, 0xe08
xor    s10, a1, tp
sra    s1, tp, t4
or     s9, t1, t1
or     ra, t1, t4
sltiu  s7, s4, 0x7c2
lw     t0, 12(s8)
slli   t0, s5, 0x12
sub    t2, t4, a0
lb     s8, 600(s0)
slli   s7, s2, 0x1e
bltu   s0, a0, -0x44 # (0xffffffbc)
lui    s11, 0x31e2d
xori   a2, s4, 0x7c0
xori   a6, s3, 0x7ef

# EXPECTED
# x1: 0x7bc
# x2: 0x4000
# x3: 0x3f40000000
# x7: 0x7bc
# x12: 0x28
# x13: 0x7bc
# x16: 0x7ef
# x18: 0x14
# x20: 0x7e8
# x23: 0x500000000
# x27: 0x31e2d000
# x29: 0x7bc
