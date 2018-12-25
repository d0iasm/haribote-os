# The makefile of libraries.
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
