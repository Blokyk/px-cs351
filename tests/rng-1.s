addi   x19,  x0, 0x2c3
addi   x12,  x0, 0xeab
addi   x31,  x0, 0x788
addi    x1,  x0, 0x4b6
addi    x7,  x0, 0x5d
addi   x25,  x0, 0xa63
addi   x10,  x0, 0xf89
addi   x28,  x0, 0x874
addi   x31,  x0, 0x579
addi    x8,  x0, 0x9e2
add     x0, x23,  x4
sub    x15, x17, x27
lh     x21, 52(x17)
lh     x20, 277(x6)
xori   x30, x28, 0x7ca
or     x13, x26,  x0
sd     x29, 355(x0)
sb     x24, 3535(x21)
sltiu  x24, x11, 0x991
bgeu   x24, x30, 0x126c

# EXPECTED
# x1: 1206
# x2: 16384
# x7: 93
# x8: -1566
# x10: -119
# x12: -341
# x19: 707
# x21: 6659
# x25: -1437
# x28: -1932
# x30: -66
# x31: 1401