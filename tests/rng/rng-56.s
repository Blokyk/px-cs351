# Seed: 777585990

# Generation 3

# == filling regs ==
addi     a2,   x0, 0xb
addi     s7,   x0, 0x7ec
addi     t0,   x0, 0x31
addi     ra,   x0, 0x7c7
addi     gp,   x0, 0x7db

# == code ==
and      a6,   t2,   s9
ori      t2,   a1, 0x94
sll      t2,   s0,   s4
srl      s1,   a4,   a7
sh      s11, 257(s2)
add      s2,   a3,   a5
sltiu    a0,   a0, 0x79f
beq      t1,   t0, -0x54 # (0xffffffac)
andi     a7,   sp, 0x7af
bne      a7,   s1, -0x1c # (0xffffffe4)
srai     s5,  s10, 0x11
sd       a4, 2030(s1)
sltiu    x0,   s7, 0x7fc
addi     x0,   s3, 0x1b0
sra      a7,  s10,   t5
srli     a4,   a4, 0x16
bne      s5,   t2, -0xfa8 # (0xfffff058)
jal      s9, 0x8
xor      t3,   s7,   a1
sll      t4,   s4,   gp
sb       t2, 162(s7)
lh       a4, 1994(ra)
andi     t2,   t2, 0x21
bltu     s8,   s5, 0x4
and      t2,   t3,   s6
ld       a6, 1853(a3)
sub      t2,   sp,   s6
slt      a1,   s2,   s0
srl      s0,   s6,   a0
srli     a5,   a5, 0x3

# EXPECTED
# x1: 0x7c7
# x2: 0x4000
# x3: 0x7db
# x5: 0x31
# x7: 0x4000
# x10: 0x1
# x12: 0xb
# x23: 0x7ec
# x25: 0x5c
