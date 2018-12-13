# The makefile for evil apps

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
	$(GCC) -o crack1.o crack1.c
	$(NASM_ELF32) -o a_nasm.o a_nasm.asm
	$(NASM) -o crack2.bin crack2.asm
	$(NASM) -o crack3.bin crack3.asm
	$(NASM) -o crack4.bin crack4.asm
	$(NASM) -o crack5.bin crack5.asm
	$(LD_API) -Map=api.map -e hari_main -o crack1.bin a_nasm.o crack1.o

clean:
	$(DEL) *.bin
	$(DEL) *.o
	$(DEL) *.map
