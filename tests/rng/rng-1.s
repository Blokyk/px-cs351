# Seed: 10975646


# == filling regs == 

# == code == 
srli    x7,  x2, 0x1a # 1
addi   x25,  x3, 0x60b # 2
slti   x13,  x0, 0x2aa # 3
sd     x30, 900(x18) # 4
addi   x21, x22, -0x7 # (0xfffffff9) # 5
sra     x3, x19, x10 # 6
xori   x24, x24, 0x724 # 7
srai   x14, x11, 0x0 # 8
and    x18, x12, x23 # 9
andi   x20, x11, -0x77c # (0xfffff884) # 10
xori    x7, x23, -0x7bb # (0xfffff845) # 11
xori    x7, x21, 0x9a # 12
add    x22, x18, x23 # 13
srli   x19, x20, 0xd # 14
ori    x30, x15, -0x654 # (0xfffff9ac) # 15
or     x12,  x6, x11 # 16
andi   x15, x22, -0x409 # (0xfffffbf7) # 17
lwu     x9, 1245(x21) # 18
add    x19, x30,  x4 # 19
ld     x28, 1677(x26) # 20
srl    x19, x26, x14 # 21
ori     x2, x22, 0x3d6 # 22
sb     x22, 1905(x2) # 23
sltiu  x21, x11, 0x593 # 24
add    x21, x22, x22 # 25

# EXPECTED
# x2: 0x3d6
# x7: -0x9d
# x13: 0x1
# x24: 0x724
# x25: 0x60b
# x30: -0x654
