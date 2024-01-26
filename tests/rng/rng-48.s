# Seed: 377792935

# Generation 2

# == filling regs ==
addi   t2, x0, 0x701
addi   gp, x0, 0x7ec
addi   s1, x0, 0x489
addi   s5, x0, 0x7e7
addi   a6, x0, 0x35

# == code ==
xori   a5, a1, 0x7be
auipc  a6, 0xfffdd
xori   a7, s10, 0x33
slli   a2, t1, 0x6
srai   t4, s7, 0x1f
blt    tp, s9, 0x8
and    s1, a1, s2
sd     a2, 2027(s1)
andi   a4, s4, 0x4b
slti   s3, s5, 0x4e
andi   t0, t0, 0x2d
lui    t5, 0xfffb2
slli   a5, t4, 0x3
ori    a1, s5, 0x45
sb     t1, 1954(a4)
lb     t0, 2040(a1)
add    s1, s4, s2
xor    t0, a6, s1
slt    s10, t2, a4
bge    t5, s10, 0x8b4
sll    s11, a0, t0
ori    a7, s0, 0x29
sb     a5, 50(x0)
lh     t1, 9(s2)
srl    a3, s5, a1
sltu   t4, ra, s8
slli   s7, s9, 0xb
ori    s8, a5, 0xa
srai   ra, s1, 0x3
add    tp, s2, tp

# EXPECTED
# x2: 0x4000
# x3: 0x7ec
# x5: -0x22fe8
# x6: -0x6ffc
# x7: 0x701
# x11: 0x7e7
# x13: 0xf
# x16: -0x22fe8
# x17: 0x29
# x21: 0x7e7
# x24: 0xa
# x30: -0x4e000
