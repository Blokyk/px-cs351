# Seed: 1472529005

# Generation 160

# == filling regs ==
addi     a3,   x0, 0x3b
addi     t1,   x0, 0x7c6
addi     gp,   x0, 0x7c5
addi     t6,   x0, 0x12
addi     s3,   x0, 0x45

# == code ==
sltu     t5,   a1,   t5
lui      a7, 0x7
sw       t2, 2027(tp)
sd       sp, 2000(s2)
sd       a4, 1997(gp)
slli     x0,   a7, 0x0
sh       x0, 699(a4)
lui      s5, 0xfffbf
lb       t0, 1832(s3)
sra      gp,   sp,   t4
lh       a5, 24(t6)
lw       tp, 774(t2)
sw       t0, 1118(t4)
lui      t6, 0xfffc0
sltu     t2,   t5,   t2
slli     a6,   a6, 0x9
bltu     s0,   a4, -0x54 # (0xffffffac)
srli     tp,   s4, 0xf
sh       x0, 2030(a5)
sub      t1,   t6,   t1
sh       t2, 21(t0)
and      s2,   a3,   gp
addi    s11,   t5, 0x58
sltiu    tp,   ra, 0x750
lbu      tp, 2030(s0)
add      s0,   sp,   t0
or       t2,   gp,   t6
slti     a0,   s1, 0x57
or       s7,   t4,   ra
sll      s2,   tp,   s5

# EXPECTED
# x2: 0x4000
# x3: 0x4000
# x6: -0x407c6
# x7: -0x3c000
# x8: 0x4000
# x10: 0x1
# x13: 0x3b
# x15: 0x8
# x17: 0x7000
# x19: 0x45
# x21: -0x41000
# x27: 0x58
# x31: -0x40000
