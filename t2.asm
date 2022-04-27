MAIN:


MUL:
    addi r1, r0, 0 # mul = 0
    addi r4, r0, 0 # i = 0
FOR:
    slt r5, r4, r2 # FOR r5 <- r4 < r2 (i < x)
    beq r5, r0, RETURN
    add r1, r1, r3
    j FOR
RETURN:
    jr r15  # RETURN


FIB: