# The makefile for api library.

AR = ar r
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

FILES = bootpack.o console.o dsctbl.o fifo.o file.o graphic.o int.o keyboard.o memory.o mouse.o mtask.o nasmfunc.o sheet.o timer.o window.o
OBJS = $(patsubst %.asm,%.o,$(wildcard *.asm))

APILIBPATH = ./apilib/
APPPATH = ./app/
FONTPATH = ./fonts/
LIBPATH = ./lib/

%.o: %.asm
	$(NASM_ELF32) -o $*.o $*.asm

build: $(OBJS)
	$(AR) apilib.a $(OBJS)

check_ar: build
	ar t apilib.a

clean:
	rm -f *.bin
	rm -f *.lst
	rm -f *.img
	rm -f *.o
	rm -f *.sys
	rm -f *.map

