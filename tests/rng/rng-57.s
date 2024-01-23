# Seed: 1534359924

# Generation 104

# == filling regs ==
addi     t4,   x0, 0x625
addi     gp,   x0, 0x394
addi     a0,   x0, 0x7e5
addi     ra,   x0, 0x79e
addi     t1,   x0, 0x4fd

# == code ==
sh       a4, 35(t1)
sd       s1, 1958(a7)
srai     gp,   tp, 0x0
slti     a6,   s7, 0x4b6
bge      s9,   t1, -0xc # (0xfffffff4)
sltiu    s8,   s1, 0x6c1
sd       a6, 349(tp)
srli     a2,  s11, 0x3
lui      s7, 0x4d
beq      t4,   s8, -0x38 # (0xffffffc8)
sd       s2, 1421(a4)
lbu      x0, 2036(s4)
sd       s7, 57(s2)
lwu      a7, 857(a0)
bne      s8,   a1, -0x48 # (0xffffffb8)
and      s9,   t0,   s5
lw       s1, 100(s10)
lb       a2, 13(a0)
sub      x0,   t4,   t2
lh       s7, 28(s10)
sub      a2,   s5,   s9
bge      s9,   s5, 0xc
addi     t0,   s9, 0x43
jal      a2, -0x4 # (0xfffffffc)
xor      s3,   a6,   t4
xori    s10,   s9, 0x7d9
ld       a6, 225(s4)
lui      s8, 0xf89e8
xori     a2,   s3, 0x53b
sb       s1, 2011(t4)

# EXPECTED
# x1: 0x79e
# x2: 0x4000
# x6: 0x4fd
# x10: 0x7e5
# x23: 0x4d000
# x24: 0x1
# x29: 0x625
