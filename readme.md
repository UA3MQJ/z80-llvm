создать образ

 docker build -t z80llvm .

запустить

 docker run --rm -it z80llvm bash

 docker run --rm -it -v$(pwd):/current_dir z80llvm bash
