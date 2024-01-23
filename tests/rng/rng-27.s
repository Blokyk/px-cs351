# Seed: 1743219982


# == filling regs == 

# == code == 
add     x6, x28,  x5 # 1
and    x24,  x1, x15 # 2
sub    x26,  x9,  x5 # 3
ori    x29,  x3, 0x52d # 4
sltu    x4, x23, x30 # 5
xori   x20, x31, 0x617 # 6
sb     x18, 1227(x31) # 7
sltiu   x3,  x5, -0x4b0 # (0xfffffb50) # 8
slli   x20, x17, 0x1d # 9
srli    x2, x25, 0x17 # 10
xori   x21, x16, -0xc1 # (0xffffff3f) # 11
sltiu   x2, x18, -0x500 # (0xfffffb00) # 12
srai    x6, x28, 0x7 # 13
sltiu  x12, x26, -0xd0 # (0xffffff30) # 14
add    x25, x13,  x0 # 15
or     x21, x12, x27 # 16
slli    x2, x30, 0x10 # 17
or     x21,  x2, x28 # 18
slli    x7,  x5, 0x11 # 19
sll    x24,  x5, x26 # 20
slli   x19,  x8, 0x0 # 21
slt    x23, x30, x29 # 22
sh     x20, 1148(x8) # 23
xori    x4, x26, 0x3ba # 24
sra     x6, x27, x21 # 25

# EXPECTED
# x3: 0x1
# x4: 0x3ba
# x12: 0x1
# x23: 0x1
# x29: 0x52d
