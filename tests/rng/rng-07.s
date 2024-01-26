# Seed: 693909405

# Generation 49

# == filling regs ==
addi   a5, x0, 0x2a5
addi   a3, x0, 0x7a0
addi   t1, x0, 0x124
addi   a5, x0, 0x12
addi   a6, x0, 0x7f9

# == code ==
slt    s11, gp, s7
xor    t3, s4, t5
xori   a1, tp, 0x7f8
srai   a5, t4, 0x0
ori    s9, ra, 0x7d1
srai   s10, s9, 0x6
srai   t2, t2, 0x8
blt    a3, a7, 0x2c
jal    s5, 0x4
or     t3, a6, t3
add    x0, ra, a7
slli   ra, t0, 0xc
srli   gp, t6, 0x18
xor    s5, s9, tp
sw     s3, 26(t5)
slli   t5, s4, 0x15
srli   s8, s8, 0xe
lwu    s11, 1056(s0)
slti   a3, s2, 0x7d5
sh     s11, 54(t3)
sltiu  a1, s5, 0x7a6
srl    x0, tp, a2
lbu    sp, 1997(a0)
lw     s11, 1963(a7)
auipc  t3, 0xfffea
sltu   t0, s9, s2
add    a4, a4, t1
sw     s8, 2022(a4)
lh     t6, 1963(s6)
jal    s8, 0x10

# EXPECTED
# x6: 0x124
# x13: 0x1
# x14: 0x124
# x16: 0x7f9
# x21: 0x7d1
# x24: 0x8c
# x25: 0x7d1
# x26: 0x1f
# x28: -0x15f8c
