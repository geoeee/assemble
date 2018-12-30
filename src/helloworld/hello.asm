; source program name: hello.asm
; function: print a string
; data segment

DSEG    SEGMENT 
MESSAGE DB 'Hello World, Assemble!', 0DH, 0AH, 24H
DSEG    ENDS

; CODE SEGMENT
CSEG    SEGMENT
        ASSUME  CS : CSEG, DS : DSEG

BEGIN:
        MOV     AX, DSEG
        MOV     DS, AX
        MOV     DX, OFFSET MESSAGE
        MOV     AH, 9
        INT     21H
        MOV     AH, 4CH
        INT     21H

CSEG    ENDS
        END    BEGIN