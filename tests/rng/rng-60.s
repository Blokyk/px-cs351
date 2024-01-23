# Seed: 1976032820

# Generation 422

# == filling regs ==
addi     s6,   x0, 0x5e1
addi     t3,   x0, 0x7f4
addi     t5,   x0, 0xb
addi     a1,   x0, 0x759
addi     s6,   x0, 0xf

# == code ==
ori      s0,   x0, 0x7ec
lw       a6, 1987(s11)
auipc    s3, 0xeabaf
lh       s4, 1299(t0)
srli     t6,   s4, 0x0
andi     s0,   tp, 0x7c4
lh       a6, 1956(tp)
sub      s1,   t3,   s7
sub      gp,   a5,   s9
xori     t5,   a6, 0x42
sltiu    s6,   s3, 0x7fb
lb       t6, 2028(ra)
slt     s10,   a1,   a0
bne      s0,   a4, 0x44
add      s4,   ra,   t6
sltu     a2,   s5,   a4
ori      s3,   s5, 0x7f4
slli     s7,   a4, 0xc
or       gp,   tp,   x0
srai     s1,   x0, 0x1d
auipc    ra, 0xfffa2
ori      t0,   s5, 0x63
slti     s3,   t6, 0xa
lh       a6, 76(a3)
xori     sp,   tp, 0x2ab
or       s6,   a4,   tp
sltiu    t5,   s6, 0x6db
sltu     x0,   s5,  s11
bge      s9,   x0, 0x670
jal      a3, -0x8 # (0xfffffff8)

# EXPECTED
# x1: -0x5df9c
# x2: 0x2ab
# x5: 0x63
# x11: 0x759
# x16: -0x75cd
# x19: 0x1
# x28: 0x7f4
# x30: 0x1
