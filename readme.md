
# Image - LLVM clang for z80

Start clang toolchain in docker with local path. Compressed size in [Dockerhub](https://hub.docker.com/repository/docker/ua3mqj/z80llvm) - 1.3 Gb.

```
docker run --rm -it -v$(pwd):/current_dir ua3mqj/z80llvm:1.0.3 bash
```

# Example

```
root@91be3c608df8:/current_dir# clang -target ez80 -xc - -S -o- <<<'void test(void){}'
	SEGMENT	CODE
	.assume	adl = 1
	.file	"-"
	XDEF	_test
_test:
	ret
```

# Example

```
clang -cc1 -triple z80 -S -O3 -o test1.s test1.c
```

test1.c
```
char foo(char a, char b) {
    return a + b;       
}
```

test1.s
```
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
```

# Example

```
clang -cc1 -triple z80 -S -O3 -o test2.s test2.c
```

test2.c
```
int factorial (int x, int y){
  if (x==0)
    return y;
  else
    return factorial(x-1,y*x);
}
```

test2.s
```
	SEGMENT	CODE
	.file	"test2.c"
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
```

# for image develepers

download image from dockerhub

```
docker pull ua3mqj/z80llvm:1.0.3
docker run --rm -it -v$(pwd):/current_dir ua3mqj/z80llvm bash
```

make image

```
docker build -t z80llvm .
```

start image

```
docker run --rm -it z80llvm bash
docker run --rm -it -v$(pwd):/current_dir z80llvm bash
```

тегнуть собраный образ

```
docker tag <тег> ua3mqj/z80llvm:1.0.1
```

запушить в докерхаб

```
docker push ua3mqj/z80llvm:1.0.1
```

# links
https://tiplanet.org/forum/viewtopic.php?f=10&t=18038
