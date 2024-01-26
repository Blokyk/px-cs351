# Seed: 2015458035

# Generation 8

# == filling regs ==
addi   s2, x0, 0x7b0
addi   s8, x0, 0x4a
addi   a1, x0, 0x4e3
addi   s1, x0, 0x6
addi   s2, x0, 0x7f7

# == code ==
sub    t5, ra, a2
slti   s6, s11, 0x62
lui    a3, 0xffffb
lhu    t4, 649(t6)
xori   t4, s5, 0x7ae
slt    t4, t0, a3
slti   ra, a5, 0x7b2
andi   t2, a6, 0x23
sll    x0, t1, t5
bgeu   s7, s8, 0x14
srl    tp, a6, s5
lbu    t4, 2033(s2)
srl    gp, ra, s5
sb     s1, 15(tp)
lui    a4, 0xfffd4
slli   a3, s3, 0x15
andi   s9, s9, 0x68e
sll    s6, t3, ra
add    a0, t4, s6
lwu    s4, 1649(s6)
srl    t0, s11, s8
sltu   a0, t2, t0
srli   s5, s9, 0x1e
and    s10, a2, t1
and    a5, t4, sp
sd     s5, 1982(s10)
ld     x0, 57(s0)
bgeu   s9, gp, 0x50
lbu    s8, 1976(x0)
andi   s1, gp, 0x2a

# EXPECTED
# x1: 0x1
# x2: 0x4000
# x3: 0x1
# x11: 0x4e3
# x14: -0x2c000
# x18: 0x7f7
