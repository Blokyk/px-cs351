# Seed: 1211908603


# == filling regs == 

# == code == 
lbu    x29, 812(x20) # 1
sb      x1, 872(x13) # 2
sll    x27, x12, x30 # 3
lhu    x27, 1425(x4) # 4
sw     x28, 1592(x24) # 5
srai    x2, x26, 0xb # 6
sra    x12, x21,  x0 # 7
and    x20,  x1,  x9 # 8
and    x26, x24, x20 # 9
ori    x30, x20, 0x708 # 10
and    x22, x16, x13 # 11
and     x6, x15, x11 # 12
or     x22, x19, x17 # 13
or     x24,  x4, x23 # 14
xori   x27,  x2, -0x12f # (0xfffffed1) # 15
sw      x4, 10(x8) # 16
sra    x13, x31, x15 # 17
srai   x26, x25, 0x1a # 18
slli    x0,  x3, 0x0 # 19
sb     x19, 1012(x16) # 20
srli   x24,  x4, 0x3 # 21
slti    x2, x28, 0x743 # 22
sub    x10,  x3, x13 # 23
or     x24, x21,  x6 # 24
srl     x4, x22, x22 # 25

# EXPECTED
# x2: 0x1
# x27: -0x12f
# x30: 0x708
