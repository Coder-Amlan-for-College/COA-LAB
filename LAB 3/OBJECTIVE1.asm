;LAB 3 OBJECTIVE 1
;Amlan Anshuman Nayak 
;2341014053

.DATA
   COUNT DB 04H
   VALUE DB 09H, 10H, 05H, 03H
   RES DB 0

.CODE
  MAIN PROC
    MOV AX, DATA
    MOV DS, AX
    MOV CL, COUNT
    DEC CL
    LEA SI, VALUE
    MOV AL, [SI]
   UP:INC SI
      CMP AL, [SI]
      JNL NXT
      MOV AL, [SI]
   NXT: DEC CL
        JNZ UP
        LEA DI, RES
        MOV [DI], AL
  END MAIN
