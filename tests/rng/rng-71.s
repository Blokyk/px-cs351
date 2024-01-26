# Seed: 841188907

# Generation 5

# == filling regs ==
addi   tp, x0, 0x7b6
addi   a2, x0, 0x7c4
addi   s6, x0, 0x674
addi   a7, x0, 0x2f
addi   t1, x0, 0x1

# == code ==
sltiu  t2, s9, 0x7be
xori   t0, t2, 0x7ec
sra    t6, s3, s6
slli   s11, t2, 0x6
and    s0, a7, s11
sltiu  x0, t5, 0x7db
and    s2, s10, s6
sh     s1, 97(a6)
srli   gp, a2, 0x1f
blt    s9, s0, -0x2c # (0xffffffd4)
sra    t0, s8, a1
slt    s1, sp, s5
xor    t3, x0, a2
auipc  s8, 0xfffd8
slt    s4, a2, a2
ori    t0, a0, 0x15
addi   s7, gp, 0x7b6
sltiu  x0, a0, 0x30
addi   s11, ra, 0x7cc
xori   s6, s3, 0x7ad
srl    s8, s4, s8
sw     a6, 260(s6)
addi   a4, t2, 0x518
sltu   t0, a2, s1
lw     tp, 43(t2)
sltu   s10, s4, t2
sw     s10, 37(s3)
xor    t2, x0, t3
sltu   a3, sp, a5
sw     a1, 36(a6)

# EXPECTED
# x2: 0x4000
# x4: 0x16d7933
# x6: 0x1
# x7: 0x7c4
# x12: 0x7c4
# x14: 0x519
# x17: 0x2f
# x22: 0x674
# x23: 0x7b6
# x26: 0x1
# x27: 0x7cc
# x28: 0x7c4
