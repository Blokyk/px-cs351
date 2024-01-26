# Seed: 683664214

# Generation 203

# == filling regs ==
addi   s9, x0, 0x7e6
addi   t4, x0, 0x7a4
addi   t1, x0, 0x7e6
addi   a2, x0, 0x2f
addi   s7, x0, 0x43

# == code ==
sb     t0, 78(s9)
sltu   a5, s6, a4
andi   s4, s1, 0x63
sltiu  t2, s4, 0x2f
xor    a1, t6, t0
lh     s2, 48(t5)
sltu   a3, s6, s11
sra    t6, s3, s7
sll    s7, a7, a0
sra    s2, a7, x0
srai   t4, tp, 0x3
sll    s6, s11, a0
andi   t2, s8, 0x22
or     a6, a2, tp
srl    t2, t1, s9
addi   t1, s10, 0x7c8
or     s10, s11, a0
slt    t3, a5, s5
addi   t1, x0, 0x7d5
andi   a5, s5, 0x4a5
slti   sp, sp, 0x12
sra    a6, s1, s2
slli   s8, t6, 0x16
and    a5, x0, a2
and    s2, s4, t0
or     s9, s7, a2
sh     ra, 974(s2)
srai   s11, t5, 0x6
sd     s8, 70(s2)
srl    s0, s6, s3

# EXPECTED
# x6: 0x7d5
# x7: 0x1f
# x12: 0x2f
# x25: 0x2f
