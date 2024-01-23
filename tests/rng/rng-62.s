# Seed: 638358918

# Generation 194

# == filling regs ==
addi     s3,   x0, 0x1f0
addi     t2,   x0, 0x7a6
addi     s4,   x0, 0x7f2
addi     t6,   x0, 0x9
addi     a0,   x0, 0x7af

# == code ==
auipc    a2, 0x29
lh       a0, 1135(s5)
srai     t6,   s3, 0x16
ori      a4,   a4, 0x38
add      t5,   x0,   sp
srai    s11,   t3, 0x11
lwu      s0, 15(t2)
sub      s7,   s9,   a0
andi     s2,   s2, 0x7d6
sh       s2, 2041(s3)
auipc    gp, 0xfffb9
and      s3,   a7,   t2
xor      x0,   a1,   t3
srai     s3,   t3, 0x1b
xori     a6,   t2, 0x23
ld       s0, 1979(ra)
lw       a4, 48(t2)
sh       a4, 17(s1)
sub      a6,   t4,  s11
addi     s5,   s6, 0x4e3
srai     a0,   t4, 0x7
addi     t0,   t3, 0x165
sra      ra,   s0,   t0
ori      gp,   tp, 0x7cc
lhu      t5, 1631(t0)
sd       t6, 1967(a7)
sh       t5, 1961(s7)
slti     s2,   s6, 0x61
sra      s7,   s1,   a7
sw       x0, 1819(t1)

# EXPECTED
# x2: 0x4000
# x3: 0x7cc
# x5: 0x165
# x7: 0x7a6
# x12: 0x29014
# x18: 0x1
# x20: 0x7f2
# x21: 0x4e3
