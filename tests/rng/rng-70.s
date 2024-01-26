# Seed: 1942092257

# Generation 406

# == filling regs ==
addi   a0, x0, 0x12
addi   x0, x0, 0x7ba
addi   a3, x0, 0x534
addi   a4, x0, 0x8
addi   t4, x0, 0x4a

# == code ==
addi   s3, ra, 0x32
sll    t6, t1, s2
srl    t2, a7, x0
bltu   tp, x0, -0x40 # (0xffffffc0)
ld     tp, 69(s9)
lwu    a4, 2035(a5)
bne    t1, a6, 0x44
blt    s5, a7, 0x678
sw     t0, 356(a2)
sb     s8, 1986(s7)
lbu    t0, 638(a1)
xori   a4, s9, 0x483
slli   s9, tp, 0x18
srli   s5, tp, 0xb
lw     ra, 2031(t0)
and    s4, a0, s5
lui    t4, 0xfffc2
sh     s8, 1797(a5)
slti   a4, t1, 0x7d1
sd     t4, 1949(a4)
sub    s10, a5, a7
sb     t1, 1997(s3)
slti   t3, t1, 0x54d
lwu    s5, 2030(s8)
or     a5, ra, x0
sltiu  a1, t5, 0x7c3
slli   s11, t0, 0xf
slti   s3, s8, 0x7f3
srli   a5, a5, 0x6
slli   s9, s2, 0x2

# EXPECTED
# x2: 0x4000
# x4: -0x7cff4da56cfe7de4
# x10: 0x12
# x11: 0x1
# x13: 0x534
# x14: 0x1
# x19: 0x1
# x20: 0x10
# x28: 0x1
# x29: -0x3e000
