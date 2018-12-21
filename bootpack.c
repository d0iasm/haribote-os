// bootpack.c
#include "bootpack.h"
#include <stdio.h>

void task_b_main(struct SHEET* sht)
{
  struct FIFO32 fifo;
  struct TIMER* timer_1s;
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

void change_wtitle8(struct SHEET* sht, char act)
{
  int x, y, xsize = sht->bxsize;
  char c, tc_new, tbc_new, tc_old, tbc_old, *buf = sht->buf;
  if (act != 0) {
    tc_new = COL8_FFFFFF;
    tbc_new = COL8_000084;
    tc_old = COL8_C6C6C6;
    tbc_old = COL8_848484;
  } else {
    tc_new = COL8_C6C6C6;
    tbc_new = COL8_848484;
    tc_old = COL8_FFFFFF;
    tbc_old = COL8_000084;
  }
  for (y = 3; y <= 20; y++) {
    for (x = 3; x <= xsize - 4; x++) {
      c = buf[y * xsize + x];
      if (c == tc_old && x <= xsize - 22) {
        c = tc_new;
      } else if (c == tbc_old) {
        c = tbc_new;
      }
      buf[y * xsize + x] = c;
    }
  }
  sheet_refresh(sht, 3, 3, xsize, 21);
  return;
}

void keywin_off(struct SHEET* key_win)
{
  change_wtitle8(key_win, 0);
  if ((key_win->flags & 0x20) != 0) {
    fifo32_put(&key_win->task->fifo, 3); // The cursor of a console ON.
  }
  return;
}

void keywin_on(struct SHEET* key_win)
{
  change_wtitle8(key_win, 1);
  if ((key_win->flags & 0x20) != 0) {
    fifo32_put(&key_win->task->fifo, 2); // The cursor of a console OFF.
  }
  return;
}

struct SHEET* open_console(struct SHTCTL* shtctl, unsigned int memtotal)
{
  struct MEMMAN* memman = (struct MEMMAN*)MEMMAN_ADDR;
  struct SHEET* sht = sheet_alloc(shtctl);
  unsigned char* buf = (unsigned char*)memman_alloc_4k(memman, 256 * 165);
  struct TASK* task = task_alloc();
  int* cons_fifo = (int*)memman_alloc_4k(memman, 128 * 4);
  sheet_setbuf(sht, buf, 256, 165, -1); // No transparent color.
  make_window8(buf, 256, 165, "console", 0);
  make_textbox8(sht, 8, 28, 240, 128, COL8_000000);
  task->tss.esp = memman_alloc_4k(memman, 64 * 1024) + 64 * 1024 - 12;
  task->tss.eip = (int)&console_task;
  task->tss.es = 1 * 8;
  task->tss.cs = 2 * 8;
  task->tss.ss = 1 * 8;
  task->tss.ds = 1 * 8;
  task->tss.fs = 1 * 8;
  task->tss.gs = 1 * 8;
  *((int*)(task->tss.esp + 4)) = (int)sht;
  *((int*)(task->tss.esp + 8)) = memtotal;
  task_run(task, 2, 2); /* level=2, priority=2 */
  sht->task = task;
  sht->flags |= 0x20; // Cursor flag.
  fifo32_init(&task->fifo, 128, cons_fifo, task);
  return sht;
}

void hari_main(void)
{
  struct BOOTINFO* binfo = (struct BOOTINFO*)ADR_BOOTINFO;
  struct FIFO32 fifo;
  struct SHTCTL* shtctl;
  char s[40];
  int fifobuf[128], *cons_fifo[2];
  int mx, my, i;
  unsigned int memtotal;
  struct MOUSE_DEC mdec;
  struct MEMMAN* memman = (struct MEMMAN*)MEMMAN_ADDR;
  struct CONSOLE* cons;

  unsigned char *buf_back, buf_mouse[256], *buf_cons[2];
  struct SHEET *sht_back, *sht_mouse, *sht_win, *sht_cons[2];
  struct TASK *task_a, *task_cons[2], *task;
  int key_to = 0, key_shift = 0, key_leds = (binfo->leds >> 4) & 7;

  int j, x, y, mmx = -1, mmy = -1;
  struct SHEET *sht = 0, *key_win;

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

  *((int*)0x0fe4) = (int)shtctl;

  /* sht_back */
  sht_back = sheet_alloc(shtctl);
  buf_back = (unsigned char*)memman_alloc_4k(memman, binfo->scrnx * binfo->scrny);
  sheet_setbuf(sht_back, buf_back, binfo->scrnx, binfo->scrny, -1);
  init_screen8(buf_back, binfo->scrnx, binfo->scrny);

  /* sht_cons */
  sht_cons[0] = open_console(shtctl, memtotal);
  sht_cons[1] = 0; // Not open yet.

  /* sht_mouse */
  sht_mouse = sheet_alloc(shtctl);
  sheet_setbuf(sht_mouse, buf_mouse, 16, 16, 99);
  init_mouse_cursor8(buf_mouse, 99);
  mx = (binfo->scrnx - 16) / 2;
  my = (binfo->scrny - 28 - 16) / 2;

  sheet_slide(sht_back, 0, 0);
  sheet_slide(sht_cons[0], 32, 4);
  sheet_slide(sht_mouse, mx, my);
  sheet_updown(sht_back, 0);
  sheet_updown(sht_cons[0], 1);
  sheet_updown(sht_mouse, 2);
  key_win = sht_cons[0];
  keywin_on(key_win);

  for (;;) {
    io_cli();
    if (fifo32_status(&fifo) == 0) {
      task_sleep(task_a);
      io_sti();
    } else {
      i = fifo32_get(&fifo);
      io_sti();
      if (key_win->flags == 0) { // Close a input window.
        key_win = shtctl->sheets[shtctl->top - 1];
      }
      if (256 <= i && i <= 511) { // Keyboard data.
        if (i < 0x80 + 256) {     // Convert keycode to char code.
          if (key_shift == 0) {
            s[0] = keytable0[i - 256];
          } else {
            s[0] = keytable1[i - 256];
          }
        } else {
          s[0] = 0;
        }
        if ('A' <= s[0] && s[0] <= 'Z') {
          s[0] += 0x20;
        }

        if (s[0] != 0) { // Normal character.
          fifo32_put(&key_win->task->fifo, s[0] + 256);
        }

        if (i == 256 + 0x0f) { // Tab.
          keywin_off(key_win);
          j = key_win->height - 1;
          if (j == 0) {
            j = shtctl->top - 1;
          }
          key_win = shtctl->sheets[j];
          keywin_on(key_win);
        }

        if (i == 256 + 0x0e) { // Back space.
          fifo32_put(&key_win->task->fifo, 8 + 256);
        }

        if (i == 256 + 0x1c) {      // Enter.
          if (key_win != sht_win) { // Go to a console.
            fifo32_put(&key_win->task->fifo, 10 + 256);
          }
        }

        if (i == 256 + 0x01) {
          // Terminate forcefully when escape key is pressed.
          task = key_win->task;
          if (task != 0 && task->tss.ss0 != 0) {
            cons_putstr0(task->cons, "\nBreak(key) :\n");
            io_cli();
            // Avoid to change a task while changing registers.
            task->tss.eax = (int)&(task->tss.esp0);
            task->tss.eip = (int)asm_end_app;
            io_sti();
          }
        }

        if (i == 256 + 0x39 && shtctl->top > 2) {
          // Switch a window when space key is pressed.
          sheet_updown(shtctl->sheets[1], shtctl->top - 1);
        }

        if (i == 256 + 0x14 && key_shift != 0 && sht_cons[1] == 0) {
          // Open a new console window when "shift + T" are pressed.
          sht_cons[1] = open_console(shtctl, memtotal);
          sheet_slide(sht_cons[1], 32, 4);
          sheet_updown(sht_cons[1], shtctl->top);
          keywin_off(key_win);
          key_win = sht_cons[1];
          keywin_on(key_win);
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

      } else if (512 <= i && i <= 767) { // Mouse data.
        if (mouse_decode(&mdec, i - 512) != 0) {
          // Move a mouse corsor.
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
          sheet_slide(sht_mouse, mx, my);
          if ((mdec.btn & 0x01) != 0) {
            // Press the left button of a mouse.
            if (mmx < 0) {
              // Normal mode.
              // Search the window pointing by a cursor from the top.
              for (j = shtctl->top - 1; j > 0; j--) {
                sht = shtctl->sheets[j];
                x = mx - sht->vx0;
                y = my - sht->vy0;
                if (0 <= x && x < sht->bxsize && 0 <= y && y < sht->bysize) {
                  if (sht->buf[y * sht->bxsize + x] != sht->col_inv) {
                    sheet_updown(sht, shtctl->top - 1);
                    if (sht != key_win) {
                      // Change a focused window by click.
                      keywin_off(key_win);
                      key_win = sht;
                      keywin_on(key_win);
                    }
                    if (3 <= x && x < sht->bxsize - 3 && 3 <= y && y < 21) {
                      mmx = mx; // Go to the window move mode.
                      mmy = my;
                    }
                    if (sht->bxsize - 21 <= x && x < sht->bxsize - 5 && 5 <= y && y < 19) {
                      // Click "x" button.
                      if ((sht->flags & 0x10) != 0) { // The window created by a window or not?
                        task = sht->task;
                        cons_putstr0(task->cons, "\n Break(mouse) : \n");
                        io_cli(); // To avoid to change a task while terminating forcefully.
                        task->tss.eax = (int)&(task->tss.esp0);
                        task->tss.eip = (int)asm_end_app;
                        io_sti();
                      }
                    }
                    break;
                  }
                }
              }
            } else {
              // Window move mode.
              x = mx - mmx; // Calcurate the amount of movement.
              y = my - mmy;
              sheet_slide(sht, sht->vx0 + x, sht->vy0 + y);
              mmx = mx;
              // Update the position after moving.
              mmy = my;
            }
          } else {
            // Not press the left button of a mouse.
            mmx = -1; // Go to the normal mode.
          }
        }
      }
    }
  }
}
