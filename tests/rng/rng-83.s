# Seed: 603619605

# Generation 12

# == filling regs ==
addi   t5, x0, 0x7c2
addi   s11, x0, 0x7e8
addi   s10, x0, 0x7d7
addi   s0, x0, 0x49
addi   t6, x0, 0x3b

# == code ==
sra    s3, s10, t1
sll    a0, a2, s8
sb     t0, 99(t3)
add    t2, sp, t5
add    a0, s3, gp
slti   x0, a2, 0x1d8
sub    a3, a3, s7
andi   ra, t6, 0x7
and    s7, t3, s0
slti   s3, s2, 0x7ff
blt    sp, s8, 0xc
sll    s0, s2, s5
slti   sp, gp, 0x7c1
sltu   x0, s2, gp
or     s0, s6, s3
lwu    s11, 1972(s7)
ori    a2, s10, 0x7ef
and    s5, s0, tp
xori   a5, t6, 0x34
sb     s11, 1980(s8)
sd     t2, 1966(s3)
srai   t1, s3, 0x16
sll    x0, s2, gp
slt    a2, s7, s1
sll    s4, a3, t4
slli   t5, a6, 0x9
ori    gp, s0, 0x6e4
sub    s9, x0, s2
lui    a6, 0xfffd6
lui    s9, 0x63

# EXPECTED
# x1: 0x3
# x2: 0x1
# x3: 0x6e5
# x7: 0x47c2
# x8: 0x1
# x10: 0x7d7
# x15: 0xf
# x16: -0x2a000
# x19: 0x1
# x25: 0x63000
# x26: 0x7d7
# x31: 0x3b
