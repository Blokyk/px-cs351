# Seed: 2037245755

# Generation 133

# == filling regs ==
addi   a4, x0, 0x2bd
addi   t6, x0, 0x7b9
addi   gp, x0, 0x264
addi   t2, x0, 0x13
addi   a0, x0, 0x25

# == code ==
srli   a2, sp, 0x1b
lb     s1, 73(ra)
srli   s1, a0, 0x18
and    s9, t0, tp
sltu   s9, x0, s7
slt    t0, s8, a2
auipc  a5, 0x9
andi   a7, a2, 0x54f
auipc  x0, 0xfffdf
srli   t4, s5, 0x1d
srli   s2, s3, 0x0
beq    a0, a4, -0x54 # (0xffffffac)
lhu    s1, 41(s2)
xor    a3, a3, t4
lhu    s2, 1019(s5)
slti   s10, gp, 0x512
srli   s0, s2, 0x16
slt    a6, gp, tp
lui    s9, 0x60
sll    s0, a1, a1
lhu    s8, 1234(t6)
lb     s1, 15(t4)
lui    t1, 0xfffe4
ori    a7, t5, 0x59
or     s4, t2, s4
sra    s8, a6, a3
slli   t4, x0, 0xb
sd     a0, 1965(a1)
or     s8, t6, t1
add    t2, s1, a7

# EXPECTED
# x2: 0x4000
# x3: 0x264
# x6: -0x1c000
# x7: 0x5a
# x9: 0x1
# x10: 0x25
# x14: 0x2bd
# x15: 0x902c
# x17: 0x59
# x20: 0x13
# x24: -0x1b847
# x25: 0x60000
# x26: 0x1
# x31: 0x7b9
