# The makefile of haribote OS

DEL = rm -f
GCC = gcc -c -m32 -fno-pic -nostdlib
LD_API = ld -m elf_i386 -T api.ls
# nasm:
#	-f: Select an output format.
#	ELF32 (i386) object files (e.g. Linux)
NASM_ELF32 = nasm -f elf32
NASM = nasm


# Commands
default:
	make build

build:
	$(NASM) -o hello.bin hello.asm
	$(NASM) -o hello2.bin hello2.asm
	$(GCC) -o hello3.o hello3.c
	$(GCC) -o hello4.o hello4.c
	$(NASM_ELF32) -o apifunc.o apifunc.asm
	$(LD_API) -e hari_main -o hello3.bin apifunc.o hello3.o
	$(LD_API) -e hari_main -o hello4.bin apifunc.o hello4.o

clean:
	$(DEL) *.bin
	$(DEL) *.o

