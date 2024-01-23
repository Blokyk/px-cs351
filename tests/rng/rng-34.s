# Seed: 1959726987


# == filling regs == 

# == code == 
and     x2,  x9, x11 # 1
xor    x10,  x1, x15 # 2
ori     x7, x27, 0x66 # 3
slt    x16, x14, x25 # 4
sltiu  x29,  x7, -0x39c # (0xfffffc64) # 5
sub     x1,  x2, x20 # 6
slt    x25, x28,  x7 # 7
slt    x19,  x1, x15 # 8
srai   x16, x24, 0x18 # 9
xor    x20, x28, x25 # 10
srl    x22, x28, x13 # 11
lhu    x27, 820(x28) # 12
sub     x6, x15, x20 # 13
and     x3,  x6, x27 # 14
lhu    x28, 1501(x19) # 15
bltu    x3, x18, 0x338 # 16
sw      x3, 1648(x22) # 17
ori     x5,  x3, 0x5f0 # 18
slti    x3, x29, -0x44c # (0xfffffbb4) # 19
srli   x26, x25, 0x8 # 20
add    x28,  x5, x25 # 21
sb      x8, 1582(x27) # 22
addi   x21, x21, 0x497 # 23
lhu    x27, 1334(x22) # 24
andi   x27, x16, -0x15f # (0xfffffea1) # 25

# EXPECTED
# x5: 0x5f0
# x6: -0x1
# x7: 0x66
# x20: 0x1
# x21: 0x497
# x25: 0x1
# x28: 0x5f1
# x29: 0x1
