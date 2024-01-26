# Seed: 488301476

# Generation 76

# == filling regs ==
addi   s8, x0, 0x1
addi   s7, x0, 0x59
addi   a6, x0, 0x4a4
addi   t2, x0, 0x2
addi   s1, x0, 0x634

# == code ==
srai   x0, t0, 0x4
add    t1, x0, s1
andi   s6, s0, 0x60
bltu   t6, t6, -0xa40 # (0xfffff5c0)
bge    s5, t1, -0x4 # (0xfffffffc)
srli   s10, t2, 0x13
andi   t1, s7, 0x21
sltu   s4, t0, s2
addi   s3, a7, 0x2f
slti   x0, a4, 0xd
andi   a6, t5, 0xd
slli   a2, t2, 0xf
sltu   sp, a2, a7
srl    gp, a0, a1
slt    s5, t0, s0
lui    t1, 0xfffb5
sw     t2, 2017(ra)
sra    t2, s8, s0
and    x0, t2, t0
lh     gp, 33(s8)
slti   t5, a1, 0x7fc
sltu   a3, s9, ra
srl    t6, a1, sp
lb     s0, 2021(sp)
sw     a1, 1006(s3)
sra    t5, a2, ra
addi   t0, s6, 0x31
sub    x0, t5, s0
bltu   s3, a4, 0x50
jalr   s5, 1980(s6)

# EXPECTED
# x3: -0x2201
# x5: 0x31
# x6: -0x4b000
# x7: 0x1
# x9: 0x634
# x12: 0x10000
# x19: 0x2f
# x21: 0x8c
# x23: 0x59
# x24: 0x1
# x30: 0x10000
