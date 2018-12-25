# The makefile for standard C library.
# Include libc.h and link libc.a in order to use these functions.
# USAGE:
# 	#include "<path-to-lib>/libc.h"; // in C file.
#
# 	$ ld -o exefile <path-to-lib>/libc.a // in Shell command.

AR = ar r
DEL = rm -f
GCC = gcc -c -m32 -fno-pic -nostdlib

OBJS = $(patsubst %.c,%.o,$(wildcard *.c))

default:
	make build

%.o: %.c
	$(GCC) -o $*.o $*.c

build: $(OBJS)
	$(AR) libc.a $(OBJS)

build_ar_only: build
	$(DEL) *.o

check_ar: build
	ar t libc.a

clean:
	$(DEL) *.o
	$(DEL) *.a
