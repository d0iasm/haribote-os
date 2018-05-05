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
  timerctl.using = 0;
  for (i = 0; i < MAX_TIMER; i++) {
    timerctl.timers0[i].flags = 0;
  }
  return;
}

struct TIMER *timer_alloc(void) {
  int i;
  for (i = 0; i < MAX_TIMER; i++) {
    if (timerctl.timers0[i].flags == 0) {
      timerctl.timers0[i].flags = TIMER_FLAGS_ALLOC;
      return &timerctl.timers0[i];
    }
  }
  return 0;
}

void timer_free(struct TIMER *timer) {
  timer->flags = 0;
  return;
}

void timer_init(struct TIMER *timer, struct FIFO8 *fifo, int data) {
  timer->fifo = fifo;
  timer->data = data;
  return;
}

void timer_settime(struct TIMER *timer, unsigned int timeout) {
  int e;
  struct TIMER *t, *s;
  timer->timeout = timeout + timerctl.count;
  timer->flags = TIMER_FLAGS_USING;
  e = io_load_eflags();
  io_cli();
  timerctl.using++;
  if (timerctl.using == 1) {
    timerctl.t0 = timer;
    timer->next = 0;
    timerctl.next = timer->timeout;
    io_store_eflags(e);
    return;
  }
  t = timerctl.t0;
  if (timer->timeout <= t->timeout) {
    timerctl.t0 = timer;
    timer->next = t;
    timerctl.next = timer->timeout;
    io_store_eflags(e);
    return;
  }
  for (;;) {
    s = t;
    t = t->next;
    if (t == 0) {
      break;
    }
    if (timer->timeout <= t->timeout) {
      s->next = timer; 
      timer->next = t;
      io_store_eflags(e);
      return;
    }
  }
  s->next = timer;
  timer->next = 0;
  io_store_eflags(e);
  return;
}

void inthandler20(int *esp) {
  int i, j;
  struct TIMER *timer;
  io_out8(PIC0_OCW2, 0x60); // Notify the completion of IRQ-00 acception
  timerctl.count++;
  if (timerctl.next > timerctl.count) {
    return;
  }
  timer = timerctl.t0;
  for (i = 0; i < timerctl.using; i++) {
    if (timer->timeout > timerctl.count) {
      break;
    }
    timer->flags = TIMER_FLAGS_ALLOC;
    fifo32_put(timer->fifo, timer->data);
    timer = timer->next;
  }
  timerctl.using -= i;
  timerctl.t0 = timer;

  if (timerctl.using > 0) {
    timerctl.next = timerctl.t0->timeout;
  } else {
    timerctl.next = 0xffffffff;
  }
  return;
}


