# Seed: 489188758


# == filling regs == 

# == code == 
srl     x1, x27,  x5 # 1
sltu    x5, x12, x20 # 2
andi   x15, x28, -0x274 # (0xfffffd8c) # 3
xori   x27,  x5, 0x560 # 4
sltiu  x29,  x6, 0x7ed # 5
slt     x6,  x1, x13 # 6
addi    x3,  x6, -0x7a0 # (0xfffff860) # 7
srai   x13,  x1, 0x11 # 8
addi   x14,  x7, 0x761 # 9
xori    x0, x20, -0x7ef # (0xfffff811) # 10
xori   x24, x24, 0x3dd # 11
slti   x10, x11, 0x1ce # 12
sd     x23, 770(x18) # 13
srai   x20,  x2, 0x17 # 14
add     x4,  x3,  x0 # 15
srli   x19, x23, 0x8 # 16
srl    x18,  x1,  x8 # 17
slli   x27,  x6, 0x16 # 18
andi    x9,  x7, 0x33c # 19
srai   x21,  x0, 0xa # 20
xori    x7, x27, -0x583 # (0xfffffa7d) # 21
xori   x17,  x2, -0x29d # (0xfffffd63) # 22
addi   x16,  x6, -0x35c # (0xfffffca4) # 23
addi   x23,  x7, -0x16b # (0xfffffe95) # 24
add    x10, x10, x20 # 25

# EXPECTED
# x2: 0x4000
# x3: -0x7a0
# x4: -0x7a0
# x7: -0x583
# x10: 0x1
# x14: 0x761
# x16: -0x35c
# x17: -0x429d
# x23: -0x6ee
# x24: 0x3dd
# x29: 0x1
