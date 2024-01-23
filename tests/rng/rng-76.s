# Seed: 977751798

# Generation 10

# == filling regs ==
addi     t1,   x0, 0x7c3
addi     a5,   x0, 0x7e7
addi     t5,   x0, 0x57
addi     a3,   x0, 0x7cf
addi     a3,   x0, 0x9

# == code ==
sub      gp,   a4,   s9
srai     t2,   s8, 0xc
and      t6,   s2,   t6
sw       a1, 7(s7)
sltiu    s1,   s1, 0x34
srl      sp,   s9,  s11
beq      a3,   t3, 0x2c
sw       x0, 989(a2)
sltiu    s7,   s7, 0x7e2
sd       t5, 2027(a6)
sltu     t4,   t1,   s6
sra      s0,  s11,   a0
sra      a1,  s10,   a3
sltiu    s8,   s1, 0x230
sltiu    a6,   a1, 0x7f7
lw       a5, 2031(s4)
sll      s7,   a1,   a5
addi     x0,   a5, 0x3c
lhu      t3, 57(s1)
srli     a1,   s3, 0x1a
addi     a5,   a1, 0x7cd
ld       a1, 343(a3)
sub      a1,   s8,   a7
auipc    t1, 0x35
lui      s3, 0x0
and      s6,   tp,   a0
sd       a2, 74(s11)
beq      s8,   a7, -0x18 # (0xffffffe8)
ori      s7,   x0, 0x7f5
bgeu     t1,   t3, 0x364

# EXPECTED
# x6: 0x35070
# x9: 0x1
# x11: 0x1
# x13: 0x9
# x15: 0x7cd
# x16: 0x1
# x23: 0x7f5
# x24: 0x1
# x28: 0x7fe8
# x30: 0x57
