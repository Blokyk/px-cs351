# Seed: 78932632

# Generation 237

# == filling regs ==
addi     t6,   x0, 0x7d0
addi     t3,   x0, 0xc
addi     s9,   x0, 0x7ad
addi     t5,   x0, 0x2e5
addi     s6,   x0, 0x7cc

# == code ==
xor      s6,   a0,   t5
andi     a6,   s3, 0x79f
slt      t3,   s0,   a2
sb      s11, 2012(s4)
or       a0,   a7,   t1
srli     a0,   a4, 0x4
ori      a6,   s3, 0x6ea
lui      t4, 0x20
sll      t3,   s1,   s5
sd       s2, 33(s7)
xori     s4,   s4, 0x420
auipc    a4, 0x47
slt      a1,   t6,   a2
srai     t6,   s1, 0xc
srai    s11,   a0, 0x14
slti     t2,   ra, 0x495
lui      s9, 0x2cc3d
lw       s2, 2011(t6)
lw       t2, 21(a5)
sltu     tp,   x0,   t6
lui      ra, 0x22
srli     gp,   a4, 0xe
blt      a3,   s0, 0x0
addi     t6,   s8, 0x7c2
ori      s9,   ra, 0x33
or       s4,   a7,   t5
lui     s11, 0xfffe2
bltu     s4,   t1, -0x4d8 # (0xfffffb28)
slli     tp,   t6, 0x6
sra      s8,  s11,   ra

# EXPECTED
# x1: 0x22000
# x2: 0x4000
# x3: 0x11
# x4: 0x1f080
# x7: 0x1301e54b
# x14: 0x47040
# x16: 0x6ea
# x20: 0x2e5
# x22: 0x2e5
# x24: -0x1e000
# x25: 0x22033
# x27: -0x1e000
# x29: 0x20000
# x30: 0x2e5
# x31: 0x7c2
