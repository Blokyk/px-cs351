# Seed: 60791787

# Generation 224

# == filling regs ==
addi     a6,   x0, 0x35
addi     s3,   x0, 0x58a
addi     gp,   x0, 0x7f1
addi     a1,   x0, 0x0
addi     a0,   x0, 0x5f

# == code ==
auipc    t1, 0x1d
sb       a7, 74(t6)
lbu      ra, 2007(s5)
and      t1,   a2,  s11
ori      t1,   s4, 0x79f
xor      tp,   tp,  s10
slt      a6,   s4,   s4
ld       a4, 2023(a3)
xori     s9,  s11, 0x7ad
xori     x0,   t6, 0x52
lbu      ra, 1424(a5)
sltiu    a1,   s4, 0x7a1
srl      t5,   s1,   ra
sb       s5, 1996(t2)
or       a5,   s4,   s1
lui     s10, 0xfffc6
sltiu    t0,   t3, 0x37
or       ra,   a4,   a3
add      s4,   tp,   a4
xori     s3,   s1, 0x2a
beq      s7,   gp, -0x20 # (0xffffffe0)
xor      s9,   a7,   a5
addi     a2,   s1, 0x7df
srl      t2,   t2,   s2
sltiu    ra,   s7, 0x38
sltiu   s10,   t3, 0x7e7
slti     gp,   s4, 0x15
slt      s5,   x0,   s1
srai     a5,   a7, 0x9
jalr    s11, 1952(s2)

# EXPECTED
# x1: 0x1
# x2: 0x4000
# x3: 0x1
# x5: 0x1
# x6: 0x79f
# x10: 0x5f
# x11: 0x1
# x12: 0x7df
# x19: 0x2a
# x26: 0x1
# x27: 0x8c
