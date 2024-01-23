# Seed: 1149117695


# == filling regs == 

# == code == 
blt    x17, x26, 0xd94 # 1
lh      x4, 648(x17) # 2
sltu   x25,  x8, x29 # 3
srai    x5, x19, 0xa # 4
lbu    x15, 689(x8) # 5
addi   x24, x31, 0x42a # 6
slli   x17,  x8, 0x8 # 7
addi   x23,  x2, -0x66e # (0xfffff992) # 8
slt    x29,  x3, x18 # 9
slti   x23,  x7, -0x48d # (0xfffffb73) # 10
srli   x30, x11, 0x11 # 11
add     x9, x20,  x1 # 12
sltiu  x28,  x5, -0x632 # (0xfffff9ce) # 13
sh     x19, 595(x12) # 14
slti   x20,  x0, 0x73f # 15
andi   x30, x12, -0x438 # (0xfffffbc8) # 16
addi   x26, x16, 0x249 # 17
sra     x3, x14,  x5 # 18
srli    x5,  x6, 0x16 # 19
slti   x10, x10, 0x86 # 20
bltu   x12,  x5, 0x7f0 # 21
slti    x3, x21, 0x454 # 22
sra     x0, x11, x10 # 23
sub    x26,  x0, x30 # 24
sll    x24,  x8, x23 # 25

# EXPECTED
# x2: 0x4000
# x3: 0x1
# x10: 0x1
# x20: 0x1
# x28: 0x1
