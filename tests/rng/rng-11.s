# Seed: 862738483

# Generation 9

# == filling regs ==
addi   a7, x0, 0x7cb
addi   s2, x0, 0x44
addi   a4, x0, 0x23a
addi   s3, x0, 0x777
addi   sp, x0, 0x1e

# == code ==
sh     tp, 2031(s0)
sub    a6, gp, s9
slli   a2, s1, 0x3
srai   s4, gp, 0x10
lui    s6, 0xfffb4
srli   a0, t4, 0x1e
sltiu  t1, s6, 0x2d
sll    s7, s7, s10
lbu    s4, 0(x0)
ori    a1, ra, 0x460
and    t5, s10, a4
ori    t0, t4, 0x7d0
xori   t6, x0, 0x7d6
sh     gp, 99(t6)
sub    tp, t0, s5
sh     t2, 2013(t2)
or     a4, gp, t4
xor    t3, gp, s1
srli   ra, a7, 0x1
sh     a7, 1972(s9)
blt    s9, t5, 0x8
sw     s2, 5(s5)
lui    s8, 0x39a3f
xor    s4, tp, t0
lh     t1, 2031(t6)
addi   s8, s7, 0x7ce
slli   a1, t6, 0x4
lui    x0, 0x96f53
sb     s4, 1949(s11)
lui    x0, 0x5b

# EXPECTED
# x1: 0x3e5
# x2: 0x1e
# x4: 0x7d0
# x5: 0x7d0
# x11: 0x7d60
# x17: 0x7cb
# x18: 0x44
# x19: 0x777
# x22: -0x4c000
# x24: 0x7ce
# x31: 0x7d6
