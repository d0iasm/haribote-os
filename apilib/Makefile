# The makefile for api library.
# Include apilib.h and link apilib.a in order to use these functions.
# USAGE:
# 	#include "<path-to-apilib>/apilib.h"; // in C file.
#
# 	$ ld -o exefile <path-to-apilib>/apilib.a // in Shell command.

AR = ar r
DEL = rm -f
NASM_ELF32 = nasm -f elf32

OBJS = $(patsubst %.asm,%.o,$(wildcard *.asm))

default:
	make build

%.o: %.asm
	$(NASM_ELF32) -o $*.o $*.asm

build: $(OBJS)
	$(AR) apilib.a $(OBJS)

build_ar_only: build
	$(DEL) *.o

check_ar: build_ar_only
	ar t apilib.a

clean:
	$(DEL) *.o
	$(DEL) *.a
	
