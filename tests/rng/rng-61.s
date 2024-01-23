# Seed: 1871432286

# Generation 48

# == filling regs ==
addi    s10,   x0, 0x7d1
addi     t5,   x0, 0xe
addi     ra,   x0, 0x61
addi     t6,   x0, 0x7e7
addi     t5,   x0, 0x3b0

# == code ==
lui      ra, 0x1d
sub      t1,   s9,  s10
and      gp,   s5,   t5
sltu     s0,   s7,   s1
sll      a0,   s8,   t0
slti     a3,   t5, 0x61
lh       a7, 17(tp)
slti     a0,   s0, 0xd5
srli     s5,   tp, 0x1
sh      s10, 329(t2)
blt      s8,   x0, 0x24
slt      s3,   a7,   x0
and      x0,   a6,   t1
lw       s9, 33(a0)
andi    s10,   s6, 0x3e3
srli    s11,   a6, 0x15
add      tp,   ra,   s2
sh       s7, 2025(a0)
srli     a3,   s7, 0x13
sltiu    a7,   s8, 0x6
lb       t6, 74(t2)
srai     s8,   s3, 0x17
sd       t0, 99(s3)
add      t1,  s11,   s1
xori     s0,   a6, 0x4e
lwu      s9, 2032(t6)
add      s5,   tp,   t5
blt      s3,   s8, 0xb5c
addi     t3,   x0, 0x17
lbu      a2, 1965(t2)

# EXPECTED
# x1: 0x1d000
# x2: 0x4000
# x4: 0x1d000
# x8: 0x4e
# x10: 0x1
# x17: 0x1
# x21: 0x1d3b0
# x28: 0x17
# x30: 0x3b0
# x31: 0x15
