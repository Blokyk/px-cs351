# Seed: 1630185406

# Generation 50

# == filling regs ==
addi   s7, x0, 0x7ab
addi   t2, x0, 0x7d4
addi   s8, x0, 0x3e8
addi   s2, x0, 0x54
addi   t4, x0, 0x7bd

# == code ==
sw     a5, 1976(t1)
addi   a3, t5, 0x14
addi   s7, s10, 0x4c6
srai   t5, tp, 0x1d
srai   s11, tp, 0x9
lwu    t6, 1990(t5)
sh     s1, 1675(s11)
ld     s7, 1981(a4)
sw     s8, 1985(x0)
addi   s5, s5, 0x7a9
and    a7, s5, s1
srl    s0, sp, s4
ori    tp, gp, 0x481
lhu    a1, 634(t5)
slt    t3, s9, s3
srli   s8, a3, 0x10
sltu   sp, s1, t4
sltu   s4, t5, s1
ori    t5, t2, 0x12
bltu   x0, gp, -0x1b0 # (0xfffffe50)
srli   t3, t4, 0x13
lui    gp, 0xffffc
slt    x0, s0, t6
lw     t3, 2022(a4)
and    tp, sp, t4
srai   a4, t4, 0x4
lwu    s3, 54(t3)
srai   a4, x0, 0x0
xor    s7, a7, s3
ld     a2, 1857(s4)

# EXPECTED
# x2: 0x1
# x3: -0x4000
# x4: 0x1
# x7: 0x7d4
# x8: 0x4000
# x13: 0x14
# x18: 0x54
# x19: 0x8a937d80
# x21: 0x7a9
# x23: 0x8a937d80
# x29: 0x7bd
# x30: 0x7d6
