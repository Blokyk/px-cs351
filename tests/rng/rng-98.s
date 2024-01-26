# Seed: 436113127

# Generation 338

# == filling regs ==
addi   a4, x0, 0x7ad
addi   s11, x0, 0x676
addi   t3, x0, 0x7a9
addi   a4, x0, 0x6ad
addi   a6, x0, 0x7e7

# == code ==
sd     s4, 1952(s10)
and    t2, a0, t0
and    sp, t0, s10
sw     a7, 20(s10)
slt    ra, s11, t3
slli   t5, s0, 0x10
add    t0, a6, a7
srl    s4, a1, s6
xori   a1, s8, 0x48
sb     a7, 11(s4)
slti   sp, t1, 0x7d7
ori    a1, s1, 0x7fa
lhu    s5, 1(a7)
or     a7, a7, gp
sb     s4, 2025(a7)
xori   tp, s8, 0x19
lb     sp, 1953(gp)
or     s8, gp, s10
srl    t5, s0, s4
srai   t1, t0, 0x12
sw     t6, 1112(s3)
add    a2, t0, s7
sltiu  s6, sp, 0x274
lh     s9, 41(a6)
slt    ra, a5, x0
sll    x0, ra, a1
sll    t3, s11, s4
sll    s9, a7, t1
lbu    ra, 44(tp)
ori    sp, s6, 0x3

# EXPECTED
# x1: 0xda
# x2: 0x3
# x4: 0x19
# x5: 0x7e7
# x11: 0x7fa
# x12: 0x7e7
# x14: 0x6ad
# x16: 0x7e7
# x21: 0xd007
# x22: 0x1
# x27: 0x676
# x28: 0x676
