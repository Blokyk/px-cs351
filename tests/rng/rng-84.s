# Seed: 1119098061

# Generation 633

# == filling regs ==
addi   s5, x0, 0x7d0
addi   s4, x0, 0x2f
addi   a0, x0, 0x7da
addi   s9, x0, 0x28
addi   s2, x0, 0x7e9

# == code ==
srai   s1, x0, 0x15
slt    s4, t5, s5
lui    x0, 0xfffd8
sltu   s3, s9, gp
lwu    gp, 57(s10)
or     t5, s5, a2
sra    a5, s2, a2
sh     x0, 90(t6)
bltu   s2, t5, 0x48
auipc  s5, 0xfffa1
slt    t5, s8, a2
srl    t1, s3, s11
sub    s10, s5, s10
addi   t0, t1, 0x38
lbu    tp, 975(a7)
sltiu  s4, a2, 0x18
lh     x0, 1901(s6)
bne    s4, t4, -0x38 # (0xffffffc8)
lwu    s8, 2036(x0)
sltiu  a3, s6, 0x4d
sll    a5, s11, s2
slti   a5, s9, 0x7ab
bgeu   s0, t0, 0x2d8
sltiu  a7, x0, 0x47
srli   s2, s0, 0x1
addi   gp, s4, 0x7eb
sll    s0, a3, s4
sll    a4, a4, s7
srai   t4, s11, 0x14
lh     s0, 1558(ra)

# EXPECTED
# x2: 0x4000
# x3: 0x7ec
# x5: 0x38
# x10: 0x7da
# x13: 0x1
# x15: 0x1
# x17: 0x1
# x20: 0x1
# x21: -0x5efc8
# x25: 0x28
# x26: -0x5efc8
