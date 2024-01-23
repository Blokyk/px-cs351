# Seed: 1569092533

# Generation 64

# == filling regs ==
addi     s4,   x0, 0x23
addi    s10,   x0, 0x117
addi     t3,   x0, 0x37
addi     s0,   x0, 0x2a
addi     t4,   x0, 0x7f9

# == code ==
slli     x0,   s6, 0x0
bge     s11,   t3, -0xc64 # (0xfffff39c)
bne      t3,   s9, 0x8
srli     a7,  s10, 0x19
srli    s10,   s8, 0x13
sh       s0, 2012(t2)
sd       s0, 2046(a4)
add      s6,   s1,   t5
sltu     tp,   s4,   s2
or       ra,   a7,   a3
beq      s0,   s4, -0x2c # (0xffffffd4)
sub      a3,   t5,  s11
bltu     a2,   t2, 0xb40
sltu     tp,   a5,   a3
sra      a6,   s6,   s4
or       s1,  s10,   a0
slt      x0,   a0,   ra
bltu     s9,   s3, -0x78c # (0xfffff874)
sh       a1, 1989(t2)
ori      s3,  s10, 0x7b6
sw       s2, 2000(ra)
sb       tp, 2007(t1)
sw       a3, 2043(s3)
slli    s10,   s6, 0x1f
bne      s9,   s8, 0xcac
lh       a0, 1374(t0)
srl      t0,   t4,   t6
srai     a3,   s3, 0x1c
ori      t5,   s3, 0x18
slt      ra,   s4,   a3

# EXPECTED
# x2: 0x4000
# x5: 0x7f9
# x8: 0x2a
# x19: 0x7b6
# x20: 0x23
# x28: 0x37
# x29: 0x7f9
# x30: 0x7be
