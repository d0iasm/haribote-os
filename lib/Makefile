# The makefile of libraries.
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
FILES = $*.o
# FILES = strcmp.o strncmp.o tsprintf.o 

# Commands
default:
	make build

%.o: %.c
	$(GCC) -o $*.o $*.c

build: $(FILES)
	$(AR) libc.a $(FILES)

build_ar_only: build
	$(DEL) *.o

check_ar: build
	ar t libc.a

clean:
	$(DEL) *.o
	$(DEL) *.a
