# Seed: 922269949

# Generation 48

# == filling regs ==
addi   s7, x0, 0x3d
addi   ra, x0, 0x48e
addi   a2, x0, 0x5c
addi   s1, x0, 0x36
addi   a5, x0, 0x7ce

# == code ==
srai   a2, t0, 0x15
blt    s8, a4, 0x24
sltu   a0, s5, s1
sw     a0, 1278(a5)
lwu    t4, 44(s10)
lw     s5, 29(a0)
xor    t5, a7, t4
addi   a7, sp, 0x17
bge    s10, a5, -0x48 # (0xffffffb8)
bltu   t3, s3, 0x0
and    a5, tp, s11
lwu    a7, 1902(t0)
xori   a4, s11, 0x7b1
lb     s2, 32(t0)
xori   a0, t1, 0x30
add    t4, s1, a6
sll    a2, s1, s7
or     ra, t2, s1
and    gp, s3, a2
slt    a0, s6, s5
slti   a6, t1, 0x79e
xor    a2, t5, a2
sw     s4, 21(a1)
slli   sp, s4, 0x16
sltu   s5, s7, t1
lh     s6, 2033(sp)
or     s11, s5, t3
xor    a1, sp, x0
srai   a5, s1, 0xa
lui    a5, 0x95819

# EXPECTED
# x1: 0x36
# x9: 0x36
# x12: 0x6c1d8cf33
# x14: 0x7b1
# x15: -0x6a7e7000
# x16: 0x1
# x18: 0x23
# x23: 0x3d
# x29: 0x36
# x30: 0x1d8cf33
