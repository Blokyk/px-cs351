# Seed: 57720959


# == filling regs == 

# == code == 
srli    x5, x17, 0x8 # 1
slt    x13,  x9,  x9 # 2
slti    x9, x19, -0x60a # (0xfffff9f6) # 3
bltu   x17,  x4, 0xf48 # 4
sltiu  x31, x16, -0x4e0 # (0xfffffb20) # 5
ori     x8, x29, -0x428 # (0xfffffbd8) # 6
addi   x14, x30, -0x626 # (0xfffff9da) # 7
slti    x3,  x3, 0x415 # 8
add    x14,  x5, x10 # 9
srli   x27,  x2, 0x1a # 10
srai   x11, x11, 0x1d # 11
slli    x7, x14, 0x18 # 12
sub    x30,  x5, x24 # 13
sb     x13, 202(x27) # 14
and     x7,  x3, x19 # 15
slli   x19, x29, 0x13 # 16
or     x25,  x6, x29 # 17
slli    x0,  x8, 0x14 # 18
slt    x30, x11,  x9 # 19
srl    x25,  x6, x13 # 20
xor    x23, x11,  x3 # 21
sd     x20, 1727(x14) # 22
sh      x4, 1156(x29) # 23
sw      x2, 1689(x3) # 24
srai    x4,  x7, 0x0 # 25

# EXPECTED
# x2: 0x4000
# x3: 0x1
# x8: -0x428
# x23: 0x1
# x31: 0x1
