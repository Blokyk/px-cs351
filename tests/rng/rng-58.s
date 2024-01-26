# Seed: 287512550

# Generation 63

# == filling regs ==
addi   t6, x0, 0x534
addi   a7, x0, 0xe
addi   s7, x0, 0xc
addi   s3, x0, 0x6d0
addi   sp, x0, 0x686

# == code ==
or     a4, s7, s6
slli   t0, tp, 0x13
xor    s6, s11, a0
ld     a7, 1477(t1)
slti   s5, t1, 0x7d7
addi   x0, gp, 0x18
and    s2, t3, t6
lw     s11, 403(s0)
ori    s5, s3, 0x1c
sw     a7, 2035(t6)
lw     s5, 2020(s8)
srli   t5, s1, 0x14
srai   s11, t5, 0xe
andi   x0, a7, 0x4
or     a5, s10, a3
lh     s9, 57(a4)
srl    t0, s7, s7
sll    s7, s6, s11
sltu   s8, t5, t2
add    s1, s7, ra
xor    s9, a4, t1
sb     sp, 80(s10)
srli   s8, a4, 0x1e
sll    a0, a0, s5
add    a5, a1, x0
sb     tp, 86(a3)
sw     t2, 65(x0)
andi   a7, s3, 0x57
sltu   s11, t4, t0
addi   s4, a7, 0x20

# EXPECTED
# x2: 0x686
# x14: 0xc
# x17: 0x50
# x19: 0x6d0
# x20: 0x70
# x25: 0xc
# x31: 0x534
