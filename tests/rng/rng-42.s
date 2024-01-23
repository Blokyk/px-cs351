# Seed: 1249086320


# == filling regs == 

# == code == 
sltu   x26, x13,  x5 # 1
slli   x23, x13, 0x17 # 2
ori     x6, x16, -0x6ba # (0xfffff946) # 3
add    x23, x19, x21 # 4
and    x28, x13, x12 # 5
lwu    x22, 1466(x12) # 6
sub    x18, x19, x18 # 7
srl    x20,  x3, x30 # 8
sltiu  x30, x17, 0x299 # 9
ori    x18, x19, -0x651 # (0xfffff9af) # 10
addi   x11, x18, -0x5c1 # (0xfffffa3f) # 11
xori   x23,  x0, -0x231 # (0xfffffdcf) # 12
and    x11,  x2, x16 # 13
lbu    x10, 1717(x15) # 14
sltiu   x6, x18, 0x37e # 15
slli    x9, x30, 0xa # 16
slt     x7,  x1, x12 # 17
lh     x16, 137(x12) # 18
slt    x16,  x3,  x3 # 19
sub    x25, x18, x16 # 20
sub    x10,  x3, x20 # 21
xori    x4,  x3, -0x18 # (0xffffffe8) # 22
and     x5, x15, x18 # 23
bltu    x9, x10, 0x970 # 24
slti   x19, x10, 0x52e # 25

# EXPECTED
# x2: 0x4000
# x4: -0x18
# x9: 0x400
# x18: -0x651
# x19: 0x1
# x23: -0x231
# x25: -0x651
# x30: 0x1
