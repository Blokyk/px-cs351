# Seed: 1522085186

# Generation 85

# == filling regs ==
addi    s10,   x0, 0x71
addi     t4,   x0, 0x38
addi     a7,   x0, 0x7b3
addi     x0,   x0, 0x1f
addi     s3,   x0, 0x7d8

# == code ==
bne      s2,   x0, 0x50
srai     t3,   s8, 0x2
or       s8,  s11,   t6
sltiu    a2,   s4, 0x5d3
addi     s1,   sp, 0x34
andi     a7,   s1, 0x7c1
blt      a5,   s5, -0x28 # (0xffffffd8)
bltu     s4,   t3, -0x6b4 # (0xfffff94c)
sltiu    s3,   t4, 0x57b
sd      s10, 1147(t1)
xori     a3,   s6, 0x7a4
slti     a0,   s1, 0x7c7
xor      t2,   s3,   ra
sra      t6,   t6,  s11
sra      s5,   a5,  s11
ld       t5, 2000(a5)
xor      tp,   t3,   gp
srl      gp,   a4,   sp
sll      x0,   s0,   a2
addi     t6,   s3, 0x13b
srai     s4,   s6, 0x1d
srai     a0,   s6, 0x5
lw       t3, 43(a2)
slti     t0,   sp, 0x628
sltu     x0,   s6,   s4
andi     s0,   gp, 0x5f
ori      t3,   s6, 0x18
ld       a4, 2045(t4)
slti     s6,   a7, 0x7a5
sw       s8, 60(a6)

# EXPECTED
# x2: 0x4000
# x7: 0x1
# x9: 0x4034
# x12: 0x1
# x13: 0x7a4
# x19: 0x1
# x22: 0x1
# x26: 0x71
# x28: 0x18
# x29: 0x38
# x31: 0x13c
