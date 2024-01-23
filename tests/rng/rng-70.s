# Seed: 2054605028

# Generation 228

# == filling regs ==
addi     a5,   x0, 0x7ca
addi     t6,   x0, 0x41
addi     a1,   x0, 0x7c9
addi     t2,   x0, 0x7c6
addi     tp,   x0, 0x7f4

# == code ==
sltu    s10,   t0,  s11
lw       ra, 315(t4)
xor     s11,   sp,  s10
slt      a6,   s0,  s10
sh       a7, 97(s0)
srli     s5,   t5, 0xd
srl      a1,   ra,   s5
sh      s10, 2043(s9)
andi     t1,   t5, 0x7b9
slti     t0,   sp, 0x54
lh       sp, 1987(a2)
sltiu    s3,   gp, 0x2d
sra      s0,   s5,   a7
sub      s7,   gp,  s10
slti     a2,   t1, 0x7f8
lh       s2, 1(a4)
sltu     s0,   a5,   s0
slt      s6,   a4,   s0
sltiu    sp,   s5, 0x61
andi     a0,   gp, 0x0
sra      a5,   t3,   s2
srli     a3,   s6, 0xd
lwu      s7, 528(s10)
and     s11,   s9,   sp
ori      tp,  s10, 0x1
srli     t1,   s2, 0xc
bltu     t6,   a5, 0x5c
lh       a5, 1968(t6)
and      s6,   s9,   gp
blt      a6,   s3, 0x14

# EXPECTED
# x2: 0x1
# x4: 0x1
# x6: 0xffffffffffffa
# x7: 0x7c6
# x12: 0x1
# x18: -0x5ff9
# x19: 0x1
# x31: 0x41
