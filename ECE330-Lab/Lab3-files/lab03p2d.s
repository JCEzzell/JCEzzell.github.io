# file: lab03p2d.s
//Creator Cameron and Joe
// This file is setting the value for register 4 with 0x1111 then it is setting register 4 to logical shift 3 spaces which is equal to 0x8888
// After is logical shift 3 spaces it tells register 4 to logical shift right 2 which is 4 spaces since its the multiple of 2
//Which when done is equal to 0x2222
.include "macros.inc"

  SET_TARGET


  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,=0x1111
    lsl  r4,3
    lsr  r4,2

    all_done:
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main

  .end
