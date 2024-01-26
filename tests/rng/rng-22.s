# Seed: 2074189573

# Generation 79

# == filling regs ==
addi   t0, x0, 0x2d4
addi   a5, x0, 0x7c9
addi   t1, x0, 0x39
addi   s8, x0, 0x5e
addi   a7, x0, 0x7c9

# == code ==
sw     t2, 1997(s7)
andi   sp, a6, 0x9
sb     a6, 91(s1)
and    s11, s8, ra
ld     s0, 1984(a2)
blt    t2, s6, -0x38 # (0xffffffc8)
slti   t0, tp, 0x7e9
slti   t5, s8, 0x181
sh     sp, 1437(tp)
lhu    s4, 49(a2)
slti   a4, a3, 0x11a
sh     a0, 13(a3)
slli   s11, t4, 0x7
sltiu  t0, s6, 0xb
andi   a6, a4, 0x7f6
sw     s6, 1984(t4)
auipc  a3, 0x17
addi   sp, a2, 0x4c7
sub    a3, t0, tp
srl    sp, t3, s5
lhu    ra, 59(gp)
andi   s2, gp, 0x59b
lui    t5, 0xffff8
auipc  tp, 0xfffcf
sltiu  t5, s9, 0x187
sb     a4, 85(a2)
sltiu  t4, t3, 0x7e6
addi   a4, s2, 0x7a5
addi   sp, s9, 0x4e
jal    a6, 0x44

# EXPECTED
# x1: 0x1303
# x2: 0x4e
# x4: -0x30f90
# x5: 0x1
# x6: 0x39
# x13: 0x1
# x14: 0x7a5
# x15: 0x7c9
# x16: 0x8c
# x17: 0x7c9
# x20: 0x1c2f
# x24: 0x5e
# x29: 0x1
# x30: 0x1
