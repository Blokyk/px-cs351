# Seed: 596871996

# Generation 70

# == filling regs ==
addi   tp, x0, 0x63
addi   x0, x0, 0x6
addi   a1, x0, 0x55
addi   tp, x0, 0x2f
addi   a1, x0, 0x2a

# == code ==
ld     t2, 79(s3)
bgeu   a5, tp, 0x38
sll    s3, a7, s5
sra    t6, a3, s4
sra    s0, s0, a7
sltiu  s5, s2, 0x7b1
srl    s4, a6, s6
or     s11, s9, s4
lb     s1, 1339(s11)
lbu    x0, 2040(s2)
srai   s5, s6, 0x13
xori   t3, x0, 0x7a9
lhu    a0, 2022(tp)
xori   s0, t5, 0x16
lb     a7, 18(t6)
sub    t6, s10, s4
bne    t4, s9, -0x4c # (0xffffffb4)
slti   a2, a2, 0x12a
sb     s5, 640(a1)
sra    a4, s5, s3
xori   t0, t0, 0x7d2
add    s11, a6, a3
srli   a2, s6, 0x10
xor    tp, s9, a0
or     a7, s1, gp
srai   a0, ra, 0x18
xori   t0, s3, 0x511
xor    s10, s4, gp
slli   s0, t3, 0x13
sw     s9, 2004(t4)

# EXPECTED
# x2: 0x4000
# x5: 0x511
# x7: -0x61651cbeb2f04cff
# x8: 0x3d480000
# x11: 0x2a
# x28: 0x7a9
