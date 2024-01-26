# Seed: 980146940

# Generation 173

# == filling regs ==
addi   a3, x0, 0x7ce
addi   t4, x0, 0x4c
addi   a4, x0, 0x47
addi   x0, x0, 0x3d
addi   a3, x0, 0x7a6

# == code ==
lb     t0, 1246(a4)
ori    a5, s4, 0x1
lh     a4, 1958(a7)
lui    gp, 0x2a531
lwu    s6, 810(t0)
andi   a2, ra, 0x5b7
sw     s2, 2030(t3)
addi   a5, s10, 0x7df
srai   a7, s7, 0x0
lw     s3, 2040(s6)
slli   s10, t1, 0x18
srl    a4, a3, s8
xor    t4, s7, gp
addi   tp, s0, 0x3b
sll    t0, a0, a5
srai   s5, a1, 0x12
sub    ra, s11, t4
slti   s1, gp, 0x55a
addi   a0, s10, 0x3d
and    sp, s7, tp
sll    t3, a1, tp
addi   a4, a2, 0x21
bgeu   s0, t4, 0x28
auipc  a5, 0xfffcc
sltiu  t5, t0, 0x7b2
srli   t5, t6, 0x13
blt    x0, ra, -0x40 # (0xffffffc0)
srai   a2, s1, 0x1b
add    s3, s11, a6
sh     ra, 57(t1)

# EXPECTED
# x1: -0x2a531000
# x3: 0x2a531000
# x4: 0x3b
# x10: 0x3d
# x13: 0x7a6
# x14: 0x21
# x15: -0x33f90
# x29: 0x2a531000
