# Seed: 199999736

# Generation 52

# == filling regs ==
addi     s1,   x0, 0x14
addi     s5,   x0, 0x7ad
addi    s11,   x0, 0x4f
addi     ra,   x0, 0x50
addi     t3,   x0, 0x554

# == code ==
xori     a4,   a2, 0x7f1
sh      s11, 1980(t2)
sltu     t3,   t4,   a4
ori      s3,   a2, 0x7fc
srli     a1,   a1, 0x1b
srai     t4,   s1, 0xc
sra      t2,   s2,   s6
sltu     x0,   t0,   s1
sra      t6,   t5,   sp
ld       a7, 1962(t3)
srli     sp,   s6, 0x1
sll      s2,   s0,   a7
ld       s8, 34(a0)
add      t1,   gp,   s4
slli     a5,   s8, 0x5
sll      t6,   t6,   s4
srai     t0,   tp, 0x1b
addi     s5,   t1, 0x3ad
sh       a5, 30(x0)
lui      a3, 0x5a
xori     s8,   s6, 0x7d8
and      a1,   t3,   t5
xor      gp,   s9,   a7
xori     a6,   s9, 0x7eb
sra      sp,   s4,   s7
bne      s9,   sp, 0x58
sltiu    a0,   s5, 0x7c6
srai     s8,   s7, 0x1c
xori     s2,   t2, 0x4e
slti     s3,   s5, 0x2d

# EXPECTED
# x1: 0x50
# x9: 0x14
# x10: 0x1
# x13: 0x5a000
# x14: 0x7f1
# x15: -0x2d9fc9454d900740
# x16: 0x7eb
# x18: 0x4e
# x21: 0x3ad
# x27: 0x4f
# x28: 0x1
