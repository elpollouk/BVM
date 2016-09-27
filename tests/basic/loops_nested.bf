Test nested loops by printing "@8"
@ = 64 = 8 x 8
8 = 56 = 8 x 7

Cell(0) : Outer loop counter
Cell(1) : Inner loop counter
Cell(2) : Output char 1; @
Cell(3) : Output char 2; 8

++++++++		Init outer loop (8 iterations)
[
	>			Move to cell 1
	++++++++	Init inner loop 1 (8 iterations)
	[
		>		Move to cell 2; this will contain @(64)
		+
		<
		-
	]
	+++++++		Init inner loop 2 (7 iterations)
	[
		>>		Move to cell 3; this will contain 8(56)
		+
		<<
		-
	]
	<
	-
]
>>.				Output cell 2
>.				Output cell 3