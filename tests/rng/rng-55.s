# Seed: 1969918395

# Generation 126

# == filling regs ==
addi   s0, x0, 0x15
addi   a3, x0, 0x7d5
addi   t4, x0, 0x1f
addi   gp, x0, 0x5b0
addi   s4, x0, 0x7ff

# == code ==
sltiu  s1, sp, 0x641
or     s2, s1, a2
sll    a5, s2, a5
add    a0, a4, t1
sd     s8, 206(s10)
slli   s4, s1, 0x15
or     s8, a7, a0
sra    tp, t4, s11
slt    t0, t0, a4
srl    s10, s1, s5
srai   t6, t6, 0xd
andi   a4, s3, 0x7df
addi   tp, t3, 0x735
jalr   s3, 80(s4)
jalr   a4, 86(a4)
sra    a7, ra, s5
slti   t4, s2, 0x7b0
and    t3, s6, tp
bltu   a1, t3, 0x3c
sra    a4, s8, a5
sltu   ra, a5, s1
slli   a5, s2, 0x1d
addi   a5, a6, 0x7b5
ori    a6, tp, 0x7d6
sltiu  a2, a3, 0x7c9
sltiu  s5, s4, 0x7a5
lwu    s3, 2022(a5)
lbu    s7, 97(s7)
sra    x0, s4, t5
sltu   a1, s2, s11

# EXPECTED
# x2: 0x4000
# x3: 0x5b0
# x4: 0x735
# x8: 0x15
# x13: 0x7d5
# x15: 0x7b5
# x16: 0x7f7
# x21: 0x1
# x23: 0x57
# x29: 0x1
