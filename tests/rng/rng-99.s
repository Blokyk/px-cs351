# Seed: 847579520

# Generation 36

# == filling regs ==
addi   t2, x0, 0x11
addi   t2, x0, 0x7bf
addi   s5, x0, 0x54
addi   t2, x0, 0x1e
addi   s2, x0, 0x60

# == code ==
sltiu  gp, t0, 0x237
add    s2, s4, a7
auipc  s8, 0x3c
lh     a1, 1975(s7)
sll    t1, a3, a3
lw     s1, 1949(x0)
and    s9, gp, a2
lhu    s6, 60(s1)
and    s11, a6, s7
srl    s2, s11, a3
sltiu  s10, s4, 0x1b
auipc  tp, 0x42
beq    t5, tp, 0x2c
lh     s2, 1961(a2)
slti   ra, tp, 0x7f5
sw     s8, 48(t6)
sh     t2, 64(s9)
sltu   a4, s1, t6
sh     a3, 39(s9)
sb     gp, 1(gp)
sh     tp, 43(a1)
xor    tp, s3, s1
lb     t3, 1964(s4)
lwu    s5, 118(t4)
sll    a4, s3, a0
sb     sp, 1719(t0)
sub    a7, a5, t4
sd     s7, 214(s10)
slti   a6, x0, 0x7ea
addi   t0, s7, 0x1ce

# EXPECTED
# x2: 0x4000
# x3: 0x1
# x5: 0x1ce
# x7: 0x1e
# x16: 0x1
# x21: 0x8ba300a9
# x22: 0x3d13
# x24: 0x3c01c
# x26: 0x1
