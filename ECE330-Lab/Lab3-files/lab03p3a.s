# file: lab03p3a.s
//Creators Cameron and Joe
//This file is showing that for register 4 it is shifting left 31 bits but which would make it negative then
// -1 to register 4 to make it positive.
// then it moves the value the registers 4 has and moves it to register 5.
// the last step adds register 4 and 5
// r4 = 0x7fffffff
// r5 = 0x4
// r2 == 0xb0000003

.include "macros.inc"

  SET_TARGET


  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,=(1<<31)-1
    mov  r5,4
    adds r2,r4,r5

    all_done:
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main


  .end
