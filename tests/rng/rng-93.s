# Seed: 108863659

# Generation 46

# == filling regs ==
addi     a7,   x0, 0x7cb
addi     t5,   x0, 0x5f
addi     a1,   x0, 0x570
addi     t0,   x0, 0xda
addi     s5,   x0, 0x327

# == code ==
sra      a2,   s4,   s7
slli     sp,   s7, 0x10
lui      x0, 0xf
srl      a3,  s10,   s1
sw      s10, 2029(s3)
sub      s5,   a4,   s8
srai     a4,   ra, 0x16
srli     s0,   t5, 0x1d
srl      s2,   s6,   t5
and      t1,   t4,   a0
xori     gp,   a6, 0x4f
lh      s11, 53(s6)
or       a4,  s11,   a0
lui      t1, 0x30
sra      s9,   a0,   tp
ld       s7, 32(t2)
beq     s10,   t0, 0x10
sltiu    t0,   s7, 0x23
ld       s3, 4(a1)
andi     t2,   gp, 0x2a
auipc    tp, 0xfffbb
slti     t0,   t6, 0x73c
lb       gp, 785(s5)
lwu      s5, 902(s0)
sub      t5,   t4,   gp
srl      t6,   s3,   s7
bge      sp,   s7, 0x28
srai     gp,   t5, 0x1
slli     t2,   a5, 0x5
addi     t2,   ra, 0x4f0

# EXPECTED
# x4: -0x44f9c
# x5: 0x1
# x6: 0x30000
# x7: 0x4f0
# x11: 0x570
# x14: -0x14a7
# x17: 0x7cb
# x23: 0x7fa9a6a3009d56b3
# x27: -0x14a7
