//file: lab04p2c.s
 //desc: lab04 p2c
 //author:(Cameron & Joe)

 //The code below uses r4 as a point of addressability DS and is used to access
 // the values for labels A, B, and C, using offsets. Once loading A and B to 
 // respective registers r5 and r6, the values are added together and stored in 
 // r7. This value is then stored in memory using an offset with DS.  

.include "macros.inc"

  SET_TARGET

  .text

  FUNCTION main,global

    push {r4,r5,r6,r7,lr}

    ldr  r4,= DS
    ldrb  r5,[r4,A-DS]
    ldrh  r6,[r4,B-DS]
    add   r7,r5,r6
    str   r7,[r4,C-DS]

    all_done: nop
    
    pop {r4,r5,r6,r7,lr}

    bx lr
  
  ENDFUNC main

  .data

  .org 234
  .align 2,0xa5

DS:	.word 0xbbbbbbbb

A:	.byte 123

	.align 1,0xa5
B:	.short 47587

	.align 2,0xa5
C:	.word ~0

	.align 3,0xa5
	.word 0xeeeeeeee

  .end
