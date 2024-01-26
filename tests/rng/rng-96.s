# Seed: 839689012

# Generation 7

# == filling regs ==
addi   tp, x0, 0x4f
addi   t6, x0, 0x59
addi   s0, x0, 0x460
addi   a1, x0, 0x7ca
addi   tp, x0, 0x7a0

# == code ==
slli   s5, s1, 0x1a
lh     t3, 2032(s3)
lhu    s4, 643(t0)
bltu   x0, a3, 0xaf0
sll    sp, s7, a2
lb     t0, 1131(a3)
slli   t4, t2, 0x16
bltu   a5, s8, 0x0
srli   t3, s8, 0x3
or     s11, s0, s5
sltu   a1, tp, a1
xor    tp, s9, t3
bge    s1, a1, 0x44
sltiu  a7, s7, 0x3db
add    a4, t5, t6
slt    s2, a3, s0
sltiu  a2, s0, 0x771
slti   a4, s8, 0x32
andi   tp, a3, 0x7cb
slli   t0, s10, 0x1f
auipc  t5, 0x5e
or     s4, t2, a3
auipc  s2, 0x8b8be
lbu    t3, 972(s5)
lui    ra, 0x47
sw     a1, 1989(a5)
lui    a7, 0x30
sub    s5, t2, s7
bne    gp, t0, 0x1c
lh     gp, 31(t0)

# EXPECTED
# x1: 0x47000
# x3: -0x1cd8
# x8: 0x460
# x11: 0x1
# x12: 0x1
# x14: 0x1
# x17: 0x30000
# x18: -0x74741f94
# x27: 0x460
# x30: 0x5e064
# x31: 0x59
