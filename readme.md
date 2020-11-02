
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

Заметки
1.0.0 - версия на докерхабе содержит лишее - 13 гб (3гб заархивировано)
1.0.1 - сделана на основе 1.0.0 - и удалено лишнее, так было быстрее. текущий код в гит должен сразу делать правильный образ
1.0.2 - образ сразу

тегнуть собраный образ
docker tag <тег> ua3mqj/z80llvm:1.0.1
запушить в докерхаб
docker push ua3mqj/z80llvm:1.0.1

линки
https://tiplanet.org/forum/viewtopic.php?f=10&t=18038