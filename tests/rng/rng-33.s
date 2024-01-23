# Seed: 384508299


# == filling regs == 

# == code == 
or     x24, x12, x19 # 1
slt    x16, x24,  x2 # 2
andi   x24,  x6, -0x716 # (0xfffff8ea) # 3
sw      x3, 879(x16) # 4
sub    x30,  x0, x28 # 5
bltu   x20, x29, 0x74c # 6
addi   x15, x24, 0x687 # 7
sltu   x25,  x6,  x2 # 8
blt     x5, x28, -0xddc # (0xfffff224) # 9
sd     x27, 1401(x16) # 10
srl    x31, x13, x18 # 11
sltu   x18,  x1, x17 # 12
and    x22, x12,  x3 # 13
srai   x26, x20, 0x1b # 14
add    x17, x23,  x1 # 15
sra     x1, x14, x29 # 16
sd      x8, 26(x13) # 17
sltiu  x10, x20, 0x2ed # 18
slti    x8, x24, 0x235 # 19
ori    x26,  x3, -0x37e # (0xfffffc82) # 20
andi   x21, x17, -0x4cf # (0xfffffb31) # 21
slti    x4,  x0, -0x253 # (0xfffffdad) # 22
slt     x9,  x7,  x2 # 23
xori   x27, x24, 0x61f # 24
slt    x24,  x2, x19 # 25

# EXPECTED
# x2: 0x4000
# x8: 0x1
# x9: 0x1
# x10: 0x1
# x15: 0x687
# x16: 0x1
# x25: 0x1
# x26: -0x37e
# x27: 0x61f
