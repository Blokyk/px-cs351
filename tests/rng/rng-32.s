# Seed: 333084314


# == filling regs == 

# == code == 
sd      x6, 1671(x31) # 1
sltiu  x28, x26, -0x1ef # (0xfffffe11) # 2
sll    x12,  x9, x17 # 3
sw     x28, -1674(x2) # 4
slt    x18, x19, x27 # 5
xori   x24, x16, 0x7d1 # 6
sw      x2, 579(x29) # 7
xor    x23, x11,  x7 # 8
sh     x26, -460(x2) # 9
srai    x4,  x5, 0x1f # 10
ori    x20, x28, 0x170 # 11
sra     x7,  x7, x16 # 12
ori     x9, x24, -0x1d2 # (0xfffffe2e) # 13
or      x4, x24,  x7 # 14
lhu    x23, 1363(x13) # 15
or     x23, x22,  x9 # 16
sw      x6, 1138(x20) # 17
xor    x19,  x4, x17 # 18
add    x13,  x8,  x2 # 19
and     x2,  x3, x14 # 20
andi    x4, x23, -0x7d6 # (0xfffff82a) # 21
sub    x13, x25, x29 # 22
srli    x4, x18, 0x5 # 23
srli    x5,  x3, 0x7 # 24
srai   x30, x18, 0x1e # 25

# EXPECTED
# x9: -0x1
# x19: 0x7d1
# x20: 0x171
# x23: -0x1
# x24: 0x7d1
# x28: 0x1
