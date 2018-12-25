# The makefile of haribote OS
DEL = rm -f
GCC = gcc -c -m32 -fno-pic -nostdlib
LD = ld --gc-sections -m elf_i386 -T os.ls
LD_API = ld --gc-sections -m elf_i386 -T api.ls
# nasm:
#	-f: Select an output format.
#	ELF32 (i386) object files (e.g. Linux)
NASM_ELF32 = nasm -f elf32
NASM = nasm
QEMU = qemu-system-i386 -monitor stdio -m 32 -rtc base=localtime -vga std -fda

OBJS = $(patsubst %.c,%.o,$(wildcard *.c)) 

APILIBPATH = ./apilib/
APPPATH = ./app/
FONTPATH = ./fonts/
LIBPATH = ./lib/

# Commands
default:
	make run

%.o: %.c
	$(GCC) -o $*.o $*.c

map:
	$(LD) -Map=bootpack.map -e hari_main -o bootpack.bin $(FILES)
	
ipl.bin: ipl10.asm
	$(NASM) -o ipl10.bin ipl10.asm

nasmhead.bin: nasmhead.asm
	$(NASM) -o nasmhead.bin nasmhead.asm

nasmfunc.o: nasmfunc.asm
	$(NASM_ELF32) -o nasmfunc.o nasmfunc.asm

bootpack.bin: $(OBJS) nasmfunc.o
	$(LD) -e hari_main -o bootpack.bin nasmfunc.o $(OBJS) $(FONTPATH)hankaku.o $(LIBPATH)libc.a

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
	mcopy -i os.img $(APPPATH)winhel.bin ::
	mcopy -i os.img $(APPPATH)winhel2.bin ::
	mcopy -i os.img $(APPPATH)star1.bin ::
	mcopy -i os.img $(APPPATH)lines.bin ::
	mcopy -i os.img $(APPPATH)walk.bin ::
	mcopy -i os.img $(APPPATH)color.bin ::
	mcopy -i os.img $(APPPATH)color2.bin ::
	# mcopy -i os.img $(APPPATH)noodle.bin ::

run: os.img
	$(QEMU) os.img

clean:
	$(DEL) *.bin
	$(DEL) *.lst
	$(DEL) *.img
	$(DEL) *.o
	$(DEL) *.sys
	$(DEL) *.map

debug:
	$(QEMU) os.img -gdb tcp::10000 -S
