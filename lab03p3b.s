# file: lab03p3b.s
//Creator Cameron and Joe
//this file is showing that it is assigning the value for register 4 and 5
// then for the value of r6 is subs which is the APSR will be updated depending on the outcome of the instruction.
.include "macros.inc"

  SET_TARGET



  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    mov  r4,#7
    mov  r5,#13
    subs  r6,r4,r5

    all_done:
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main


  .end
