# Seed: 1204075764


# == filling regs == 

# == code == 
slli   x30, x25, 0x8 # 1
andi   x23,  x0, 0xcd # 2
slli   x21, x19, 0x1a # 3
sll    x19,  x9, x23 # 4
xor     x0,  x3, x14 # 5
bltu   x20, x25, 0x648 # 6
slti   x11,  x2, 0x1c3 # 7
sb     x30, 778(x0) # 8
ori    x10, x12, 0x7af # 9
bltu   x15, x25, 0x3ac # 10
andi   x29, x11, 0x7c5 # 11
xor     x5, x11,  x8 # 12
lhu     x0, 1444(x25) # 13
slt    x20, x13, x12 # 14
sltu    x8,  x9,  x5 # 15
xori   x16,  x4, -0x6fd # (0xfffff903) # 16
or      x5, x21, x16 # 17
sll     x5, x27, x11 # 18
srl    x24, x30,  x4 # 19
srli   x28, x18, 0x3 # 20
srli    x2,  x4, 0x19 # 21
srli   x27,  x3, 0x1d # 22
sd      x0, 1406(x30) # 23
sltu    x8, x17, x25 # 24
xori    x6, x11, 0x71e # 25

# EXPECTED
# x6: 0x71e
# x10: 0x7af
# x16: -0x6fd
