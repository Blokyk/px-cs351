# Seed: 1329499480

# Generation 64

# == filling regs ==
addi   a0, x0, 0x1b
addi   t6, x0, 0x9
addi   t0, x0, 0x2b
addi   ra, x0, 0x7bd
addi   a5, x0, 0x7a4

# == code ==
blt    a3, a1, 0x54
sltiu  s7, s5, 0x37
srli   a5, s2, 0xa
andi   a5, s11, 0x7be
srai   t6, s11, 0x1
auipc  a0, 0x2d
ori    tp, tp, 0x7ea
sh     t4, 2017(t2)
lwu    a4, 1984(a4)
slt    s6, s6, t0
addi   t1, gp, 0x7d7
lhu    s7, 2038(s5)
ori    t4, s9, 0x7eb
andi   t4, ra, 0x7d9
sltiu  s6, s2, 0x7f2
sra    ra, s7, t3
sra    s8, t1, s1
xori   s9, t3, 0x7d6
sh     t3, 42(tp)
slli   s1, s11, 0xb
lhu    x0, 2024(a5)
sll    s6, s7, a6
xori   a7, s7, 0x5e
beq    t1, s7, 0x34
lui    a4, 0xa55d5
lb     t6, 9(t3)
srai   t1, s1, 0x18
sw     s11, 39(s2)
lbu    s0, 976(x0)
sltiu  t5, s11, 0x39b

# EXPECTED
# x2: 0x4000
# x4: 0x7ea
# x5: 0x2b
# x10: 0x2d028
# x14: -0x5aa2b000
# x17: 0x5e
# x24: 0x7d7
# x25: 0x7d6
# x29: 0x799
# x30: 0x1
# x31: 0x2
