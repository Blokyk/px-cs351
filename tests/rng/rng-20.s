# Seed: 1595616211

# Generation 42

# == filling regs ==
addi   t5, x0, 0x7be
addi   s7, x0, 0x7e2
addi   a6, x0, 0xda
addi   a0, x0, 0x62c
addi   s9, x0, 0x1d

# == code ==
and    s6, s4, s8
slli   s5, s9, 0x11
ori    t6, s1, 0x6
and    s8, t0, a6
ori    s2, t4, 0x7b9
and    x0, s10, t3
sra    s0, s4, s7
lw     a5, 72(t4)
srai   t2, t6, 0x4
srli   a3, sp, 0x6
sll    a7, s5, tp
ori    s9, a4, 0x55
sltu   t1, s4, s11
xori   a5, tp, 0x7dc
lb     tp, 1834(s10)
xori   s5, a5, 0x7f5
xori   t3, s9, 0x7c0
slti   a3, a7, 0x10
lbu    s9, 1952(s8)
auipc  s9, 0x57
slli   a0, s4, 0x1b
sll    s7, a3, a3
beq    a1, a5, -0x4c # (0xffffffb4)
srai   s9, a1, 0x10
sw     t1, 672(x0)
lwu    gp, 1992(t3)
slli   a1, a2, 0xf
bgeu   s0, t3, 0x1c
sltiu  s3, s2, 0x7e7
xori   t3, a4, 0x5b

# EXPECTED
# x2: 0x4000
# x15: 0x7dc
# x16: 0xda
# x17: 0x3a0000
# x18: 0x7b9
# x19: 0x1
# x21: 0x29
# x28: 0x5b
# x30: 0x7be
# x31: 0x6
