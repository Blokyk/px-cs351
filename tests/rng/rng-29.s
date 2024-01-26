# Seed: 404232545

# Generation 98

# == filling regs ==
addi   s0, x0, 0x3d
addi   a1, x0, 0x7de
addi   s5, x0, 0x7ad
addi   s8, x0, 0x240
addi   t3, x0, 0x25

# == code ==
srli   sp, a5, 0x13
and    t0, s11, s3
sb     x0, 62(s0)
sltiu  a2, ra, 0x33
lbu    x0, 37(ra)
add    a6, tp, ra
sw     s8, 2026(a0)
sll    s6, s10, a7
add    ra, s4, s8
add    a4, s4, s2
sltu   t3, gp, s2
slli   t1, a5, 0x0
sh     s7, 1270(s6)
or     s7, a5, t6
sub    s7, s1, ra
sltiu  sp, a4, 0x5f1
sra    s8, t0, a6
srai   gp, a2, 0x1b
lbu    ra, 40(a1)
sltu   a1, s2, s10
and    a7, t5, t3
sltu   s10, t1, a1
or     x0, a2, a1
sll    ra, s7, a5
sra    s11, t6, a1
sb     a4, 41(t1)
slt    a1, a2, s8
bne    t0, s8, 0x1c
sb     t6, 88(a0)
addi   s3, a2, 0x39

# EXPECTED
# x1: -0x240
# x2: 0x1
# x8: 0x3d
# x12: 0x1
# x19: 0x3a
# x21: 0x7ad
# x23: -0x240
