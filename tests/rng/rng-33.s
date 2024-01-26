# Seed: 141399746

# Generation 185

# == filling regs ==
addi   sp, x0, 0x7ee
addi   t0, x0, 0x7f4
addi   s0, x0, 0x6
addi   sp, x0, 0x7a0
addi   t1, x0, 0x26

# == code ==
or     sp, a2, a4
andi   s1, a6, 0x48
bne    a2, s5, -0x430 # (0xfffffbd0)
bltu   a5, s5, -0xdec # (0xfffff214)
lwu    s9, 605(a6)
sh     t4, 1077(s6)
or     s7, t6, t4
srli   s1, s1, 0x1
lh     a1, 1964(a2)
add    a6, x0, a7
slli   x0, s5, 0xa
lui    t6, 0xfffb0
lh     x0, 971(s2)
and    a5, t3, s1
sll    t5, s8, gp
sltiu  a4, t2, 0x3e
sltiu  s8, t6, 0x48
lui    s2, 0x0
sll    s1, gp, s3
slt    a6, a7, t0
xor    s5, x0, s0
addi   a3, t5, 0x329
slli   s0, s2, 0x7
sw     a7, 10(a0)
slti   t6, a0, 0x30
lbu    a5, 66(a5)
slli   s0, t3, 0x14
beq    t0, s9, 0x5ec
slli   s1, s3, 0x1e
lhu    s7, 2038(a7)

# EXPECTED
# x5: 0x7f4
# x6: 0x26
# x13: 0x329
# x14: 0x1
# x15: 0xfb
# x16: 0x1
# x21: 0x6
# x31: 0x1
