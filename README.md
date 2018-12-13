# haribote-os
A haribote OS. Just run it by `$ make run`.

## The flow to start OS
1. Start BIOS.
2. BIOS reads the first 1 sector(2048 bytes), which is called IPL(initial boot loader), from a floppy disk into the memory 0x7c00.
3. [ipl10.asm] IPL reads 10 cylinders from a floppy disk into the memory 0x8200.
4. [nasmhead.asm] OS prepares boot(setting an image mode, enabling memory access more than 1MB, moving 32 bits mode, etc.)
5. [nasmhead.asm] Execute the segment on bootpack.
6. [bootpack.c and other c files] Execute haribote OS.

## Floppy image
- 512 bytes binary assembled from ipl10.asm
- binary assembled from nasmhead.asm
- binary compiled from bootpack.c and other c files.

## Memory maps
### When finish ipl10.asm 
- 0x07C00ー0x07DFF: IPL. The first 1 sector(2048 bytes) of a floopy disk. This is the boot sector.
- 0x08200ー0x34FFF: The content of a floopy disk(10 cylinders. Except IPL.)

### When execute OS
- 0x00000000ー0x000FFFFF: Use during startup phase, but becomes empty after that (1MB)  
- 0x00100000ー0x00267FFF: Content storage for a floppy disk (1440KB)  
- 0x00268000ー0x0026F7FF: Empty (30KB)  
- 0x0026F800ー0x0026FFFF: IDT (2KB) 
- 0x00270000ー0x0027FFFF: GDT (64KB)  
- 0x00280000ー0x002FFFFF: bootpack.brb (512KB)  
- 0x00300000ー0x003FFFFF: Stack etc. (1MB)  
- 0x00400000ー: Empty


## Environments
```
$ nasm -version
NASM version 2.11.08

$ qemu-system-i386 --version
QEMU emulator version 2.12.0

$ gcc --version
gcc (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609
```

## Debug
TODO: gdb-peda


### Start GDB
```
$ make debug
gdb
(gdb) target remote localhost:10000
```

```
$ gdb --args qemu-system-i386 -m 32 -rtc base=localtime -vga std -fda  os.img
```

Create a log file
```
$ qemu-system-i386 -monitor stdio -m 32 -rtc base=localtime -vga std -d cpu_reset -D ./a.log -fda os.img
```

Disassemble
```
$ objdump -D -m i386 -b binary os.img > os.txt
```

GDB
```
QEMU_ARGS = -L . -m 32 -localtime -vga std -fda fdimage0.bin -monitor stdio -s -S
$ make run
gdb -ex 'target remote localhost:1234'
```


### How to find breakpoint

```
$ gdb ./a.out
gpb> p <function_name>

OR

$ objdump -d a.out | grep -C 20 <function_name>
```

### Examples of usage
```
(gdb) b *0x7x00 // Create break point to the beginning of IPL
(gdb) c

(gdb) x/16bx $eip // Dump as a binary
(gdb) x/i $eip // Dump as a assembly
```

When initial boot loader.
https://speakerdeck.com/yuyabu/gong-kai-yong



## References
- BIOS settings: http://oswiki.osask.jp/?(AT)BIOS
- Memory maps: http://oswiki.osask.jp/?(AT)memorymap
- [VGA hardware](https://wiki.osdev.org/VGA_Hardware)
- [How to format to an img file](http://bttb.s1.valueserver.jp/wordpress/blog/2017/11/25/makeos-3-1/)
- [How to debug qemu by gdb](http://bttb.s1.valueserver.jp/wordpress/blog/2017/12/06/makeos-3-2/)
- [x86 Assembly/x86 Instructions](https://en.wikibooks.org/wiki/X86_Assembly/X86_Instructions)
- [x86 アセンブラ](https://ja.wikibooks.org/wiki/X86%E3%82%A2%E3%82%BB%E3%83%B3%E3%83%96%E3%83%A9)
- [10シリンダ分読み込んでみる](https://vanya.jp.net/os/load10/index.html)
