# Seed: 144756287


# == filling regs == 

# == code == 
srai   x11,  x1, 0xc # 1
sltiu  x16, x14, 0x639 # 2
slli    x8, x28, 0x17 # 3
or     x29, x11, x18 # 4
sll     x7,  x5, x22 # 5
or     x11,  x0,  x5 # 6
and    x19, x18, x19 # 7
sltiu  x28,  x4, -0x39c # (0xfffffc64) # 8
or     x15, x20, x13 # 9
add    x21,  x4, x16 # 10
addi   x25,  x5, 0x46d # 11
srl     x2,  x0, x19 # 12
srli   x22,  x8, 0xa # 13
addi    x7, x30, -0x11 # (0xffffffef) # 14
slli   x26, x19, 0x8 # 15
xori   x18, x13, -0x64a # (0xfffff9b6) # 16
sll    x28, x23, x14 # 17
xori   x11, x17, 0x5c5 # 18
bltu    x6, x24, 0x268 # 19
sll    x25, x23, x19 # 20
addi   x26, x20, -0x75e # (0xfffff8a2) # 21
slti   x15,  x2, 0x411 # 22
srli   x12, x13, 0x1 # 23
or      x3, x21, x15 # 24
sll     x1, x14,  x5 # 25

# EXPECTED
# x3: 0x1
# x7: -0x11
# x11: 0x5c5
# x15: 0x1
# x16: 0x1
# x18: -0x64a
# x21: 0x1
# x26: -0x75e
