;LAB 3 OBJECTIVE 2 (ASCENDING ORDER)
;Amlan Anshuman Nayak
;2341014053
.DATA
COUNT DB 06
VALUE DB 09H, 0FH, 14H, 45H, 24H, 3FH

.CODE
MAIN PROC
    MOV AX, DATA
    MOV DS, AX
    LEA DI, COUNT
    MOV CH, [DI]
    DEC CH
   UP2: MOV CL, CH
        LEA SI, VALUE
   UP1: MOV AL, [SI]
        CMP AL, [SI+1]
        JC DOWN
        MOV DL, [SI+1]
        XCHG [SI], DL
        MOV [SI+1], DL
   DOWN: INC SI
         DEC CL
         JNZ UP1
         DEC CH
         JNZ UP2
END MAIN

