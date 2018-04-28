# The makefile of haribote OS

# Variables
IPL = ipl10
HEADER = asmhead
FUNC = nasmfunc
BOOTPACK = bootpack
# CORE = haribote

# Commands
default:
	make run

ipl.bin: $(IPL).asm Makefile
	nasm $(IPL).asm -o $(IPL).bin

asmhead.bin: $(HEADER).asm
	nasm $(HEADER).asm -o $(HEADER).bin

# nasm:
# 	-f: Select an output format.
# 	ELF32 (i386) object files (e.g. Linux)
nasmfunc.o: $(FUNC).asm
	nasm -f elf32 -o $(FUNC).o $(FUNC).asm

bootpack.o: $(BOOTPACK).c
	gcc -c -m32 -fno-pic -o $(BOOTPACK).o $(BOOTPACK).c

bootpack.bin: $(BOOTPACK).o $(FUNC).o
	ld -m elf_i386 -e HariMain -o $(BOOTPACK).bin -T os.ls $(BOOTPACK).o $(FUNC).o

os.sys: $(HEADER).bin $(BOOTPACK).bin
	cat $(HEADER).bin $(BOOTPACK).bin > os.sys

# mformat: Add an MSDOS file sys
# 	-f: Specifies the size of the DOS filesystem to format. 
# 	1440K, double-sided, 18 sectors per track, 80 cylinders (for 3 1/2 HD)
# 	-C: Creates the disk image file to install the MS-DOS filesystem on it.
#	-B: Use the bootsector stored in the given file or device, instead of using its own.	
# mcopy: Copy MSDOS files to/from Unix.
os.img: $(IPL).bin os.sys
	mformat -f 1440 -C -B $(IPL).bin -i os.img ::
	mcopy -i os.img os.sys ::

run:
	qemu-system-i386 -fda os.img

clean:
	rm -f *.bin
	rm -f *.lst
	rm -f *.img
	rm -f *.o
	rm -f *.sys
	rm -f *.ls

debug: 
	qemu-system-i386 -m 32 -localtime -vga std -fda os.img -gdb tcp::10000 -S &
