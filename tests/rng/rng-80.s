# Seed: 1953557319

# Generation 124

# == filling regs ==
addi   s8, x0, 0x4e
addi   t2, x0, 0x651
addi   s8, x0, 0x8
addi   a5, x0, 0x3b
addi   a6, x0, 0x7f2

# == code ==
auipc  t3, 0xffff0
sltiu  s2, a7, 0x7c5
addi   sp, s7, 0x1ec
lhu    t3, 1973(t6)
slti   s1, sp, 0x33
addi   ra, a3, 0x35
srl    t3, a6, s9
ld     t2, 1700(s1)
sub    ra, s5, s10
sb     s0, 2006(s9)
slt    s7, a1, s5
xor    s8, a3, s0
blt    s3, t6, -0x24 # (0xffffffdc)
add    s11, s1, a4
srai   a2, t2, 0x18
slti   a4, s1, 0x2b
lh     s5, 1670(gp)
sb     s8, 18(s11)
sh     s9, 1980(tp)
ori    s4, x0, 0x7fe
srl    a5, t3, s1
slti   t0, t6, 0x54c
andi   s6, t6, 0x113
xori   s0, a2, 0x55
andi   t6, s6, 0x7e6
srli   s10, s1, 0x1d
sw     a6, 1376(t4)
lui    t1, 0xfffa0
lwu    s0, 56(a6)
sd     a5, 21(s0)

# EXPECTED
# x2: 0x1ec
# x5: 0x1
# x6: -0x60000
# x14: 0x1
# x15: 0x7f2
# x16: 0x7f2
# x18: 0x1
# x20: 0x7fe
# x28: 0x7f2
