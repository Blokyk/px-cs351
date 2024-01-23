# Seed: 1820042150


# == filling regs == 

# == code == 
add    x31, x29, x27 # 1
or     x10,  x2, x12 # 2
srli   x25, x23, 0xb # 3
xori   x24, x15, -0x1bf # (0xfffffe41) # 4
sh     x10, 566(x18) # 5
xori   x18,  x2, -0x581 # (0xfffffa7f) # 6
ori    x19, x15, 0x13a # 7
lw     x19, -917(x10) # 8
srai    x0,  x3, 0x15 # 9
or      x4, x14,  x9 # 10
sh     x23, 1885(x1) # 11
slt    x30,  x1,  x0 # 12
blt     x1,  x9, 0xa24 # 13
andi    x7, x10, -0x77d # (0xfffff883) # 14
xori   x15, x12, -0x6df # (0xfffff921) # 15
add    x13, x23,  x2 # 16
sltiu  x13, x13, -0x42 # (0xffffffbe) # 17
andi   x19, x31, -0x540 # (0xfffffac0) # 18
xori   x19,  x1, -0x347 # (0xfffffcb9) # 19
slt     x6, x12, x22 # 20
sltu    x5, x26, x27 # 21
bne     x6, x20, 0x1b4 # 22
sltu   x10,  x9, x18 # 23
xori   x16, x22, -0x6d5 # (0xfffff92b) # 24
sltiu  x11,  x7, -0x22c # (0xfffffdd4) # 25

# EXPECTED
# x2: 0x4000
# x7: 0x4000
# x10: 0x1
# x11: 0x1
# x13: 0x1
# x15: -0x6df
# x16: -0x6d5
# x18: -0x4581
# x19: -0x347
# x24: -0x1bf
