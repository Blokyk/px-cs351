# Seed: 729054276

# Generation 50

# == filling regs ==
addi     t2,   x0, 0x175
addi     s2,   x0, 0x3a
addi     ra,   x0, 0x2e9
addi    s10,   x0, 0x7f1
addi     s8,   x0, 0x7fe

# == code ==
sltiu    t2,   s4, 0x59
srli     a6,   s4, 0x1
auipc    s4, 0x5c
sub      s2,   s3,   ra
sltu     gp,   a5,   tp
srli     a5,   a5, 0x8
lbu      gp, 31(t6)
lb       s4, 97(s1)
ori      a0,   s5, 0x3c
xori     a1,   ra, 0x548
srli     s0,   s8, 0xb
sll      s1,   a3,   t6
bltu     t0,   t6, 0xd4c
bne      t6,   s9, 0xc74
blt      s6,   s0, -0xa3c # (0xfffff5c4)
srli     t3,   t2, 0x1b
sltu     s7,   s6,   s4
sw       a1, 2045(a2)
lh       t2, 1515(s11)
srl      a3,   t6,   a6
lh       a6, 2024(s7)
lb       sp, 1995(t6)
slti     x0,   a1, 0x7b3
add     s11,   s8,  s11
ori      ra,   s8, 0xa
srai    s11,   t2, 0x1
srli     s9,   a5, 0xc
lb       s0, 2003(a5)
lui      s0, 0xfffe4
sub      tp,  s11,   a3

# EXPECTED
# x1: 0x7fe
# x8: -0x1c000
# x10: 0x3c
# x11: 0x7a1
# x18: -0x2e9
# x20: -0x2a
# x23: 0x1
# x24: 0x7fe
# x26: 0x7f1
