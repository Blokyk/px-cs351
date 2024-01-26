# Seed: 313833342

# Generation 180

# == filling regs ==
addi   t1, x0, 0x7e2
addi   s2, x0, 0x52
addi   gp, x0, 0x788
addi   a4, x0, 0x4c
addi   t4, x0, 0x67a

# == code ==
or     s4, s11, tp
srli   t3, s1, 0x19
sw     s8, 157(s11)
sra    sp, t3, a7
sd     s1, 1008(a0)
xor    ra, a1, a1
slli   a0, t4, 0x10
ori    a1, a0, 0x6ac
sh     s8, 2006(a2)
sltiu  s0, a4, 0x7ff
sh     a2, 1960(a5)
or     s0, tp, t2
bne    t5, t5, -0xd64 # (0xfffff29c)
srli   s3, s3, 0x1a
ld     s4, 1240(a2)
add    s10, s4, sp
lhu    tp, 2040(s2)
sh     a3, 2038(s9)
sra    ra, s6, t3
slli   s1, a7, 0x13
addi   s11, gp, 0x680
lh     ra, 893(sp)
addi   x0, s11, 0x762
slt    t5, a0, x0
xori   a3, s4, 0x4f5
and    s1, s4, s5
sltu   s2, t6, s3
auipc  t6, 0xfffd8
add    t3, a4, s4
sltu   tp, s6, s10

# EXPECTED
# x3: 0x788
# x6: 0x7e2
# x10: 0x67a0000
# x11: 0x67a06ac
# x13: 0x4f5
# x14: 0x4c
# x27: 0xe08
# x28: 0x4c
# x29: 0x67a
# x31: -0x27f80
