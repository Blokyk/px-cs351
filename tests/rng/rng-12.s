# Seed: 445137143


# == filling regs == 

# == code == 
or     x23, x21, x16 # 1
slli   x23, x22, 0x9 # 2
srli   x19, x31, 0x16 # 3
sw     x21, 1879(x17) # 4
andi    x1, x11, 0x7ab # 5
bltu    x7, x16, 0xe4 # 6
add    x29,  x1, x18 # 7
sltu    x5, x15,  x4 # 8
slli   x14, x22, 0x1a # 9
slli   x27, x30, 0x8 # 10
xor    x11, x11,  x4 # 11
lhu    x18, 533(x12) # 12
srli   x29, x17, 0x1e # 13
srai   x31,  x9, 0x9 # 14
sll    x24,  x8,  x2 # 15
xor    x11, x16,  x3 # 16
lhu    x11, 276(x21) # 17
andi   x24, x12, -0x44e # (0xfffffbb2) # 18
andi    x2, x23, -0x7f8 # (0xfffff808) # 19
sll    x30,  x7,  x6 # 20
slt    x16, x22, x15 # 21
sd     x14, 1731(x24) # 22
srai    x8,  x7, 0xa # 23
xor    x28, x17, x23 # 24
sll     x5,  x1, x25 # 25

# EXPECTED
