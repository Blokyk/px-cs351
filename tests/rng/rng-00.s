# Seed: 1600415980

# Generation 320

# == filling regs ==
addi   sp, x0, 0x3f2
addi   s0, x0, 0x2b
addi   t2, x0, 0x7fb
addi   s9, x0, 0x5b9
addi   s5, x0, 0x7dc

# == code ==
sll    a2, s7, s6
slti   a4, s10, 0x7e8
slli   s6, x0, 0xa
slt    a7, t4, t5
or     a2, s8, a2
sw     a1, 889(a0)
sltiu  tp, t6, 0x210
bne    a1, s7, -0x14 # (0xffffffec)
addi   s11, s10, 0x447
bltu   s5, a3, 0xeb0
sltu   a0, a6, a4
beq    s6, sp, -0x58 # (0xffffffa8)
sra    a4, s5, ra
sh     s10, 38(gp)
slti   s3, a1, 0x8
and    t0, t3, a2
sll    a3, a1, s9
or     gp, t4, s3
blt    gp, s4, -0x50 # (0xffffffb0)
and    a6, a1, tp
sw     a1, 1953(a6)
bne    a6, a7, 0x71c
sra    ra, t0, gp
auipc  t0, 0x19
sh     s0, 2010(t2)
add    a6, t3, s11
srai   tp, gp, 0x12
bltu   t0, a6, 0x48
xori   a6, x0, 0x8
bltu   a7, a2, 0x14

# EXPECTED
# x2: 0x3f2
# x3: 0x1
# x5: 0x19070
# x7: 0x7fb
# x8: 0x2b
# x10: 0x1
# x14: 0x7dc
# x16: 0x8
# x19: 0x1
# x21: 0x7dc
# x25: 0x5b9
# x27: 0x447
