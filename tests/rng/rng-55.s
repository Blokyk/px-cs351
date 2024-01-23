# Seed: 525474326

# Generation 101

# == filling regs ==
addi     s6,   x0, 0x60
addi     s8,   x0, 0x7d3
addi     t1,   x0, 0x2e
addi     t5,   x0, 0x50
addi     s9,   x0, 0x7c2

# == code ==
xor      x0,   a6,   t6
sb       s5, 1936(t1)
slli     a0,   s2, 0xb
slt      s9,   t1,   t4
lwu      a1, 26(ra)
bltu    s11,   gp, 0x60
xor      a4,   s9,   a0
lbu      t6, 2026(t5)
sra      s7,   a7,   s7
bltu     s2,   a2, -0x10 # (0xfffffff0)
sltu     a6,   tp,   s6
sub      t5,   t4,   s3
sd       s3, 22(s4)
lb       s3, 49(s9)
sll      gp,   s1,   s2
xor      t1,  s10,   s0
lwu      gp, 991(a7)
srli     ra,   s7, 0x1d
slt      s8,   s9,   gp
slti     x0,   ra, 0x5a
addi     a6,   tp, 0x3b
sltiu    t2,   x0, 0x4b5
slti     t6,   t4, 0x52
andi     s6,   s3, 0x4d
bltu     t4,   a3, -0x3c # (0xffffffc4)
srai     s6,   s5, 0x9
lui      s3, 0xffff1
and      x0,   tp,   t1
sltu     a4,   s1,   t6
srli     a5,   a1, 0x18

# EXPECTED
# x2: 0x4000
# x7: 0x1
# x11: 0x15137953
# x14: 0x1
# x15: 0x15
# x16: 0x3b
# x19: -0xf000
# x31: 0x1
