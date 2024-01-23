# Seed: 451314558

# Generation 184

# == filling regs ==
addi     a4,   x0, 0x2da
addi    s10,   x0, 0x5a
addi     a2,   x0, 0x25
addi     t3,   x0, 0x404
addi    s11,   x0, 0x2fd

# == code ==
bltu     s6,   t2, -0x40 # (0xffffffc0)
addi     sp,   t3, 0x7f0
ori     s10,   a2, 0x6c4
slt      a5,   a0,   a1
slli     a1,   a6, 0xa
lui      s7, 0x63
slli     a2,   s3, 0x15
srai     a3,   t1, 0x2
auipc    gp, 0x1b
bltu     a1,   a6, 0x38
and      a3,   t4,   t1
slli     t5,   t3, 0x19
beq      s3,   sp, 0x5e0
ori      s0,   t1, 0x7d3
slli     t1,   s2, 0x14
andi     a1,   s1, 0x20
and      s0,   a3,   s6
sll      a4,   s1,   x0
slti     t0,   s7, 0x3c
sd       t3, 1985(s10)
slt      s2,   ra,   a2
srl      s8,   s2,   t2
ori      s7,   s1, 0x7a8
ld      s10, 1479(s10)
srl      t4,   t6,   s1
sub      t1,   s9,   s6
bltu     a3,   t4, -0x3c # (0xffffffc4)
sd       s8, 1713(a4)
sll      x0,   t2,   a7
beq      tp,   s8, 0x28

# EXPECTED
# x2: 0xbf4
# x3: 0x1b034
# x23: 0x7a8
# x27: 0x2fd
# x28: 0x404
# x30: 0x808000000
