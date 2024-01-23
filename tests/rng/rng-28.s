# Seed: 1680651177


# == filling regs == 

# == code == 
srli   x11, x17, 0x2 # 1
sltu   x23, x27,  x5 # 2
andi    x2, x31, -0x6f9 # (0xfffff907) # 3
sra     x4, x27, x24 # 4
or     x28, x19,  x2 # 5
sra    x14, x15, x12 # 6
xori   x17, x13, 0x48c # 7
srli    x0, x19, 0x1 # 8
ori    x16, x10, -0x150 # (0xfffffeb0) # 9
srai    x4, x20, 0xf # 10
slti   x12,  x0, 0x577 # 11
sltu   x20, x13, x14 # 12
xori   x12,  x4, 0x601 # 13
slli    x8,  x9, 0x10 # 14
slli   x30, x24, 0x10 # 15
srai   x17,  x3, 0x4 # 16
xori   x29, x25, 0x5d8 # 17
addi   x31, x16, 0x629 # 18
slti   x20, x11, 0x760 # 19
sw     x11, 1452(x17) # 20
and    x18, x12,  x3 # 21
xori   x19,  x3, 0x4a # 22
xor    x30, x14, x12 # 23
sd      x0, 201(x29) # 24
slti   x28,  x7, -0x7b6 # (0xfffff84a) # 25

# EXPECTED
# x12: 0x601
# x16: -0x150
# x19: 0x4a
# x20: 0x1
# x29: 0x5d8
# x30: 0x601
# x31: 0x4d9
