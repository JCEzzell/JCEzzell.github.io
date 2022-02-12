# file: lab03p2e.s
//Creator Cameron and Joe
//This file is loading the values for register 4 and 5
//Then it is using the and instruction to compare the values in binary
// If values in binary are the same then it stays the same.
// r4= 11111111111111111111111111111111
// r5= 00010010001101000101011001111000
// -------------------------------------
// r6= 00010010001101000101011001111000
.include "macros.inc"

  SET_TARGET

  

  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,=0xFFFFFFFF
    ldr  r5,=0x12345678
    and  r6,r4,r5

    all_done:
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main


  .end
