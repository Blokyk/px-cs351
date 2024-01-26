# Seed: 1360359301

# Generation 151

# == filling regs ==
addi   s7, x0, 0x483
addi   a4, x0, 0x7f1
addi   s1, x0, 0x7e3
addi   gp, x0, 0x7eb
addi   s7, x0, 0x48

# == code ==
slli   a1, s3, 0x1c
slli   t0, s0, 0xd
and    a0, ra, t0
sw     s11, 2022(t6)
sltu   t3, s4, t3
sltiu  s8, s3, 0x7ec
addi   s7, s11, 0x55
and    s8, sp, gp
lbu    s2, 507(s0)
andi   a1, a2, 0x10c
xori   tp, s11, 0x7b0
sb     s8, 9(t6)
srli   s8, s7, 0x1
add    t0, t5, t4
srl    a1, s2, ra
xor    a2, a2, s4
sll    s11, s10, t4
xor    ra, gp, s10
slti   s10, a6, 0x2d
sltu   gp, s5, t3
bltu   t6, s11, 0xc
lui    sp, 0x31
auipc  t5, 0x62
sub    a4, s3, a3
lb     s8, 88(s9)
sltiu  sp, ra, 0x7f4
andi   s7, a0, 0x7fe
sltiu  s6, t4, 0x4c
srli   a0, a1, 0xe
srai   s9, sp, 0x1e

# EXPECTED
# x1: 0x7eb
# x2: 0x1
# x4: 0x7b0
# x9: 0x7e3
# x22: 0x1
# x24: -0x4d
# x26: 0x1
# x30: 0x6206c
