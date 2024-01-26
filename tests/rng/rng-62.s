# Seed: 1537843834

# Generation 63

# == filling regs ==
addi   a7, x0, 0x7a4
addi   s7, x0, 0x68
addi   t4, x0, 0x15
addi   s0, x0, 0x4e6
addi   t0, x0, 0x2

# == code ==
lbu    s1, 2012(t2)
sltu   s9, s7, s5
sra    s6, s5, s1
xor    t4, a0, t2
srai   a6, s1, 0xe
xor    s4, x0, s3
bne    s10, x0, 0x5c
sub    a0, a4, x0
slti   a3, x0, 0x7ba
slli   s1, a1, 0x6
slti   ra, t0, 0x585
slli   a1, a2, 0x6
ori    s4, a2, 0x7a0
slt    t2, s4, t5
sltiu  s1, a7, 0x7f4
sltiu  s2, s10, 0x6f7
slt    tp, s11, s2
bgeu   s1, s4, 0x44
or     s11, t3, t2
sltiu  s6, ra, 0x7a5
lb     s5, 71(s1)
sltu   x0, t6, gp
blt    s8, s9, 0x34
sra    t4, a6, t6
sltiu  sp, a4, 0x7d1
lwu    x0, 1986(s5)
xori   s7, s11, 0x357
sub    s5, s4, a1
slli   s5, s2, 0xa
srl    s4, s7, t3

# EXPECTED
# x1: 0x1
# x2: 0x1
# x4: 0x1
# x5: 0x2
# x8: 0x4e6
# x9: 0x1
# x13: 0x1
# x17: 0x7a4
# x18: 0x1
# x20: 0x357
# x21: 0x400
# x22: 0x1
# x23: 0x357
