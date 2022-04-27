MAIN:
    addi r4, r0, 0 # i = 0
    addi r5, r0, 0 # fat = 0
    addi r6, r0, 0 # posicao inicial de fibVetor
    addi r7, r0, 10 # posicao inicial de fatVetor

    add r2, r0, r6
    addi r3, r0, 10
    jal r15, FIB

    addi r8, r0, 5
FORMAIN:
    slt r9, r4, r8
    beq r9, r0, HALT
    # codigo do FORMAIN

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

HALT:
    halt