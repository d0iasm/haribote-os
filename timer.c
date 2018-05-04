// timer.c

#include "bootpack.h"


struct TIMERCTL timerctl;

void init_pit(void) {
  int i;
  io_out8(PIT_CTRL, 0x34);
  io_out8(PIT_CNT0, 0x9c);
  io_out8(PIT_CNT0, 0x2e);
  timerctl.count = 0;
  timerctl.next = 0xffffffff;
  for (i = 0; i < MAX_TIMER; i++) {
    timerctl.timer[i].flags = 0;
  }
  return;
}

struct TIMER *timer_alloc(void) {
  int i;
  for (i = 0; i < MAX_TIMER; i++) {
    if (timerctl.timer[i].flags == 0) {
      timerctl.timer[i].flags = TIMER_FLAGS_ALLOC;
      return &timerctl.timer[i];
    }
  }
  return 0;
}

void timer_free(struct TIMER *timer) {
  timer->flags = 0;
  return;
}

void timer_init(struct TIMER *timer, struct FIFO8 *fifo, unsigned char data) {
  timer->fifo = fifo;
  timer->data = data;
  return;
}

void timer_settime(struct TIMER *timer, unsigned int timeout) {
  timer->timeout = timeout + timerctl.count;
  timer->flags = TIMER_FLAGS_USING;
  if (timerctl.next > timer->timeout) {
    timerctl.next = timer->timeout;
  }
  return;
}

void inthandler20(int *esp) {
  io_out8(PIC0_OCW2, 0x60); // Notify the completion of IRQ acception
  timerctl.count++;

  if (timerctl.next > timerctl.count) { return; }

  timerctl.next = 0xffffffff;
  for (int i = 0; i < MAX_TIMER; i++) {
    if (timerctl.timer[i].flags == TIMER_FLAGS_USING) {
      if (timerctl.timer[i].timeout <= timerctl.count) {
        // Timeout
        timerctl.timer[i].flags = TIMER_FLAGS_ALLOC;
        fifo8_put(timerctl.timer[i].fifo, timerctl.timer[i].data);
      } else {
        // Not yet timeout
        if (timerctl.next > timerctl.timer[i].timeout) {
          timerctl.next = timerctl.timer[i].timeout;
        }
      }
    }
  }
  return;
}


