	SEGMENT	CODE
	.file	"test.c"
	XDEF	_factorial
_factorial:
	push	ix
	ld	ix, 0
	add	ix, sp
	ld	e, (ix + 6)
	ld	d, (ix + 7)
	ld	c, (ix + 4)
	ld	b, (ix + 5)
	jp	BB0_2
BB0_1:
	ex	de, hl
	call	__smulu
	ld	e, l
	ld	d, h
	dec	bc
BB0_2:
	ld	l, c
	ld	h, b
	add	hl, bc
	or	a, a
	sbc	hl, bc
	jp	nz, BB0_1
	ex	de, hl
	pop	ix
	ret


	XREF	__smulu
