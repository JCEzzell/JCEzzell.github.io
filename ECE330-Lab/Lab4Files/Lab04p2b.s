//file: lab04p2b.s
 //desc: lab04 p2b
 //author:(Cameron & Joe)

 // The below code uses register r4 to establish addressability to symbol DS
 // loads the value of DS to r4 then loads value B to r4, and value W to r6. 


.include "macros.inc"

  SET_TARGET

  .text

  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,= DS
    ldr  r5,= B
    ldr  r6,= W

    all_done: nop
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main

  .data
	.org 300
	
	.align 2,0xaa
	.word 0xbbbbbbbb

B:	.byte 85

	.align 2,0xaa
DS:	.word ~0

	.align 2,0xaa
W:	.word 287454020

	.word 0xeeeeeeee

  .end
