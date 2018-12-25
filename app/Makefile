# The makefile for applications.

DEL = rm -f
GCC = gcc -c -m32 -fno-pic -nostdlib
LD_API = ld --gc-sections -m elf_i386 -T api.ls

OBJS = $(patsubst %.c,%.o,$(wildcard *.c))
APPS = $(patsubst %.c,%.bin,$(wildcard *.c))

APILIBPATH = ../apilib/
LIBPATH = ../lib/

default:
	make build

%.o: %.c
	$(GCC) -o $*.o $*.c

%.bin: %.o
	$(LD_API) -e hari_main -o $*.bin $*.o $(APILIBPATH)apilib.a $(LIBPATH)libc.a

build: $(APPS)
	

clean:
	rm -f *.bin
	rm -f *.o
