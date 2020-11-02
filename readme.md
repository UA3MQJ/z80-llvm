
Image - LLVM clang for z80

download image from dockerhub

```
docker pull ua3mqj/z80llvm:1.0.0
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