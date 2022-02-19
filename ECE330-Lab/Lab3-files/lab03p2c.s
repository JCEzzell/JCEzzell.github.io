# file: lab03p2c.s
// This file register r4 with the value of 68 and r5 with a value of 45 then moves to r6 which negates the value to -46 then adds 1 to correct the value to -45. Then the equation  is r2= to r4(68)+ r6(-45) ==  r2(23)
// Cameron & Joe
.include "macros.inc"

  SET_TARGET


  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,=68
    ldr  r5,=45
    mvn  r6,r5
    add  r6,1
    add  r2,r4,r6

    all_done:
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main


  .end
