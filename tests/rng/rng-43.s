# Seed: 57488143

# Generation 1045

# == filling regs ==
addi   s3, x0, 0x44
addi   sp, x0, 0x1a
addi   s3, x0, 0x24
addi   sp, x0, 0x37
addi   gp, x0, 0x4a

# == code ==
slt    x0, tp, t0
xor    a7, a2, a1
sra    s9, t6, s1
sh     a6, 1531(a4)
sw     t1, 2042(t1)
ori    ra, t4, 0x79d
andi   a5, s9, 0x7e8
addi   s11, t6, 0x5c
lhu    x0, 964(s5)
and    a5, gp, a5
andi   t2, ra, 0xfd
lwu    gp, 80(t1)
lhu    s7, 85(sp)
srai   s2, s2, 0x14
lw     s8, 1977(s7)
lui    a0, 0x23
sw     t2, 35(s9)
srli   ra, s0, 0xf
addi   s0, a3, 0x7b1
sltiu  sp, t3, 0x105
ld     a6, 1324(s7)
slti   a3, a2, 0x7d2
andi   a2, a1, 0x1b
srai   a1, a7, 0x13
srli   a3, s7, 0x10
lb     s2, 0(s11)
lui    t2, 0x61
ld     a7, 781(a5)
ori    t5, a0, 0x7f2
srai   a3, t5, 0x3

# EXPECTED
# x2: 0x1
# x3: 0x23537
# x7: 0x61000
# x8: 0x7b1
# x10: 0x23000
# x13: 0x46fe
# x18: 0x13
# x19: 0x24
# x27: 0x5c
# x30: 0x237f2
