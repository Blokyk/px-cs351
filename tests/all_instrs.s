# some starting comment
add  x31,x30, x29 # some after-instr comment
SUB x0,x1,x2

addI x0, x1, 0
addI x2, x3, -0
addI x4, x5, 100
addi x6, x7, -0x1aE
addi x8, x9, 0x7ff

   
 
    # (...a lot of space...)

             
ld x0, 89(zero)
ld    x8,     -45   (  x1 )

sd  x16, -1(x0)
sd  x0, -4(x9)
sd  x0, 0x7ff(x15)
sd  x0, -0x7ff(x11)

beq x0, x1, -16
bne x2, x3, 4
blt x4, x5, -0x1000 # right at the limit
bge x6, x7, 0

jal x2, -0x100000
jal x2, 0xffffe
jal x31, -0xabcde

j 0xfffe
j -0xabcde

li  x31,  -100
li   x9, 0x7ff # can't go higher without lui+addi

mv   x31,x29
mv x1, x2

# checks invalid instrs
# this has to be tested manually, because the test harness doesn't support invalid code
#
# addiii x0, x0, x0
# d x1, 0(x2)
# add x0, x0, x0 garbage
# add  x0, x1, x2, x3 # extra reg
# ld x1, 0(x2), x8 # extra reg (offset+reg syntax)
# sd x1, x2, 0(x3) # extra reg (offset+reg syntax)
# sub  x0, x1 # missing reg
# addi x0, x1, 0x1000 # operand outside range
# addi x0, x1, 0x1111111111111111 # operand overflows int32_t
# ld   x2, -0xffff(x2)
# sd   x5, -0x8ff(x9)
# beq x0, x1, 1
# bne x0, x1, -1
# blt x0, x2, 0xabcdef
# bge x0, x2, -0xabcdef
# jal x0, 0xabcdef
# j 0xabcdef
# li x0, 0xffff
# mv x1, x2, 0

# rejected bc gcc/clang won't assemble them :(
    # no-commas: (the assignment implies commas *and their lack thereof* should be ignored)
    #   sub x0 zero zero
    # overflow:
    #   addi x0, x0, 0xFFF # this one really SHOULD be possible, according to "Signed Immediates for I- and S-Type Instructions" from the riscv-asm-manual
    #   beq  x0, x0, 0x1FFE
    #   jal  x0, 0x1FFFFE

#cmt w/o strtng spc
# some comment without a \n after (nasty bug i actually had in lotus ;-;)