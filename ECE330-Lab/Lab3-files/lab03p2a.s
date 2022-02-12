# file: lab03p2a.s
//creators Cameron and Joe
// This is just loading the values into register 4 and 5. Then adding both of them together into register 2 
//formula for add (r2= r4 + r5)
.include "macros.inc"

  SET_TARGET


  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,=68
    ldr  r5,=45
    add  r2,r4,r5

    all_done:
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main



  .end
