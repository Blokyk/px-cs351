# Seed: 68191470


# == filling regs == 

# == code == 
srli   x21, x17, 0x1d # 1
and    x17,  x9, x18 # 2
blt     x3, x28, 0x288 # 3
sub    x18, x19, x16 # 4
lwu    x21, 130(x30) # 5
srl    x29,  x2, x25 # 6
sll    x13, x11, x18 # 7
sltiu  x31, x26, -0x546 # (0xfffffaba) # 8
or     x22, x29, x13 # 9
slti    x5, x23, -0xc3 # (0xffffff3d) # 10
srli   x16,  x6, 0x16 # 11
blt    x16,  x3, 0xda4 # 12
srli   x19,  x2, 0x6 # 13
slti   x10, x17, 0x5d4 # 14
or     x30, x24, x28 # 15
sltiu  x10, x29, -0x7c0 # (0xfffff840) # 16
slti   x29,  x5, 0x25 # 17
srli   x20,  x3, 0x10 # 18
and     x3,  x5, x29 # 19
sltu   x14, x25,  x1 # 20
sd     x20, -71(x19) # 21
andi    x0, x20, -0x25 # (0xffffffdb) # 22
slli    x5, x16, 0x16 # 23
sw     x26, 1555(x5) # 24
slti   x13, x25, 0x425 # 25

# EXPECTED
# x2: 0x4000
# x10: 0x1
# x13: 0x1
# x19: 0x100
# x22: 0x4000
# x29: 0x1
# x31: 0x1
