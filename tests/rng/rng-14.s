# Seed: 488873732

# Generation 37

# == filling regs ==
addi   t2, x0, 0x7e5
addi   s7, x0, 0x3a
addi   t4, x0, 0x1f
addi   x0, x0, 0x33
addi   t3, x0, 0x79f

# == code ==
addi   s5, s0, 0x21
slti   x0, s2, 0x1
srli   a2, s10, 0x1e
sltiu  t2, s1, 0x7d0
andi   s10, a1, 0x7bb
lhu    s1, 1975(a7)
auipc  sp, 0x9d49c
srli   a5, gp, 0x2
add    a3, t1, s7
sd     a1, 0(t2)
bltu   ra, s8, 0x60
sltu   t5, t1, s7
slli   s3, a5, 0xd
lb     a3, 2025(s7)
bgeu   s4, t5, 0x54
ld     sp, 21(s4)
slli   s10, s5, 0x3
sra    x0, a4, s0
slti   a0, t3, 0x92
or     t6, s9, s1
xori   a7, s11, 0x18
or     t0, t4, t1
slti   s7, t3, 0x5d9
slti   s8, s7, 0x5
slt    s0, ra, a2
slli   s5, t3, 0x0
and    t0, a2, s6
sb     a4, 1967(t5)
and    s8, s1, s8
sll    t4, t1, ra

# EXPECTED
# x2: 0x130019201302140a
# x7: 0x1
# x17: 0x18
# x21: 0x79f
# x26: 0x108
# x28: 0x79f
# x30: 0x1
