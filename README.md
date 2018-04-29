# haribote-os
A haribote OS. Just run it by `$ make run`.


## Debug

### Start GDB
```
$ make debug
gdb
(gdb) target remote localhost:10000
```

### Examples of usage
```
(gdb) b *0x7x00 // Create break point to the beginning of IPL
(gdb) c

(gdb) x/16bx $eip // Dump as a binary
(gdb) x/i $eip // Dump as a assembly
```

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
- VGA hardware: https://wiki.osdev.org/VGA_Hardware
- How to format to an img file: http://bttb.s1.valueserver.jp/wordpress/blog/2017/11/25/makeos-3-1/
- How to debug qemu by gdb: http://bttb.s1.valueserver.jp/wordpress/blog/2017/12/06/makeos-3-2/

