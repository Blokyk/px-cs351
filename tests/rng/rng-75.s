# Seed: 1836653730

# Generation 100

# == filling regs ==
addi     ra,   x0, 0x263
addi     t0,   x0, 0x38
addi     x0,   x0, 0x3b
addi     sp,   x0, 0x7fe
addi     x0,   x0, 0x7b8

# == code ==
lb       s8, 771(s5)
sltiu    a7,   s0, 0x506
srai     s7,   a4, 0x1a
ori      a7,   a4, 0x0
addi     s1,   ra, 0x35
addi     t6,   s4, 0x7c7
srl      x0,   s7,   ra
bne      s9,   x0, -0xc # (0xfffffff4)
sh       s6, 15(a0)
xori     gp,  s11, 0x29
bltu     s4,   a3, -0x10 # (0xfffffff0)
ori      s5,   t5, 0x7e3
slli     sp,  s11, 0xe
bne      a2,   t5, -0x34 # (0xffffffcc)
srl      s4,   a1,   a5
slt      a6,   s1,   sp
xori    s11,   a5, 0x5e
lh       x0, 40(s4)
srai     t0,   a7, 0x1
addi     s1,   t2, 0x5e
lwu      t6, 1652(a2)
andi     t6,   x0, 0x34
sb       sp, 2015(t5)
sd       a0, 44(t5)
slt      t3,   a2,   s1
addi     tp,   a2, 0x7d8
addi     a6,   t1, 0x7db
sll      t5,   a6,   a1
sub      sp,   a4,   s6
lw       t4, 1984(s6)

# EXPECTED
# x1: 0x263
# x3: 0x29
# x4: 0x7d8
# x9: 0x5e
# x16: 0x7db
# x21: 0x7e3
# x27: 0x5e
# x28: 0x1
# x30: 0x7db
