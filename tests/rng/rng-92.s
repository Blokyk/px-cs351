# Seed: 758392274

# Generation 230

# == filling regs ==
addi     s8,   x0, 0x13
addi     gp,   x0, 0x3f
addi     s6,   x0, 0x7b5
addi     a1,   x0, 0x7f8
addi     s6,   x0, 0x7

# == code ==
srl     s11,   t6,   s3
sb       s6, 1129(gp)
ori      tp,   a7, 0x7f8
slti     s3,   a1, 0x195
sub      s1,   t4,  s10
sub      gp,   s0,   t1
lw       t4, 1981(a2)
blt      a2,   s9, 0x54
xori     a6,   a4, 0x27
auipc    x0, 0xfffa4
sub      s8,   s4,  s11
srli     t0,   tp, 0x1d
sltiu    t6,   s7, 0x7c6
ori      s4,   x0, 0x7d2
lw       s1, 1507(t0)
lh       a6, 1809(t1)
xori     s1,   gp, 0x7d9
srai     a0,   s2, 0x0
bltu     sp,   t3, -0xf28 # (0xfffff0d8)
sb       a6, 1706(s7)
xori     s1,   t0, 0x7b9
addi     t0,   sp, 0x29
sra      a6,   tp,   s5
addi     s3,   s5, 0x492
srli     s2,   ra, 0x14
slti     t4,   gp, 0x56
slti     s0,   s8, 0x43f
sw       s0, 1998(t3)
srli     gp,   a6, 0x2
ori      t3,   a3, 0x37

# EXPECTED
# x2: 0x4000
# x3: 0x1fe
# x4: 0x7f8
# x5: 0x4029
# x8: 0x1
# x9: 0x7b9
# x11: 0x7f8
# x16: 0x7f8
# x19: 0x492
# x20: 0x7d2
# x22: 0x7
# x28: 0x37
# x29: 0x1
# x31: 0x1
