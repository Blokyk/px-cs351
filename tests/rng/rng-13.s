# Seed: 1208229843


# == filling regs == 

# == code == 
sra    x13, x13, x21 # 1
slli   x12, x12, 0x18 # 2
and    x26,  x5, x28 # 3
sll    x22, x27, x16 # 4
add     x7, x14, x30 # 5
srl    x15, x25, x31 # 6
sltu    x8, x23, x31 # 7
sub    x20,  x7, x21 # 8
andi   x11, x31, -0x602 # (0xfffff9fe) # 9
add     x1, x23, x10 # 10
addi   x24,  x6, -0x5b2 # (0xfffffa4e) # 11
sll    x20, x19, x12 # 12
xori    x2,  x5, -0x71 # (0xffffff8f) # 13
slti    x1, x26, 0x6d5 # 14
xori   x12, x13, -0x20e # (0xfffffdf2) # 15
sb     x22, 1724(x5) # 16
and     x3, x15, x26 # 17
ori    x12,  x6, -0xd1 # (0xffffff2f) # 18
and     x5, x26,  x9 # 19
sll    x23, x11, x16 # 20
ori     x6, x26, 0x65e # 21
sltiu  x30,  x0, -0x516 # (0xfffffaea) # 22
slli    x5, x14, 0x3 # 23
and    x27,  x8,  x7 # 24
lb     x31, 917(x23) # 25

# EXPECTED
# x1: 0x1
# x2: -0x71
# x6: 0x65e
# x12: -0xd1
# x24: -0x5b2
# x30: 0x1
