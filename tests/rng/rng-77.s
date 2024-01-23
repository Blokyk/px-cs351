# Seed: 1380351532

# Generation 102

# == filling regs ==
addi     s9,   x0, 0x7dd
addi     s6,   x0, 0x0
addi     s4,   x0, 0x753
addi     a7,   x0, 0x7db
addi     x0,   x0, 0x7d5

# == code ==
lwu      x0, 89(s7)
sw       s0, 1951(s11)
xor      a0,  s10,   a6
srl      t6,   t0,   s9
blt      s6,   s5, -0x20 # (0xffffffe0)
auipc    a5, 0x232d0
sll      s6,   s0,   s3
andi     tp,   t4, 0x7bb
sub      s0,   a4,   s7
lhu      t2, 2026(t4)
sub      a6,   a2,   t2
sra      t2,   s4,   t1
ori      sp,   s4, 0xa4
slli     t3,   a5, 0x1
sw       s4, 42(gp)
xor      s0,   s1,   a7
lui     s10, 0x55
ld       s4, 2011(s5)
sll      tp,   sp,   t0
lw       s9, 11(t2)
and      t4,   a1,   s8
lw       sp, 2018(s1)
bgeu     s3,   s2, 0x8
sw       t6, 96(s0)
andi     s8,   s5, 0x11
or       s6,   sp,  s11
srl      s1,   sp,   a3
lhu      t2, 646(a1)
bne      a3,   a1, -0x2f8 # (0xfffffd08)
or       t1,   s7,   gp

# EXPECTED
# x4: 0x7f7
# x8: 0x7db
# x15: 0x232d0028
# x17: 0x7db
# x26: 0x55000
# x28: 0x465a0050
