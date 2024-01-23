# Seed: 907116464


# == filling regs == 

# == code == 
or      x3, x28,  x0 # 1
srai   x12,  x2, 0x11 # 2
andi    x5, x18, 0x35f # 3
sll     x1,  x9, x15 # 4
slli    x1, x28, 0x6 # 5
xori   x29,  x7, -0x712 # (0xfffff8ee) # 6
srli   x18, x22, 0x19 # 7
srli   x24, x24, 0x11 # 8
srl    x19, x12, x15 # 9
andi   x10, x24, 0x611 # 10
xori   x29, x24, -0x34f # (0xfffffcb1) # 11
sh      x7, 1921(x8) # 12
slti   x28, x22, -0x7b # (0xffffff85) # 13
xori   x16, x27, -0x113 # (0xfffffeed) # 14
srli   x17, x18, 0x19 # 15
lwu    x20, 59(x5) # 16
andi    x2,  x0, 0x150 # 17
slli    x0,  x2, 0x14 # 18
and     x8,  x3, x14 # 19
add    x26, x25,  x3 # 20
bgeu   x23, x20, -0x368 # (0xfffffc98) # 21
slli   x12, x21, 0x2 # 22
sltiu  x19,  x1, -0x3ce # (0xfffffc32) # 23
sll    x30, x14, x29 # 24
srli   x26,  x5, 0x2 # 25

# EXPECTED
# x16: -0x113
# x19: 0x1
# x20: 0xb2ea0301
# x29: -0x34f
