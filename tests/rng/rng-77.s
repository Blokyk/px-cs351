# Seed: 2096014944

# Generation 20

# == filling regs ==
addi   s1, x0, 0x796
addi   s5, x0, 0x17
addi   a6, x0, 0x43
addi   sp, x0, 0x7c9
addi   a7, x0, 0x7ad

# == code ==
blt    s11, a5, -0x3c # (0xffffffc4)
addi   s1, s11, 0x7e9
and    t4, t6, s2
sltiu  a4, gp, 0x5a
add    t5, a5, s0
andi   s11, a4, 0x7c5
sll    a4, s10, s0
sw     a1, 1995(a6)
sh     t6, 11(a3)
slti   t3, gp, 0x7d8
slli   a5, ra, 0x10
or     s4, s10, s5
ori    a5, a1, 0x7ed
sltiu  gp, s8, 0x627
andi   s6, a0, 0x4
xor    s9, s6, x0
srai   a6, a4, 0x13
andi   t6, t1, 0x58
srai   gp, a2, 0x1
slt    t2, tp, s7
addi   t4, t0, 0x1ad
lw     t0, 1896(a6)
sra    gp, t0, t4
sra    s1, x0, s2
ld     s2, 57(tp)
sra    ra, t6, s7
add    t3, a4, t1
bgeu   s3, s2, -0x650 # (0xfffff9b0)
slti   ra, t1, 0x7d0
slt    a7, s5, s1

# EXPECTED
# x1: 0x1
# x2: 0x7c9
# x15: 0x7ed
# x18: 0x33010097937d81ae
# x20: 0x17
# x21: 0x17
# x27: 0x1
# x29: 0x1ad
