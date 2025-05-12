;AMLAN ANSHUMAN NAYAK, REGD NO: 2341014053
  AREA PROG1, CODE,READONLY
  ENTRY
START
                       ;Largest number from a given array
  ldr r0,=count
  ldr r1,[r0] ; r1= array size
  ldr r2,=array
  ldr r3, [r2],#4
back
  subs r1,r1,#01
  beq fwd
  ldr r4,[r2],#4
  cmp r3,r4
  bgt back
  mov r3,r4
  b back
fwd
  ldr r5,=LARGEST
  str r3,[r5]
exit b exit

count DCD 0x07
array
  DCD 0x15 ; DCD= Define Constant Double-words(32-bit)
  DCD 0x35 ; DCD directive allocates one or more words of memory, aligned
           ; on 4-byte boundaries
  DCD 0x32
  DCD 0x45
  DCD 0x10
  DCD 0x4f
  DCD 0x34
 AREA DATA2,DATA,READWRITE ; TO STORE RESULT IN GIVEN ADDRESS
LARGEST DCD 0X0
 END