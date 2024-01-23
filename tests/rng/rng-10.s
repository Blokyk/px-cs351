# Seed: 39550516


# == filling regs == 

# == code == 
sb     x19, 1209(x30) # 1
sra    x10,  x0, x27 # 2
xor    x25, x22, x25 # 3
ori     x9, x25, 0x310 # 4
sw      x7, 1260(x15) # 5
sd      x6, 567(x20) # 6
lw      x6, 801(x31) # 7
sb     x30, 1648(x8) # 8
srli   x27, x18, 0x15 # 9
srai   x25,  x2, 0x0 # 10
blt    x26,  x5, 0x78 # 11
add     x9, x16, x29 # 12
slti    x9, x28, -0xca # (0xffffff36) # 13
and    x17, x21, x26 # 14
andi   x13, x30, -0x4a0 # (0xfffffb60) # 15
srli    x6,  x0, 0x4 # 16
srli    x7, x23, 0x1e # 17
srai    x0, x22, 0x9 # 18
srai   x18, x21, 0x4 # 19
xori    x5, x30, 0x4f0 # 20
xor    x23, x29, x31 # 21
and     x8,  x4, x10 # 22
xor    x28,  x5, x19 # 23
and    x25,  x6,  x9 # 24
xor    x27, x26,  x0 # 25

# EXPECTED
# x2: 0x4000
# x5: 0x4f0
# x28: 0x4f0
