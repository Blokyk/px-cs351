# Seed: 262461818

# Generation 161

# == filling regs ==
addi   t5, x0, 0x43a
addi   a0, x0, 0x27
addi   a1, x0, 0x7ea
addi   s5, x0, 0x479
addi   s10, x0, 0x41

# == code ==
andi   s9, t2, 0x58
sltu   a3, gp, sp
xori   a7, s8, 0x3d
sra    tp, t3, s7
slti   s7, t5, 0x40b
ori    t0, s7, 0x15
and    gp, t2, t0
slti   s10, sp, 0x7fc
srl    s6, t3, a5
lhu    s4, 807(a6)
lwu    s10, 86(t4)
addi   s10, ra, 0x0
and    t4, t3, s6
addi   t3, x0, 0x41
xori   a3, s1, 0x7d7
lw     a4, 1162(ra)
or     s5, t1, t4
lbu    s7, 2045(s2)
and    t5, t4, sp
bne    t2, s10, 0x48
beq    s2, a7, -0x54 # (0xffffffac)
sh     s10, 8(s8)
srli   s10, sp, 0xd
xori   a5, a2, 0x316
bltu   a4, t4, 0x4b8
sll    gp, s7, a4
sh     t4, 883(tp)
srl    x0, a0, s2
lwu    s6, 2041(gp)
lhu    s5, 43(t5)

# EXPECTED
# x2: 0x4000
# x5: 0x15
# x10: 0x27
# x11: 0x7ea
# x13: 0x7d7
# x15: 0x316
# x17: 0x3d
# x21: 0xb301
# x26: 0x2
# x28: 0x41
