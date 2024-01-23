# Seed: 1131000492

# Generation 260

# == filling regs ==
addi     ra,   x0, 0x3a
addi     s8,   x0, 0x7e4
addi     a6,   x0, 0x7ec
addi     s1,   x0, 0x7a5
addi     s8,   x0, 0x19

# == code ==
bne      s7,   s0, 0x0
slli     x0,   a1, 0x1b
andi     a4,   t2, 0x7ff
srai     a2,   s0, 0xe
ori      t1,   s7, 0x56
slti     ra,   a0, 0x7c0
slli     gp,   t4, 0xe
slt      s1,   sp,   x0
sra      s8,   s7,   x0
sw       s4, 1981(s8)
jalr     gp, 68(a0)
addi     t4,   t2, 0x7e5
slli     tp,   a3, 0x15
srli     a0,   a0, 0x16
beq      ra,   a4, -0x28 # (0xffffffd8)
xori     s8,   tp, 0x7cc
slt      s7,   t0,   a5
sw       t3, 1973(s2)
and      s1,   a1,   a0
sub      gp,   t0,   s2
jal      a0, -0x50 # (0xffffffb0)
sd       t3, 1986(a2)
srli     x0,   t2, 0xe
or       s9,   t4,   t2
slli     a3,   t5, 0x1c
lw       a2, 1317(a1)
bge      s7,   t2, 0x44
slti     t5,   t6, 0x7d7
xor      t4,   a1,   a6
andi     t4,   tp, 0x44

# EXPECTED
# x1: 0x1
# x2: 0x4000
# x3: 0x40
# x6: 0x56
# x10: 0x68
# x16: 0x7ec
