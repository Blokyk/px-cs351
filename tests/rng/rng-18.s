# Seed: 1580160846

# Generation 131

# == filling regs ==
addi   a7, x0, 0x15
addi   a6, x0, 0x3e
addi   a7, x0, 0x19
addi   s8, x0, 0x7d9
addi   s7, x0, 0x7c1

# == code ==
sw     ra, 2007(a3)
slti   ra, s6, 0x7bb
addi   a0, s11, 0x112
srai   s10, x0, 0x1
ori    s6, t3, 0x7d7
andi   t3, s1, 0x36
lwu    ra, 2009(s11)
xori   x0, s10, 0x7d9
lw     t5, 1676(s4)
bge    a4, s6, 0xf68
lui    sp, 0xfffec
and    a6, s7, s10
sltu   s10, a0, s9
andi   a7, a1, 0x7b9
slti   gp, a1, 0x60f
slli   s8, t5, 0x13
andi   t2, s9, 0x3d
addi   tp, t1, 0x10
slti   s6, t6, 0x7
bne    s3, a3, -0x54 # (0xffffffac)
add    s5, s0, s6
lb     t4, 65(s1)
srai   a0, sp, 0x1d
lb     s8, 80(t1)
sltiu  t6, s9, 0x7f5
xor    gp, s1, s7
andi   a4, a3, 0x51
add    a7, a2, t0
slli   a0, a5, 0x12
sh     s1, 1367(s9)

# EXPECTED
# x2: -0x14000
# x3: 0x7c1
# x4: 0x10
# x21: 0x1
# x22: 0x1
# x23: 0x7c1
# x24: 0x13
# x29: -0x8
# x31: 0x1
