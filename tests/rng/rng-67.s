# Seed: 1059265162

# Generation 10

# == filling regs ==
addi   sp, x0, 0x7c9
addi   s9, x0, 0x7fc
addi   ra, x0, 0x37
addi   s0, x0, 0x7a0
addi   a6, x0, 0x2f7

# == code ==
sra    t3, t6, s0
srai   ra, sp, 0x3
bne    t6, a0, 0x38
sra    t4, tp, t2
sw     a7, 1990(s8)
slli   a2, x0, 0x1
lbu    t6, 20(t5)
slti   s4, a0, 0x7cd
ori    s8, a7, 0x7ef
srl    s4, s4, a1
sd     s2, 1494(t5)
andi   gp, t1, 0x7e3
sll    gp, s8, gp
xori   s0, t6, 0x7ee
sltiu  a3, a2, 0x7ca
srli   t5, a1, 0x15
ld     x0, 1777(t3)
xori   s11, sp, 0x3c
xor    s9, t4, t3
lbu    s9, 1972(s6)
srl    s10, s7, a2
sra    s4, a2, s7
srli   t5, s9, 0x16
lh     s4, 58(a4)
sra    s0, t4, s8
sltiu  x0, s6, 0x7b1
srli   ra, t1, 0x8
ori    tp, t4, 0x7c9
sltiu  a2, tp, 0x2e
sw     t3, 2023(a3)

# EXPECTED
# x2: 0x7c9
# x3: 0x7ef
# x4: 0x7c9
# x13: 0x1
# x16: 0x2f7
# x20: 0xba
# x24: 0x7ef
# x27: 0x7f5
# x31: 0x33
