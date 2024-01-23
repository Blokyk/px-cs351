# Seed: 1291966813

# Generation 2

# == filling regs ==
addi     t1,   x0, 0xc
addi     sp,   x0, 0x23
addi     a6,   x0, 0x41
addi     t3,   x0, 0x2b
addi     tp,   x0, 0x2e9

# == code ==
lw       t4, 2007(t2)
slli     ra,   gp, 0x10
add      a2,   t5,   tp
lbu      s2, 2004(a2)
xor      t1,   gp,  s10
sub      t5,   t4,   t0
xori     s6,   ra, 0x63
addi     t6,   t2, 0x61
sb       s6, 2033(t5)
sub     s11,  s10,   ra
add      s3,   t3,   a6
xor      x0,   a4,   a4
lw       t1, 36(a2)
slt      s8,   a1,  s11
addi     t1,   s4, 0x7d8
srli     a1,   s8, 0x13
srai     s7,   a7, 0x1c
srli     a5,   s8, 0x1c
sh       s5, 2008(s5)
sd       t5, 1624(ra)
lhu      a1, 1962(t0)
lw       tp, 52(a0)
xori     a7,   s2, 0x28
sw       t0, 1951(a0)
slli     s8,   s5, 0x4
lh       a4, 51(t0)
xori     t3,   a4, 0x7da
blt      tp,   t2, 0x54
lw       s5, 1594(s5)
lwu      ra, 2012(a6)

# EXPECTED
# x2: 0x23
# x4: 0x7f6f08a3
# x6: 0x7d8
# x12: 0x2e9
# x14: -0x5cfa
# x16: 0x41
# x17: 0x28
# x19: 0x6c
# x22: 0x63
# x28: -0x5b24
# x31: 0x61
