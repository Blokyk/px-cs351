# Seed: 1426074379

# Generation 114

# == filling regs ==
addi   t3, x0, 0x7e2
addi   t1, x0, 0xb
addi   a7, x0, 0x7d2
addi   s1, x0, 0x20
addi   gp, x0, 0x0

# == code ==
xori   t0, a6, 0x3e8
lhu    x0, 1213(a4)
sw     a6, 146(t6)
bltu   a5, a5, -0x58 # (0xffffffa8)
andi   t5, a2, 0x5e
addi   s5, s4, 0x704
lb     a4, 2036(t3)
sub    ra, a0, s11
jal    s6, 0x40
sub    s10, t0, a6
sltu   t0, s7, t1
sltu   s7, a0, a7
sub    s11, a3, t0
and    s9, s11, s6
sh     a2, 1271(gp)
srli   a0, t5, 0x5
sra    t2, a4, t4
sh     s8, 384(s7)
lw     a3, 749(s0)
bge    s1, s9, -0x28 # (0xffffffd8)
sra    s11, t2, sp
sd     tp, 2014(a1)
jal    ra, 0x20
lh     t4, 17(t1)
jal    t6, -0x24 # (0xffffffdc)
sd     x0, 1973(a5)
lui    s8, 0x15
or     s2, ra, ra
addi   t5, t2, 0x7ec
jal    gp, -0x8 # (0xfffffff8)

# EXPECTED
# x1: 0x70
# x2: 0x4000
# x5: 0x1
# x6: 0xb
# x9: 0x20
# x17: 0x7d2
# x21: 0x704
# x22: 0x38
# x23: 0x1
# x25: 0x38
# x26: 0x3e8
# x28: 0x7e2
# x31: 0x78
