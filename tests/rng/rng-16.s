# Seed: 1823266804

# Generation 2

# == filling regs ==
addi   x0, x0, 0x4e
addi   s9, x0, 0xb
addi   s9, x0, 0x7d0
addi   gp, x0, 0xaf
addi   gp, x0, 0x0

# == code ==
ori    s7, a4, 0x59
ori    t3, t6, 0x35
sltiu  a5, s6, 0x5
slt    t3, s5, s4
sltiu  t1, sp, 0x1a
auipc  s7, 0xfffad
slli   a5, s6, 0xf
lbu    s6, 77(a0)
lb     t1, 1687(s9)
andi   a0, tp, 0xc
lbu    gp, 91(a1)
auipc  s1, 0xc22c7
sw     x0, 2019(s8)
addi   a0, t6, 0x7c8
lw     t2, 3(x0)
sll    s7, tp, s7
sb     a5, 1072(x0)
sb     a0, 853(tp)
auipc  s2, 0xfffcf
slti   s9, sp, 0x427
sh     s1, 1317(a7)
xor    a7, a4, gp
or     a2, a5, ra
sll    x0, s5, t4
sltiu  s4, s1, 0x424
addi   s11, ra, 0x7fd
srli   s7, s2, 0x1a
andi   s10, s7, 0x56
jalr   s7, 328(t3)
slli   a0, tp, 0x2

# EXPECTED
# x2: 0x4000
# x3: 0x34
# x7: -0x4ff36cfc
# x9: -0x3dd38fc0
# x10: 0x7c8
# x17: 0x34
# x18: -0x30fa4
# x22: 0x23
# x23: 0x88
# x26: 0x56
# x27: 0x7fd
