# Seed: 1792353628

# Generation 170

# == filling regs ==
addi   s9, x0, 0x7c0
addi   a1, x0, 0x7
addi   t2, x0, 0x7eb
addi   ra, x0, 0x7df
addi   t3, x0, 0x301

# == code ==
xori   tp, s5, 0x2d
andi   t6, s3, 0xf4
and    a3, t5, t2
sw     t2, 1952(s1)
sb     a1, 364(s1)
slti   t6, t6, 0x7c0
lui    a0, 0xfffb3
srai   s5, t5, 0x18
and    t0, t0, a5
sh     s3, 17(gp)
ori    t5, a4, 0x4
bne    t3, t3, -0x14 # (0xffffffec)
auipc  s5, 0xfffef
sb     s10, 2013(a1)
sltiu  s0, s8, 0x3c
slti   s6, a5, 0x7c6
sll    t0, s1, a4
andi   tp, s7, 0x62
srli   ra, s9, 0x4
lb     s11, 2009(s10)
srli   s4, s8, 0x16
lwu    t3, 13(s8)
sll    s3, s11, t4
bge    s4, s6, -0x14c # (0xfffffeb4)
slli   a5, s10, 0x10
auipc  s0, 0xffff8
lb     tp, 47(t4)
srli   t2, s8, 0xb
lwu    t3, 959(t6)
addi   s9, s5, 0x7a9

# EXPECTED
# x1: 0x7c
# x2: 0x4000
# x4: -0x1
# x8: -0x7f88
# x10: -0x4d000
# x11: 0x7
# x21: -0x10fbc
# x22: 0x1
# x25: -0x10813
# x30: 0x4
# x31: 0x1
