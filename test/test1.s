	SEGMENT	CODE
	.file	"test1.c"
	XDEF	_foo
_foo:
	push	ix
	ld	ix, 0
	add	ix, sp
	ld	a, (ix + 6)
	add	a, (ix + 4)
	pop	ix
	ret


