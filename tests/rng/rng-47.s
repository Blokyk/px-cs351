# Seed: 2092605534


# == filling regs == 

# == code == 
bne    x24, x14, 0x55c # 1
sltiu  x25,  x2, 0xed # 2
slli   x19, x23, 0x7 # 3
sltu   x15,  x3, x15 # 4
sll     x5, x10, x19 # 5
sltiu  x17, x21, 0x62d # 6
add     x7,  x4,  x6 # 7
srl     x0, x11, x30 # 8
add    x25,  x2, x14 # 9
andi    x4, x13, 0x20e # 10
add     x5,  x6, x24 # 11
sub    x21, x17, x13 # 12
add     x4, x16, x16 # 13
add     x9, x24,  x3 # 14
sll     x7,  x5, x17 # 15
slli   x31, x18, 0x11 # 16
lbu    x28, 2013(x28) # 17
sltu   x16, x26, x22 # 18
andi   x24, x30, -0x7a8 # (0xfffff858) # 19
srai   x20, x30, 0x3 # 20
bltu   x31, x20, 0x50c # 21
srl    x31, x28, x11 # 22
xori   x10,  x3, 0x707 # 23
sll    x13, x27, x21 # 24
sra    x18, x29,  x5 # 25

# EXPECTED
# x2: 0x4000
# x10: 0x707
# x17: 0x1
# x21: 0x1
# x25: 0x4000
