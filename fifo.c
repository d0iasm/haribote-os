// fifo.c: Queue
#include "bootpack.h"


void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf) {
  fifo->size = size;
  fifo->buf = buf;
  fifo->free = size;
  fifo->flags = 0;
  fifo->p = 0; // Write position
  fifo->q = 0; // Read position
  return;
}

int d = 1000;
int fifo8_put(struct FIFO8 *fifo, unsigned char data) {
  struct BOOTINFO *binfo = (struct BOOTINFO *) ADR_BOOTINFO;
  char s[50];
  io_sti();
  tsprintf(s, "%d", d);
  boxfill8(binfo->vram, binfo->scrnx, COL8_008484, 32, 100, 47, 31);
  putfonts8_asc(binfo->vram, binfo->scrnx, 32, 100, COL8_FFFFFF, s);
  d++;

  if (fifo->free == 0) {
    fifo->flags |= FLAGS_OVERRUN;
    return -1;
  }
  fifo->buf[fifo->p] = data;
  fifo->p++;
  if (fifo->p == fifo->size) {
    fifo->p = 0;
  }
  fifo->free--;
  return 0;
}

int fifo8_get(struct FIFO8 *fifo) {
  int data;
  if (fifo->free == fifo->size) {
    return -1;
  }
  data = fifo->buf[fifo->q];
  fifo->q++;
  if (fifo->q == fifo->size) {
    fifo->q = 0;
  }
  fifo->free++;
  return data;
}

int fifo8_status(struct FIFO8 *fifo) {
  return fifo->size - fifo->free;
}
