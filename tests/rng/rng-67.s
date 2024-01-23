# Seed: 286278043

# Generation 470

# == filling regs ==
addi     sp,   x0, 0xd
addi     gp,   x0, 0x59
addi     s2,   x0, 0x69d
addi     sp,   x0, 0x7e6
addi     gp,   x0, 0x229

# == code ==
xor      t3,   s5,   ra
andi     s9,   a7, 0x7a1
lw       t3, 2020(tp)
slt      t1,  s11,  s10
ori      t3,   s9, 0x7e0
or       a6,   a3,   x0
or       s4,   s9,   gp
and      tp,   a7,   a3
addi     a3,   a4, 0x3c
srai     s2,   a6, 0xe
sh       t3, 967(a0)
xor     s11,   s4,   s0
srai     s5,   t3, 0xa
sh      s11, 2035(s10)
srli     s1,   s2, 0x1b
xori     s4,   s4, 0x55
lhu      t4, 20(a0)
sb       a7, 62(s11)
srli     s6,   ra, 0xa
sltu     t0,   s9,   a4
bne      s7,   a7, 0x3c
and      t5,   t4,   t4
ori      t0,   s6, 0x7f2
auipc    s3, 0xa3c7e
sra      ra,   s9,   a5
sltu     s4,   a1,   a3
addi     s5,   s2, 0x8
lhu      s7, 35(x0)
slt      s3,   s3,   a5
lbu      s2, 1026(a2)

# EXPECTED
# x2: 0x7e6
# x3: 0x229
# x5: 0x7f2
# x13: 0x3c
# x19: 0x1
# x20: 0x1
# x21: 0x8
# x23: 0x1301
# x27: 0x229
# x28: 0x7e0
# x29: 0xce33
# x30: 0xce33
