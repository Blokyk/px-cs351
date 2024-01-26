# Seed: 62990500

# Generation 70

# == filling regs ==
addi   x0, x0, 0x3c
addi   a5, x0, 0x22
addi   t6, x0, 0x7eb
addi   t0, x0, 0x59a
addi   t6, x0, 0x62

# == code ==
sub    a4, s1, s1
srl    s4, ra, s11
sltiu  ra, tp, 0x7eb
sh     ra, 1999(a5)
sra    a2, s8, gp
sltiu  a5, a3, 0x7fd
ori    t0, t4, 0x3e
sb     t0, 661(a6)
sltu   t0, a3, t3
bne    a0, s0, -0x100 # (0xffffff00)
andi   s3, s1, 0x58
slti   gp, s3, 0x6e9
lwu    s2, 2020(s0)
sll    a3, s8, t1
add    a4, s1, t6
sd     s8, 2042(t0)
bgeu   t2, a4, 0x4c
lwu    s9, 66(s6)
sb     t5, 239(t0)
bltu   a0, t2, 0x5c
xori   sp, s4, 0x7b3
or     s10, t1, s4
sll    a1, a0, ra
slt    t5, s8, t6
bne    a2, s6, -0x58 # (0xffffffa8)
sub    t4, s11, x0
sll    s3, s7, s8
and    t5, a0, tp
sll    tp, a7, a2
sub    ra, s9, t6

# EXPECTED
# x1: 0x69036e37
# x2: 0x7b3
# x3: 0x1
# x14: 0x62
# x15: 0x1
# x25: 0x69036e99
# x31: 0x62
