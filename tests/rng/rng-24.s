# Seed: 319886724

# Generation 83

# == filling regs ==
addi   a6, x0, 0x7
addi   t1, x0, 0x5b
addi   a1, x0, 0x244
addi   s1, x0, 0x7b3
addi   t0, x0, 0x33

# == code ==
sll    a2, a5, s2
sll    a4, s8, s8
lw     a4, 1965(t5)
auipc  sp, 0xe
sb     t0, 1773(s1)
xor    a2, s1, t4
ori    a6, t5, 0x7f2
lwu    s2, 0(a3)
jal    s1, 0x4
add    s4, a2, s1
sub    s4, tp, s7
and    t0, x0, a2
srli   a2, t1, 0x4
lui    s11, 0xfffb2
sw     sp, 16(a5)
slt    t1, t3, s6
srai   s9, s3, 0x0
lwu    t4, 33(s6)
lhu    t3, 86(a3)
srli   s11, t5, 0x1c
sb     a6, 286(a5)
or     s2, a5, a2
or     s10, s8, t5
lw     s3, 1156(a0)
ld     s2, 32(s10)
sltu   a0, tp, s7
srl    s2, a5, s11
sb     s8, 1988(s11)
or     t4, a1, t4
lwu    t2, 8(a2)

# EXPECTED
# x2: 0xe020
# x7: 0x207b3004
# x9: 0x38
# x11: 0x244
# x12: 0x5
# x16: 0x7f2
# x28: 0x4009
# x29: 0xa30002e5
