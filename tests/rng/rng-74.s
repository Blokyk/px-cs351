# Seed: 1648645125

# Generation 300

# == filling regs ==
addi     a0,   x0, 0x7b3
addi     s0,   x0, 0x7e1
addi     t4,   x0, 0x7a3
addi     s1,   x0, 0xf
addi     s7,   x0, 0x602

# == code ==
lw       t4, 91(a1)
bltu     s2,   a1, 0x40
lwu      a4, 2023(t0)
lh       s5, 32(a2)
bltu     tp,   a7, 0x14
srl      s8,   s5,   t1
sra      a5,   a0,   s1
sra      s4,   a4,   t2
sw       a3, 10(a3)
andi     s2,   s3, 0x2d
bne     s10,   a4, -0x44 # (0xffffffbc)
sltiu    a7,   sp, 0x7ed
andi     a7,   t6, 0x7bc
srai     a1,   s9, 0x11
sh       a5, 1311(t3)
lui      x0, 0x63
slti     t3,   s8, 0x1f6
srai     s6,   s2, 0x1f
lui      s6, 0xebc00
sd       s0, 1951(t3)
lwu      a5, 1586(a6)
sh       a2, 2034(x0)
and      s8,   a1,   a3
auipc    sp, 0x2a
srl      t2,   s1,   x0
addi     s7,   t4, 0x11
lui      sp, 0x55
slti     s7,   a6, 0x7a8
sra      s7,   a6,  s10
add      s4,   gp,   t6

# EXPECTED
# x2: 0x55000
# x7: 0xf
# x8: 0x7e1
# x9: 0xf
# x10: 0x7b3
# x21: 0x1a83
# x22: -0x14400000
# x29: -0x3ff4c8bf
