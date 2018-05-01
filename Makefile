# The makefile of haribote OS

DEL = rm -f
GCC = gcc -c -m32 -fno-pic -nostdlib
LD = ld -m elf_i386 -T os.ls
# nasm:
# 	-f: Select an output format.
# 	ELF32 (i386) object files (e.g. Linux)
NASM_ELF32 = nasm -f elf32
NASM = nasm


# Commands
default:
	make run

%.o: %.c
	$(GCC) -o $*.o $*.c

ipl.bin: ipl10.asm
	$(NASM) -o ipl10.bin ipl10.asm

nasmhead.bin: nasmhead.asm
	$(NASM) -o nasmhead.bin nasmhead.asm 

nasmfunc.o: nasmfunc.asm
	$(NASM_ELF32) -o nasmfunc.o nasmfunc.asm

bootpack.bin: bootpack.o dsctbl.o fifo.o graphic.o hankaku.o int.o nasmfunc.o tsprintf.o 
	$(LD) -e hari_main -o bootpack.bin bootpack.o dsctbl.o fifo.o graphic.o hankaku.o int.o nasmfunc.o tsprintf.o 

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

run: os.img
	qemu-system-i386 -fda os.img

clean:
	rm -f *.bin
	rm -f *.lst
	rm -f *.img
	rm -f *.o
	rm -f *.sys

debug: 
	qemu-system-i386 \
	  -m 32 \
	  -rtc base=localtime \
	  -vga std \
	  -fda os.img \
	  -gdb tcp::10000 -S &
