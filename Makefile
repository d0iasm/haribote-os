# The makefile of haribote OS

DEL = rm -f
GCC = gcc -c -m32 -fno-pic -nostdlib
LD = ld -m elf_i386 -T os.ls
# nasm:
# 	-f: Select an output format.
# 	ELF32 (i386) object files (e.g. Linux)
NASM_ELF32 = nasm -f elf32
NASM = nasm
QEMU = qemu-system-i386 -monitor stdio -m 32 -rtc base=localtime -vga std -fda  
FILES = bootpack.o console.o dsctbl.o fifo.o file.o graphic.o hankaku.o int.o keyboard.o libs.o memory.o mouse.o mtask.o nasmfunc.o sheet.o timer.o tsprintf.o window.o


# Commands
default:
	make run

%.o: %.c
	$(GCC) -o $*.o $*.c

apps:
	$(NASM) -o hlt.bin hlt.asm

ipl.bin: ipl10.asm
	$(NASM) -o ipl10.bin ipl10.asm

nasmhead.bin: nasmhead.asm
	$(NASM) -o nasmhead.bin nasmhead.asm 

nasmfunc.o: nasmfunc.asm
	$(NASM_ELF32) -o nasmfunc.o nasmfunc.asm

bootpack.bin: $(FILES)
	$(LD) -e hari_main -o bootpack.bin $(FILES)

os.sys: nasmhead.bin bootpack.bin
	cat nasmhead.bin bootpack.bin > os.sys

# mformat: Add an MSDOS file sys
# 	-f: Specifies the size of the DOS filesystem to format. 
# 	1440K, double-sided, 18 sectors per track, 80 cylinders (for 3 1/2 HD)
# 	-C: Creates the disk image file to install the MS-DOS filesystem on it.
#	-B: Use the bootsector stored in the given file or device, instead of using its own.	
# mcopy: Copy MSDOS files to/from Unix.
# :: To overwrite if a os.sys file exists already 
os.img: ipl.bin os.sys
	mformat -f 1440 -C -B ipl10.bin -i os.img ::
	mcopy -i os.img os.sys ::
	mcopy -i os.img hoge.txt ::
	mcopy -i os.img README.md ::
	mcopy -i os.img Makefile ::
	mcopy -i os.img hlt.bin :: 

run: os.img
	$(QEMU) os.img

clean:
	rm -f *.bin
	rm -f *.lst
	rm -f *.img
	rm -f *.o
	rm -f *.sys

debug: 
	$(QEMU) os.img -gdb tcp::10000 -S
