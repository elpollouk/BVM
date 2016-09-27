.text
.align		4
.global		main
.type		main,	%function
main:
	stmfd	sp!, {lr}
	ldr		r0, =120000
	mov		r5, r0
	bl		malloc
	mov		r4, r0
	mov		r6, r0
	mov		r1, #0
	mov		r2, r5
	bl		memset

#OP_ADD 10
	ldr		r0, [r4]
	add		r0, r0, #10

#OP_JUMPFORWARD 12
	str		r0, [r4]
	cmp		r0, #0
	beq		.instC
.inst1:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_ADD 7
	ldr		r0, [r4]
	add		r0, r0, #7

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_ADD 10
	ldr		r0, [r4]
	add		r0, r0, #10

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_ADD 3
	ldr		r0, [r4]
	add		r0, r0, #3

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_ADD 1
	ldr		r0, [r4]
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16

#OP_SUB 1
	ldr		r0, [r4]
	sub		r0, r0, #1

#OP_JUMPBACK 1
	str		r0, [r4]
	cmp		r0, #0
	bne		.inst1
.instC:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_ADD 2
	ldr		r0, [r4]
	add		r0, r0, #2

#OP_OUT
	bl		putchar

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_ADD 1
	ldr		r0, [r4]
	add		r0, r0, #1

#OP_OUT
	bl		putchar

#OP_ADD 7
	add		r0, r0, #7

#OP_OUT
	bl		putchar

#OP_OUT
	bl		putchar

#OP_ADD 3
	add		r0, r0, #3

#OP_OUT
	bl		putchar

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_ADD 2
	ldr		r0, [r4]
	add		r0, r0, #2

#OP_OUT
	bl		putchar

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8

#OP_ADD 15
	ldr		r0, [r4]
	add		r0, r0, #15

#OP_OUT
	bl		putchar

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_OUT
	ldr		r0, [r4]
	bl		putchar

#OP_ADD 3
	add		r0, r0, #3

#OP_OUT
	bl		putchar

#OP_SUB 6
	sub		r0, r0, #6

#OP_OUT
	bl		putchar

#OP_SUB 8
	sub		r0, r0, #8

#OP_OUT
	bl		putchar

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_ADD 1
	ldr		r0, [r4]
	add		r0, r0, #1

#OP_OUT
	bl		putchar

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4

#OP_OUT
	ldr		r0, [r4]
	bl		putchar

	mov		r0, r6
	bl		free
	ldmfd	sp!, {lr}
	mov		r0, #0
	bx		lr
