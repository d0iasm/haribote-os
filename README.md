# haribote-os
A haribote OS. Just run it by `$ make run`.


## Debug

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
$ objdump -D -Mintel i386 -m i386 -b binary os.img > os.txt
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


## Memory maps
ipl10.nas 終了時
アドレス	内容
0x07C00ー0x07DFF	IPL。フロッピーの先頭１セクタ（ブートセクタ）
0x08200ー0x34FFF	フロッピーの内容（10シリンダ分。IPLを除く）

OS実行時
アドレス	内容
0x00000000ー0x000FFFFF	起動中にいろいろ使うけど、その後は空き(1MB)
0x00100000ー0x00267FFF	FDの内容記憶用(1440KB)
0x00268000ー0x0026F7FF	空き(30KB)
0x0026F800ー0x0026FFFF	IDT(2KB)
0x00270000ー0x0027FFFF	GDT(64KB)
0x00280000ー0x002FFFFF	bootpack.hrb(512KB)
0x00300000ー0x003FFFFF	スタックなど(1MB)
0x00400000ー	空き


## Dependencies
```
$ nasm -version
NASM version 2.11.08

$ qemu-system-i386 --version
QEMU emulator version 2.12.0

$ gcc --version
gcc (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609
```

## References
- BIOS settings: http://oswiki.osask.jp/?(AT)BIOS
- Memory maps: http://oswiki.osask.jp/?(AT)memorymap
- [VGA hardware](https://wiki.osdev.org/VGA_Hardware)
- [How to format to an img file](http://bttb.s1.valueserver.jp/wordpress/blog/2017/11/25/makeos-3-1/)
- [How to debug qemu by gdb](http://bttb.s1.valueserver.jp/wordpress/blog/2017/12/06/makeos-3-2/)
- [x86 Assembly/x86 Instructions](https://en.wikibooks.org/wiki/X86_Assembly/X86_Instructions)
- [x86 アセンブラ](https://ja.wikibooks.org/wiki/X86%E3%82%A2%E3%82%BB%E3%83%B3%E3%83%96%E3%83%A9)
