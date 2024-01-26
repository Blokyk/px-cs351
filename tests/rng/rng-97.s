# Seed: 1017895531

# Generation 87

# == filling regs ==
addi   a4, x0, 0x1f5
addi   t1, x0, 0x32
addi   a7, x0, 0x1d
addi   t2, x0, 0xab
addi   s7, x0, 0x38b

# == code ==
sub    gp, s11, a1
bltu   t5, a5, -0x2c # (0xffffffd4)
srai   s1, t0, 0x1c
sb     t2, 397(a1)
xori   a5, ra, 0x7f6
andi   t3, a3, 0x1
lhu    t1, 64(t6)
sltu   t4, t4, t1
lui    s11, 0xffffc
andi   a5, a6, 0x5a
slti   a3, sp, 0x12
blt    gp, x0, -0x58 # (0xffffffa8)
slli   sp, t6, 0x3
sltiu  t6, tp, 0x22
sd     sp, 546(a0)
blt    gp, s6, 0x28
andi   a6, a6, 0x27
srl    t6, a3, s8
lui    a4, 0xfffbb
slt    tp, t0, s3
sw     s1, 725(x0)
addi   tp, s10, 0x37
lwu    a1, 1966(s7)
sub    t0, ra, tp
lw     a4, 23(ra)
lui    a3, 0x9da92
sltu   t3, s7, s8
auipc  a0, 0xffffa
slt    a7, a6, s10
addi   a7, s7, 0x7fc

# EXPECTED
# x4: 0x37
# x5: -0x37
# x6: 0xc4e3
# x7: 0xab
# x10: -0x5f80
# x13: -0x6256e000
# x14: -0x951cc0
# x17: 0xb87
# x23: 0x38b
# x27: -0x4000
# x29: 0x1
