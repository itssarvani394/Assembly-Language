ORG 000H
MOV TMOD, #20H
MOV TH1, #-3
MOV SCON, #50H
SETB TR1

AGAIN: 
    MOV A, #"Y"
    ACALL TRANS
    MOV A, #"E"
    ACALL TRANS
    MOV A, #"S"
    ACALL TRANS
    SJMP AGAIN

TRANS:
    MOV SBUF, A
HERE:
    JNB TI, HERE
    CLR TI
    RET
