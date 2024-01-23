# Seed: 38467711

# Generation 124

# == filling regs ==
addi    s10,   x0, 0x30
addi     t6,   x0, 0x5ed
addi     s9,   x0, 0x7ea
addi     a7,   x0, 0x2b
addi     t4,   x0, 0x7c3

# == code ==
srl      s5,   gp,   t2
sll      tp,   s3,   t1
or       a3,   s9,   s7
srl     s11,   t1,   sp
srli     sp,   s9, 0x5
slt      x0,   t5,   s4
ld       t1, 1969(s6)
lui      s9, 0xfffe8
bltu     a2,   s1, -0x28 # (0xffffffd8)
slli     t1,   s3, 0x18
lb       t2, 77(t0)
sltiu    sp,   s3, 0x41
slti     a7,   s1, 0x48
lwu      a7, 0(s0)
sll      gp,   a7,   s1
ld       a2, 2010(s6)
lui      s8, 0xe
lbu      a1, 923(s0)
ori      t2,   a6, 0x7a4
srai     a5,  s11, 0x18
xori     s0,   s9, 0x420
addi     s8,   s7, 0x7c1
addi     t0,   t3, 0x2
ld       a1, 709(s6)
xor      t6,   t4,   s5
xor      t2,  s10,   s3
lui      t5, 0xfffec
auipc    a1, 0x5b
jal     s10, 0x34
lw       gp, 2008(sp)

# EXPECTED
# x2: 0x1
# x3: 0x3000d13
# x5: 0x2
# x7: 0x30
# x8: -0x17be0
# x11: 0x5b080
# x13: 0x7ea
# x17: 0x3000d13
# x24: 0x7c1
# x25: -0x18000
# x26: 0x88
# x29: 0x7c3
# x30: -0x14000
# x31: 0x7c3
