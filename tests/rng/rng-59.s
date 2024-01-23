# Seed: 781506231

# Generation 22

# == filling regs ==
addi     t5,   x0, 0x5ca
addi     a4,   x0, 0x7aa
addi     s3,   x0, 0x7c5
addi     s9,   x0, 0x7e5
addi     sp,   x0, 0x8

# == code ==
sub      a4,   tp,   s4
blt      s1,   x0, -0x44 # (0xffffffbc)
addi     s9,   a2, 0x7fd
sb       t0, 892(a0)
lh       s7, 1998(s11)
or       s9,   s7,   s4
sb      s11, 1168(t3)
andi     s1,   t3, 0x11
ori      s0,   s2, 0x7af
sll      s5,   tp,   s3
bltu     t2,   t6, 0x0
bgeu     a0,   s0, 0x38
andi    s10,   s2, 0x74b
add      a7,   t0,   t3
slt     s11,   a7,   a2
lh       a5, 2025(t0)
slt      a1,   a6,   s3
andi     tp,   a1, 0x2d
or       s7,   s4,   a7
sltu     a5,   t2,   t6
srai    s11,   s8, 0x6
srl      s3,   a3,   t4
xori     s2,   s6, 0x43
addi     s1,   s7, 0xa4
ori      t3,   a1, 0x7ae
lb       a6, 1557(ra)
lui      t6, 0x75ab0
lhu      t2, 24(a5)
sw       t3, 73(x0)
sd       a7, 1970(a7)

# EXPECTED
# x2: 0x8
# x4: 0x1
# x7: 0xcee3
# x8: 0x7af
# x9: 0xa4
# x11: 0x1
# x18: 0x43
# x28: 0x7af
# x30: 0x5ca
# x31: 0x75ab0000
