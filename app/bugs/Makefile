# The makefile of haribote OS

DEL = rm -f
GCC = gcc -c -m32 -fno-pic -nostdlib
LD_API = ld -m elf_i386 -T api.ls
# nasm:
#	-f: Select an output format.
#	ELF32 (i386) object files (e.g. Linux)
NASM_ELF32 = nasm -f elf32


# Commands
default:
	make build

build:
	$(NASM_ELF32) -o apifunc.o apifunc.asm
	$(GCC) -o bug1.o bug1.c
	$(LD_API) -e hari_main -o bug1.bin apifunc.o bug1.o
	$(GCC) -o bug2.o bug2.c
	$(LD_API) -e hari_main -o bug2.bin apifunc.o bug2.o
	$(GCC) -o bug3.o bug3.c
	$(LD_API) -e hari_main -o bug3.bin apifunc.o bug3.o
	
clean:
	$(DEL) *.bin
	$(DEL) *.o
	
