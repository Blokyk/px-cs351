// INSTR(format, name, opcode, f3, f7, operation)

#define X_REG(name, opcode, f3, f7, operation) \
    INSTR(REG, name, opcode, f3, f7, operation)

#define X_IMM(name, opcode, f3, operation) \
    INSTR(IMM, name, opcode, f3, 0x0, operation)

#define X_LOAD(name, opcode, f3, type) \
    INSTR(LOAD, name, opcode, f3, 0x0, rs1 = (int64_t)*(type*)mem(rs2 + imm))

#define X_STORE(name, opcode, f3, type) \
    INSTR(STORE, name, opcode, f3, 0x0, *(type*)mem(rbase + offset) = (type)rval)

#define X_BRANCH(name, opcode, f3, condition) \
    INSTR(BRANCH, name, opcode, f3, 0x0, branch(condition))

#define X_JUMP(name, opcode) \
    INSTR(JUMP, name, opcode, 0x0, 0x0, do { rd = pc + 4; pc += offset; } while(0))

#define X_INSTRS \
    X_REG(add,    0b0110011, 0x0, 0x00, rd = rs1 + rs2) \
    X_REG(sub,    0b0110011, 0x0, 0x20, rd = rs1 - rs2) \
    X_IMM(addi,   0b0010011, 0x0, rd = rs + imm) \
    X_LOAD(ld,    0b0000011, 0x3, int64_t) \
    X_STORE(sd,   0b0100011, 0x3, int64_t) \
    X_BRANCH(beq, 0b1100011, 0x0, rs1 == rs2) \
    X_BRANCH(bne, 0b1100011, 0x1, rs1 != rs2) \
    X_BRANCH(blt, 0b1100011, 0x4, rs1 <  rs2) \
    X_BRANCH(bge, 0b1100011, 0x5, rs1 >= rs2) \
    X_JUMP(jal,   0b1101111)
