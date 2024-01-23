# Seed: 1466652864

# Generation 49

# == filling regs ==
addi     a5,   x0, 0x34
addi     t5,   x0, 0x3f9
addi     s9,   x0, 0x4a
addi     a5,   x0, 0x3a
addi     gp,   x0, 0x7c8

# == code ==
slli     s3,   s4, 0xc
slti     t1,   s7, 0x4
sw       t2, 1976(s11)
bge      a2,   s3, 0x4
ld       a3, 99(t4)
lwu      s9, 2018(s10)
slt      x0,   ra,   s2
sltiu    gp,   tp, 0x7d8
slli     a7,   t1, 0x5
bltu    s10,   tp, 0x8
beq      a3,   s9, 0x4c
xori     s6,  s11, 0x23
addi     t5,   a6, 0x7e9
lwu      s4, 19(a2)
auipc    s1, 0xffffe
sb       t6, 1960(ra)
sltu     sp,   t1,   s8
ori      ra,   s0, 0x7f3
bltu     t4,   a6, 0x48
srl      a0,   s2,   a6
srli    s11,   x0, 0x1a
bne      tp,   s9, 0x5c
slt     s11,   gp,   s8
xor      t0,   t5,   t1
slti     t6,   s6, 0x33
sh       t4, 2018(sp)
sw       s3, 2041(a1)
xori    s10,  s10, 0x43e
jal      tp, -0x30 # (0xffffffd0)
xor      t3,   ra,   t3

# EXPECTED
# x1: 0x7f3
# x3: 0x1
# x4: 0x88
# x5: 0x7e8
# x6: 0x1
# x9: -0x1fb4
# x13: -0x6de19cfe5fa26cff
# x15: 0x3a
# x17: 0x20
# x20: 0xca19937c
# x22: 0x23
# x26: 0x43e
# x30: 0x7e9
# x31: 0x1
