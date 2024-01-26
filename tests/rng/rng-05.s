# Seed: 1557457150

# Generation 416

# == filling regs ==
addi   a6, x0, 0x7c5
addi   a6, x0, 0x2b
addi   x0, x0, 0x7d7
addi   x0, x0, 0x4c
addi   a2, x0, 0x5b

# == code ==
bne    s2, s2, 0x0
lw     t1, 22(s9)
srai   s3, t6, 0x9
srai   a0, t0, 0x1c
sltiu  s6, s4, 0x0
jal    gp, 0xc
bltu   a1, a1, -0x10 # (0xfffffff0)
bltu   s0, t0, -0x4c # (0xffffffb4)
sltiu  t2, a0, 0x1df
or     a1, s2, t5
ori    s11, s9, 0x7c6
andi   a2, a5, 0x7b8
srai   s4, a6, 0x9
lui    t5, 0x45
lwu    t1, 1323(t2)
sltiu  a0, t1, 0x24
bgeu   a7, a1, -0x38 # (0xffffffc8)
lwu    a3, 0(s7)
srl    a5, a5, s2
jal    t6, 0x60
bge    ra, s11, 0x1c
add    t1, x0, s11
addi   sp, x0, 0x4f
add    t3, a2, s1
sd     s6, 66(s7)
ld     a7, 2029(a0)
sb     s3, 1516(a5)
srl    a1, a5, t4
lwu    a5, 294(s9)
lbu    a4, 881(s2)

# EXPECTED
# x2: 0x4000
# x3: 0x2c
# x7: 0x1
# x10: 0x1
# x11: 0x45000
# x13: 0x7c500813
# x16: 0x2b
# x27: 0x7c6
# x30: 0x45000
# x31: 0x64
