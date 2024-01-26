# Seed: 43421784

# Generation 209

# == filling regs ==
addi   a0, x0, 0x2
addi   a6, x0, 0x56e
addi   s6, x0, 0xc
addi   a6, x0, 0x7c1
addi   t3, x0, 0x503

# == code ==
andi   t6, s11, 0x37
ld     s9, 38(a0)
sb     s2, 2033(s4)
sra    s1, t1, s7
slli   t3, s3, 0x13
blt    s7, tp, 0x1c
lh     s5, 1021(x0)
sw     s10, 2025(s0)
srai   s5, a4, 0x16
lh     s0, 28(a0)
slti   a2, s9, 0x7cf
ori    s8, s2, 0x7b2
xor    t5, a5, t0
sltu   t4, s9, x0
srl    a5, s8, a0
lwu    a2, 1996(tp)
bltu   a5, tp, 0x40
sra    s8, t4, a3
sra    a3, ra, gp
slli   s2, s9, 0x16
slli   s9, t0, 0x5
lbu    t2, 34(t6)
sra    s1, a5, s7
srl    a6, t0, t4
ori    a0, t5, 0x1f
lhu    t3, 23(a5)
sll    a4, sp, t0
add    s5, s5, ra
bge    s9, a4, 0xd2c
or     t3, s6, tp

# EXPECTED
# x2: 0x4000
# x7: 0x73
# x8: 0x7f2a
# x9: 0x1ec
# x10: 0x1f
# x14: 0x4000
# x15: 0x1ec
# x18: -0x5f3fed0c67400000
# x22: 0xc
# x28: 0xc
