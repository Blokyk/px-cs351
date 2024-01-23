# Seed: 1904895677


# == filling regs == 

# == code == 
xori    x2, x11, -0x1e3 # (0xfffffe1d) # 1
ori    x18, x28, -0x4b5 # (0xfffffb4b) # 2
add    x29, x11,  x1 # 3
slti   x26, x31, 0x35e # 4
andi    x4,  x1, -0x352 # (0xfffffcae) # 5
bne    x16, x16, -0xa48 # (0xfffff5b8) # 6
and     x8, x20,  x1 # 7
sltiu   x9,  x1, -0x157 # (0xfffffea9) # 8
sltiu  x18,  x7, -0x44f # (0xfffffbb1) # 9
srli   x19, x11, 0x1 # 10
lwu    x14, 1577(x30) # 11
ori    x31, x21, 0x54e # 12
ld     x26, 1203(x30) # 13
and    x21,  x7, x30 # 14
srai   x30,  x7, 0x16 # 15
andi   x19,  x9, -0x120 # (0xfffffee0) # 16
slli    x7,  x3, 0x14 # 17
srli   x18, x26, 0x2 # 18
lwu     x6, 122(x0) # 19
sra    x16, x18, x15 # 20
sw      x0, 705(x25) # 21
add    x15, x29, x22 # 22
slti   x31, x27, 0x6ef # 23
or     x11,  x2, x28 # 24
srli    x9, x23, 0x11 # 25

# EXPECTED
# x2: -0x1e3
# x11: -0x1e3
# x31: 0x1
