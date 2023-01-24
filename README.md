### win64 asm

<hr>

_example of "Hello, ~~World~~ Asm!" written in assembly for Win64_

#### Install:
- [NASM](https://www.nasm.us/)
- [MSYS2](https://www.msys2.org/)

```bash
$ nasm -f win64 hello-world.asm -o hello-world.obj
$ gcc hello-world.obj -o hello-world.exe
```