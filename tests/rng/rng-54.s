# Seed: 1622902926

# Generation 292

# == filling regs ==
addi     t5,   x0, 0x7c6
addi     t4,   x0, 0x5c
addi     t1,   x0, 0x7e9
addi     gp,   x0, 0x7ee
addi     s6,   x0, 0x5f

# == code ==
lbu      sp, 1997(t6)
or       s7,   s9,   gp
sll      a6,   x0,   s5
bne      s5,   t5, 0x2c
jalr     s6, 852(s10)
lw       t0, 86(a4)
sb       s4, 2002(s4)
blt      t0,  s10, 0x34
jal     s11, -0x5e90 # (0xffffa170)
andi    s11,   a4, 0x7bf
sltu     t5,   s3,   t0
sub      t5,   s8,   a7
add      tp,  s11,   s4
sw       a0, 71(t6)
sltiu    s7,   ra, 0xf
or       s6,   a4,   a1
xori     s5,   t2, 0x7f4
andi     t1,   a3, 0x7de
andi     x0,   a2, 0x7f2
srai     s0,   s4, 0x2
sw       s0, 2038(s0)
sb       t1, 1995(s2)
sh       s9, 1970(a2)
sltiu    t6,   a3, 0x45
andi     a3,   s2, 0x390
slt      tp,   a2,   s1
jal      s9, -0x3c # (0xffffffc4)
jal      a4, -0x36be8 # (0xfffc9418)
sd       s0, 1707(s2)
srai     t5,   s8, 0x13

# EXPECTED
# x3: 0x7ee
# x21: 0x7f4
# x23: 0x1
# x25: 0x80
# x29: 0x5c
# x31: 0x1
