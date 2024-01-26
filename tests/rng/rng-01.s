# Seed: 1688240728

# Generation 240

# == filling regs ==
addi   s2, x0, 0x7d4
addi   gp, x0, 0x2a
addi   a0, x0, 0x5
addi   a3, x0, 0x7d7
addi   gp, x0, 0x16

# == code ==
srai   s1, s11, 0x1f
or     s6, s11, t6
sra    s5, a4, a7
srl    sp, a5, gp
xor    a6, a1, t3
andi   s3, t5, 0x7e4
sub    s2, a2, ra
sll    a6, s4, a6
sll    tp, t4, t5
lwu    s8, 1958(tp)
blt    a1, a2, 0x50
and    a0, s7, a3
sh     s5, 179(t5)
ld     x0, 57(a4)
xori   t1, a5, 0x7f5
slli   s4, s6, 0xa
lhu    a7, 62(s7)
slli   s2, s2, 0x14
andi   t2, a2, 0x54
sll    a7, x0, s7
lwu    t0, 1687(s3)
sw     a0, 165(x0)
sll    ra, s2, s4
srai   t6, s9, 0x6
lui    a4, 0x3c
lui    t1, 0x77415
lw     t1, 2011(s7)
lh     s5, 89(s4)
andi   t6, a1, 0x52
addi   s2, s3, 0x53c

# EXPECTED
# x3: 0x16
# x13: 0x7d7
# x14: 0x3c000
# x18: 0x53c
# x21: 0x4919
