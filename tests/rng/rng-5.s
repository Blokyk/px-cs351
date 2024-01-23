# Seed: 1711546670


# == filling regs == 

# == code == 
andi   x21, x24, -0x145 # (0xfffffebb) # 1
xor    x31, x16, x23 # 2
ori    x17, x10, 0x153 # 3
sh     x12, 1651(x24) # 4
srl     x9, x30, x10 # 5
add    x22, x28,  x3 # 6
or     x21,  x1, x29 # 7
andi    x0,  x8, 0x603 # 8
slti   x25,  x9, 0x2c0 # 9
slli   x15, x27, 0x17 # 10
or      x7,  x8, x28 # 11
xori   x15, x14, -0x533 # (0xfffffacd) # 12
sll     x9, x20, x28 # 13
ori     x9, x11, 0x5f9 # 14
srai   x11,  x9, 0x8 # 15
slt    x25,  x9, x25 # 16
xori    x4, x24, 0x114 # 17
sd      x4, 1743(x15) # 18
and    x30, x27, x11 # 19
sltu   x25, x27, x15 # 20
lb     x18, 405(x21) # 21
andi   x25, x14, -0x1d3 # (0xfffffe2d) # 22
sll    x11, x19,  x4 # 23
slti   x12, x18, 0x276 # 24
addi    x0, x20, -0x12 # (0xffffffee) # 25

# EXPECTED
# x2: 0x4000
# x4: 0x114
# x9: 0x5f9
# x12: 0x1
# x15: -0x533
# x17: 0x153
