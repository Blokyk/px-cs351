# Seed: 1309234646

# Generation 179

# == filling regs ==
addi   gp, x0, 0x7e4
addi   tp, x0, 0x70
addi   a2, x0, 0x27e
addi   t0, x0, 0x7b7
addi   s3, x0, 0xe

# == code ==
sb     s3, 1984(a2)
lui    t3, 0xfffb6
ori    s5, t5, 0x7b7
blt    a3, s1, -0x4dc # (0xfffffb24)
andi   t5, a5, 0x7a2
add    a1, s7, a5
slt    a5, t0, t2
slti   s4, ra, 0xa7
ori    t6, a0, 0x28
srai   s5, tp, 0x19
xori   s8, ra, 0x7ab
add    s0, t3, t6
sh     tp, 2008(s1)
sll    s7, t6, tp
srl    t0, a7, a5
xor    t6, s6, tp
slli   t5, s9, 0x1a
add    s6, a2, s9
bge    a7, s4, 0x28
xori   s4, t5, 0x20
beq    s8, t4, 0x60
sub    s2, s7, t6
sltu   a5, t3, a3
sd     s11, 2026(a1)
srai   a5, a4, 0x4
srl    t6, t2, a1
beq    t1, s10, 0x4
ld     s1, 22(s9)
srai   a4, s10, 0xe
sra    a5, s8, s7

# EXPECTED
# x2: 0x4000
# x3: 0x7e4
# x4: 0x70
# x8: -0x49fd8
# x9: 0x6a93fffb6e377d36
# x12: 0x27e
# x15: 0x7ab
# x18: 0x27ff90
# x19: 0xe
# x20: 0x20
# x22: 0x27e
# x23: 0x280000
# x24: 0x7ab
# x28: -0x4a000
