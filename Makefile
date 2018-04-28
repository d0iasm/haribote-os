# The makefile of haribote OS

# Variables
IPL = ipl10
HEADER = haribote

# Commands
default:
	make img

ipl.bin: $(IPL).asm Makefile
	nasm $(IPL).asm -o $(IPL).bin -l $(IPL).lst

haribote.sys: $(HEADER).asm Makefile
	nasm $(HEADER).asm -o $(HEADER).sys -l $(HEADER).lst


# mformat: Add an MSDOS file system to a low-level formatted floppy disk.
# 	-f: Specifies the size of the DOS filesystem to format. 
# 	1440K, double-sided, 18 sectors per track, 80 cylinders (for 3 1/2 HD)
# 	-C: Creates the disk image file to install the MS-DOS filesystem on it.
#	-B: Use the bootsector stored in the given file or device, instead of using its own.
#	
# mcopy: 
haribote.img: $(IPL).bin $(HEADER).sys Makefile
	mformat -f 1440 -C -B $(IPL).bin -i $(HEADER).img ::
	mcopy $(HEADER).sys -i $(HEADER).img ::

asm:
	make -r ipl.bin

img:
	make -r $(HEADER).sys
	make -r $(HEADER).img

run:
	make asm
	make img
	qemu-system-i386 -fda $(HEADER).img

clean:
	rm *.bin
	rm *.lst
	rm *.img
	rm *.o
	rm *.sys

