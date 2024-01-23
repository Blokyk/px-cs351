# Seed: 418068480

# Generation 19

# == filling regs ==
addi     t1,   x0, 0x367
addi     t0,   x0, 0x7e4
addi     s0,   x0, 0x7de
addi     a0,   x0, 0x6
addi     a6,   x0, 0x7a8

# == code ==
addi     a3,   a2, 0x3bb
bne     s11,   a5, 0x3c
srli     s7,   s6, 0x16
lb       tp, 1972(s6)
sw       a5, 67(a6)
slli     x0,   t1, 0x9
sd       s8, 464(gp)
and      x0,   a7,   gp
slti     s1,   t1, 0x37
andi     t4,   t5, 0x7ee
lbu      s4, 27(s0)
srl      t3,   s1,   s9
ld       a7, 2025(a4)
and     s10,   s9,   gp
xori     s8,   gp, 0x3c6
sltiu    s0,   a2, 0x4f
sub      s6,   a0,   s9
and     s11,   a3,   a3
sltu     a4,   s4,   s0
sd       s9, 49(a6)
sltu     sp,   t4,   a5
lb       s0, 1407(ra)
lui      tp, 0x13
sltiu    s6,   ra, 0x375
sw      s11, 73(a2)
lb       s0, 780(t2)
beq      a2,   s6, -0x48 # (0xffffffb8)
sltiu    t1,   s3, 0x7f3
ori      x0,  s10, 0x7a9
and      t1,   s6,   s0

# EXPECTED
# x4: 0x13000
# x5: 0x7e4
# x10: 0x6
# x13: 0x3bb
# x14: 0x1
# x16: 0x7a8
# x22: 0x1
# x24: 0x3c6
# x27: 0x3bb
