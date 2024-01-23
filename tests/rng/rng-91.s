# Seed: 528347554

# Generation 87

# == filling regs ==
addi     t3,   x0, 0x793
addi     a1,   x0, 0x7fe
addi     a7,   x0, 0x62b
addi     a5,   x0, 0x7b8
addi     a6,   x0, 0x7d3

# == code ==
addi     s1,   ra, 0x2a4
add      s1,   ra,   t2
and      a5,   s4,   a5
xori     t3,   s5, 0x58
sd       s2, 2005(a3)
xori     t2,   s2, 0x29e
xori     a4,   s7, 0x7eb
addi     t2,   t6, 0x7bd
bltu     t0,  s10, 0x2c
srli     s6,   s6, 0x3
sltiu    x0,   t3, 0xa
sltu     s3,   sp,   s5
lhu      a4, 1008(s3)
lui      x0, 0xfffc9
sub      tp,   sp,   s2
beq      t3,   a6, -0x58 # (0xffffffa8)
ld       t6, 41(t3)
ori      a4,   tp, 0x30
bne      s7,   a3, -0x20 # (0xffffffe0)
srl      s6,   t6,  s10
bgeu     s8,   sp, -0xf4c # (0xfffff0b4)
sltiu    t5,   s6, 0x7c7
bne      s7,   x0, -0x530 # (0xfffffad0)
ori      a2,   t3, 0x7d4
slli     s3,   s4, 0x8
srli     a1,   gp, 0x2
beq      a4,   s2, -0x5c0 # (0xfffffa40)
and      a3,   s5,   ra
addi    s11,   sp, 0x7b7
lwu     s10, 2024(gp)

# EXPECTED
# x2: 0x4000
# x4: 0x4000
# x7: 0x7bd
# x12: 0x7dc
# x14: 0x4030
# x16: 0x7d3
# x17: 0x62b
# x22: 0x37b710d93001af6
# x27: 0x47b7
# x28: 0x58
# x31: 0x37b710d93001af6
