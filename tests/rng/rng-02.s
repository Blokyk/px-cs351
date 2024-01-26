# Seed: 45103835

# Generation 250

# == filling regs ==
addi   s0, x0, 0x505
addi   s11, x0, 0x63
addi   a0, x0, 0x7b9
addi   a5, x0, 0x2e
addi   a3, x0, 0x39

# == code ==
sltu   a3, t3, s11
sh     s5, 1433(t1)
slli   x0, a2, 0x1f
or     s10, s4, t3
sll    ra, s6, s4
sh     s9, 1844(a1)
or     tp, t4, a2
sltiu  s3, s8, 0x3a
sll    s9, s4, a0
ori    t6, s10, 0x30
sub    a2, s11, s3
xor    a5, a0, a1
sra    s11, a6, s1
sll    s1, x0, t5
xor    a5, s5, s7
addi   s7, ra, 0x2f
auipc  a2, 0xe
xor    gp, s7, s11
lwu    a5, 69(s11)
sltiu  a1, a5, 0x7f2
sll    a2, s8, s1
slti   t5, t1, 0x7c9
and    a2, x0, s10
lb     s9, 113(t6)
slti   t6, a7, 0x7df
lb     s8, 56(t0)
srl    a7, s5, a3
srli   a5, gp, 0x4
lw     tp, 1955(a0)
blt    s0, a3, 0x50

# EXPECTED
# x2: 0x4000
# x3: 0x2f
# x8: 0x505
# x10: 0x7b9
# x13: 0x1
# x15: 0x2
# x19: 0x1
# x23: 0x2f
# x24: -0x6d
# x30: 0x1
# x31: 0x1
