// console.c: Do tasks on a console.
#include "bootpack.h"


void console_task(struct SHEET *sheet, unsigned int memtotal) {
  struct TIMER *timer;
  struct TASK *task = task_now();
  struct MEMMAN *memman = (struct MEMMAN *) MEMMAN_ADDR;
  int i, fifobuf[128], *fat = (int *) memman_alloc_4k(memman, 4 * 2880);
  struct CONSOLE cons;
  char cmdline[30];
  cons.sht = sheet;
  cons.cur_x =  8;
  cons.cur_y = 28;
  cons.cur_c = -1;
  *((int *) 0x0fec) = (int) &cons;

  fifo32_init(&task->fifo, 128, fifobuf, task);
  timer = timer_alloc();
  timer_init(timer, &task->fifo, 1);
  timer_settime(timer, 50);
  file_readfat(fat, (unsigned char *) (ADR_DISKIMG + 0x000200));

  // Show a prompt.
  cons_putchar(&cons, '>', 1);

  for (;;) {
    io_cli();
    if (fifo32_status(&task->fifo) == 0) {
      task_sleep(task);
      io_sti();
    } else {
      i = fifo32_get(&task->fifo);
      io_sti();
      if (i <= 1) { // Timer for a cursor.
        if (i != 0) {
          timer_init(timer, &task->fifo, 0); // Next is 0.
          if (cons.cur_c >= 0) {
            cons.cur_c = COL8_FFFFFF;
          }
        } else {
          timer_init(timer, &task->fifo, 1); // Next is 1.
          if (cons.cur_c >= 0) {
            cons.cur_c = COL8_000000;
          }
        }
        timer_settime(timer, 50);
      }
      if (i == 2) { // Make a cursor ON. 
        cons.cur_c = COL8_FFFFFF;
      }
      if (i == 3) { // Make a cursor OFF.
        boxfill8(sheet->buf, sheet->bxsize, COL8_000000, cons.cur_x, cons.cur_y, cons.cur_x + 7, cons.cur_y + 15);
        cons.cur_c = -1;
      }
      if (256 <= i && i <= 511) { // Keyboard data through task A. 
        if (i == 8 + 256) {
          // Backspace.
          if (cons.cur_x > 16) {
            // Move a cursor back one after it's hiddden by white spaces.
            cons_putchar(&cons, ' ', 0);
            cons.cur_x -= 8;
          }
        } else if (i == 10 + 256) {
          // Enter.
          // Insert a new line after a cursor is hidden by white spaces.
          cons_putchar(&cons, ' ', 0);
          cmdline[cons.cur_x / 8 - 2] = 0;
          cons_newline(&cons);
          // Execute a command.
          cons_runcmd(cmdline, &cons, fat, memtotal);	
          cons_putchar(&cons, '>', 1);
        } else {
          // Normal characters.
          if (cons.cur_x < 240) {
            // Move a cursor to the next position after one character shows.  
            cmdline[cons.cur_x / 8 - 2] = i - 256;
            cons_putchar(&cons, i - 256, 1);
          }
        }
      }
      // Reshow a cursor.  
      if (cons.cur_c >= 0) {
        boxfill8(sheet->buf, sheet->bxsize, cons.cur_c, cons.cur_x, cons.cur_y, cons.cur_x + 7, cons.cur_y + 15);
      }
      sheet_refresh(sheet, cons.cur_x, cons.cur_y, cons.cur_x + 8, cons.cur_y + 16);
    }
  }
}

void cons_putchar(struct CONSOLE *cons, int chr, char move) {
  char s[2];
  s[0] = chr;
  s[1] = 0;
  if (s[0] == 0x09) { // Tab.
    for (;;) {
      putfonts8_asc_sht(cons->sht, cons->cur_x, cons->cur_y, COL8_FFFFFF, COL8_000000, " ", 1);
      cons->cur_x += 8;
      if (cons->cur_x == 8 + 240) {
        cons_newline(cons);
      }
      if (((cons->cur_x - 8) & 0x1f) == 0) {
        break; // Break when it is divisible by 32.	
      }
    }
  } else if (s[0] == 0x0a) { // Insert a new line.
    cons_newline(cons);
  } else if (s[0] == 0x0d) { // Carriage return.
    // TODO: Implement it later.
  } else { // Normal characters.	
    putfonts8_asc_sht(cons->sht, cons->cur_x, cons->cur_y, COL8_FFFFFF, COL8_000000, s, 1);
    if (move != 0) {
      // Don't move a cursor when |move| equals 0.
      cons->cur_x += 8;
      if (cons->cur_x == 8 + 240) {
        cons_newline(cons);
      }
    }
  }
  return;
}

void cons_newline(struct CONSOLE *cons) {
  int x, y;
  struct SHEET *sheet = cons->sht;
  if (cons->cur_y < 28 + 112) {
    cons->cur_y += 16; // Move to a next line. 
  } else {
    // Scroll.  
    for (y = 28; y < 28 + 112; y++) {
      for (x = 8; x < 8 + 240; x++) {
        sheet->buf[x + y * sheet->bxsize] = sheet->buf[x + (y + 16) * sheet->bxsize];
      }
    }
    for (y = 28 + 112; y < 28 + 128; y++) {
      for (x = 8; x < 8 + 240; x++) {
        sheet->buf[x + y * sheet->bxsize] = COL8_000000;
      }
    }
    sheet_refresh(sheet, 8, 28, 8 + 240, 28 + 128);
  }
  cons->cur_x = 8;
  return;
}

void cons_runcmd(char *cmdline, struct CONSOLE *cons, int *fat, unsigned int memtotal) {
  if (strcmp(cmdline, "mem") == 0) {
    cmd_mem(cons, memtotal);
  } else if (strcmp(cmdline, "clear") == 0) {
    cmd_clear(cons);
  } else if (strcmp(cmdline, "ls") == 0) {
    cmd_ls(cons);
  } else if (strncmp(cmdline, "cat ", 4) == 0) {
    cmd_cat(cons, fat, cmdline);
  } else if (strcmp(cmdline, "hlt") == 0) {
    cmd_hlt(cons, fat);
  } else if (cmdline[0] != 0) {
    // Neither a command nor a while space.  
    putfonts8_asc_sht(cons->sht, 8, cons->cur_y, COL8_FFFFFF, COL8_000000, "Bad command.", 12);
    cons_newline(cons);
    cons_newline(cons);
  }
  return;
}

void cmd_mem(struct CONSOLE *cons, unsigned int memtotal) {
  struct MEMMAN *memman = (struct MEMMAN *) MEMMAN_ADDR;
  char s[30];
  tsprintf(s, "total %dMB", memtotal / (1024 * 1024));
  putfonts8_asc_sht(cons->sht, 8, cons->cur_y, COL8_FFFFFF, COL8_000000, s, 30);
  cons_newline(cons);
  tsprintf(s, "free %dKB", memman_total(memman) / 1024);
  putfonts8_asc_sht(cons->sht, 8, cons->cur_y, COL8_FFFFFF, COL8_000000, s, 30);
  cons_newline(cons);
  cons_newline(cons);
  return;
}

void cmd_clear(struct CONSOLE *cons) {
  int x, y;
  struct SHEET *sheet = cons->sht;
  for (y = 28; y < 28 + 128; y++) {
    for (x = 8; x < 8 + 240; x++) {
      sheet->buf[x + y * sheet->bxsize] = COL8_000000;
    }
  }
  sheet_refresh(sheet, 8, 28, 8 + 240, 28 + 128);
  cons->cur_y = 28;
  return;
}

void cmd_ls(struct CONSOLE *cons) {
  struct FILEINFO *finfo = (struct FILEINFO *) (ADR_DISKIMG + 0x002600);
  int i, j;
  char s[30];
  for (i = 0; i < 224; i++) {
    if (finfo[i].name[0] == 0x00) {
      break;
    }
    if (finfo[i].name[0] != 0xe5) {
      if ((finfo[i].type & 0x18) == 0) {
        tsprintf(s, "filename.ext %d", finfo[i].size);
        for (j = 0; j < 8; j++) {
          s[j] = finfo[i].name[j];
        }
        s[9] = finfo[i].ext[0];
        s[10] = finfo[i].ext[1];
        s[11] = finfo[i].ext[2];
        putfonts8_asc_sht(cons->sht, 8, cons->cur_y, COL8_FFFFFF, COL8_000000, s, 30);
        cons_newline(cons);
      }
    }
  }
  cons_newline(cons);
  return;
}

void cmd_cat(struct CONSOLE *cons, int *fat, char *cmdline) {
  struct MEMMAN *memman = (struct MEMMAN *) MEMMAN_ADDR;
  struct FILEINFO *finfo = file_search(cmdline + 4, (struct FILEINFO *) (ADR_DISKIMG + 0x002600), 224);
  char *p;
  int i;
  if (finfo != 0) {
    // When a file is found.   
    p = (char *) memman_alloc_4k(memman, finfo->size);
    file_loadfile(finfo->clustno, finfo->size, p, fat, (char *) (ADR_DISKIMG + 0x003e00));
    for (i = 0; i < finfo->size; i++) {
      cons_putchar(cons, p[i], 1);
    }
    memman_free_4k(memman, (int) p, finfo->size);
  } else {
    // When a file is not found.
    putfonts8_asc_sht(cons->sht, 8, cons->cur_y, COL8_FFFFFF, COL8_000000, "File not found.", 15);
    cons_newline(cons);
  }
  cons_newline(cons);
  return;
}

void cmd_hlt(struct CONSOLE *cons, int *fat) {
  struct MEMMAN *memman = (struct MEMMAN *) MEMMAN_ADDR;
  struct FILEINFO *finfo = file_search("HLT.BIN", (struct FILEINFO *) (ADR_DISKIMG + 0x002600), 224);
  struct SEGMENT_DESCRIPTOR *gdt = (struct SEGMENT_DESCRIPTOR *) ADR_GDT;
  char *p;
  if (finfo != 0) {
    // When the HLT.BIN file is found.  
    p = (char *) memman_alloc_4k(memman, finfo->size);
    file_loadfile(finfo->clustno, finfo->size, p, fat, (char *) (ADR_DISKIMG + 0x003e00));
    set_segmdesc(gdt + 1003, finfo->size - 1, (int) p, AR_CODE32_ER);
    farjmp(0, 1003 * 8);
    memman_free_4k(memman, (int) p, finfo->size);
  } else {
    // When the HLT.BIN file is not found.  
    putfonts8_asc_sht(cons->sht, 8, cons->cur_y, COL8_FFFFFF, COL8_000000, "File not found.", 15);
    cons_newline(cons);
  }
  cons_newline(cons);
  return;
}

