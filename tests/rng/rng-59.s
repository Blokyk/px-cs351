# Seed: 1033400646

# Generation 377

# == filling regs ==
addi   a2, x0, 0x79d
addi   t0, x0, 0x7e8
addi   a7, x0, 0x7b1
addi   ra, x0, 0x15
addi   t3, x0, 0x19b

# == code ==
and    s2, s9, s4
sra    t3, s7, a4
slti   a4, s3, 0x7d2
slti   s1, a4, 0x9
xori   s10, s4, 0x12e
sltu   s0, s4, a1
and    s0, a6, sp
lhu    s3, 2036(s2)
addi   t1, s11, 0x42
lhu    t4, 502(t1)
sw     t0, 2037(t1)
addi   s8, a2, 0x7ce
sb     s6, 984(a1)
andi   s10, t6, 0x79d
srl    s0, a4, sp
auipc  s5, 0xfffe1
sll    tp, sp, gp
auipc  ra, 0x91a95
srl    t1, s10, a4
bne    s6, a5, 0x54
sub    tp, gp, s1
lh     a1, 2024(s2)
lb     s1, 1974(s10)
sub    t0, a2, s3
sll    a2, s2, a5
sub    t6, t4, a2
and    t6, s7, x0
xori   s1, t1, 0x7e8
sltiu  s7, s9, 0x7b6
lui    a6, 0xfffe9

# EXPECTED
# x1: -0x6e56afa8
# x2: 0x4000
# x4: -0x1
# x5: 0x79d
# x8: 0x1
# x9: 0x7e8
# x14: 0x1
# x16: -0x17000
# x17: 0x7b1
# x21: -0x1efb0
# x23: 0x1
# x24: 0xf6b
