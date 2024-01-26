# Seed: 959337189

# Generation 75

# == filling regs ==
addi   a6, x0, 0xe5
addi   a1, x0, 0x5cd
addi   s7, x0, 0x23a
addi   s0, x0, 0x7e8
addi   t1, x0, 0x7bf

# == code ==
xori   s2, s11, 0x3d3
srai   t3, s8, 0x2
sw     s11, 22(s2)
slti   s8, s10, 0x7eb
bltu   s5, t5, -0x10 # (0xfffffff0)
ori    s4, a7, 0x1
sub    a0, a1, s2
lb     s4, 2022(s1)
sw     t6, 9(t1)
beq    sp, t1, -0x30 # (0xffffffd0)
sub    sp, s6, tp
bltu   s9, gp, -0x24 # (0xffffffdc)
srl    s8, t1, a1
and    a1, a3, s11
or     tp, s11, a0
bgeu   x0, t4, 0x8
xori   s3, s4, 0x7a2
ld     a5, 2041(tp)
lui    ra, 0xffffc
slti   a7, s1, 0x257
sra    ra, sp, x0
or     s4, s8, a6
sra    a5, s0, s4
slli   t3, s7, 0x17
addi   t0, t3, 0x23
addi   a6, s10, 0x3c
sub    t1, t5, a7
lui    a7, 0x5f
srli   gp, s7, 0xf
addi   t6, a2, 0x7c0

# EXPECTED
# x4: 0x1fa
# x5: 0x11d000023
# x6: -0x1
# x8: 0x7e8
# x10: 0x1fa
# x15: 0x3f
# x16: 0x3c
# x17: 0x5f000
# x18: 0x3d3
# x20: 0xe5
# x23: 0x23a
# x28: 0x11d000000
# x31: 0x7c0
