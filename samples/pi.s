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

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 15
	add		r0, r0, #15

#OP_JUMPFORWARD 9
	cmp		r0, #0
	beq		.inst9
.inst2:

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

#OP_ADD 10
	add		r0, r0, #10

#OP_MOVELEFT 7
	str		r0, [r4]
	sub		r4, r4, #28
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 2
	cmp		r0, #0
	bne		.inst2
.inst9:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 5
	add		r0, r0, #5

#OP_ZEROMULT -1, 9
	cmp		r0, #0
	beq		.zeromultC_end
	mov		r2, r4
	sub		r2,	r2, #4
	ldr		r1, [r2]
	mov		r3, #9
	mul		r0, r0, r3
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeromultC_end:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 39
	cmp		r0, #0
	beq		.inst27
.inst10:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 3
	add		r0, r0, #3

#OP_JUMPFORWARD 29
	cmp		r0, #0
	beq		.inst1D
.inst13:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 24
	cmp		r0, #0
	beq		.inst18
.inst15:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 21
	cmp		r0, #0
	bne		.inst15
.inst18:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH 1
	str		r0, [r4]
	cmp		r0, #0
	beq		.search1A_end
	.search1A_start:
	add		r4, r4, #4
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search1A_start
	.search1A_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 19
	cmp		r0, #0
	bne		.inst13
.inst1D:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 35
	cmp		r0, #0
	beq		.inst23
.inst1F:

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

#OP_JUMPBACK 31
	cmp		r0, #0
	bne		.inst1F
.inst23:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH -1
	str		r0, [r4]
	cmp		r0, #0
	beq		.search25_end
	.search25_start:
	sub		r4, r4, #4
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search25_start
	.search25_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 16
	cmp		r0, #0
	bne		.inst10
.inst27:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 47
	cmp		r0, #0
	beq		.inst2F
.inst29:

#OP_ZEROADD 4
	cmp		r0, #0
	beq		.zeroadd2A_end
	mov		r2, r4
	add		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd2A_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 3
	add		r0, r0, #3

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 41
	cmp		r0, #0
	bne		.inst29
.inst2F:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SEARCH -4
	str		r0, [r4]
	cmp		r0, #0
	beq		.search31_end
	.search31_start:
	sub		r4, r4, #16
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search31_start
	.search31_end:

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_JUMPFORWARD 272
	cmp		r0, #0
	beq		.inst110
.inst34:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 12
	str		r0, [r4]
	add		r4, r4, #48
	ldr		r0, [r4]

#OP_JUMPFORWARD 60
	cmp		r0, #0
	beq		.inst3C
.inst37:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_ZEROADD 4
	cmp		r0, #0
	beq		.zeroadd3A_end
	mov		r2, r4
	add		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd3A_end:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 55
	cmp		r0, #0
	bne		.inst37
.inst3C:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 117
	cmp		r0, #0
	beq		.inst75
.inst3E:

#OP_MOVERIGHT 5
	str		r0, [r4]
	add		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD -4
	cmp		r0, #0
	beq		.zeroadd40_end
	mov		r2, r4
	sub		r2,	r2, #16
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd40_end:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROMULT -2, 10
	cmp		r0, #0
	beq		.zeromult43_end
	mov		r2, r4
	sub		r2,	r2, #8
	ldr		r1, [r2]
	mov		r3, #10
	mul		r0, r0, r3
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeromult43_end:

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_JUMPFORWARD 87
	cmp		r0, #0
	beq		.inst57
.inst45:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 78
	cmp		r0, #0
	beq		.inst4E
.inst47:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 71
	cmp		r0, #0
	bne		.inst47
.inst4E:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ZEROADD 1
	cmp		r0, #0
	beq		.zeroadd50_end
	mov		r2, r4
	add		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd50_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 2
	add		r0, r0, #2

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 6
	str		r0, [r4]
	add		r4, r4, #24
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 69
	cmp		r0, #0
	bne		.inst45
.inst57:

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

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 108
	cmp		r0, #0
	beq		.inst6C
.inst5D:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_SEARCH 3
	str		r0, [r4]
	cmp		r0, #0
	beq		.search63_end
	.search63_start:
	add		r4, r4, #12
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search63_start
	.search63_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 106
	cmp		r0, #0
	beq		.inst6A
.inst65:

#OP_ZEROADD -1
	cmp		r0, #0
	beq		.zeroadd66_end
	mov		r2, r4
	sub		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd66_end:

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

#OP_JUMPBACK 101
	cmp		r0, #0
	bne		.inst65
.inst6A:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 93
	cmp		r0, #0
	bne		.inst5D
.inst6C:

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

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroadd73_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd73_end:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 62
	cmp		r0, #0
	bne		.inst3E
.inst75:

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

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

#OP_ZEROADD -3
	cmp		r0, #0
	beq		.zeroadd7B_end
	mov		r2, r4
	sub		r2,	r2, #12
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd7B_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 10
	add		r0, r0, #10

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 142
	cmp		r0, #0
	beq		.inst8E
.inst7F:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_SEARCH 3
	str		r0, [r4]
	cmp		r0, #0
	beq		.search85_end
	.search85_start:
	add		r4, r4, #12
	ldr		r0, [r4]
	cmp		r0, #0
	bne		.search85_start
	.search85_end:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 140
	cmp		r0, #0
	beq		.inst8C
.inst87:

#OP_ZEROADD -1
	cmp		r0, #0
	beq		.zeroadd88_end
	mov		r2, r4
	sub		r2,	r2, #4
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd88_end:

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

#OP_JUMPBACK 135
	cmp		r0, #0
	bne		.inst87
.inst8C:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_JUMPBACK 127
	cmp		r0, #0
	bne		.inst7F
.inst8E:

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

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 155
	cmp		r0, #0
	beq		.inst9B
.inst94:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 3
	str		r0, [r4]
	add		r4, r4, #12
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 148
	cmp		r0, #0
	bne		.inst94
.inst9B:

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

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPFORWARD 198
	cmp		r0, #0
	beq		.instC6
.instA1:

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPFORWARD 197
	cmp		r0, #0
	beq		.instC5
.instA3:

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPFORWARD 196
	cmp		r0, #0
	beq		.instC4
.instA5:

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPFORWARD 195
	cmp		r0, #0
	beq		.instC3
.instA7:

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPFORWARD 194
	cmp		r0, #0
	beq		.instC2
.instA9:

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPFORWARD 193
	cmp		r0, #0
	beq		.instC1
.instAB:

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPFORWARD 192
	cmp		r0, #0
	beq		.instC0
.instAD:

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPFORWARD 191
	cmp		r0, #0
	beq		.instBF
.instAF:

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPFORWARD 190
	cmp		r0, #0
	beq		.instBE
.instB1:

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

#OP_JUMPFORWARD 189
	cmp		r0, #0
	beq		.instBD
.instB6:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_JUMPBACK 182
	cmp		r0, #0
	bne		.instB6
.instBD:

#OP_JUMPBACK 177
	cmp		r0, #0
	bne		.instB1
.instBE:

#OP_JUMPBACK 175
	cmp		r0, #0
	bne		.instAF
.instBF:

#OP_JUMPBACK 173
	cmp		r0, #0
	bne		.instAD
.instC0:

#OP_JUMPBACK 171
	cmp		r0, #0
	bne		.instAB
.instC1:

#OP_JUMPBACK 169
	cmp		r0, #0
	bne		.instA9
.instC2:

#OP_JUMPBACK 167
	cmp		r0, #0
	bne		.instA7
.instC3:

#OP_JUMPBACK 165
	cmp		r0, #0
	bne		.instA5
.instC4:

#OP_JUMPBACK 163
	cmp		r0, #0
	bne		.instA3
.instC5:

#OP_JUMPBACK 161
	cmp		r0, #0
	bne		.instA1
.instC6:

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 266
	cmp		r0, #0
	beq		.inst10A
.instC8:

#OP_ADD 5
	add		r0, r0, #5

#OP_JUMPFORWARD 209
	cmp		r0, #0
	beq		.instD1
.instCA:

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_ADD 8
	add		r0, r0, #8

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_ADD 8
	add		r0, r0, #8

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 202
	cmp		r0, #0
	bne		.instCA
.instD1:

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

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 4
	str		r0, [r4]
	add		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 224
	cmp		r0, #0
	beq		.instE0
.instD7:

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

#OP_ADD 9
	add		r0, r0, #9

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

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 215
	cmp		r0, #0
	bne		.instD7
.instE0:

#OP_MOVELEFT 5
	str		r0, [r4]
	sub		r4, r4, #20
	ldr		r0, [r4]

#OP_ZEROADD 2
	cmp		r0, #0
	beq		.zeroaddE2_end
	mov		r2, r4
	add		r2,	r2, #8
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroaddE2_end:

#OP_ADD 1
	add		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 234
	cmp		r0, #0
	beq		.instEA
.instE5:

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_MOVELEFT 1
	str		r0, [r4]
	sub		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPBACK 229
	cmp		r0, #0
	bne		.instE5
.instEA:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 247
	cmp		r0, #0
	beq		.instF7
.instEC:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_OUT
	bl		putchar

#OP_MOVELEFT 4
	str		r0, [r4]
	sub		r4, r4, #16
	ldr		r0, [r4]

#OP_JUMPFORWARD 244
	cmp		r0, #0
	beq		.instF4
.instF0:

#OP_ADD 1
	add		r0, r0, #1

#OP_OUT
	bl		putchar

#OP_SET
	mov		r0, #0

#OP_JUMPBACK 240
	cmp		r0, #0
	bne		.instF0
.instF4:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 236
	cmp		r0, #0
	bne		.instEC
.instF7:

#OP_MOVERIGHT 1
	str		r0, [r4]
	add		r4, r4, #4
	ldr		r0, [r4]

#OP_JUMPFORWARD 254
	cmp		r0, #0
	beq		.instFE
.instF9:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_OUT
	bl		putchar

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 249
	cmp		r0, #0
	bne		.instF9
.instFE:

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

#OP_JUMPFORWARD 265
	cmp		r0, #0
	beq		.inst109
.inst104:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_ZEROADD -8
	cmp		r0, #0
	beq		.zeroadd106_end
	mov		r2, r4
	sub		r2,	r2, #32
	ldr		r1, [r2]
	add		r1, r1, r0
	mov		r0, #0
	str		r1,	[r2]
.zeroadd106_end:

#OP_MOVELEFT 2
	str		r0, [r4]
	sub		r4, r4, #8
	ldr		r0, [r4]

#OP_SUB 1
	sub		r0, r0, #1

#OP_JUMPBACK 260
	cmp		r0, #0
	bne		.inst104
.inst109:

#OP_JUMPBACK 200
	cmp		r0, #0
	bne		.instC8
.inst10A:

#OP_MOVERIGHT 2
	str		r0, [r4]
	add		r4, r4, #8
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 3
	str		r0, [r4]
	sub		r4, r4, #12
	ldr		r0, [r4]

#OP_SET
	mov		r0, #0

#OP_MOVELEFT 8
	str		r0, [r4]
	sub		r4, r4, #32
	ldr		r0, [r4]

#OP_JUMPBACK 52
	cmp		r0, #0
	bne		.inst34
.inst110:

#OP_ADD 10
	add		r0, r0, #10

#OP_OUT
	bl		putchar

	mov		r0, r6
	bl		free
	ldmfd	sp!, {lr}
	mov		r0, #0
	bx		lr
