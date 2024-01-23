# Seed: 320392261

# Generation 193

# == filling regs ==
addi     a5,   x0, 0x6c7
addi     t6,   x0, 0x3e2
addi     s4,   x0, 0x43
addi     tp,   x0, 0x7e5
addi     s3,   x0, 0x7e4

# == code ==
sltiu   s11,  s10, 0x14
slli     t5,   a0, 0x1b
sll      a7,   a2,   s3
lh       s2, 996(a0)
lbu      s0, 1976(s9)
slt      ra,   t6,   t6
sra      s4,   a5,   t4
sh       a6, 2008(a4)
srai     s8,   sp, 0x5
add      s2,   t5,   t3
srai     t6,   a3, 0xb
lh       t3, 1988(t6)
xor      t4,   s7,   a3
blt     s10,   t4, -0x30 # (0xffffffd0)
andi     tp,   tp, 0x7d6
sw       gp, 19(a5)
bltu     s9,   s9, 0x58
sltu     sp,  s11,   a6
sub      t1,   s9,   x0
srli     a6,   s3, 0x1b
sll      t4,   s3,   ra
bge      s0,   s4, -0xc # (0xfffffff4)
sra      a1,   s3,   s4
slli     t0,   a6, 0xe
andi     s4,   s6, 0x5
srai     t6,   a4, 0x19
xori     t1,   s5, 0x7aa
lui      tp, 0x9
sd      s10, 1977(a4)
lwu      a1, 67(s0)

# EXPECTED
# x4: 0x9000
# x6: 0x7aa
# x11: 0xdbceb37c
# x15: 0x6c7
# x19: 0x7e4
# x24: 0x200
# x27: 0x1
# x29: 0x7e4
