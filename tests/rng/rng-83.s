# Seed: 701585976

# Generation 182

# == filling regs ==
addi     s1,   x0, 0x18
addi     s5,   x0, 0x79d
addi     t6,   x0, 0x7c0
addi     a7,   x0, 0x7c2
addi     t0,   x0, 0x54

# == code ==
slli     sp,   t3, 0x4
or       s5,   s8,   a7
slt     s10,   t5,   t6
sh       a1, 7(s7)
xor      t5,   s9,   t2
sltu     t5,  s11,   a2
sub      a3,   a1,   s4
sltu     t5,   t1,   gp
sb       s2, 18(a1)
addi     t0,   gp, 0x4a
slti     s9,   s7, 0x2ab
bne      s5,   a7, -0x10 # (0xfffffff0)
andi     s8,   ra, 0x23
andi     ra,   s3, 0x7a0
sb       tp, 2034(s3)
andi     a3,   a7, 0xc
slli     s8,   s7, 0x3
sh       s8, 1826(t1)
and      s2,   s1,   t5
srai     a7,   t0, 0x19
srl      s2,   ra,   t3
ori      a3,   t6, 0x648
sd       a3, 437(s8)
lbu      a6, 60(t6)
srli     s3,   a5, 0x10
sra      t0,  s11,   s8
ori      t4,   gp, 0x3e7
sll      gp,   s9,   a1
bne      a7,   sp, -0x14 # (0xffffffec)
lui      a5, 0xfff9d

# EXPECTED
# x3: 0x1
# x9: 0x18
# x13: 0x7c8
# x15: -0x63000
# x21: 0x7c2
# x25: 0x1
# x26: 0x1
# x29: 0x3e7
# x31: 0x7c0
