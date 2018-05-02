// bootpack.c
#include <stdio.h>
#include "bootpack.h"


extern struct FIFO8 keyfifo;
extern struct FIFO8 mousefifo;

void hari_main(void) {
  struct BOOTINFO *binfo = (struct BOOTINFO *) ADR_BOOTINFO;
  char s[40], mcursor[256], keybuf[32], mousebuf[128];
  int i;
  int mx = (binfo->scrnx - 16) / 2;
  int my = (binfo->scrny - 28 - 16) / 2;
  struct MOUSE_DEC mdec;

  init_gdtidt();
  init_pic();
  io_sti();

  fifo8_init(&keyfifo, 32, keybuf);
  fifo8_init(&mousefifo, 128, mousebuf);
  // Allow interruptions from keyboard and mouse
  io_out8(PIC0_IMR, 0xf9);
  io_out8(PIC1_IMR, 0xef);

  init_keyboard();
  enable_mouse(&mdec);
  
  init_palette();
  init_screen8(binfo->vram, binfo->scrnx, binfo->scrny);
  init_mouse_cursor8(mcursor, COL8_008484);
  putblock8_8(binfo->vram, binfo->scrnx, 16, 16, mx, my, mcursor, 16);
  tsprintf(s, "(%d, %d)", mx, my);
  putfonts8_asc(binfo->vram, binfo->scrnx, 0, 0, COL8_FFFFFF, s);

  i = memtest(0x00400000, 0xbfffffff) / (1024 * 1024);
  tsprintf(s, "memory %dMB", i);
  putfonts8_asc(binfo->vram, binfo->scrnx, 0, 32, COL8_FFFFFF, s);

  for (;;) {
    io_cli();
    if (fifo8_status(&keyfifo) + fifo8_status(&mousefifo) ==0) {
      io_stihlt();
    } else {
      if (fifo8_status(&keyfifo) != 0) {
        i = fifo8_get(&keyfifo);
        io_sti();
        tsprintf(s, "%x", i);
        boxfill8(binfo->vram, binfo->scrnx, COL8_008484, 0, 16, 15, 31);
        putfonts8_asc(binfo->vram, binfo->scrnx, 0, 16, COL8_FFFFFF, s);
      } else if (fifo8_status(&mousefifo) != 0) {
        i = fifo8_get(&mousefifo);
        io_sti();

        if (mouse_decode(&mdec, i) != 0) {
          tsprintf(s, "[lcr %d %d]", mdec.x, mdec.y);
          if ((mdec.btn & 0x01) != 0) {
            s[1] = 'L';
          }
          if ((mdec.btn & 0x02) != 0) {
            s[3] = 'R';
          }
          if ((mdec.btn & 0x04) != 0) {
            s[2] = 'C';
          }
          boxfill8(binfo->vram, binfo->scrnx, COL8_008484, 32, 16, 32 + 15 * 8 - 1, 31);
          putfonts8_asc(binfo->vram, binfo->scrnx, 32, 16, COL8_FFFFFF, s);
          boxfill8(binfo->vram, binfo->scrnx, COL8_008484, mx, my, mx + 15, my + 15);
          mx += mdec.x;
          my += mdec.y;
          if (mx < 0) {
            mx = 0;
          }
          if (my < 0) {
            my = 0;
          }
          if (mx > binfo->scrnx - 16) {
            mx = binfo->scrnx - 16;
          }
          if (my > binfo->scrny - 16) {
            my = binfo->scrny - 16;
          }
          tsprintf(s, "(%d, %d)", mx, my);
          boxfill8(binfo->vram, binfo->scrnx, COL8_008484, 0, 0, 79, 15);
          putfonts8_asc(binfo->vram, binfo->scrnx, 0, 0, COL8_FFFFFF, s);
          putblock8_8(binfo->vram, binfo->scrnx, 16, 16, mx, my, mcursor, 16);
        }
      }
    }
  }
}

unsigned int memtest(unsigned int start, unsigned int end) {
  char flg486 = 0;
  unsigned int eflg, cr0, i;

  // Check i386 or i486
  // 386では18bit目にあるAC flagが常に0
  // AC flagを1にして書き込んで、また読み出したときに0に戻っていたら386
  eflg = io_load_eflags();
  eflg |= EFLAGS_AC_BIT; // AC-bit = 1
  io_store_eflags(eflg);
  eflg = io_load_eflags();
  if ((eflg & EFLAGS_AC_BIT) != 0) {
    flg486 = 1;
  }
  eflg &= ~EFLAGS_AC_BIT; // AC-bit = 0
  io_store_eflags(eflg);

  if (flg486 != 0) {
    cr0 = load_cr0();
    cr0 |= CR0_CACHE_DISABLE; // Deny cache
    store_cr0(cr0);
  }

  i = memtest_sub(start, end);

  if (flg486 != 0) {
    cr0 = load_cr0();
    cr0 &= ~CR0_CACHE_DISABLE; // Allow cache
    store_cr0(cr0);
  }
  return i;
}

unsigned int memtest_sub(unsigned int start, unsigned int end) {
  unsigned int i, *p, old;
  unsigned int pat0 = 0xaa55aa55;
  unsigned int pat1 = 0x55aa55aa;

  for (i=start; i<=end; i+=0x1000) { // Check every 4kB
    p = (unsigned int *) (i + 0xffc); // Check 4 bytes at the end of 4kB
    old = *p;
    *p = pat0;
    *p ^= 0xffffffff; // Inversion
    if (*p != pat1) {
not_memory:
      *p = old;
      break;
    }
    *p ^= 0xffffffff;
    if (*p != pat0) {
      goto not_memory;
    }
    *p = old;
  }
  return i;
}
