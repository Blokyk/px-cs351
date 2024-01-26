# Seed: 1320805423

# Generation 189

# == filling regs ==
addi   s5, x0, 0x0
addi   t2, x0, 0x7d9
addi   s9, x0, 0x7b7
addi   a1, x0, 0x7df
addi   t4, x0, 0x33

# == code ==
sltu   a5, s10, a7
sb     s9, 75(t0)
ori    a2, a0, 0x5f1
srli   a5, t2, 0x19
slt    t0, t3, ra
sh     s0, 1990(t2)
srli   s6, t0, 0x1a
sll    x0, a3, a0
lb     t6, 2008(s9)
lhu    x0, 1977(a4)
sh     tp, 30(s3)
srli   t5, s1, 0xb
or     a0, s7, s2
slti   a3, s0, 0x5e
bne    t0, s8, -0x4c # (0xffffffb4)
sltu   tp, s2, a1
slt    s9, a3, s11
sh     t1, 2038(s7)
and    s1, ra, t1
or     gp, x0, a1
srli   t1, s4, 0x19
bltu   s8, a2, -0x50 # (0xffffffb0)
bge    a7, s10, 0x14
add    s2, s5, tp
sd     t2, 64(t2)
bltu   ra, s5, 0xdb0
lui    a3, 0x5ef26
sll    a1, s4, a0
xori   a0, x0, 0x60
srli   s3, a6, 0x1b

# EXPECTED
# x2: 0x4000
# x3: 0x7df
# x4: 0x1
# x7: 0x7d9
# x10: 0x60
# x13: 0x1
# x29: 0x33
