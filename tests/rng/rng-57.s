# Seed: 1437623547

# Generation 163

# == filling regs ==
addi   t4, x0, 0x3f
addi   a7, x0, 0x322
addi   s7, x0, 0x7c9
addi   t4, x0, 0x25
addi   gp, x0, 0x15

# == code ==
blt    a1, a3, 0x4c
lwu    t0, 92(s8)
lui    s5, 0xfffba
addi   a4, gp, 0x23
slt    t0, s0, s11
xori   ra, ra, 0x7d4
srli   tp, a4, 0x1d
sra    t0, t1, s6
sh     t4, 1883(a1)
xori   x0, a6, 0x2b
xori   a2, t4, 0x19
srli   ra, a0, 0x3
add    t0, a6, t0
sub    s6, a7, t0
or     s6, a7, s4
sra    s2, t5, a5
sra    s1, a4, a7
or     s3, s4, t5
sh     s11, 2037(a2)
sh     a4, 606(t0)
slt    a7, t4, s5
srai   gp, s2, 0x18
sd     s1, 1990(gp)
sltiu  s11, s2, 0x6
addi   tp, t4, 0x7ec
andi   t0, s7, 0x7ad
sra    s7, a3, s8
or     t5, s11, s0
andi   s6, a1, 0x7f0
srli   a4, a0, 0xc

# EXPECTED
# x2: 0x4000
# x4: 0x811
# x5: 0x789
# x9: 0xe
# x12: 0x3c
# x21: -0x46000
# x27: 0x1
# x29: 0x25
# x30: 0x1
