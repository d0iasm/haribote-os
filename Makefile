# The makefile of haribote OS
DEL = rm -f
GCC = gcc -c -m32 -fno-pic -nostdlib
LD = ld -m elf_i386 -T os.ls
LD_API = ld -m elf_i386 -T api.ls
# nasm:
#	-f: Select an output format.
#	ELF32 (i386) object files (e.g. Linux)
NASM_ELF32 = nasm -f elf32
NASM = nasm
QEMU = qemu-system-i386 -monitor stdio -m 32 -rtc base=localtime -vga std -fda
FILES = bootpack.o console.o dsctbl.o fifo.o file.o graphic.o hankaku.o int.o keyboard.o libs.o memory.o mouse.o mtask.o nasmfunc.o sheet.o timer.o tsprintf.o window.o


# Commands
default:
	make run

%.o: %.c
	$(GCC) -o $*.o $*.c

map:
	$(LD) -Map=bootpack.map -e hari_main -o bootpack.bin $(FILES)

apps:
	$(NASM_ELF32) -o apifunc.o apifunc.asm
	$(GCC) -o winhello.o winhello.c
	$(LD_API) -e hari_main -o winhello.bin apifunc.o winhello.o
	$(GCC) -o winhello2.o winhello2.c
	$(LD_API) -e hari_main -o winhel2.bin apifunc.o winhello2.o
	$(GCC) -o star1.o star1.c
	$(LD_API) -e hari_main -o star1.bin apifunc.o star1.o
	$(GCC) -o lines.o lines.c
	$(LD_API) -e hari_main -o lines.bin apifunc.o lines.o
	$(GCC) -o walk.o walk.c
	$(LD_API) -e hari_main -o walk.bin apifunc.o walk.o
	# TODO: Fix the error
	# ld: section .data VMA [0000000000000400,000000000000050f] overlaps section .text VMA [0000000000000030,00000000000006bd]
	# $(GCC) -o noodle.o noodle.c
	# $(LD_API) -e hari_main -o noodle.bin apifunc.o tsprintf.o noodle.o
	
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
#	-f: Specifies the size of the DOS filesystem to format.
#	1440K, double-sided, 18 sectors per track, 80 cylinders (for 3 1/2 HD)
#	-C: Creates the disk image file to install the MS-DOS filesystem on it.
#	-B: Use the bootsector stored in the given file or device, instead of using its own.
# mcopy: Copy MSDOS files to/from Unix.
# :: To overwrite if a os.sys file exists already
os.img: ipl.bin os.sys
	mformat -f 1440 -C -B ipl10.bin -i os.img ::
	mcopy -i os.img os.sys ::
	mcopy -i os.img hoge.txt ::
	mcopy -i os.img Makefile ::
	mcopy -i os.img winhello.bin ::
	mcopy -i os.img winhel2.bin ::
	mcopy -i os.img star1.bin ::
	mcopy -i os.img lines.bin ::
	mcopy -i os.img walk.bin ::
	# mcopy -i os.img noodle.bin ::

run: os.img
	$(QEMU) os.img

clean:
	rm -f *.bin
	rm -f *.lst
	rm -f *.img
	rm -f *.o
	rm -f *.sys
	rm -f *.map

debug:
	$(QEMU) os.img -gdb tcp::10000 -S
