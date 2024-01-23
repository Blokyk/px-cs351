# Seed: 608156183


# == filling regs == 

# == code == 
sub    x17, x22, x28 # 1
blt    x29, x14, 0xac0 # 2
lb     x28, 1482(x19) # 3
addi   x19, x16, -0x3d8 # (0xfffffc28) # 4
slli    x8,  x4, 0xe # 5
srli   x20,  x7, 0x14 # 6
ori    x19, x25, -0x474 # (0xfffffb8c) # 7
sll    x19, x23, x15 # 8
ori    x18,  x6, 0x5dd # 9
lw      x1, 1311(x6) # 10
sra     x0, x11, x24 # 11
xori   x30, x26, 0x546 # 12
addi   x30, x21, 0x722 # 13
or     x29, x15, x24 # 14
srl    x10, x29, x15 # 15
addi   x23, x31, -0x64b # (0xfffff9b5) # 16
srli    x7, x12, 0x1a # 17
slli   x28, x23, 0x19 # 18
srli   x26, x10, 0x1a # 19
sb      x7, 168(x9) # 20
sltu    x5, x20,  x9 # 21
and    x16, x19,  x8 # 22
srai   x20, x25, 0x1f # 23
sltiu   x5, x30, -0x1cc # (0xfffffe34) # 24
ori    x25, x29, 0x447 # 25

# EXPECTED
# x2: 0x4000
# x5: 0x1
# x18: 0x5dd
# x23: -0x64b
# x25: 0x447
# x28: -0xc96000000
# x30: 0x722
