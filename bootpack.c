// bootpack.c
#include <stdio.h>
#include "bootpack.h"


void hari_main(void) {
  struct BOOTINFO *binfo = (struct BOOTINFO *) 0x0ff0;
  extern char hankaku[4096];

  init_palette();
  init_screen(binfo->vram, binfo->scrnx, binfo->scrny);

  putfont8(binfo->vram, binfo->scrnx, 10, 10, COL8_FFFFFF, hankaku + 'A' * 16);
  putfont8(binfo->vram, binfo->scrnx, 20, 10, COL8_FFFFFF, hankaku + 'B' * 16);
  putfont8(binfo->vram, binfo->scrnx, 30, 10, COL8_FFFFFF, hankaku + 'C' * 16);
  putfont8(binfo->vram, binfo->scrnx, 50, 10, COL8_FFFFFF, hankaku + '1' * 16);
  putfont8(binfo->vram, binfo->scrnx, 60, 10, COL8_FFFFFF, hankaku + '2' * 16);
  putfont8(binfo->vram, binfo->scrnx, 70, 10, COL8_FFFFFF, hankaku + '3' * 16);

  putfonts8_asc(binfo->vram, binfo->scrnx, 31, 31, COL8_000000, "Haribote OS.");
  putfonts8_asc(binfo->vram, binfo->scrnx, 30, 30, COL8_FFFFFF, "Haribote OS.");

  char s[40];
  tsprintf(s, "scrnx = %d", binfo->scrnx);
  putfonts8_asc(binfo->vram, binfo->scrnx, 10, 60, COL8_FFFFFF, s);

  char mcursor[256];
  int mx = (binfo->scrnx - 16) / 2;
  int my = (binfo->scrny - 28 - 16) / 2;
  init_mouse_cursor8(mcursor, COL8_008484);
  putblock8_8(binfo->vram, binfo->scrnx, 16, 16, mx, my, mcursor, 16);

  for(;;) {
    io_hlt();
  }
}

