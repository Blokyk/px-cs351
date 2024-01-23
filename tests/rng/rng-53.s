# Seed: 1904016221

# Generation 344

# == filling regs ==
addi     s2,   x0, 0x49
addi     gp,   x0, 0x7f7
addi     s1,   x0, 0x4b
addi     a3,   x0, 0x13
addi     t2,   x0, 0x7ba

# == code ==
add      a0,   s6,   ra
lwu      gp, 1981(a6)
beq      s2,   s3, 0x9c
srl      a5,  s10,   sp
sub      t2,   t5,   x0
slti     t0,   s2, 0x58
xori     a7,   s2, 0x7c2
lui      a1, 0x4f
slti     x0,   s7, 0x42
auipc    x0, 0x2a
sltu     t0,   t4,   ra
sd       s2, 1960(s0)
slti     t0,  s11, 0x50e
srl      x0,   a7,   a3
ori      s9,   gp, 0x7cc
sltu     a1,  s10,   a3
ori      x0,   sp, 0x623
lui      a4, 0xfffcf
sltu     a0,   a5,   a5
ld       s8, 46(ra)
srl      a1,   s1,   t6
blt      a3,   gp, 0x6c
ld       s4, 679(s2)
srl      ra,   s1,   gp
sb       t0, 2012(t3)
ld       s3, 59(a7)
bge      a0,   sp, 0x34
and      ra,   x0,   t4
srai     a0,  s11, 0x9
andi     t0,   a5, 0x1d

# EXPECTED
# x2: 0x4000
# x9: 0x4b
# x11: 0x4b
# x13: 0x13
# x14: -0x31000
# x17: 0x78b
# x18: 0x49
# x24: -0x5fecfffb0a4883d7
# x25: 0x7cc
