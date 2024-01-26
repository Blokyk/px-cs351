# Seed: 544209011

# Generation 592

# == filling regs ==
addi   tp, x0, 0x3a
addi   a1, x0, 0x46
addi   t1, x0, 0x7b8
addi   a7, x0, 0x2a
addi   a5, x0, 0x7af

# == code ==
sw     a4, 2006(a2)
sra    x0, x0, a3
ori    a4, ra, 0x1d
sra    a2, a3, tp
addi   t3, x0, 0x2ed
auipc  s4, 0x41
lhu    a7, 98(t6)
srli   a3, a4, 0xa
sd     t6, 7(gp)
srai   gp, t2, 0x1b
sltu   s1, s6, t5
ld     s9, 2046(t1)
sltiu  s2, s9, 0x7ef
addi   a3, gp, 0x7e4
srli   a0, t4, 0x2
sltu   gp, a7, tp
and    t0, t0, a6
lwu    s9, 0(gp)
xori   a2, t3, 0x7ed
addi   a3, s10, 0x5d
sltiu  s3, gp, 0x3d
auipc  s3, 0xfffd1
sra    t3, a0, s3
xori   t2, s10, 0x7aa
sw     a1, 3(s8)
andi   t3, t3, 0x4
andi   a3, s9, 0x7d5
sltiu  t3, tp, 0x7c9
jal    s8, 0x54
or     t2, s5, a1

# EXPECTED
# x2: 0x4000
# x4: 0x3a
# x6: 0x7b8
# x7: 0x7aa
# x11: 0x46
# x12: 0x500
# x13: 0x211
# x14: 0x1d
# x15: 0x7af
# x17: 0x5dd
# x18: 0x1
# x19: -0x2ef98
# x20: 0x41028
# x24: 0x88
# x25: 0x3a00213
# x28: 0x1
