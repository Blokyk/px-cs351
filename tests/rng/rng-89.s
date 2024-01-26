# Seed: 2054136828

# Generation 248

# == filling regs ==
addi   t6, x0, 0x7c4
addi   s2, x0, 0x4c
addi   a7, x0, 0x7f5
addi   t6, x0, 0x79e
addi   a7, x0, 0x4b

# == code ==
sd     a6, 1962(t6)
addi   t1, s3, 0x2c
srai   a7, s5, 0x7
sb     t3, 1982(a6)
sh     t0, 93(s6)
sra    sp, t2, t5
sltu   sp, a0, t2
lw     gp, 1922(t6)
sltu   sp, t2, a5
andi   a2, t6, 0x17c
srli   a2, t6, 0x9
lb     a2, 2016(s4)
lwu    s5, 1950(ra)
sd     a6, 26(s6)
lb     gp, 1359(t2)
lui    t6, 0x39
lw     s5, 2022(s3)
slti   a0, s0, 0x31
sltiu  s8, t6, 0x62
slti   a2, t5, 0x7bb
lh     tp, 9(a3)
bne    t2, s10, 0xac
jalr   t0, 0(a7)
sltiu  a3, a5, 0x12
slti   s7, tp, 0x27d
and    tp, t2, s3
sh     s1, 1999(s8)
srai   sp, s1, 0x17
jal    s6, -0x74d0c # (0xfff8b2f4)
jal    s1, -0x5638c # (0xfffa9c74)

# EXPECTED
# x4: 0x5008
# x5: 0x70
# x10: 0x1
# x12: 0x1
# x17: 0x4b
# x18: 0x4c
# x31: 0x79e
