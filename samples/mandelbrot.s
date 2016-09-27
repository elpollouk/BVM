.text
.align		4
.memSize: .word 120000
.global		main
.type		main,	%function
main:
	stmfd	sp!, {lr}
	ldr		r0, .memSize
	mov		r5, r0
	bl		malloc
	mov		r4, r0
	mov		r6, r0
	mov		r1, #0
	mov		r2, r5
	bl		memset
	mov		r0, #0

#OP_ADD 13
	add		r0, r0, #13

#OP_JUMPFORWARD 12
	cmp		r0, #0
	beq		.instC
.inst1:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 2
	add		r0, r0, #2

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 5
	add		r0, r0, #5

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 2
	add		r0, r0, #2

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 1
	cmp		r0, #0
	bne		.inst1
.instC:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 6
	add		r0, r0, #6

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 3
	sub		r0, r0, #3

#OP_MOVERIGHT 10
	str		r0, [r4]
	add		r4, r4, #40
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 25
	cmp		r0, #0
	beq		.inst19
.inst13:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search14_end
	.search14_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search14_start
	.search14_end:

#OP_ADD 1
	add		r0, r0, #1

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search16_end
	.search16_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search16_start
	.search16_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 19
	cmp		r0, #0
	bne		.inst13
.inst19:

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 31
	cmp		r0, #0
	beq		.inst1F
.inst1B:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 27
	cmp		r0, #0
	bne		.inst1B
.inst1F:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search21_end
	.search21_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search21_start
	.search21_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 5
	add		r0, r0, #5

#OP_JUMPFORWARD 42
	cmp		r0, #0
	beq		.inst2A
.inst26:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd28_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd28_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 38
	cmp		r0, #0
	bne		.inst26
.inst2A:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 27
	str		r0, [r4]
	add		r4, r4, #108
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 17
	str		r0, [r4]
	sub		r4, r4, #68
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search30_end
	.search30_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search30_start
	.search30_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_JUMPFORWARD 2885
	cmp		r0, #0
	beq		.instB45
.inst33:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 57
	cmp		r0, #0
	beq		.inst39
.inst35:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 53
	cmp		r0, #0
	bne		.inst35
.inst39:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search3B_end
	.search3B_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search3B_start
	.search3B_end:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 4
	add		r0, r0, #4

#OP_JUMPFORWARD 68
	cmp		r0, #0
	beq		.inst44
.inst40:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd42_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd42_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 64
	cmp		r0, #0
	bne		.inst40
.inst44:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 7
	add		r0, r0, #7

#OP_JUMPFORWARD 77
	cmp		r0, #0
	beq		.inst4D
.inst49:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd4B_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd4B_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 73
	cmp		r0, #0
	bne		.inst49
.inst4D:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 16
	str		r0, [r4]
	sub		r4, r4, #64
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search51_end
	.search51_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search51_start
	.search51_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 2606
	cmp		r0, #0
	beq		.instA2E
.inst53:

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 101
	cmp		r0, #0
	beq		.inst65
.inst56:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ZEROADD -6
	cmp		r0, #0
	beq		.zeroadd58_end
	mov		r2, r4
	sub		r2,	r2, #24
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd58_end:

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 99
	cmp		r0, #0
	beq		.inst63
.inst5A:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 90
	cmp		r0, #0
	bne		.inst5A
.inst63:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 86
	cmp		r0, #0
	bne		.inst56
.inst65:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search67_end
	.search67_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search67_start
	.search67_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 120
	cmp		r0, #0
	beq		.inst78
.inst69:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroadd6B_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd6B_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 118
	cmp		r0, #0
	beq		.inst76
.inst6D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 109
	cmp		r0, #0
	bne		.inst6D
.inst76:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 105
	cmp		r0, #0
	bne		.inst69
.inst78:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search7A_end
	.search7A_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search7A_start
	.search7A_end:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroadd7C_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd7C_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 133
	cmp		r0, #0
	beq		.inst85
.inst7E:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 126
	cmp		r0, #0
	bne		.inst7E
.inst85:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 161
	cmp		r0, #0
	beq		.instA1
.inst88:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search89_end
	.search89_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search89_start
	.search89_end:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search9E_end
	.search9E_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search9E_start
	.search9E_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 136
	cmp		r0, #0
	bne		.inst88
.instA1:

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 167
	cmp		r0, #0
	beq		.instA7
.instA3:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 163
	cmp		r0, #0
	bne		.instA3
.instA7:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA9_end
	.searchA9_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA9_start
	.searchA9_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 214
	cmp		r0, #0
	beq		.instD6
.instAB:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroaddAF_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddAF_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 200
	cmp		r0, #0
	beq		.instC8
.instB1:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 197
	cmp		r0, #0
	beq		.instC5
.instB6:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroaddB9_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddB9_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 194
	cmp		r0, #0
	beq		.instC2
.instBB:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 187
	cmp		r0, #0
	bne		.instBB
.instC2:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 182
	cmp		r0, #0
	bne		.instB6
.instC5:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchC7_end
	.searchC7_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchC7_start
	.searchC7_end:

#OP_JUMPBACK 177
	cmp		r0, #0
	bne		.instB1
.instC8:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchCA_end
	.searchCA_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchCA_start
	.searchCA_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 208
	cmp		r0, #0
	beq		.instD0
.instCC:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroaddCE_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddCE_end:

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 204
	cmp		r0, #0
	bne		.instCC
.instD0:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroaddD2_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddD2_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 171
	cmp		r0, #0
	bne		.instAB
.instD6:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 245
	cmp		r0, #0
	beq		.instF5
.instD8:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 239
	cmp		r0, #0
	beq		.instEF
.instDE:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 235
	cmp		r0, #0
	beq		.instEB
.instE3:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 227
	cmp		r0, #0
	bne		.instE3
.instEB:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroaddED_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddED_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 222
	cmp		r0, #0
	bne		.instDE
.instEF:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroaddF1_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddF1_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 216
	cmp		r0, #0
	bne		.instD8
.instF5:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 251
	cmp		r0, #0
	beq		.instFB
.instF7:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 247
	cmp		r0, #0
	bne		.instF7
.instFB:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchFD_end
	.searchFD_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchFD_start
	.searchFD_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 298
	cmp		r0, #0
	beq		.inst12A
.instFF:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroadd103_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd103_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 284
	cmp		r0, #0
	beq		.inst11C
.inst105:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 281
	cmp		r0, #0
	beq		.inst119
.inst10A:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd10D_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd10D_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 278
	cmp		r0, #0
	beq		.inst116
.inst10F:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 271
	cmp		r0, #0
	bne		.inst10F
.inst116:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 266
	cmp		r0, #0
	bne		.inst10A
.inst119:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search11B_end
	.search11B_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search11B_start
	.search11B_end:

#OP_JUMPBACK 261
	cmp		r0, #0
	bne		.inst105
.inst11C:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search11E_end
	.search11E_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search11E_start
	.search11E_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 292
	cmp		r0, #0
	beq		.inst124
.inst120:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd122_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd122_end:

#OP_MOVELEFT 11
	str		r0, [r4]
	sub		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 288
	cmp		r0, #0
	bne		.inst120
.inst124:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd126_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd126_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 255
	cmp		r0, #0
	bne		.instFF
.inst12A:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 329
	cmp		r0, #0
	beq		.inst149
.inst12C:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 323
	cmp		r0, #0
	beq		.inst143
.inst132:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 319
	cmp		r0, #0
	beq		.inst13F
.inst137:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 311
	cmp		r0, #0
	bne		.inst137
.inst13F:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd141_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd141_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 306
	cmp		r0, #0
	bne		.inst132
.inst143:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd145_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd145_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 300
	cmp		r0, #0
	bne		.inst12C
.inst149:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 335
	cmp		r0, #0
	beq		.inst14F
.inst14B:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -36
	cmp		r0, #0
	beq		.zeroadd14D_end
	mov		r2, r4
	sub		r2,	r2, #144
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd14D_end:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 331
	cmp		r0, #0
	bne		.inst14B
.inst14F:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search151_end
	.search151_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search151_start
	.search151_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 348
	cmp		r0, #0
	beq		.inst15C
.inst154:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search155_end
	.search155_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search155_start
	.search155_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search159_end
	.search159_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search159_start
	.search159_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 340
	cmp		r0, #0
	bne		.inst154
.inst15C:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 21
	str		r0, [r4]
	add		r4, r4, #84
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search161_end
	.search161_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search161_start
	.search161_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 428
	cmp		r0, #0
	beq		.inst1AC
.inst163:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 362
	cmp		r0, #0
	beq		.inst16A
.inst165:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 357
	cmp		r0, #0
	bne		.inst165
.inst16A:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 386
	cmp		r0, #0
	beq		.inst182
.inst16D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd172_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd172_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 385
	cmp		r0, #0
	beq		.inst181
.inst174:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search179_end
	.search179_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search179_start
	.search179_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search17D_end
	.search17D_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search17D_start
	.search17D_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 372
	cmp		r0, #0
	bne		.inst174
.inst181:

#OP_JUMPBACK 365
	cmp		r0, #0
	bne		.inst16D
.inst182:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 394
	cmp		r0, #0
	beq		.inst18A
.inst185:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 389
	cmp		r0, #0
	bne		.inst185
.inst18A:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 418
	cmp		r0, #0
	beq		.inst1A2
.inst18D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd192_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd192_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 417
	cmp		r0, #0
	beq		.inst1A1
.inst194:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search199_end
	.search199_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search199_start
	.search199_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search19D_end
	.search19D_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search19D_start
	.search19D_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 404
	cmp		r0, #0
	bne		.inst194
.inst1A1:

#OP_JUMPBACK 397
	cmp		r0, #0
	bne		.inst18D
.inst1A2:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 426
	cmp		r0, #0
	beq		.inst1AA
.inst1A5:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search1A8_end
	.search1A8_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search1A8_start
	.search1A8_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 421
	cmp		r0, #0
	bne		.inst1A5
.inst1AA:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 355
	cmp		r0, #0
	bne		.inst163
.inst1AC:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search1AE_end
	.search1AE_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search1AE_start
	.search1AE_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 439
	cmp		r0, #0
	beq		.inst1B7
.inst1B0:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 432
	cmp		r0, #0
	bne		.inst1B0
.inst1B7:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 26
	add		r0, r0, #26

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd1BB_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd1BB_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 452
	cmp		r0, #0
	beq		.inst1C4
.inst1BD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 445
	cmp		r0, #0
	bne		.inst1BD
.inst1C4:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 2277
	cmp		r0, #0
	beq		.inst8E5
.inst1C6:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 466
	cmp		r0, #0
	beq		.inst1D2
.inst1CA:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_JUMPBACK 458
	cmp		r0, #0
	bne		.inst1CA
.inst1D2:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 480
	cmp		r0, #0
	beq		.inst1E0
.inst1D4:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 478
	cmp		r0, #0
	beq		.inst1DE
.inst1D7:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 471
	cmp		r0, #0
	bne		.inst1D7
.inst1DE:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 468
	cmp		r0, #0
	bne		.inst1D4
.inst1E0:

#OP_MOVERIGHT 13
	str		r0, [r4]
	add		r4, r4, #52
	ldr		r0, [r4]

#OP_JUMPFORWARD 490
	cmp		r0, #0
	beq		.inst1EA
.inst1E2:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 482
	cmp		r0, #0
	bne		.inst1E2
.inst1EA:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search1EC_end
	.search1EC_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search1EC_start
	.search1EC_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 509
	cmp		r0, #0
	beq		.inst1FD
.inst1F0:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd1F2_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd1F2_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 507
	cmp		r0, #0
	beq		.inst1FB
.inst1F4:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 500
	cmp		r0, #0
	bne		.inst1F4
.inst1FB:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 496
	cmp		r0, #0
	bne		.inst1F0
.inst1FD:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search1FF_end
	.search1FF_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search1FF_start
	.search1FF_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 517
	cmp		r0, #0
	beq		.inst205
.inst201:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -9
	cmp		r0, #0
	beq		.zeroadd203_end
	mov		r2, r4
	sub		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd203_end:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPBACK 513
	cmp		r0, #0
	bne		.inst201
.inst205:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search207_end
	.search207_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search207_start
	.search207_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 547
	cmp		r0, #0
	beq		.inst223
.inst20A:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search20B_end
	.search20B_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search20B_start
	.search20B_end:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search220_end
	.search220_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search220_start
	.search220_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 522
	cmp		r0, #0
	bne		.inst20A
.inst223:

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 553
	cmp		r0, #0
	beq		.inst229
.inst225:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 549
	cmp		r0, #0
	bne		.inst225
.inst229:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search22B_end
	.search22B_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search22B_start
	.search22B_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 600
	cmp		r0, #0
	beq		.inst258
.inst22D:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroadd231_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd231_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 586
	cmp		r0, #0
	beq		.inst24A
.inst233:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 583
	cmp		r0, #0
	beq		.inst247
.inst238:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroadd23B_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd23B_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 580
	cmp		r0, #0
	beq		.inst244
.inst23D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 573
	cmp		r0, #0
	bne		.inst23D
.inst244:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 568
	cmp		r0, #0
	bne		.inst238
.inst247:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search249_end
	.search249_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search249_start
	.search249_end:

#OP_JUMPBACK 563
	cmp		r0, #0
	bne		.inst233
.inst24A:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search24C_end
	.search24C_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search24C_start
	.search24C_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 594
	cmp		r0, #0
	beq		.inst252
.inst24E:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd250_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd250_end:

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 590
	cmp		r0, #0
	bne		.inst24E
.inst252:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd254_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd254_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 557
	cmp		r0, #0
	bne		.inst22D
.inst258:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 631
	cmp		r0, #0
	beq		.inst277
.inst25A:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 625
	cmp		r0, #0
	beq		.inst271
.inst260:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 621
	cmp		r0, #0
	beq		.inst26D
.inst265:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPBACK 613
	cmp		r0, #0
	bne		.inst265
.inst26D:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd26F_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd26F_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 608
	cmp		r0, #0
	bne		.inst260
.inst271:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd273_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd273_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 602
	cmp		r0, #0
	bne		.inst25A
.inst277:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 646
	cmp		r0, #0
	beq		.inst286
.inst279:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroadd27B_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd27B_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 644
	cmp		r0, #0
	beq		.inst284
.inst27D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 637
	cmp		r0, #0
	bne		.inst27D
.inst284:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 633
	cmp		r0, #0
	bne		.inst279
.inst286:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search288_end
	.search288_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search288_start
	.search288_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 654
	cmp		r0, #0
	beq		.inst28E
.inst28A:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 650
	cmp		r0, #0
	bne		.inst28A
.inst28E:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search290_end
	.search290_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search290_start
	.search290_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 701
	cmp		r0, #0
	beq		.inst2BD
.inst292:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroadd296_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd296_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 687
	cmp		r0, #0
	beq		.inst2AF
.inst298:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 684
	cmp		r0, #0
	beq		.inst2AC
.inst29D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroadd2A0_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2A0_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 681
	cmp		r0, #0
	beq		.inst2A9
.inst2A2:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 674
	cmp		r0, #0
	bne		.inst2A2
.inst2A9:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 669
	cmp		r0, #0
	bne		.inst29D
.inst2AC:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search2AE_end
	.search2AE_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search2AE_start
	.search2AE_end:

#OP_JUMPBACK 664
	cmp		r0, #0
	bne		.inst298
.inst2AF:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search2B1_end
	.search2B1_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search2B1_start
	.search2B1_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 695
	cmp		r0, #0
	beq		.inst2B7
.inst2B3:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd2B5_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2B5_end:

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 691
	cmp		r0, #0
	bne		.inst2B3
.inst2B7:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd2B9_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2B9_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 658
	cmp		r0, #0
	bne		.inst292
.inst2BD:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 732
	cmp		r0, #0
	beq		.inst2DC
.inst2BF:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 726
	cmp		r0, #0
	beq		.inst2D6
.inst2C5:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 722
	cmp		r0, #0
	beq		.inst2D2
.inst2CA:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 714
	cmp		r0, #0
	bne		.inst2CA
.inst2D2:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd2D4_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2D4_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 709
	cmp		r0, #0
	bne		.inst2C5
.inst2D6:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd2D8_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2D8_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 703
	cmp		r0, #0
	bne		.inst2BF
.inst2DC:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 738
	cmp		r0, #0
	beq		.inst2E2
.inst2DE:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -36
	cmp		r0, #0
	beq		.zeroadd2E0_end
	mov		r2, r4
	sub		r2,	r2, #144
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2E0_end:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 734
	cmp		r0, #0
	bne		.inst2DE
.inst2E2:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search2E4_end
	.search2E4_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search2E4_start
	.search2E4_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 746
	cmp		r0, #0
	beq		.inst2EA
.inst2E6:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD -36
	cmp		r0, #0
	beq		.zeroadd2E8_end
	mov		r2, r4
	sub		r2,	r2, #144
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2E8_end:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 742
	cmp		r0, #0
	bne		.inst2E6
.inst2EA:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search2EC_end
	.search2EC_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search2EC_start
	.search2EC_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 759
	cmp		r0, #0
	beq		.inst2F7
.inst2EF:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search2F0_end
	.search2F0_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search2F0_start
	.search2F0_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search2F4_end
	.search2F4_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search2F4_start
	.search2F4_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 751
	cmp		r0, #0
	bne		.inst2EF
.inst2F7:

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 774
	cmp		r0, #0
	beq		.inst306
.inst2F9:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroadd2FB_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2FB_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 772
	cmp		r0, #0
	beq		.inst304
.inst2FD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 765
	cmp		r0, #0
	bne		.inst2FD
.inst304:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 761
	cmp		r0, #0
	bne		.inst2F9
.inst306:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search308_end
	.search308_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search308_start
	.search308_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 782
	cmp		r0, #0
	beq		.inst30E
.inst30A:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 778
	cmp		r0, #0
	bne		.inst30A
.inst30E:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search310_end
	.search310_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search310_start
	.search310_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 795
	cmp		r0, #0
	beq		.inst31B
.inst314:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 788
	cmp		r0, #0
	bne		.inst314
.inst31B:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 815
	cmp		r0, #0
	beq		.inst32F
.inst31D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 807
	cmp		r0, #0
	beq		.inst327
.inst320:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 2
	add		r0, r0, #2

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 800
	cmp		r0, #0
	bne		.inst320
.inst327:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroadd329_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd329_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 797
	cmp		r0, #0
	bne		.inst31D
.inst32F:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd331_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd331_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD 5
	cmp		r0, #0
	beq		.zeroadd333_end
	mov		r2, r4
	add		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd333_end:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 830
	cmp		r0, #0
	beq		.inst33E
.inst339:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 825
	cmp		r0, #0
	bne		.inst339
.inst33E:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1068
	cmp		r0, #0
	beq		.inst42C
.inst341:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 911
	cmp		r0, #0
	beq		.inst38F
.inst346:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 845
	cmp		r0, #0
	beq		.inst34D
.inst348:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 840
	cmp		r0, #0
	bne		.inst348
.inst34D:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 869
	cmp		r0, #0
	beq		.inst365
.inst350:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd355_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd355_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 868
	cmp		r0, #0
	beq		.inst364
.inst357:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search35C_end
	.search35C_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search35C_start
	.search35C_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search360_end
	.search360_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search360_start
	.search360_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 855
	cmp		r0, #0
	bne		.inst357
.inst364:

#OP_JUMPBACK 848
	cmp		r0, #0
	bne		.inst350
.inst365:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 877
	cmp		r0, #0
	beq		.inst36D
.inst368:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 872
	cmp		r0, #0
	bne		.inst368
.inst36D:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 901
	cmp		r0, #0
	beq		.inst385
.inst370:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroadd375_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd375_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 900
	cmp		r0, #0
	beq		.inst384
.inst377:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 11
	str		r0, [r4]
	sub		r4, r4, #44
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search37C_end
	.search37C_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search37C_start
	.search37C_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search380_end
	.search380_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search380_start
	.search380_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 887
	cmp		r0, #0
	bne		.inst377
.inst384:

#OP_JUMPBACK 880
	cmp		r0, #0
	bne		.inst370
.inst385:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 909
	cmp		r0, #0
	beq		.inst38D
.inst388:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search38B_end
	.search38B_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search38B_start
	.search38B_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 904
	cmp		r0, #0
	bne		.inst388
.inst38D:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 838
	cmp		r0, #0
	bne		.inst346
.inst38F:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search391_end
	.search391_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search391_start
	.search391_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd393_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd393_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 990
	cmp		r0, #0
	beq		.inst3DE
.inst395:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 935
	cmp		r0, #0
	beq		.inst3A7
.inst39A:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 931
	cmp		r0, #0
	beq		.inst3A3
.inst39E:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 926
	cmp		r0, #0
	bne		.inst39E
.inst3A3:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd3A5_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd3A5_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 922
	cmp		r0, #0
	bne		.inst39A
.inst3A7:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 986
	cmp		r0, #0
	beq		.inst3DA
.inst3AB:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 966
	cmp		r0, #0
	beq		.inst3C6
.inst3AD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 955
	cmp		r0, #0
	beq		.inst3BB
.inst3B2:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd3B9_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd3B9_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 946
	cmp		r0, #0
	bne		.inst3B2
.inst3BB:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 964
	cmp		r0, #0
	beq		.inst3C4
.inst3BD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 957
	cmp		r0, #0
	bne		.inst3BD
.inst3C4:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 941
	cmp		r0, #0
	bne		.inst3AD
.inst3C6:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 982
	cmp		r0, #0
	beq		.inst3D6
.inst3C8:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 980
	cmp		r0, #0
	beq		.inst3D4
.inst3CD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 973
	cmp		r0, #0
	bne		.inst3CD
.inst3D4:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 968
	cmp		r0, #0
	bne		.inst3C8
.inst3D6:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd3D8_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd3D8_end:

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_JUMPBACK 939
	cmp		r0, #0
	bne		.inst3AB
.inst3DA:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 917
	cmp		r0, #0
	bne		.inst395
.inst3DE:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd3E0_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd3E0_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1067
	cmp		r0, #0
	beq		.inst42B
.inst3E2:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 1012
	cmp		r0, #0
	beq		.inst3F4
.inst3E7:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1008
	cmp		r0, #0
	beq		.inst3F0
.inst3EB:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1003
	cmp		r0, #0
	bne		.inst3EB
.inst3F0:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd3F2_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd3F2_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 999
	cmp		r0, #0
	bne		.inst3E7
.inst3F4:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1063
	cmp		r0, #0
	beq		.inst427
.inst3F8:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1043
	cmp		r0, #0
	beq		.inst413
.inst3FA:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1032
	cmp		r0, #0
	beq		.inst408
.inst3FF:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 10
	str		r0, [r4]
	add		r4, r4, #40
	ldr		r0, [r4]

#OP_ZEROADD 4
	cmp		r0, #0
	beq		.zeroadd406_end
	mov		r2, r4
	add		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd406_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1023
	cmp		r0, #0
	bne		.inst3FF
.inst408:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1041
	cmp		r0, #0
	beq		.inst411
.inst40A:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 10
	str		r0, [r4]
	add		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 1034
	cmp		r0, #0
	bne		.inst40A
.inst411:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1018
	cmp		r0, #0
	bne		.inst3FA
.inst413:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1059
	cmp		r0, #0
	beq		.inst423
.inst415:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1057
	cmp		r0, #0
	beq		.inst421
.inst41A:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 10
	str		r0, [r4]
	add		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 1050
	cmp		r0, #0
	bne		.inst41A
.inst421:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1045
	cmp		r0, #0
	bne		.inst415
.inst423:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 4
	cmp		r0, #0
	beq		.zeroadd425_end
	mov		r2, r4
	add		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd425_end:

#OP_MOVELEFT 11
	str		r0, [r4]
	sub		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1016
	cmp		r0, #0
	bne		.inst3F8
.inst427:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 994
	cmp		r0, #0
	bne		.inst3E2
.inst42B:

#OP_JUMPBACK 833
	cmp		r0, #0
	bne		.inst341
.inst42C:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd42E_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd42E_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1127
	cmp		r0, #0
	beq		.inst467
.inst430:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search435_end
	.search435_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search435_start
	.search435_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1126
	cmp		r0, #0
	beq		.inst466
.inst437:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1106
	cmp		r0, #0
	beq		.inst452
.inst439:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1095
	cmp		r0, #0
	beq		.inst447
.inst43E:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd445_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd445_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1086
	cmp		r0, #0
	bne		.inst43E
.inst447:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1104
	cmp		r0, #0
	beq		.inst450
.inst449:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1097
	cmp		r0, #0
	bne		.inst449
.inst450:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1081
	cmp		r0, #0
	bne		.inst439
.inst452:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1122
	cmp		r0, #0
	beq		.inst462
.inst454:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1120
	cmp		r0, #0
	beq		.inst460
.inst459:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1113
	cmp		r0, #0
	bne		.inst459
.inst460:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1108
	cmp		r0, #0
	bne		.inst454
.inst462:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd464_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd464_end:

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_JUMPBACK 1079
	cmp		r0, #0
	bne		.inst437
.inst466:

#OP_JUMPBACK 1072
	cmp		r0, #0
	bne		.inst430
.inst467:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 1141
	cmp		r0, #0
	beq		.inst475
.inst46F:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 1135
	cmp		r0, #0
	bne		.inst46F
.inst475:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search477_end
	.search477_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search477_start
	.search477_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1158
	cmp		r0, #0
	beq		.inst486
.inst479:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd47B_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd47B_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1156
	cmp		r0, #0
	beq		.inst484
.inst47D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1149
	cmp		r0, #0
	bne		.inst47D
.inst484:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1145
	cmp		r0, #0
	bne		.inst479
.inst486:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search488_end
	.search488_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search488_start
	.search488_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 1188
	cmp		r0, #0
	beq		.inst4A4
.inst48B:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search48C_end
	.search48C_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search48C_start
	.search48C_end:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search4A1_end
	.search4A1_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search4A1_start
	.search4A1_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 1163
	cmp		r0, #0
	bne		.inst48B
.inst4A4:

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 1194
	cmp		r0, #0
	beq		.inst4AA
.inst4A6:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1190
	cmp		r0, #0
	bne		.inst4A6
.inst4AA:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search4AC_end
	.search4AC_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search4AC_start
	.search4AC_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1241
	cmp		r0, #0
	beq		.inst4D9
.inst4AE:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd4B2_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd4B2_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1227
	cmp		r0, #0
	beq		.inst4CB
.inst4B4:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 1224
	cmp		r0, #0
	beq		.inst4C8
.inst4B9:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroadd4BC_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd4BC_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1221
	cmp		r0, #0
	beq		.inst4C5
.inst4BE:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 1214
	cmp		r0, #0
	bne		.inst4BE
.inst4C5:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 1209
	cmp		r0, #0
	bne		.inst4B9
.inst4C8:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search4CA_end
	.search4CA_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search4CA_start
	.search4CA_end:

#OP_JUMPBACK 1204
	cmp		r0, #0
	bne		.inst4B4
.inst4CB:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search4CD_end
	.search4CD_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search4CD_start
	.search4CD_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1235
	cmp		r0, #0
	beq		.inst4D3
.inst4CF:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd4D1_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd4D1_end:

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 1231
	cmp		r0, #0
	bne		.inst4CF
.inst4D3:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd4D5_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd4D5_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1198
	cmp		r0, #0
	bne		.inst4AE
.inst4D9:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1272
	cmp		r0, #0
	beq		.inst4F8
.inst4DB:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1266
	cmp		r0, #0
	beq		.inst4F2
.inst4E1:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1262
	cmp		r0, #0
	beq		.inst4EE
.inst4E6:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPBACK 1254
	cmp		r0, #0
	bne		.inst4E6
.inst4EE:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd4F0_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd4F0_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 1249
	cmp		r0, #0
	bne		.inst4E1
.inst4F2:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd4F4_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd4F4_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 1243
	cmp		r0, #0
	bne		.inst4DB
.inst4F8:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1278
	cmp		r0, #0
	beq		.inst4FE
.inst4FA:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD -36
	cmp		r0, #0
	beq		.zeroadd4FC_end
	mov		r2, r4
	sub		r2,	r2, #144
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd4FC_end:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 1274
	cmp		r0, #0
	bne		.inst4FA
.inst4FE:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search500_end
	.search500_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search500_start
	.search500_end:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 1293
	cmp		r0, #0
	beq		.inst50D
.inst505:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search506_end
	.search506_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search506_start
	.search506_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search50A_end
	.search50A_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search50A_start
	.search50A_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 1285
	cmp		r0, #0
	bne		.inst505
.inst50D:

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 1368
	cmp		r0, #0
	beq		.inst558
.inst50F:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1302
	cmp		r0, #0
	beq		.inst516
.inst511:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 1297
	cmp		r0, #0
	bne		.inst511
.inst516:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1326
	cmp		r0, #0
	beq		.inst52E
.inst519:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd51E_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd51E_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1325
	cmp		r0, #0
	beq		.inst52D
.inst520:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search525_end
	.search525_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search525_start
	.search525_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search529_end
	.search529_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search529_start
	.search529_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1312
	cmp		r0, #0
	bne		.inst520
.inst52D:

#OP_JUMPBACK 1305
	cmp		r0, #0
	bne		.inst519
.inst52E:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1334
	cmp		r0, #0
	beq		.inst536
.inst531:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 1329
	cmp		r0, #0
	bne		.inst531
.inst536:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1358
	cmp		r0, #0
	beq		.inst54E
.inst539:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd53E_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd53E_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1357
	cmp		r0, #0
	beq		.inst54D
.inst540:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search545_end
	.search545_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search545_start
	.search545_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search549_end
	.search549_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search549_start
	.search549_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1344
	cmp		r0, #0
	bne		.inst540
.inst54D:

#OP_JUMPBACK 1337
	cmp		r0, #0
	bne		.inst539
.inst54E:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1366
	cmp		r0, #0
	beq		.inst556
.inst551:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search554_end
	.search554_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search554_start
	.search554_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1361
	cmp		r0, #0
	bne		.inst551
.inst556:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1295
	cmp		r0, #0
	bne		.inst50F
.inst558:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search55A_end
	.search55A_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search55A_start
	.search55A_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd55C_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd55C_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1444
	cmp		r0, #0
	beq		.inst5A4
.inst55E:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 1392
	cmp		r0, #0
	beq		.inst570
.inst563:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1388
	cmp		r0, #0
	beq		.inst56C
.inst567:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 1383
	cmp		r0, #0
	bne		.inst567
.inst56C:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd56E_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd56E_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1379
	cmp		r0, #0
	bne		.inst563
.inst570:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1443
	cmp		r0, #0
	beq		.inst5A3
.inst574:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1423
	cmp		r0, #0
	beq		.inst58F
.inst576:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1412
	cmp		r0, #0
	beq		.inst584
.inst57B:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 12
	str		r0, [r4]
	add		r4, r4, #48
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroadd582_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd582_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1403
	cmp		r0, #0
	bne		.inst57B
.inst584:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1421
	cmp		r0, #0
	beq		.inst58D
.inst586:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 12
	str		r0, [r4]
	add		r4, r4, #48
	ldr		r0, [r4]

#OP_JUMPBACK 1414
	cmp		r0, #0
	bne		.inst586
.inst58D:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 1398
	cmp		r0, #0
	bne		.inst576
.inst58F:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1439
	cmp		r0, #0
	beq		.inst59F
.inst591:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1437
	cmp		r0, #0
	beq		.inst59D
.inst596:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 12
	str		r0, [r4]
	add		r4, r4, #48
	ldr		r0, [r4]

#OP_JUMPBACK 1430
	cmp		r0, #0
	bne		.inst596
.inst59D:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1425
	cmp		r0, #0
	bne		.inst591
.inst59F:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroadd5A1_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd5A1_end:

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_JUMPBACK 1396
	cmp		r0, #0
	bne		.inst574
.inst5A3:

#OP_JUMPBACK 1374
	cmp		r0, #0
	bne		.inst55E
.inst5A4:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd5A6_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd5A6_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1521
	cmp		r0, #0
	beq		.inst5F1
.inst5A8:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 1466
	cmp		r0, #0
	beq		.inst5BA
.inst5AD:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1462
	cmp		r0, #0
	beq		.inst5B6
.inst5B1:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1457
	cmp		r0, #0
	bne		.inst5B1
.inst5B6:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd5B8_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd5B8_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1453
	cmp		r0, #0
	bne		.inst5AD
.inst5BA:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1517
	cmp		r0, #0
	beq		.inst5ED
.inst5BE:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1497
	cmp		r0, #0
	beq		.inst5D9
.inst5C0:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1486
	cmp		r0, #0
	beq		.inst5CE
.inst5C5:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_ZEROADD -1
	cmp		r0, #0
	beq		.zeroadd5CC_end
	mov		r2, r4
	sub		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd5CC_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1477
	cmp		r0, #0
	bne		.inst5C5
.inst5CE:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1495
	cmp		r0, #0
	beq		.inst5D7
.inst5D0:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1488
	cmp		r0, #0
	bne		.inst5D0
.inst5D7:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1472
	cmp		r0, #0
	bne		.inst5C0
.inst5D9:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1513
	cmp		r0, #0
	beq		.inst5E9
.inst5DB:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1511
	cmp		r0, #0
	beq		.inst5E7
.inst5E0:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1504
	cmp		r0, #0
	bne		.inst5E0
.inst5E7:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1499
	cmp		r0, #0
	bne		.inst5DB
.inst5E9:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -1
	cmp		r0, #0
	beq		.zeroadd5EB_end
	mov		r2, r4
	sub		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd5EB_end:

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_JUMPBACK 1470
	cmp		r0, #0
	bne		.inst5BE
.inst5ED:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 1448
	cmp		r0, #0
	bne		.inst5A8
.inst5F1:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1531
	cmp		r0, #0
	beq		.inst5FB
.inst5F3:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 1523
	cmp		r0, #0
	bne		.inst5F3
.inst5FB:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search5FD_end
	.search5FD_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search5FD_start
	.search5FD_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 1552
	cmp		r0, #0
	beq		.inst610
.inst603:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ZEROADD -6
	cmp		r0, #0
	beq		.zeroadd605_end
	mov		r2, r4
	sub		r2,	r2, #24
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd605_end:

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 1550
	cmp		r0, #0
	beq		.inst60E
.inst607:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1543
	cmp		r0, #0
	bne		.inst607
.inst60E:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1539
	cmp		r0, #0
	bne		.inst603
.inst610:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search612_end
	.search612_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search612_start
	.search612_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1565
	cmp		r0, #0
	beq		.inst61D
.inst616:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 1558
	cmp		r0, #0
	bne		.inst616
.inst61D:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1585
	cmp		r0, #0
	beq		.inst631
.inst61F:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 1577
	cmp		r0, #0
	beq		.inst629
.inst622:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 2
	add		r0, r0, #2

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 1570
	cmp		r0, #0
	bne		.inst622
.inst629:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroadd62B_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd62B_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1567
	cmp		r0, #0
	bne		.inst61F
.inst631:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd633_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd633_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD 5
	cmp		r0, #0
	beq		.zeroadd635_end
	mov		r2, r4
	add		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd635_end:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1597
	cmp		r0, #0
	beq		.inst63D
.inst638:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 1592
	cmp		r0, #0
	bne		.inst638
.inst63D:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1845
	cmp		r0, #0
	beq		.inst735
.inst640:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 1678
	cmp		r0, #0
	beq		.inst68E
.inst645:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1612
	cmp		r0, #0
	beq		.inst64C
.inst647:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 1607
	cmp		r0, #0
	bne		.inst647
.inst64C:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1636
	cmp		r0, #0
	beq		.inst664
.inst64F:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroadd654_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd654_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1635
	cmp		r0, #0
	beq		.inst663
.inst656:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 11
	str		r0, [r4]
	sub		r4, r4, #44
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search65B_end
	.search65B_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search65B_start
	.search65B_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search65F_end
	.search65F_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search65F_start
	.search65F_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1622
	cmp		r0, #0
	bne		.inst656
.inst663:

#OP_JUMPBACK 1615
	cmp		r0, #0
	bne		.inst64F
.inst664:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1644
	cmp		r0, #0
	beq		.inst66C
.inst667:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1639
	cmp		r0, #0
	bne		.inst667
.inst66C:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1668
	cmp		r0, #0
	beq		.inst684
.inst66F:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd674_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd674_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1667
	cmp		r0, #0
	beq		.inst683
.inst676:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search67B_end
	.search67B_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search67B_start
	.search67B_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search67F_end
	.search67F_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search67F_start
	.search67F_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1654
	cmp		r0, #0
	bne		.inst676
.inst683:

#OP_JUMPBACK 1647
	cmp		r0, #0
	bne		.inst66F
.inst684:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1676
	cmp		r0, #0
	beq		.inst68C
.inst687:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search68A_end
	.search68A_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search68A_start
	.search68A_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1671
	cmp		r0, #0
	bne		.inst687
.inst68C:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1605
	cmp		r0, #0
	bne		.inst645
.inst68E:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search690_end
	.search690_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search690_start
	.search690_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd692_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd692_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1767
	cmp		r0, #0
	beq		.inst6E7
.inst694:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 1702
	cmp		r0, #0
	beq		.inst6A6
.inst699:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1698
	cmp		r0, #0
	beq		.inst6A2
.inst69D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1693
	cmp		r0, #0
	bne		.inst69D
.inst6A2:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd6A4_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd6A4_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1689
	cmp		r0, #0
	bne		.inst699
.inst6A6:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1753
	cmp		r0, #0
	beq		.inst6D9
.inst6AA:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1733
	cmp		r0, #0
	beq		.inst6C5
.inst6AC:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1722
	cmp		r0, #0
	beq		.inst6BA
.inst6B1:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 10
	str		r0, [r4]
	add		r4, r4, #40
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd6B8_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd6B8_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1713
	cmp		r0, #0
	bne		.inst6B1
.inst6BA:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1731
	cmp		r0, #0
	beq		.inst6C3
.inst6BC:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 10
	str		r0, [r4]
	add		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 1724
	cmp		r0, #0
	bne		.inst6BC
.inst6C3:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1708
	cmp		r0, #0
	bne		.inst6AC
.inst6C5:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1749
	cmp		r0, #0
	beq		.inst6D5
.inst6C7:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1747
	cmp		r0, #0
	beq		.inst6D3
.inst6CC:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 10
	str		r0, [r4]
	add		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 1740
	cmp		r0, #0
	bne		.inst6CC
.inst6D3:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1735
	cmp		r0, #0
	bne		.inst6C7
.inst6D5:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd6D7_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd6D7_end:

#OP_MOVELEFT 11
	str		r0, [r4]
	sub		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1706
	cmp		r0, #0
	bne		.inst6AA
.inst6D9:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroadd6DD_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd6DD_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 1766
	cmp		r0, #0
	beq		.inst6E6
.inst6DF:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 1759
	cmp		r0, #0
	bne		.inst6DF
.inst6E6:

#OP_JUMPBACK 1684
	cmp		r0, #0
	bne		.inst694
.inst6E7:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd6E9_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd6E9_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1841
	cmp		r0, #0
	beq		.inst731
.inst6EB:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 1789
	cmp		r0, #0
	beq		.inst6FD
.inst6F0:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1785
	cmp		r0, #0
	beq		.inst6F9
.inst6F4:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1780
	cmp		r0, #0
	bne		.inst6F4
.inst6F9:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd6FB_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd6FB_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1776
	cmp		r0, #0
	bne		.inst6F0
.inst6FD:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1840
	cmp		r0, #0
	beq		.inst730
.inst701:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1820
	cmp		r0, #0
	beq		.inst71C
.inst703:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1809
	cmp		r0, #0
	beq		.inst711
.inst708:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd70F_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd70F_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1800
	cmp		r0, #0
	bne		.inst708
.inst711:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1818
	cmp		r0, #0
	beq		.inst71A
.inst713:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1811
	cmp		r0, #0
	bne		.inst713
.inst71A:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1795
	cmp		r0, #0
	bne		.inst703
.inst71C:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1836
	cmp		r0, #0
	beq		.inst72C
.inst71E:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1834
	cmp		r0, #0
	beq		.inst72A
.inst723:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1827
	cmp		r0, #0
	bne		.inst723
.inst72A:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1822
	cmp		r0, #0
	bne		.inst71E
.inst72C:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd72E_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd72E_end:

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_JUMPBACK 1793
	cmp		r0, #0
	bne		.inst701
.inst730:

#OP_JUMPBACK 1771
	cmp		r0, #0
	bne		.inst6EB
.inst731:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 1600
	cmp		r0, #0
	bne		.inst640
.inst735:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd737_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd737_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1917
	cmp		r0, #0
	beq		.inst77D
.inst739:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroadd740_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd740_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 1865
	cmp		r0, #0
	beq		.inst749
.inst742:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 1858
	cmp		r0, #0
	bne		.inst742
.inst749:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search74B_end
	.search74B_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search74B_start
	.search74B_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1916
	cmp		r0, #0
	beq		.inst77C
.inst74D:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1896
	cmp		r0, #0
	beq		.inst768
.inst74F:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 1885
	cmp		r0, #0
	beq		.inst75D
.inst754:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd75B_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd75B_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1876
	cmp		r0, #0
	bne		.inst754
.inst75D:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1894
	cmp		r0, #0
	beq		.inst766
.inst75F:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1887
	cmp		r0, #0
	bne		.inst75F
.inst766:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1871
	cmp		r0, #0
	bne		.inst74F
.inst768:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 1912
	cmp		r0, #0
	beq		.inst778
.inst76A:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 1910
	cmp		r0, #0
	beq		.inst776
.inst76F:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 11
	str		r0, [r4]
	add		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 1903
	cmp		r0, #0
	bne		.inst76F
.inst776:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1898
	cmp		r0, #0
	bne		.inst76A
.inst778:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd77A_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd77A_end:

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_JUMPBACK 1869
	cmp		r0, #0
	bne		.inst74D
.inst77C:

#OP_JUMPBACK 1849
	cmp		r0, #0
	bne		.inst739
.inst77D:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1925
	cmp		r0, #0
	beq		.inst785
.inst77F:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 1919
	cmp		r0, #0
	bne		.inst77F
.inst785:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search787_end
	.search787_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search787_start
	.search787_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 1946
	cmp		r0, #0
	beq		.inst79A
.inst78D:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd78F_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd78F_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 1944
	cmp		r0, #0
	beq		.inst798
.inst791:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 1937
	cmp		r0, #0
	bne		.inst791
.inst798:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1933
	cmp		r0, #0
	bne		.inst78D
.inst79A:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search79C_end
	.search79C_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search79C_start
	.search79C_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 1963
	cmp		r0, #0
	beq		.inst7AB
.inst79E:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroadd7A0_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd7A0_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 1961
	cmp		r0, #0
	beq		.inst7A9
.inst7A2:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 1954
	cmp		r0, #0
	bne		.inst7A2
.inst7A9:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1950
	cmp		r0, #0
	bne		.inst79E
.inst7AB:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search7AD_end
	.search7AD_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search7AD_start
	.search7AD_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 1993
	cmp		r0, #0
	beq		.inst7C9
.inst7B0:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search7B1_end
	.search7B1_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search7B1_start
	.search7B1_end:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search7C6_end
	.search7C6_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search7C6_start
	.search7C6_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 1968
	cmp		r0, #0
	bne		.inst7B0
.inst7C9:

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 1999
	cmp		r0, #0
	beq		.inst7CF
.inst7CB:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 1995
	cmp		r0, #0
	bne		.inst7CB
.inst7CF:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search7D1_end
	.search7D1_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search7D1_start
	.search7D1_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2046
	cmp		r0, #0
	beq		.inst7FE
.inst7D3:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd7D7_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd7D7_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2032
	cmp		r0, #0
	beq		.inst7F0
.inst7D9:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 2029
	cmp		r0, #0
	beq		.inst7ED
.inst7DE:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -2
	cmp		r0, #0
	beq		.zeroadd7E1_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd7E1_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 2026
	cmp		r0, #0
	beq		.inst7EA
.inst7E3:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2019
	cmp		r0, #0
	bne		.inst7E3
.inst7EA:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2014
	cmp		r0, #0
	bne		.inst7DE
.inst7ED:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search7EF_end
	.search7EF_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search7EF_start
	.search7EF_end:

#OP_JUMPBACK 2009
	cmp		r0, #0
	bne		.inst7D9
.inst7F0:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search7F2_end
	.search7F2_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search7F2_start
	.search7F2_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2040
	cmp		r0, #0
	beq		.inst7F8
.inst7F4:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd7F6_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd7F6_end:

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 2036
	cmp		r0, #0
	bne		.inst7F4
.inst7F8:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd7FA_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd7FA_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2003
	cmp		r0, #0
	bne		.inst7D3
.inst7FE:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2077
	cmp		r0, #0
	beq		.inst81D
.inst800:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2071
	cmp		r0, #0
	beq		.inst817
.inst806:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2067
	cmp		r0, #0
	beq		.inst813
.inst80B:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 2059
	cmp		r0, #0
	bne		.inst80B
.inst813:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd815_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd815_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2054
	cmp		r0, #0
	bne		.inst806
.inst817:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd819_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd819_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2048
	cmp		r0, #0
	bne		.inst800
.inst81D:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2083
	cmp		r0, #0
	beq		.inst823
.inst81F:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2079
	cmp		r0, #0
	bne		.inst81F
.inst823:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search825_end
	.search825_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search825_start
	.search825_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2130
	cmp		r0, #0
	beq		.inst852
.inst827:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroadd82B_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd82B_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 2116
	cmp		r0, #0
	beq		.inst844
.inst82D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 2113
	cmp		r0, #0
	beq		.inst841
.inst832:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd835_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd835_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 2110
	cmp		r0, #0
	beq		.inst83E
.inst837:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2103
	cmp		r0, #0
	bne		.inst837
.inst83E:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2098
	cmp		r0, #0
	bne		.inst832
.inst841:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search843_end
	.search843_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search843_start
	.search843_end:

#OP_JUMPBACK 2093
	cmp		r0, #0
	bne		.inst82D
.inst844:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search846_end
	.search846_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search846_start
	.search846_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2124
	cmp		r0, #0
	beq		.inst84C
.inst848:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd84A_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd84A_end:

#OP_MOVELEFT 11
	str		r0, [r4]
	sub		r4, r4, #44
	ldr		r0, [r4]

#OP_JUMPBACK 2120
	cmp		r0, #0
	bne		.inst848
.inst84C:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd84E_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd84E_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2087
	cmp		r0, #0
	bne		.inst827
.inst852:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2161
	cmp		r0, #0
	beq		.inst871
.inst854:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2155
	cmp		r0, #0
	beq		.inst86B
.inst85A:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2151
	cmp		r0, #0
	beq		.inst867
.inst85F:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 2143
	cmp		r0, #0
	bne		.inst85F
.inst867:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd869_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd869_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2138
	cmp		r0, #0
	bne		.inst85A
.inst86B:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ZEROADD 3
	cmp		r0, #0
	beq		.zeroadd86D_end
	mov		r2, r4
	add		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd86D_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2132
	cmp		r0, #0
	bne		.inst854
.inst871:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2167
	cmp		r0, #0
	beq		.inst877
.inst873:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD -36
	cmp		r0, #0
	beq		.zeroadd875_end
	mov		r2, r4
	sub		r2,	r2, #144
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd875_end:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 2163
	cmp		r0, #0
	bne		.inst873
.inst877:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search879_end
	.search879_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search879_start
	.search879_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 2180
	cmp		r0, #0
	beq		.inst884
.inst87C:

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search87D_end
	.search87D_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search87D_start
	.search87D_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search881_end
	.search881_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search881_start
	.search881_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 2172
	cmp		r0, #0
	bne		.inst87C
.inst884:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 21
	str		r0, [r4]
	add		r4, r4, #84
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search889_end
	.search889_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search889_start
	.search889_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2260
	cmp		r0, #0
	beq		.inst8D4
.inst88B:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 2194
	cmp		r0, #0
	beq		.inst892
.inst88D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2189
	cmp		r0, #0
	bne		.inst88D
.inst892:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 2218
	cmp		r0, #0
	beq		.inst8AA
.inst895:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd89A_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd89A_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2217
	cmp		r0, #0
	beq		.inst8A9
.inst89C:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 13
	str		r0, [r4]
	sub		r4, r4, #52
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search8A1_end
	.search8A1_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search8A1_start
	.search8A1_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search8A5_end
	.search8A5_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search8A5_start
	.search8A5_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 2204
	cmp		r0, #0
	bne		.inst89C
.inst8A9:

#OP_JUMPBACK 2197
	cmp		r0, #0
	bne		.inst895
.inst8AA:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2226
	cmp		r0, #0
	beq		.inst8B2
.inst8AD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2221
	cmp		r0, #0
	bne		.inst8AD
.inst8B2:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2250
	cmp		r0, #0
	beq		.inst8CA
.inst8B5:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd8BA_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd8BA_end:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 2249
	cmp		r0, #0
	beq		.inst8C9
.inst8BC:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 12
	str		r0, [r4]
	sub		r4, r4, #48
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search8C1_end
	.search8C1_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search8C1_start
	.search8C1_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search8C5_end
	.search8C5_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search8C5_start
	.search8C5_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 2236
	cmp		r0, #0
	bne		.inst8BC
.inst8C9:

#OP_JUMPBACK 2229
	cmp		r0, #0
	bne		.inst8B5
.inst8CA:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2258
	cmp		r0, #0
	beq		.inst8D2
.inst8CD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search8D0_end
	.search8D0_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search8D0_start
	.search8D0_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2253
	cmp		r0, #0
	bne		.inst8CD
.inst8D2:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2187
	cmp		r0, #0
	bne		.inst88B
.inst8D4:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search8D6_end
	.search8D6_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search8D6_start
	.search8D6_end:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd8DA_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd8DA_end:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2275
	cmp		r0, #0
	beq		.inst8E3
.inst8DC:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 2268
	cmp		r0, #0
	bne		.inst8DC
.inst8E3:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 454
	cmp		r0, #0
	bne		.inst1C6
.inst8E5:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2286
	cmp		r0, #0
	beq		.inst8EE
.inst8E9:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2281
	cmp		r0, #0
	bne		.inst8E9
.inst8EE:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2296
	cmp		r0, #0
	beq		.inst8F8
.inst8F1:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_OUT
	bl		putchar

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 2289
	cmp		r0, #0
	bne		.inst8F1
.inst8F8:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2303
	cmp		r0, #0
	beq		.inst8FF
.inst8FA:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_OUT
	bl		putchar

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPBACK 2298
	cmp		r0, #0
	bne		.inst8FA
.inst8FF:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 2331
	cmp		r0, #0
	beq		.inst91B
.inst90D:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2317
	cmp		r0, #0
	bne		.inst90D
.inst91B:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search91D_end
	.search91D_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search91D_start
	.search91D_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2339
	cmp		r0, #0
	beq		.inst923
.inst91F:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2335
	cmp		r0, #0
	bne		.inst91F
.inst923:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search925_end
	.search925_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search925_start
	.search925_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 11
	add		r0, r0, #11

#OP_JUMPFORWARD 2348
	cmp		r0, #0
	beq		.inst92C
.inst928:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd92A_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd92A_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2344
	cmp		r0, #0
	bne		.inst928
.inst92C:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search932_end
	.search932_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search932_start
	.search932_end:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroadd934_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd934_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2382
	cmp		r0, #0
	beq		.inst94E
.inst936:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search93C_end
	.search93C_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search93C_start
	.search93C_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2381
	cmp		r0, #0
	beq		.inst94D
.inst93E:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ZEROADD -6
	cmp		r0, #0
	beq		.zeroadd940_end
	mov		r2, r4
	sub		r2,	r2, #24
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd940_end:

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 2379
	cmp		r0, #0
	beq		.inst94B
.inst942:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search947_end
	.search947_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search947_start
	.search947_end:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2370
	cmp		r0, #0
	bne		.inst942
.inst94B:

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 2366
	cmp		r0, #0
	bne		.inst93E
.inst94D:

#OP_JUMPBACK 2358
	cmp		r0, #0
	bne		.inst936
.inst94E:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroadd950_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd950_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2451
	cmp		r0, #0
	beq		.inst993
.inst952:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 2404
	cmp		r0, #0
	beq		.inst964
.inst957:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 2400
	cmp		r0, #0
	beq		.inst960
.inst95B:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2395
	cmp		r0, #0
	bne		.inst95B
.inst960:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ZEROADD 4
	cmp		r0, #0
	beq		.zeroadd962_end
	mov		r2, r4
	add		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd962_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2391
	cmp		r0, #0
	bne		.inst957
.inst964:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2412
	cmp		r0, #0
	beq		.inst96C
.inst968:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd96A_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd96A_end:

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_JUMPBACK 2408
	cmp		r0, #0
	bne		.inst968
.inst96C:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search96E_end
	.search96E_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search96E_start
	.search96E_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2445
	cmp		r0, #0
	beq		.inst98D
.inst970:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2439
	cmp		r0, #0
	beq		.inst987
.inst976:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2435
	cmp		r0, #0
	beq		.inst983
.inst97B:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2427
	cmp		r0, #0
	bne		.inst97B
.inst983:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd985_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd985_end:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPBACK 2422
	cmp		r0, #0
	bne		.inst976
.inst987:

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ZEROADD 6
	cmp		r0, #0
	beq		.zeroadd989_end
	mov		r2, r4
	add		r2,	r2, #24
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd989_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2416
	cmp		r0, #0
	bne		.inst970
.inst98D:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2386
	cmp		r0, #0
	bne		.inst952
.inst993:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2459
	cmp		r0, #0
	beq		.inst99B
.inst996:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPBACK 2454
	cmp		r0, #0
	bne		.inst996
.inst99B:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2604
	cmp		r0, #0
	beq		.instA2C
.inst99E:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 2471
	cmp		r0, #0
	beq		.inst9A7
.inst9A3:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd9A5_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd9A5_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPBACK 2467
	cmp		r0, #0
	bne		.inst9A3
.inst9A7:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2502
	cmp		r0, #0
	beq		.inst9C6
.inst9A9:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2496
	cmp		r0, #0
	beq		.inst9C0
.inst9AF:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2492
	cmp		r0, #0
	beq		.inst9BC
.inst9B4:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2484
	cmp		r0, #0
	bne		.inst9B4
.inst9BC:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd9BE_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd9BE_end:

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPBACK 2479
	cmp		r0, #0
	bne		.inst9AF
.inst9C0:

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_ZEROADD 6
	cmp		r0, #0
	beq		.zeroadd9C2_end
	mov		r2, r4
	add		r2,	r2, #24
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd9C2_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2473
	cmp		r0, #0
	bne		.inst9A9
.inst9C6:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 5
	add		r0, r0, #5

#OP_JUMPFORWARD 2509
	cmp		r0, #0
	beq		.inst9CD
.inst9C9:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroadd9CB_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd9CB_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2505
	cmp		r0, #0
	bne		.inst9C9
.inst9CD:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search9D1_end
	.search9D1_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search9D1_start
	.search9D1_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2588
	cmp		r0, #0
	beq		.instA1C
.inst9D3:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 2522
	cmp		r0, #0
	beq		.inst9DA
.inst9D5:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 2517
	cmp		r0, #0
	bne		.inst9D5
.inst9DA:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 2546
	cmp		r0, #0
	beq		.inst9F2
.inst9DD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroadd9E2_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd9E2_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2545
	cmp		r0, #0
	beq		.inst9F1
.inst9E4:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 16
	str		r0, [r4]
	sub		r4, r4, #64
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search9E9_end
	.search9E9_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search9E9_start
	.search9E9_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.search9ED_end
	.search9ED_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search9ED_start
	.search9ED_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 2532
	cmp		r0, #0
	bne		.inst9E4
.inst9F1:

#OP_JUMPBACK 2525
	cmp		r0, #0
	bne		.inst9DD
.inst9F2:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2554
	cmp		r0, #0
	beq		.inst9FA
.inst9F5:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPBACK 2549
	cmp		r0, #0
	bne		.inst9F5
.inst9FA:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2578
	cmp		r0, #0
	beq		.instA12
.inst9FD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -5
	cmp		r0, #0
	beq		.zeroaddA02_end
	mov		r2, r4
	sub		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA02_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 2577
	cmp		r0, #0
	beq		.instA11
.instA04:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 14
	str		r0, [r4]
	sub		r4, r4, #56
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA09_end
	.searchA09_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA09_start
	.searchA09_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA0D_end
	.searchA0D_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA0D_start
	.searchA0D_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 2564
	cmp		r0, #0
	bne		.instA04
.instA11:

#OP_JUMPBACK 2557
	cmp		r0, #0
	bne		.inst9FD
.instA12:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2586
	cmp		r0, #0
	beq		.instA1A
.instA15:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA18_end
	.searchA18_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA18_start
	.searchA18_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2581
	cmp		r0, #0
	bne		.instA15
.instA1A:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2515
	cmp		r0, #0
	bne		.inst9D3
.instA1C:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA1E_end
	.searchA1E_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA1E_start
	.searchA1E_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 5
	add		r0, r0, #5

#OP_JUMPFORWARD 2599
	cmp		r0, #0
	beq		.instA27
.instA23:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroaddA25_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA25_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2595
	cmp		r0, #0
	bne		.instA23
.instA27:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA2B_end
	.searchA2B_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA2B_start
	.searchA2B_end:

#OP_JUMPBACK 2462
	cmp		r0, #0
	bne		.inst99E
.instA2C:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 83
	cmp		r0, #0
	bne		.inst53
.instA2E:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_OUT
	bl		putchar

#OP_MOVERIGHT 10
	str		r0, [r4]
	add		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPFORWARD 2614
	cmp		r0, #0
	beq		.instA36
.instA32:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2610
	cmp		r0, #0
	bne		.instA32
.instA36:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA38_end
	.searchA38_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA38_start
	.searchA38_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 10
	add		r0, r0, #10

#OP_JUMPFORWARD 2623
	cmp		r0, #0
	beq		.instA3F
.instA3B:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroaddA3D_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA3D_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2619
	cmp		r0, #0
	bne		.instA3B
.instA3F:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 15
	str		r0, [r4]
	sub		r4, r4, #60
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA45_end
	.searchA45_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA45_start
	.searchA45_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_ZEROADD -8
	cmp		r0, #0
	beq		.zeroaddA47_end
	mov		r2, r4
	sub		r2,	r2, #32
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA47_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2657
	cmp		r0, #0
	beq		.instA61
.instA49:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_SET
	mov		r0, #0

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA4F_end
	.searchA4F_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA4F_start
	.searchA4F_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2656
	cmp		r0, #0
	beq		.instA60
.instA51:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_ZEROADD -7
	cmp		r0, #0
	beq		.zeroaddA53_end
	mov		r2, r4
	sub		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA53_end:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_JUMPFORWARD 2654
	cmp		r0, #0
	beq		.instA5E
.instA55:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 7
	str		r0, [r4]
	add		r4, r4, #28
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA5A_end
	.searchA5A_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA5A_start
	.searchA5A_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 2645
	cmp		r0, #0
	bne		.instA55
.instA5E:

#OP_MOVELEFT 10
	str		r0, [r4]
	sub		r4, r4, #40
	ldr		r0, [r4]

#OP_JUMPBACK 2641
	cmp		r0, #0
	bne		.instA51
.instA60:

#OP_JUMPBACK 2633
	cmp		r0, #0
	bne		.instA49
.instA61:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_ZEROADD -8
	cmp		r0, #0
	beq		.zeroaddA63_end
	mov		r2, r4
	sub		r2,	r2, #32
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA63_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2726
	cmp		r0, #0
	beq		.instAA6
.instA65:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2679
	cmp		r0, #0
	beq		.instA77
.instA6A:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPFORWARD 2675
	cmp		r0, #0
	beq		.instA73
.instA6E:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 2670
	cmp		r0, #0
	bne		.instA6E
.instA73:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD 5
	cmp		r0, #0
	beq		.zeroaddA75_end
	mov		r2, r4
	add		r2,	r2, #20
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA75_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2666
	cmp		r0, #0
	bne		.instA6A
.instA77:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2687
	cmp		r0, #0
	beq		.instA7F
.instA7B:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroaddA7D_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA7D_end:

#OP_MOVELEFT 15
	str		r0, [r4]
	sub		r4, r4, #60
	ldr		r0, [r4]

#OP_JUMPBACK 2683
	cmp		r0, #0
	bne		.instA7B
.instA7F:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchA81_end
	.searchA81_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchA81_start
	.searchA81_end:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2720
	cmp		r0, #0
	beq		.instAA0
.instA83:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2714
	cmp		r0, #0
	beq		.instA9A
.instA89:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2710
	cmp		r0, #0
	beq		.instA96
.instA8E:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 2702
	cmp		r0, #0
	bne		.instA8E
.instA96:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroaddA98_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA98_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2697
	cmp		r0, #0
	bne		.instA89
.instA9A:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_ZEROADD 7
	cmp		r0, #0
	beq		.zeroaddA9C_end
	mov		r2, r4
	add		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddA9C_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2691
	cmp		r0, #0
	bne		.instA83
.instAA0:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2661
	cmp		r0, #0
	bne		.instA65
.instAA6:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2734
	cmp		r0, #0
	beq		.instAAE
.instAA9:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2729
	cmp		r0, #0
	bne		.instAA9
.instAAE:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2883
	cmp		r0, #0
	beq		.instB43
.instAB1:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2746
	cmp		r0, #0
	beq		.instABA
.instAB6:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroaddAB8_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddAB8_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 2742
	cmp		r0, #0
	bne		.instAB6
.instABA:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2777
	cmp		r0, #0
	beq		.instAD9
.instABC:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2771
	cmp		r0, #0
	beq		.instAD3
.instAC2:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2767
	cmp		r0, #0
	beq		.instACF
.instAC7:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 2759
	cmp		r0, #0
	bne		.instAC7
.instACF:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroaddAD1_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddAD1_end:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2754
	cmp		r0, #0
	bne		.instAC2
.instAD3:

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_ZEROADD 7
	cmp		r0, #0
	beq		.zeroaddAD5_end
	mov		r2, r4
	add		r2,	r2, #28
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddAD5_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2748
	cmp		r0, #0
	bne		.instABC
.instAD9:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 5
	add		r0, r0, #5

#OP_JUMPFORWARD 2784
	cmp		r0, #0
	beq		.instAE0
.instADC:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroaddADE_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddADE_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2780
	cmp		r0, #0
	bne		.instADC
.instAE0:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 27
	str		r0, [r4]
	add		r4, r4, #108
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchAE6_end
	.searchAE6_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchAE6_start
	.searchAE6_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPFORWARD 2865
	cmp		r0, #0
	beq		.instB31
.instAE8:

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 2799
	cmp		r0, #0
	beq		.instAEF
.instAEA:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPBACK 2794
	cmp		r0, #0
	bne		.instAEA
.instAEF:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 2823
	cmp		r0, #0
	beq		.instB07
.instAF2:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -8
	cmp		r0, #0
	beq		.zeroaddAF7_end
	mov		r2, r4
	sub		r2,	r2, #32
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddAF7_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2822
	cmp		r0, #0
	beq		.instB06
.instAF9:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 17
	str		r0, [r4]
	sub		r4, r4, #68
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchAFE_end
	.searchAFE_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchAFE_start
	.searchAFE_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchB02_end
	.searchB02_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchB02_start
	.searchB02_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 2809
	cmp		r0, #0
	bne		.instAF9
.instB06:

#OP_JUMPBACK 2802
	cmp		r0, #0
	bne		.instAF2
.instB07:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2831
	cmp		r0, #0
	beq		.instB0F
.instB0A:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2826
	cmp		r0, #0
	bne		.instB0A
.instB0F:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPFORWARD 2855
	cmp		r0, #0
	beq		.instB27
.instB12:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -6
	cmp		r0, #0
	beq		.zeroaddB17_end
	mov		r2, r4
	sub		r2,	r2, #24
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddB17_end:

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_JUMPFORWARD 2854
	cmp		r0, #0
	beq		.instB26
.instB19:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 15
	str		r0, [r4]
	sub		r4, r4, #60
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchB1E_end
	.searchB1E_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchB1E_start
	.searchB1E_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchB22_end
	.searchB22_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchB22_start
	.searchB22_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SET
	mov		r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 2841
	cmp		r0, #0
	bne		.instB19
.instB26:

#OP_JUMPBACK 2834
	cmp		r0, #0
	bne		.instB12
.instB27:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 2863
	cmp		r0, #0
	beq		.instB2F
.instB2A:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchB2D_end
	.searchB2D_start:
	add		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchB2D_start
	.searchB2D_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2858
	cmp		r0, #0
	bne		.instB2A
.instB2F:

#OP_MOVERIGHT 8
	str		r0, [r4]
	add		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 2792
	cmp		r0, #0
	bne		.instAE8
.instB31:

#OP_MOVELEFT 9
	str		r0, [r4]
	sub		r4, r4, #36
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchB33_end
	.searchB33_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchB33_start
	.searchB33_end:

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 5
	add		r0, r0, #5

#OP_JUMPFORWARD 2876
	cmp		r0, #0
	beq		.instB3C
.instB38:

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 9
	cmp		r0, #0
	beq		.zeroaddB3A_end
	mov		r2, r4
	add		r2,	r2, #36
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddB3A_end:

#OP_MOVERIGHT 9
	str		r0, [r4]
	add		r4, r4, #36
	ldr		r0, [r4]

#OP_JUMPBACK 2872
	cmp		r0, #0
	bne		.instB38
.instB3C:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 27
	str		r0, [r4]
	add		r4, r4, #108
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 6
	str		r0, [r4]
	sub		r4, r4, #24
	ldr		r0, [r4]

#OP_SEARCH -9
	str		r0, [r4]
	cmp		r0, #0
	beq		.searchB42_end
	.searchB42_start:
	sub		r4, r4, #36
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.searchB42_start
	.searchB42_end:

#OP_JUMPBACK 2737
	cmp		r0, #0
	bne		.instAB1
.instB43:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPBACK 51
	cmp		r0, #0
	bne		.inst33
.instB45:

	mov		r0, r6
	bl		free
	ldmfd	sp!, {lr}
	mov		r0, #0
	bx		lr
