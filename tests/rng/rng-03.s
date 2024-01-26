# Seed: 1496040598

# Generation 266

# == filling regs ==
addi   x0, x0, 0x5f1
addi   a4, x0, 0x35
addi   a6, x0, 0x7b2
addi   ra, x0, 0x7a3
addi   a5, x0, 0x7e6

# == code ==
blt    s8, t2, -0x30 # (0xffffffd0)
srai   s1, a2, 0x4
or     s2, t5, s4
slt    t0, sp, x0
xor    t1, ra, s7
srli   s4, sp, 0x1f
blt    a4, a7, 0x460
andi   a3, s5, 0x6bb
sll    a4, t2, s6
xor    a5, s1, t2
slli   s9, s4, 0x15
sra    a6, t0, a6
sltiu  s6, s7, 0x47d
ld     a3, 36(a7)
slt    s0, t4, tp
sltiu  s4, a6, 0x297
lwu    tp, 2040(a0)
bne    a6, s9, -0x54 # (0xffffffac)
sd     t2, 40(s2)
lui    a6, 0xfffee
lwu    s8, 2032(t1)
bge    a3, gp, -0x34 # (0xffffffcc)
andi   a5, t5, 0x7fe
sb     s3, 1979(s1)
srl    s7, s10, a7
sltiu  a0, t3, 0x3
slt    a5, a6, a7
bgeu   t3, t6, 0x24
sw     s7, 1957(t1)
jal    gp, -0x3c284 # (0xfffc3d7c)

# EXPECTED
# x1: 0x7a3
# x2: 0x4000
# x6: 0x7a3
# x13: 0x170c333
# x14: 0x35
# x15: 0x7e6
# x16: 0x7b2
# x18: 0x1
# x20: 0x1
# x22: 0x1
# x25: 0x200000
