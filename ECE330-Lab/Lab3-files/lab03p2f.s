# file: lab03p2f.s
//Creator Cameron and Joe
//This file is simlar to the and instuction in part e
// This file is loading the values for register 4 and 5
// Then it is using the orr instruction to compare the values in binary
// If values in binary have at least 1 within the binary it make the sum value binary have 1
// 1+1 =1 ----1+0=1 --- 0+0=0
// r4= 11111111111111111111111111111111
// r5= 00010010001101000101011001111000
// -------------------------------------
// r6= 11111111111111111111111111111111
.include "macros.inc"

  SET_TARGET

  .text

  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,=0xFFFFFFFF
    ldr  r5,=0x12345678
    orr  r6,r4,r5

    all_done:
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main

  

  .end
