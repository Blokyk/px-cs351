# Seed: 134822

# Generation 33

# == filling regs ==
addi     s6,   x0, 0x7c1
addi     s2,   x0, 0x5b
addi     a2,   x0, 0x1c
addi     s3,   x0, 0x5f
addi     t0,   x0, 0x7ce

# == code ==
bltu     t5,  s10, -0x4 # (0xfffffffc)
lw       t4, 1967(s6)
sra      s7,   t2,   tp
lh       s5, 1932(x0)
lw       t4, 39(a7)
slt     s11,  s11,   a2
sd       a4, 1975(s0)
sd       a0, 1957(s9)
sw       gp, 1958(a0)
srai     s6,   s8, 0x9
sltu     s0,   t3,   a1
lh       a1, 92(s6)
srl     s10,   ra,   x0
srai    s11,  s11, 0x1a
andi     s2,   s7, 0x7c7
or       a0,   sp,   x0
auipc    a7, 0x5
ori      s3,   t1, 0x7d8
lw       s6, 31(t1)
auipc    s1, 0x92c7e
blt      ra,   s9, 0x778
slti     s5,   s0, 0x651
bltu     s6,   t5, 0xc
sltu     s5,   sp,   t3
sb       s0, 83(t2)
srli     s9,   s7, 0x4
sb       t5, 10(x0)
slt      s3,   s9,   t4
bltu     tp,   s2, 0x4
xori     t6,   s0, 0x7df

# EXPECTED
# x2: 0x4000
# x5: 0x7ce
# x9: -0x6d381fa0
# x10: 0x4000
# x11: 0x2b03
# x12: 0x1c
# x17: 0x5054
# x22: -0x3fe57cc0
# x29: -0x32524cfe
# x31: 0x7df
