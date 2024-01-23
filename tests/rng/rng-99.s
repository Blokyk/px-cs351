# Seed: 416214797

# Generation 52

# == filling regs ==
addi     t0,   x0, 0x18
addi     a5,   x0, 0x7de
addi     x0,   x0, 0x4
addi     a6,   x0, 0x59
addi     s3,   x0, 0x138

# == code ==
auipc    tp, 0x4e
lui      s0, 0xffff3
srai     a5,   s8, 0x1e
xor      t5,   a3,   s9
sb       s4, 525(t1)
addi     t6,   t5, 0x7ba
srl      sp,   a1,   t3
xor      a0,   s4,   s6
and      a3,   s7,  s10
srai     a6,  s10, 0x1c
sra     s10,   s5,   tp
sra      a7,   s9,   t5
add      a7,   a5,   s3
slti     t3,   a7, 0x414
sra      s2,  s10,   s7
sltu     t4,   tp,   a0
xori     ra,   a5, 0x59
slt      t6,   t2,   s4
xori     t1,  s11, 0x7f2
srai     s4,   t4, 0x1d
addi     ra,   s8, 0x4
srai     s4,   s5, 0x1d
jal      tp, 0x8
jalr     s2, 81(s1)
sd       s2, 1456(a3)
lui      t5, 0xa7688
xor      s8,   s6,  s10
sltu     s7,   s2,  s10
sd       t1, 1969(t2)
sw       a5, 2043(s2)

# EXPECTED
# x1: 0x4
# x4: 0x70
# x5: 0x18
# x6: 0x7f2
# x8: -0xd000
# x17: 0x138
# x19: 0x138
# x28: 0x1
# x30: -0x58978000
