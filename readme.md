
# Image - LLVM clang for z80
download image from dockerhub

```
docker pull ua3mqj/z80llvm:1.0.3
docker run --rm -it -v$(pwd):/current_dir ua3mqj/z80llvm bash
```


# for image develepers
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
