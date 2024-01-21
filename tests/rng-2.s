addi   x27,  x0, 0xd6c
addi   x26,  x0, 0xc0c
addi    x1,  x0, 0x3e8
addi   x13,  x0, 0x8f8
addi   x24,  x0, 0xbee
addi    x6,  x5, 0x95c

srai   x12, x28, 0x14
slti    x0, x27, 0x29
xor    x16,  x7,  x3
slti   x31, x13, 0xaf0
sra    x21, x30, x15
addi    x1, x19, 0x57d
srl     x4, x23,  x5
sltu    x6, x14,  x1
xori    x7,  x7, 0x63a

# EXPECTED
# x1: 1405
# x2: 16384
# x6: 1
# x7: 1594
# x13: -1800
# x24: -1042
# x26: -1012
# x27: -660
# x31: 1