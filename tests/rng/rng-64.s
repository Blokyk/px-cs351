# Seed: 1004355556

# Generation 59

# == filling regs ==
addi     tp,   x0, 0x5c
addi     t2,   x0, 0x28
addi     t6,   x0, 0x7a6
addi     s0,   x0, 0x7d8
addi     t6,   x0, 0x2db

# == code ==
lw       s0, 223(s6)
srai     sp,   a2, 0x11
sra      gp,   a1,   t5
lw       a2, 2030(sp)
sub      tp,   t5,   a7
or       t4,  s10,   t4
sltiu    s7,   ra, 0x36
sra      a0,   t0,   a7
lhu      t0, 1956(t4)
add      s6,   s4,   a1
and      t5,   a6,   a2
ori      t1,   a5, 0x6af
slti     a6,   a4, 0x4be
ld       sp, 65(a2)
lui      t1, 0xb2ceb
auipc    gp, 0x632a6
sltiu    tp,   s2, 0x17
xori     s4,   sp, 0x7c9
addi     a0,   t0, 0x32a
slli     s9,   s5, 0xf
sb       s4, 52(a6)
slt     s11,   a1,   s1
xor      ra,   x0,   sp
slti     t3,   a3, 0x74d
lui      a3, 0xc685
sh       t4, 68(t0)
srli     t6,   t6, 0x18
addi     tp,   s7, 0x60
lh       s7, 49(a6)
add      a2,   s1,   s6

# EXPECTED
# x1: 0x34be728136af7e3
# x2: 0x34be728136af7e3
# x3: 0x632a6050
# x4: 0x61
# x6: -0x4d315000
# x7: 0x28
# x10: 0x32a
# x13: 0xc685000
# x16: 0x1
# x20: 0x34be728136af02a
# x23: 0x4112
# x28: 0x1
