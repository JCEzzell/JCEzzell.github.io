# file: main_asm.s
//Creator Cameron and Joe
// This file is setting the values for register 4 and 5 then
// adding register 4 and 5 together
// resulting in the sum of register 2
// r2= r4 + r5

.include "macros.inc"

  SET_TARGET

  .text

  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,=0x11223344
    ldr  r5,=0x55667788
    add  r2,r4,r5

    all_done:
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main


  .end
