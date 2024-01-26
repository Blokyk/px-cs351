# Seed: 1173287410

# Generation 361

# == filling regs ==
addi   a2, x0, 0x7ff
addi   x0, x0, 0x49
addi   t5, x0, 0x7b1
addi   tp, x0, 0x1a
addi   t0, x0, 0x7f7

# == code ==
lbu    x0, 1991(s10)
andi   s6, t2, 0x54
or     x0, s2, a4
sltiu  s1, t1, 0x14
xor    t5, s0, s3
lwu    s9, 1986(s2)
slli   ra, t5, 0x0
sltiu  t0, t0, 0x7e5
srl    s4, s11, t2
srai   t5, a3, 0x3
sltu   t6, t3, t5
sltu   t0, a0, a1
sh     s8, 1969(a5)
or     x0, s2, s2
auipc  s0, 0x5b
add    a7, t3, t3
slt    x0, a2, s1
sra    tp, gp, t3
sltiu  s8, s2, 0x195
xori   x0, a4, 0x7c3
lwu    a7, 1808(t4)
ld     a2, 1961(s5)
or     a5, s6, a7
xori   a5, a4, 0x330
sll    t6, t5, a2
sw     s8, 1986(s4)
srai   s0, t1, 0xe
ori    a7, s7, 0x4a
jal    a4, 0x20
lbu    a1, 13(a5)

# EXPECTED
# x2: 0x4000
# x9: 0x1
# x14: 0x88
# x15: 0x330
# x17: 0x4a
# x24: 0x1
