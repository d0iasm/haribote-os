// timer.c
#include "bootpack.h"

struct TIMERCTL timerctl;

void init_pit(void)
{
  int i;
  struct TIMER* t;
  io_out8(PIT_CTRL, 0x34);
  io_out8(PIT_CNT0, 0x9c);
  io_out8(PIT_CNT0, 0x2e);
  timerctl.count = 0;
  for (i = 0; i < MAX_TIMER; i++) {
    timerctl.timers0[i].flags = 0;
  }
  t = timer_alloc();
  t->timeout = 0xffffffff;
  t->flags = TIMER_FLAGS_USING;
  t->next = 0;
  timerctl.t0 = t;
  timerctl.next = 0xffffffff;
  return;
}

struct TIMER* timer_alloc(void)
{
  int i;
  for (i = 0; i < MAX_TIMER; i++) {
    if (timerctl.timers0[i].flags == 0) {
      timerctl.timers0[i].flags = TIMER_FLAGS_ALLOC;
      timerctl.timers0[i].flags2 = 0;
      return &timerctl.timers0[i];
    }
  }
  return 0;
}

void timer_free(struct TIMER* timer)
{
  timer->flags = 0;
  return;
}

void timer_init(struct TIMER* timer, struct FIFO32* fifo, int data)
{
  timer->fifo = fifo;
  timer->data = data;
  return;
}

void timer_settime(struct TIMER* timer, unsigned int timeout)
{
  int e;
  struct TIMER *t, *s;
  timer->timeout = timeout + timerctl.count;
  timer->flags = TIMER_FLAGS_USING;
  e = io_load_eflags();
  io_cli();
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
    if (timer->timeout <= t->timeout) {
      s->next = timer;
      timer->next = t;
      io_store_eflags(e);
      return;
    }
  }
}

int timer_cancel(struct TIMER* timer)
{
  int e;
  struct TIMER* t;
  e = io_load_eflags();
  io_cli(); // Avoid to change the timer state while setting.
  if (timer->flags == TIMER_FLAGS_USING) {
    // Need or not the process to cancel?
    if (timer == timerctl.t0) {
      // Cancel the top timer.
      t = timer->next;
      timerctl.t0 = t;
      timerctl.next = t->timeout;
    } else {
      // Cancel the timer except the top one.
      // Search before the timer.
      t = timerctl.t0;
      for (;;) {
        if (t->next == timer) {
          break;
        }
        t = t->next;
      }
      t->next = timer->next;
    }
    timer->flags = TIMER_FLAGS_ALLOC;
    io_store_eflags(e);
    return 1; // Success the cancel process.
  }
  io_store_eflags(e);
  return 0; // No need the cancel process.
}

void timer_cancelall(struct FIFO32* fifo)
{
  int e, i;
  struct TIMER* t;
  e = io_load_eflags();
  io_cli(); // Avoid to change the timer state while setting.
  for (i = 0; i < MAX_TIMER; i++) {
    t = &timerctl.timers0[i];
    if (t->flags != 0 && t->flags2 != 0 && t->fifo == fifo) {
      timer_cancel(t);
      timer_free(t);
    }
  }
  io_store_eflags(e);
  return;
}

void inthandler20(int* esp)
{
  char ts = 0;
  struct TIMER* timer;

  io_out8(PIC0_OCW2, 0x60);
  timerctl.count++;
  if (timerctl.next > timerctl.count) {
    return;
  }
  timer = timerctl.t0;

  for (;;) {
    if (timer->timeout > timerctl.count) {
      break;
    }
    timer->flags = TIMER_FLAGS_ALLOC; // Timeout
    if (timer != task_timer) {
      fifo32_put(timer->fifo, timer->data);
    } else {
      ts = 1; // timer is timeout
    }
    timer = timer->next;
  }
  timerctl.t0 = timer;
  timerctl.next = timer->timeout;
  if (ts != 0) {
    task_switch();
  }
  return;
}
