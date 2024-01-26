# Seed: 77711235

# Generation 450

# == filling regs ==
addi   s3, x0, 0xa
addi   t6, x0, 0x2a
addi   sp, x0, 0x1c
addi   s1, x0, 0x68d
addi   s4, x0, 0x7d9

# == code ==
ori    t6, s0, 0x33
add    x0, t2, a6
slt    s2, s7, t3
blt    t1, t3, 0x4
lui    gp, 0x39
lhu    s10, 2032(a1)
bgeu   sp, s10, 0x4
slti   s8, a0, 0x622
srli   a6, a7, 0xa
sub    x0, a3, a4
ori    s7, x0, 0x79e
xori   a0, t0, 0x7bd
srai   s10, a7, 0x1d
add    t2, a3, s3
lui    a0, 0xfffa0
xor    ra, s1, a7
sb     s10, 2013(x0)
srli   s10, tp, 0x1a
add    s8, s2, t6
sltiu  a1, s7, 0x37
sb     s1, 2037(t0)
ori    ra, t5, 0x28f
add    a5, s0, x0
sd     s7, 19(t6)
srl    s5, sp, s5
xori   s1, a2, 0x7c1
xori   s0, s7, 0x7db
slli   t2, t5, 0x7
sltu   s10, a3, t2
or     s9, s7, a2

# EXPECTED
# x1: 0x28f
# x2: 0x1c
# x3: 0x39000
# x8: 0x45
# x9: 0x7c1
# x10: -0x60000
# x19: 0xa
# x20: 0x7d9
# x21: 0x1c
# x23: 0x79e
# x24: 0x33
# x25: 0x79e
# x31: 0x33
