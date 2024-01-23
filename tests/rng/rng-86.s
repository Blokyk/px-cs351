# Seed: 1561365925

# Generation 53

# == filling regs ==
addi     a7,   x0, 0x7fc
addi     a7,   x0, 0x7e8
addi     s6,   x0, 0x55
addi     t0,   x0, 0x7ea
addi     t0,   x0, 0x7bf

# == code ==
srai     s3,   a4, 0xa
sll      gp,   sp,   t3
sltu     ra,   s8,   ra
sh       t3, 58(ra)
slti     s8,   x0, 0x5bc
lw       a6, 2025(s8)
slti     a5,   t2, 0x185
sltiu    gp,   t2, 0x29
auipc    x0, 0xfffe5
slli     t0,   tp, 0x0
srli     a5,   t6, 0x1d
srli     s4,   s6, 0xe
sw       t4, 1976(ra)
lbu      ra, 8(ra)
sltiu    a6,   s5, 0x4a
ori      t0,   t6, 0x7a3
ld       a4, 21(a4)
bne      s9,   s1, -0xd44 # (0xfffff2bc)
ld       a5, 282(t1)
sub      gp,   t0,   t4
slli     a4,   a6, 0x18
ori      s7,   s3, 0x7c7
or       tp,   s8,   t4
slli     s6,   s9, 0x3
sltiu    s0,   a7, 0x3a
auipc    a7, 0xfffd2
or       s7,   s3,   s7
andi     t2,   t5, 0x9
beq      s7,   s6, 0x4
sub      a1,   a4,   ra

# EXPECTED
# x1: 0x13
# x2: 0x4000
# x3: 0x7a3
# x4: 0x1
# x5: 0x7a3
# x11: 0xffffed
# x14: 0x1000000
# x16: 0x1
# x17: -0x2df88
# x23: 0x7c7
# x24: 0x1
