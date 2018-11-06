// bootpack.c
#include <stdio.h>
#include "bootpack.h"


struct FILEINFO {
  unsigned char name[8], ext[3], type;
  char reserve[10];
  unsigned short time, data, clustno;
  unsigned int size;
};

void task_b_main(struct SHEET *sht) {
  struct FIFO32 fifo;
  struct TIMER *timer_1s;
  int i, fifobuf[128], count = 0, count0 = 0;
  char s[12];

  fifo32_init(&fifo, 128, fifobuf, 0);
  timer_1s = timer_alloc();
  timer_init(timer_1s, &fifo, 100);
  timer_settime(timer_1s, 100);

  for (;;) {
    count++;
    io_cli();
    if (fifo32_status(&fifo) == 0) {
      io_stihlt();
    } else {
      i = fifo32_get(&fifo);
      io_sti();
      if (i == 100) {
        tsprintf(s, "%d", count - count0);
        putfonts8_asc_sht(sht, 24, 28, COL8_000000, COL8_C6C6C6, s, 11);
        count0 = count;
        timer_settime(timer_1s, 100);
      }
    }
  }
}

void console_task(struct SHEET *sheet, unsigned int memtotal) {
  struct TIMER *timer;
  struct TASK *task = task_now();
  int i, fifobuf[128];
  int cursor_x = 16, cursor_y = 28, cursor_c = -1;
  int x, y;
  char s[30], cmdline[30];
  struct MEMMAN *memman = (struct MEMMAN *) MEMMAN_ADDR;
  struct FILEINFO *finfo = (struct FILEINFO *) (ADR_DISKIMG + 0x002600);

  fifo32_init(&task->fifo, 128, fifobuf, task);
  timer = timer_alloc();
  timer_init(timer, &task->fifo, 1);
  timer_settime(timer, 50);

  putfonts8_asc_sht(sheet, 8, 28, COL8_FFFFFF, COL8_000000, ">", 1);

  for (;;) {
    io_cli();
    if (fifo32_status(&task->fifo) == 0) {
      task_sleep(task);
      io_sti();
    } else {
      i = fifo32_get(&task->fifo);
      io_sti();
      if (i <= 1) { // timer for cursor
        if (i != 0) {
          timer_init(timer, &task->fifo, 0);
          if (cursor_c >= 0) {
            cursor_c = COL8_FFFFFF;
          }
        } else {
          timer_init(timer, &task->fifo, 1);
          if (cursor_c >= 0) {
            cursor_c = COL8_000000;
          }
        }
        timer_settime(timer, 50);
      }
      if (i == 2) { // cursor ON
        cursor_c = COL8_FFFFFF;
      }
      if (i == 3) {
        boxfill8(sheet->buf, sheet->bxsize, COL8_000000, cursor_x, 28, cursor_x + 7, 43);
        cursor_c = -1;
      }

      if (256 <= i && i <= 511) { // keyboard data through task A
        if (i == 8 + 256) { // back space
          if (cursor_x > 16) {
            putfonts8_asc_sht(sheet, cursor_x, cursor_y, COL8_FFFFFF, COL8_000000, " ", 1);
            cursor_x -= 8;
          }
        } else if (i == 10 + 256) { // enter
          putfonts8_asc_sht(sheet, cursor_x, cursor_y, COL8_FFFFFF, COL8_000000, " ", 1);
          cmdline[cursor_x / 8 - 2] = 0;
          cursor_y = cons_newline(cursor_y, sheet);

          if (strcmp(cmdline, "mem") == 0) { // command 'mem'
            tsprintf(s, "total %d MB", memtotal / (1024 * 1024));
            putfonts8_asc_sht(sheet, 8, cursor_y, COL8_FFFFFF, COL8_000000, s, 30);
            cursor_y = cons_newline(cursor_y, sheet);
            tsprintf(s, "free %d KB", memman_total(memman) / 1024);
            putfonts8_asc_sht(sheet, 8, cursor_y, COL8_FFFFFF, COL8_000000, s, 30);
            cursor_y = cons_newline(cursor_y, sheet);
            cursor_y = cons_newline(cursor_y, sheet);
          } else if (strcmp(cmdline, "clear") == 0) { // command 'clear'
            for (y = 28; y < 28 + 128; y++) {
              for (x = 8; x < 8 + 240; x++) {
                sheet->buf[x + y * sheet->bxsize] = COL8_000000;
              }
            }
            sheet_refresh(sheet, 8, 28, 8 + 240, 28 + 128);
            cursor_y = 28;
          } else if (strcmp(cmdline, "ls") == 0) { // command 'ls'
            for (x = 0; x < 224; x++) {
              if (finfo[x].name[0] == 0x00) { break; }
              if (finfo[x].name[0] != 0xe5) {
                if ((finfo[x].type & 0x18) == 0) {
                  tsprintf(s, "filename.ext %d", finfo[x].size);
                  for (y = 0; y < 8; y++) {
                    s[y] = finfo[x].name[y];
                  }
                  s[9] = finfo[x].ext[0];
                  s[10] = finfo[x].ext[1];
                  s[11] = finfo[x].ext[2];
                  putfonts8_asc_sht(sheet, 8, cursor_y, COL8_FFFFFF, COL8_000000, s, 30);
                  cursor_y = cons_newline(cursor_y, sheet);
                }
              }
            }
            cursor_y = cons_newline(cursor_y, sheet);
          } else if (cmdline[0] != 0) {
            putfonts8_asc_sht(sheet, 8, cursor_y, COL8_FFFFFF, COL8_000000, "bad command", 12);
            cursor_y = cons_newline(cursor_y, sheet);
            cursor_y = cons_newline(cursor_y, sheet);
          }

          putfonts8_asc_sht(sheet, 8, cursor_y, COL8_FFFFFF, COL8_000000, ">", 1);
          cursor_x = 16;
        } else { // normal characters
          if (cursor_x < 240) {
            s[0] = i - 256;
            s[1] = 0;
            cmdline[cursor_x / 8 - 2] = i - 256;
            putfonts8_asc_sht(sheet, cursor_x, cursor_y, COL8_FFFFFF, COL8_000000, s, 1);
            cursor_x += 8;
          }
        }
      }
      if (cursor_c >= 0) {
        boxfill8(sheet->buf, sheet->bxsize, cursor_c, cursor_x, cursor_y, cursor_x + 7, cursor_y + 15);
      }
      sheet_refresh(sheet, cursor_x, cursor_y, cursor_x + 8, cursor_y + 16);
    }
  }
}


void hari_main(void) {
  struct BOOTINFO *binfo = (struct BOOTINFO *) ADR_BOOTINFO;
  struct FIFO32 fifo;
  struct SHTCTL *shtctl;
  char s[40];
  int fifobuf[128];
  int mx, my, i, cursor_x, cursor_c;
  unsigned int memtotal;
  struct MOUSE_DEC mdec;
  struct MEMMAN *memman = (struct MEMMAN *) MEMMAN_ADDR;

  unsigned char *buf_back, buf_mouse[256], *buf_win, *buf_cons;
  struct SHEET *sht_back, *sht_mouse, *sht_win, *sht_cons;
  struct TASK *task_a, *task_cons;
  struct TIMER *timer;
  int key_to = 0, key_shift = 0, key_leds = (binfo->leds >> 4) & 7;

  init_gdtidt();
  init_pic();
  io_sti(); 
  fifo32_init(&fifo, 128, fifobuf, 0);
  init_pit();
  init_keyboard(&fifo, 256);
  enable_mouse(&fifo, 512, &mdec);
  io_out8(PIC0_IMR, 0xf8); 
  io_out8(PIC1_IMR, 0xef);

  memtotal = memtest(0x00400000, 0xbfffffff);
  memman_init(memman);
  memman_free(memman, 0x00001000, 0x0009e000); 
  memman_free(memman, 0x00400000, memtotal - 0x00400000);

  init_palette();
  shtctl = shtctl_init(memman, binfo->vram, binfo->scrnx, binfo->scrny);
  task_a = task_init(memman);
  fifo.task = task_a;
  task_run(task_a, 1, 2);

  /* sht_back */
  sht_back  = sheet_alloc(shtctl);
  buf_back  = (unsigned char *) memman_alloc_4k(memman, binfo->scrnx * binfo->scrny);
  sheet_setbuf(sht_back, buf_back, binfo->scrnx, binfo->scrny, -1); 
  init_screen8(buf_back, binfo->scrnx, binfo->scrny);

  /* sht_cons */
  sht_cons = sheet_alloc(shtctl);
  buf_cons = (unsigned char *) memman_alloc_4k(memman, 256 * 165);
  sheet_setbuf(sht_cons, buf_cons, 256, 165, -1); 
  make_window8(buf_cons, 256, 165, "console", 0);
  make_textbox8(sht_cons, 8, 28, 240, 128, COL8_000000);
  task_cons = task_alloc();
  task_cons->tss.esp = memman_alloc_4k(memman, 64 * 1024) + 64 * 1024 - 12;
  task_cons->tss.eip = (int) &console_task;
  task_cons->tss.es = 1 * 8;
  task_cons->tss.cs = 2 * 8;
  task_cons->tss.ss = 1 * 8;
  task_cons->tss.ds = 1 * 8;
  task_cons->tss.fs = 1 * 8;
  task_cons->tss.gs = 1 * 8;
  *((int *) (task_cons->tss.esp + 4)) = (int) sht_cons;
  *((int *) (task_cons->tss.esp + 8)) = memtotal;
  task_run(task_cons, 2, 2); /* level=2, priority=2 */

  /* sht_win */
  sht_win   = sheet_alloc(shtctl);
  buf_win   = (unsigned char *) memman_alloc_4k(memman, 160 * 52);
  sheet_setbuf(sht_win, buf_win, 144, 52, -1); 
  make_window8(buf_win, 144, 52, "task_a", 1);
  make_textbox8(sht_win, 8, 28, 128, 16, COL8_FFFFFF);
  cursor_x = 8;
  cursor_c = COL8_FFFFFF;
  timer = timer_alloc();
  timer_init(timer, &fifo, 1);
  timer_settime(timer, 50);

  /* sht_mouse */
  sht_mouse = sheet_alloc(shtctl);
  sheet_setbuf(sht_mouse, buf_mouse, 16, 16, 99);
  init_mouse_cursor8(buf_mouse, 99);
  mx = (binfo->scrnx - 16) / 2; 
  my = (binfo->scrny - 28 - 16) / 2;

  sheet_slide(sht_back,  0,  0);
  sheet_slide(sht_cons, 32,  4);
  sheet_slide(sht_win,  64, 56);
  sheet_slide(sht_mouse, mx, my);
  sheet_updown(sht_back,  0);
  sheet_updown(sht_cons,  1);
  sheet_updown(sht_win,   2);
  sheet_updown(sht_mouse, 3);
  // tsprintf(s, "(%d, %d)", mx, my);
  // putfonts8_asc_sht(sht_back, 0, 0, COL8_FFFFFF, COL8_008484, s, 10);
  // tsprintf(s, "memory %dMB   free : %dKB",
  // memtotal / (1024 * 1024), memman_total(memman) / 1024);
  // putfonts8_asc_sht(sht_back, 0, 32, COL8_FFFFFF, COL8_008484, s, 40);


  for (;;) {
    io_cli();
    if (fifo32_status(&fifo) == 0) {
      task_sleep(task_a);
      io_sti();
    } else {
      i = fifo32_get(&fifo);
      io_sti();
      if (256 <= i && i <= 511) { // keyboard data 
        // tsprintf(s, "%x", i - 256);
        // putfonts8_asc_sht(sht_back, 0, 16, COL8_FFFFFF, COL8_008484, s, 2);
        if (i < 0x80 + 256) { // convert keycode to char code
          if (key_shift == 0) {
            s[0] = keytable0[i - 256];
            if ('A' <= s[0] && s[0] <= 'Z') {
              s[0] += 0x20;
            }
          } else {
            s[0] = keytable1[i - 256];
          }
        } else {
          s[0] = 0;
        }

        if (s[0] != 0) { // normal character
          if (key_to == 0) { // task A
            if (cursor_x < 128) {
              s[1] = 0;
              putfonts8_asc_sht(sht_win, cursor_x, 28, COL8_000000, COL8_FFFFFF, s, 1);
              cursor_x += 8;
            }
          } else {	
            fifo32_put(&task_cons->fifo, s[0] + 256);
          }
        }

        if (i == 256 + 0x0e) { // back space	
          if (key_to == 0) { // task A 
            if (cursor_x > 8) {
              putfonts8_asc_sht(sht_win, cursor_x, 28, COL8_000000, COL8_FFFFFF, " ", 1);
              cursor_x -= 8;
            }
          } else { // console	
            fifo32_put(&task_cons->fifo, 8 + 256);
          }
        }
        if (i == 256 + 0x1c) { // enter
          if (key_to != 0) {
            fifo32_put(&task_cons->fifo, 10 + 256);
          }
        }
        if (i == 256 + 0x0f) { // tab
          if (key_to == 0) {
            key_to = 1;
            make_wtitle8(buf_win,  sht_win->bxsize,  "task_a",  0);
            make_wtitle8(buf_cons, sht_cons->bxsize, "console", 1);
            cursor_c = -1; // unvisible cursor
            boxfill8(sht_win->buf, sht_win->bxsize, COL8_FFFFFF, cursor_x, 28, cursor_x + 7, 43);
            fifo32_put(&task_cons->fifo, 2);
          } else {
            key_to = 0;
            make_wtitle8(buf_win,  sht_win->bxsize,  "task_a",  1);
            make_wtitle8(buf_cons, sht_cons->bxsize, "console", 0);
            cursor_c = COL8_000000;
            fifo32_put(&task_cons->fifo, 3);
          }
          sheet_refresh(sht_win,  0, 0, sht_win->bxsize,  21);
          sheet_refresh(sht_cons, 0, 0, sht_cons->bxsize, 21);
        }
        if (i == 256 + 0x2a) { // left shift ON
          key_shift |= 1;
        }
        if (i == 256 + 0x36) { // right shift ON
          key_shift |= 2;
        }
        if (i == 256 + 0xaa) { // left shift OFF
          key_shift &= ~1;
        }
        if (i == 256 + 0xb6) { // right shift OFF
          key_shift &= ~2;
        }
        if (cursor_c >= 0) {
          boxfill8(sht_win->buf, sht_win->bxsize, cursor_c, cursor_x, 28, cursor_x + 7, 43);
        }
        sheet_refresh(sht_win, cursor_x, 28, cursor_x + 8, 44);

      } else if (512 <= i && i <= 767) { // mouse data
        if (mouse_decode(&mdec, i - 512) != 0) {
          // tsprintf(s, "[lcr %d %d]", mdec.x, mdec.y);
          // if ((mdec.btn & 0x01) != 0) {
          // s[1] = 'L';
          // }
          // if ((mdec.btn & 0x02) != 0) {
          // s[3] = 'R';
          // }
          // if ((mdec.btn & 0x04) != 0) {
          // s[2] = 'C';
          // }
          // putfonts8_asc_sht(sht_back, 32, 16, COL8_FFFFFF, COL8_008484, s, 15);
          mx += mdec.x;
          my += mdec.y;
          if (mx < 0) {
            mx = 0;
          }
          if (my < 0) {
            my = 0;
          }
          if (mx > binfo->scrnx - 1) {
            mx = binfo->scrnx - 1;
          }
          if (my > binfo->scrny - 1) {
            my = binfo->scrny - 1;
          }
          // tsprintf(s, "(%d, %d)", mx, my);
          // putfonts8_asc_sht(sht_back, 0, 0, COL8_FFFFFF, COL8_008484, s, 10);
          sheet_slide(sht_mouse, mx, my);
          if ((mdec.btn & 0x01) != 0) {
            sheet_slide(sht_win, mx - 80, my - 8);
          }
        }
      } else if (i <= 1) { // timer for cursor 
        if (i != 0) {
          timer_init(timer, &fifo, 0); /* Í0ð */
          if (cursor_c >= 0) {
            cursor_c = COL8_000000;
          }
        } else {
          timer_init(timer, &fifo, 1); /* Í1ð */
          if (cursor_c >= 0) {
            cursor_c = COL8_FFFFFF;
          }
        }
        timer_settime(timer, 50);
        if (cursor_c >= 0) {
          boxfill8(sht_win->buf, sht_win->bxsize, cursor_c, cursor_x, 28, cursor_x + 7, 43);
          sheet_refresh(sht_win, cursor_x, 28, cursor_x + 8, 44);
        }
      }
    }
  }
}

