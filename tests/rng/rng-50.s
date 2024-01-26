# Seed: 246767787

# Generation 290

# == filling regs ==
addi   a7, x0, 0x1f
addi   a2, x0, 0x1e
addi   t3, x0, 0x4c
addi   t4, x0, 0x5e
addi   a6, x0, 0x7b6

# == code ==
slli   x0, a0, 0x1f
slti   s9, sp, 0x7eb
sub    a3, s3, s0
sltu   s2, gp, a5
andi   t2, s5, 0x7bd
addi   a5, t6, 0x7ad
sll    s10, a1, s5
sltiu  s9, a2, 0x30
srl    s6, t4, s11
addi   t2, t6, 0x7d7
and    t1, s5, tp
auipc  a3, 0x49
sd     t5, 26(t0)
slti   s0, t3, 0xc
xor    s7, s10, s1
slti   t0, s3, 0x1a
slli   gp, a4, 0x1b
srl    s4, s10, s6
sub    t2, t3, sp
auipc  x0, 0x55a02
or     a4, sp, a7
slt    s0, s0, t6
slt    gp, t0, a4
addi   sp, t3, 0x39
sltu   ra, s1, a6
slli   s5, a2, 0xd
srli   tp, a1, 0x8
or     gp, s7, s4
lhu    t4, 2028(s2)
srli   a5, s6, 0x11

# EXPECTED
# x1: 0x1
# x2: 0x85
# x5: 0x1
# x7: -0x3fb4
# x12: 0x1e
# x13: 0x49040
# x14: 0x401f
# x16: 0x7b6
# x17: 0x1f
# x21: 0x3c000
# x22: 0x5e
# x25: 0x1
# x28: 0x4c
