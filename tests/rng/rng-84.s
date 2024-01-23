# Seed: 1924398056

# Generation 301

# == filling regs ==
addi     a2,   x0, 0x7de
addi     s4,   x0, 0x7d7
addi     s8,   x0, 0x3ab
addi     a3,   x0, 0x5cf
addi     s4,   x0, 0x22

# == code ==
sd       sp, 1978(s5)
lhu      a6, 1996(s5)
or       s3,   s1,   ra
auipc    t3, 0xfffdf
slt      s0,   a0,   s3
slti     s6,   a4, 0x5ae
bne     s10,   a7, -0x8 # (0xfffffff8)
andi    s10,   sp, 0x12
lwu      s9, 48(a3)
sltu     s0,   t1,   s0
sll      s3,   sp,   s9
lui      a5, 0xfffa3
srli     t3,   s4, 0x1a
sltiu    s5,  s10, 0x684
auipc    ra, 0x23
and      t2,  s10,  s10
sub      gp,  s10,   s1
lwu      a5, 991(t0)
sb       s6, 134(x0)
blt     s10,   t5, 0x50
lbu      t5, 1967(t2)
lw       sp, 5(a3)
auipc    s9, 0x2f
slti     s4,   s6, 0x5
slli     t6,   s5, 0xd
andi     t0,   ra, 0x5b
srai     a5,  s11, 0x12
srl      a4,   s0,   a2
sltiu    t6,   s8, 0x54
xori     sp,   s3, 0x3cf

# EXPECTED
# x1: 0x2304c
# x2: 0x43cf
# x5: 0x48
# x12: 0x7de
# x13: 0x5cf
# x19: 0x4000
# x20: 0x1
# x21: 0x1
# x22: 0x1
# x24: 0x3ab
# x25: 0x2f06c
# x31: 0x1
