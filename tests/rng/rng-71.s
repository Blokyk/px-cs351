# Seed: 629115325

# Generation 11

# == filling regs ==
addi     t2,   x0, 0x48
addi     s7,   x0, 0xa
addi     a7,   x0, 0x1a
addi     sp,   x0, 0x3b0
addi     t1,   x0, 0x7e6

# == code ==
lb       gp, 18(s0)
slti     t2,   tp, 0x45
or       a5,   s5,   s6
sra      sp,  s10,   a7
slti     ra,   x0, 0x5f
ld       t1, 18(t4)
and      s7,   a1,   t2
add      s8,   a4,   s3
bltu     x0,   s4, 0x37c
addi     t3,   t3, 0x44
lh       s3, 36(s10)
sltu     s4,   tp,   ra
sw       a0, 519(a6)
sra      s3,   a0,   a3
sb       s8, 16(s4)
lw       s5, 1956(s3)
jalr     a0, 0(a3)
sra      t2,   s4,   t0
sb       t3, 694(ra)
auipc    t0, 0x3a
auipc    a4, 0xffffc
srl      t4,   t5,   t3
or       t0,   sp,   s1
addi     t6,   s3, 0x7f4
sb       s3, 1972(s7)
sw       s6, 49(s10)
sub      s4,   a5,   s9
sub      s8,   a1,   s8
jal      s2, -0x18 # (0xffffffe8)
lwu      a0, 968(t4)

# EXPECTED
# x1: 0x1
# x3: 0x60
# x6: 0x2393012401837e60
# x7: 0x1
# x10: 0x58
# x17: 0x1a
# x20: 0x1
# x28: 0x44
