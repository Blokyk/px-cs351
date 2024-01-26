# Seed: 686716138

# Generation 331

# == filling regs ==
addi   t0, x0, 0x7a3
addi   gp, x0, 0x1d3
addi   t6, x0, 0x8
addi   s10, x0, 0x7af
addi   a6, x0, 0x7a7

# == code ==
sh     ra, 547(a6)
lbu    s9, 2011(t3)
srai   t1, t6, 0x1f
xori   s0, t4, 0x49
sh     a7, 1612(t2)
slli   s6, a0, 0x18
sltiu  t2, s6, 0x7c6
srli   ra, t5, 0x1e
beq    t3, gp, 0x5c
sltu   x0, s4, x0
beq    s0, a5, 0x18
sh     s10, 1965(tp)
bne    x0, s9, 0xc6c
slti   t5, sp, 0x2f7
ori    t2, s0, 0x7fa
lui    s8, 0x3ce76
lh     ra, 190(s6)
srl    t4, s8, a0
slli   a6, x0, 0x2
slt    tp, s3, tp
slt    t0, tp, s10
andi   s10, s1, 0x435
andi   a2, gp, 0x7a2
slli   a0, t4, 0xd
slli   a3, s2, 0x9
lui    s3, 0x40
beq    s3, s5, -0x8 # (0xfffffff8)
sb     tp, 7(a2)
or     t4, s10, x0
slt    x0, s11, a6

# EXPECTED
# x2: 0x4000
# x3: 0x1d3
# x5: 0x1
# x7: 0x7fb
# x8: 0x49
# x10: 0x79cec000000
# x12: 0x182
# x19: 0x40000
# x24: 0x3ce76000
# x31: 0x8
