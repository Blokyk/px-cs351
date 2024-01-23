# Seed: 529872624

# Generation 97

# == filling regs ==
addi     t6,   x0, 0x7f5
addi     a4,   x0, 0x6ee
addi     a2,   x0, 0x15
addi     t0,   x0, 0x7da
addi     a2,   x0, 0x5a8

# == code ==
srl      gp,   sp,   s0
sb       t1, 11(s2)
sll      s6,   t4,   tp
lbu      a6, 60(s11)
and      s4,   a6,   a7
ori      s3,  s11, 0x3c
ori      sp,   s1, 0x7ca
add      t5,   t6,   a0
sra      s1,   a1,   a7
sb       t6, 54(a6)
srl      a4,   s6,   a6
sltiu    s1,   s4, 0x138
ld       a6, 1111(ra)
slli     ra,   a5, 0x4
srli     a7,   s8, 0x7
lhu      a6, 3(s10)
lb       a2, 1997(t3)
sltiu    a0,   x0, 0x7d6
sll      t5,   tp,   tp
sub      t1,   tp,   t5
srai     t1,   a5, 0x1d
srl      x0,   sp,   a0
ori      s4,   a6, 0x31
slti     s3,   t2, 0x5
blt      s9,   s0, -0x4 # (0xfffffffc)
lh       a5, 1983(a0)
sh       t5, 2011(tp)
lbu      ra, 478(s7)
sw       t0, 2013(s0)
sll     s10,   a2,   s4

# EXPECTED
# x2: 0x7ca
# x3: 0x4000
# x5: 0x7da
# x9: 0x1
# x16: 0x137f
# x19: 0x1
# x20: 0x137f
# x31: 0x7f5
