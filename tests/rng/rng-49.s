# Seed: 527016088

# Generation 51

# == filling regs ==
addi   s10, x0, 0x11e
addi   s10, x0, 0x79f
addi   t4, x0, 0x35
addi   x0, x0, 0x7c3
addi   t6, x0, 0x4d

# == code ==
slli   a7, s7, 0x6
sltu   s3, a3, s11
xor    t2, s10, s7
lb     tp, 2019(t3)
lhu    a1, 84(s11)
lbu    s7, 1986(s8)
auipc  s9, 0xfffbb
srl    s11, s0, ra
bne    s4, a2, -0xc # (0xfffffff4)
sb     t2, 1952(t0)
andi   t2, a3, 0x7da
sra    s6, a1, tp
addi   s11, t3, 0x7c9
jal    t1, 0x8
lb     t1, 2011(a4)
bne    t5, s0, 0x2c
lw     gp, 1996(s11)
lwu    sp, 62(a0)
xori   s5, t2, 0x22
srl    t0, t2, t6
srai   t3, a2, 0xe
or     a0, a5, s7
lwu    t1, 74(tp)
sh     a2, 2036(s11)
slli   a3, s6, 0x12
slti   t4, t3, 0x29
slli   a5, s8, 0x5
lwu    a5, 53(s0)
slli   a0, s11, 0x1
sltu   a2, s4, t1

# EXPECTED
# x2: 0xdb337da6
# x6: 0x3030080
# x10: 0xf92
# x11: 0xa183
# x12: 0x1
# x13: 0x2860c0000
# x15: 0x23feca1a
# x21: 0x22
# x22: 0xa183
# x25: -0x44fd4
# x26: 0x79f
# x27: 0x7c9
# x29: 0x1
# x31: 0x4d
