# Seed: 1195933053

# Generation 29

# == filling regs ==
addi     s9,   x0, 0x7c1
addi     s6,   x0, 0x297
addi     s4,   x0, 0x4fa
addi     a7,   x0, 0x7a6
addi     t6,   x0, 0x19

# == code ==
sll      x0,   gp,   a1
xori     s6,   t2, 0x7e4
ori      s4,   t1, 0x7ab
sltu     t6,   tp,   x0
and      s3,   sp,   s3
sw       s8, 1990(a7)
andi     a1,   a4, 0x12
sb       s7, 730(t5)
andi     s8,   ra, 0x7f8
lb       s4, 1092(s4)
slli     sp,   t5, 0xe
sb       t5, 1789(t3)
lui     s10, 0xd
bltu     a5,   s3, -0x20 # (0xffffffe0)
ori      s9,   t0, 0x7bd
srai     s9,   t0, 0x18
add      x0,   gp,   s5
or       s9,   t4,   s6
lbu      a5, 23(s8)
auipc    t3, 0x4d
slli     a2,   s4, 0x16
srl      ra,   a0,   s3
auipc    s6, 0xf3c4b
auipc    a0, 0x4a
sd       a0, 2006(s2)
sll      s4,  s10,   a1
sb       a1, 2042(s9)
andi     tp,   x0, 0xe8
slli     sp,   s0, 0x19
and      s8,   a5,   s1

# EXPECTED
# x10: 0x4a070
# x17: 0x7a6
# x20: 0xd000
# x22: -0xc3b4f94
# x25: 0x7e4
# x26: 0xd000
# x28: 0x4d060
