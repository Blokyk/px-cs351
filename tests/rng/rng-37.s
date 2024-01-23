# Seed: 1996523227


# == filling regs == 

# == code == 
xori   x20, x14, -0x45a # (0xfffffba6) # 1
ori    x16, x22, -0x610 # (0xfffff9f0) # 2
slli   x14, x12, 0xc # 3
addi   x26,  x8, 0x2d1 # 4
srli   x12,  x7, 0x1d # 5
andi   x31, x30, -0xb7 # (0xffffff49) # 6
sltiu   x5, x17, -0x778 # (0xfffff888) # 7
xor    x26, x31, x26 # 8
sltu    x6,  x6, x14 # 9
lw     x11, 1733(x12) # 10
sh     x24, 1209(x8) # 11
slli   x14,  x9, 0x1e # 12
and    x28,  x8, x19 # 13
sll    x24, x31, x16 # 14
sltiu   x5, x31, 0x1d8 # 15
ori     x7, x12, -0x626 # (0xfffff9da) # 16
or     x18, x14, x30 # 17
bltu   x11, x23, -0xec8 # (0xfffff138) # 18
xor    x15, x24,  x6 # 19
sltu   x27,  x9, x27 # 20
slt     x6, x19,  x7 # 21
ori    x19, x22, -0x357 # (0xfffffca9) # 22
and    x23, x18, x26 # 23
sb      x6, 1782(x22) # 24
sra    x26, x23, x26 # 25

# EXPECTED
# x2: 0x4000
# x5: 0x1
# x7: -0x626
# x16: -0x610
# x19: -0x357
# x20: -0x45a
