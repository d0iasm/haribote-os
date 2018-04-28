# The makefile of haribote OS

# Variables
IPL = ipl10
HEADER = asmhead
CORE = haribote

# Commands
default:
	make img

ipl.bin: $(IPL).asm Makefile
	nasm $(IPL).asm -o $(IPL).bin -l $(IPL).lst

asmhead.bin: $(HEADER).asm Makefile
	nasm $(HEADER).asm -o $(HEADER).bin -l $(HEADER).lst

haribote.sys: $(CORE).asm Makefile
	nasm $(CORE).asm -o $(CORE).sys -l $(CORE).lst


# mformat: Add an MSDOS file system to a low-level formatted floppy disk.
# 	-f: Specifies the size of the DOS filesystem to format. 
# 	1440K, double-sided, 18 sectors per track, 80 cylinders (for 3 1/2 HD)
# 	-C: Creates the disk image file to install the MS-DOS filesystem on it.
#	-B: Use the bootsector stored in the given file or device, instead of using its own.
#	
# mcopy: 
haribote.img: $(IPL).bin $(CORE).sys Makefile
	mformat -f 1440 -C -B $(IPL).bin -i $(CORE).img ::
	mcopy $(CORE).sys -i $(CORE).img ::

asm:
	make -r ipl.bin

img:
	make -r $(CORE).sys
	make -r $(CORE).img

run:
	make asm
	make img
	qemu-system-i386 -fda $(CORE).img

clean:
	rm -f *.bin
	rm -f *.lst
	rm -f *.img
	rm -f *.o
	rm -f *.sys

