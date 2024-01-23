# Seed: 1074669361

# Generation 73

# == filling regs ==
addi     s8,   x0, 0x7ae
addi     gp,   x0, 0x49
addi     a5,   x0, 0x7cd
addi     sp,   x0, 0x4b
addi     s2,   x0, 0x7a4

# == code ==
xori    s10,   a1, 0x4d
sub      t2,   a1,  s10
sw       a3, 1452(s10)
sub      ra,   t1,   s0
sra      s3,   s5,   t4
srli    s11,   a6, 0xb
srli     t4,   s2, 0x1d
sh       s2, 19(a3)
slti     s4,   a4, 0x7e1
add      t2,   s3,   t5
sd       s5, 2003(t1)
sw       s2, 1953(t1)
addi     gp,   s3, 0x7ee
sll      a3,   a3,   t2
srl      a4,  s11,   a1
bltu     s2,   s5, 0x2a0
sb       s6, 1953(a4)
lui      t4, 0xb7dc4
lhu     s10, 996(a6)
slti     ra,   s0, 0x5d
auipc    s6, 0x32
bge      s4,   a5, 0x2c
slti    s10,   s2, 0x7ff
auipc    s8, 0xa
sltiu    a3,   t1, 0x1
srli     a5,   a4, 0xe
sltu     a0,   s8,   t5
sb       s6, 92(t2)
slt      t5,   tp,   t3
ori      s0,   ra, 0x2d

# EXPECTED
# x1: 0x1
# x2: 0x4b
# x3: 0x7ee
# x8: 0x2d
# x13: 0x1
# x18: 0x7a4
# x20: 0x1
# x22: 0x32064
# x24: 0xa070
# x26: 0x1
# x29: -0x4823c000
