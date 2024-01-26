# Seed: 1693749090

# Generation 419

# == filling regs ==
addi   s7, x0, 0x4b5
addi   s9, x0, 0x71d
addi   a7, x0, 0x3d
addi   t2, x0, 0x7e4
addi   t1, x0, 0x29

# == code ==
lui    s6, 0x6fb3f
slt    t2, s8, gp
xori   s4, a7, 0x7be
andi   t5, a3, 0x52
sh     a4, 1951(gp)
slli   s11, a4, 0xd
slti   s6, s9, 0x7bc
ori    sp, s9, 0x7e5
lui    gp, 0xd8cd3
sltiu  s11, s0, 0x7a8
sra    a6, gp, s3
sub    a3, a0, t1
xori   t5, s9, 0x7dc
andi   s6, s8, 0x7f4
sltiu  t5, a1, 0x7bf
srli   s6, a1, 0x11
addi   tp, a7, 0x2b
sd     s3, 2047(a1)
lui    a5, 0xffffa
xori   a6, t4, 0x369
srai   s4, a6, 0x0
addi   t0, t3, 0x25
lhu    s9, 1962(x0)
lui    a3, 0x27
lbu    s7, 88(t3)
sd     s0, 4(a2)
lui    sp, 0x22
or     t0, s10, s8
sh     s9, 2029(tp)
bne    s10, t6, 0x50

# EXPECTED
# x2: 0x22000
# x3: -0x2732d000
# x4: 0x68
# x6: 0x29
# x13: 0x27000
# x15: -0x6000
# x16: 0x369
# x17: 0x3d
# x20: 0x369
# x23: 0xa3
# x27: 0x1
# x30: 0x1
