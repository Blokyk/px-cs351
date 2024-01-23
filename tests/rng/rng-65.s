# Seed: 426680999

# Generation 231

# == filling regs ==
addi     s8,   x0, 0x3e9
addi     s4,   x0, 0x36
addi     a7,   x0, 0x51
addi     gp,   x0, 0x2b
addi     t0,   x0, 0x58

# == code ==
lbu      s3, 10(t6)
slt      s0,   t4,   t2
sh       sp, 2043(gp)
sh       a2, 946(a4)
lui      a6, 0x52
lui      t3, 0x59203
sb       sp, 15(ra)
add      s4,   a0,   s1
slli     s4,   a3, 0x9
sltu     s5,   t2,   s4
add      gp,   a2,   t6
lb       s0, 889(t5)
slli     ra,   s5, 0xa
srl      t0,   s7,   t2
ori      a2,   s8, 0x52
slli     ra,   s7, 0x1c
xor      s5,   tp,   t6
and      t1,   a1,   a7
auipc    s5, 0x56
srli     t3,   s0, 0x19
andi     t1,  s11, 0x761
sll      t1,   sp,   a5
lh       s1, 2029(s7)
addi     x0,   a3, 0x39
slli     tp,   a0, 0x13
sra      a1,   a1,   s4
sltiu    t2,   a7, 0x6c9
srai    s10,   x0, 0x1b
jal      s9, 0x20
and      s0,   ra,   s7

# EXPECTED
# x2: 0x4000
# x6: 0x4000
# x7: 0x1
# x12: 0x3fb
# x16: 0x52000
# x17: 0x51
# x19: 0x10
# x21: 0x5605c
# x24: 0x3e9
# x25: 0x88
