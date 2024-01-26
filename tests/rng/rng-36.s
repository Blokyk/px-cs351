# Seed: 1495960277

# Generation 193

# == filling regs ==
addi   s4, x0, 0x667
addi   s2, x0, 0x5d
addi   t6, x0, 0x7f4
addi   a6, x0, 0x7b2
addi   t1, x0, 0x7f9

# == code ==
blt    a5, t2, -0x10 # (0xfffffff0)
slt    s9, x0, t5
xor    ra, ra, t3
xori   a2, s3, 0x7c8
sltiu  t2, sp, 0x7ea
slli   a6, a7, 0x12
ld     t1, 1956(s10)
srai   s9, gp, 0x12
srai   s0, tp, 0x12
auipc  s7, 0x57
addi   s11, s8, 0x7b5
lb     t1, 2031(t6)
xor    tp, s11, sp
lw     s11, 81(ra)
sltiu  s9, s4, 0x7c0
lbu    t2, 1972(a0)
addi   t0, t4, 0x7b5
lui    s4, 0x9
srli   s7, x0, 0x13
xor    a1, s1, a4
lw     s1, 1042(s10)
auipc  t6, 0xd
xor    a7, t2, x0
xori   sp, s3, 0x7ab
sltiu  a3, a5, 0x7e9
srli   s8, s4, 0x16
slli   s3, s11, 0x1a
xor    t6, t3, t3
lhu    a6, 54(t2)
xori   a4, a5, 0x7e8

# EXPECTED
# x2: 0x7ab
# x4: 0x47b5
# x5: 0x7b5
# x12: 0x7c8
# x13: 0x1
# x14: 0x7e8
# x16: 0x4122
# x18: 0x5d
# x19: -0x1b212eaf4000000
# x20: 0x9000
# x25: 0x1
# x27: -0x6c84babd
