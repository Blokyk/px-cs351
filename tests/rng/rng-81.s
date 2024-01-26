# Seed: 1833246349

# Generation 1015

# == filling regs ==
addi   t0, x0, 0x23
addi   a2, x0, 0x7d1
addi   a2, x0, 0x2e
addi   s1, x0, 0x7e2
addi   a4, x0, 0x58

# == code ==
slti   s4, s8, 0x4e
slti   t3, a0, 0x1c
blt    s11, s11, -0x884 # (0xfffff77c)
lui    ra, 0xfffe2
sh     s8, 2002(t6)
sd     a0, 707(s2)
bne    a3, tp, 0xf50
lb     t2, 1983(s10)
ori    t2, s1, 0x39d
sub    a5, t4, s3
lhu    s9, 1956(a6)
srl    a4, t3, a6
slli   t1, s8, 0x15
bne    t1, s11, 0xbc0
xor    ra, s0, s5
srli   s8, s0, 0x17
ld     s7, 1961(s1)
sra    sp, a3, t1
lw     s9, 1076(t2)
lui    s11, 0xfffee
sub    t1, s7, a1
jal    ra, -0x60 # (0xffffffa0)
andi   ra, a3, 0x7de
addi   gp, x0, 0xf
slli   s10, s7, 0x14
ld     s5, 39(a5)
sltiu  a3, s5, 0x48c
lui    a5, 0x98b80
sub    s9, a5, t1
lhu    s2, 43(a1)

# EXPECTED
# x1: -0x1e000
# x5: 0x23
# x7: 0x7ff
# x9: 0x7e2
# x12: 0x2e
# x14: 0x1
# x20: 0x1
# x27: -0x12000
# x28: 0x1
