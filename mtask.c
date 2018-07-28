// mtask.c

#include "bootpack.h"


struct TASKCTL *taskctl;
struct TIMER *task_timer;

struct TASK *task_init(struct MEMMAN *memman) {
  struct TASK *task;
  struct SEGMENT_DESCRIPTOR *gdt = (struct SEGMENT_DESCRIPTOR *) ADR_GDT;
  taskctl = (struct TASKCTL *) memman_alloc_4k(memman, sizeof(struct TASKCTL));

  for (int i = 0; i < MAX_TASKS; i++) {
    taskctl->tasks0[i].flags = 0;
    taskctl->tasks0[i].sel = (TASK_GDT0 + i) * 8;
    set_segmdesc(gdt + TASK_GDT0 + i, 103, (int) &taskctl->tasks0[i].tss, AR_TSS32);
  }

  task = task_alloc();
  task->flags = 2; // Running flag
  taskctl->running = 1;
  taskctl->tasks[0] = task;
  load_tr(task->sel);
  task_timer = timer_alloc();
  timer_settime(task_timer, 2);
  return task;
}

struct TASK *task_alloc(void) {
  struct TASK *task;
  for (int i = 0; i < MAX_TASKS; i++) {
    if (taskctl->tasks0[i].flags == 0) {
      task = &taskctl->tasks0[i];
      task->flags = 1; 
      task->tss.eflags = 0x00000202; // IF = 1
      task->tss.eax = 0;
      task->tss.ecx = 0;
      task->tss.edx = 0;
      task->tss.ebx = 0;
      task->tss.ebp = 0;
      task->tss.esi = 0;
      task->tss.edi = 0;
      task->tss.es = 0;
      task->tss.ds = 0;
      task->tss.fs = 0;
      task->tss.gs = 0;
      task->tss.ldtr = 0;
      task->tss.iomap = 0x40000000;
      return task;
    }
  }
  return 0;
}

void task_run(struct TASK *task) {
  task->flags = 2; 
  taskctl->tasks[taskctl->running] = task;
  taskctl->running++;
  return;
}

void task_switch(void) {
  timer_settime(task_timer, 2);
  if (taskctl->running >= 2) {
    taskctl->now++;
    if (taskctl->now == taskctl->running) {
      taskctl->now = 0;
    }
    farjmp(0, taskctl->tasks[taskctl->now]->sel);
  }
  return;
}

void task_sleep(struct TASK *task) {
  int i;
  char ts = 0;

  if (task->flags == 2) {
    if (task == taskctl->tasks[taskctl->now]) {
      ts = 1;
    }

    for (i=0; i<taskctl->running; i++) {
      if (taskctl->tasks[i] == task) break;
    }
    taskctl->running--;
    if (i < taskctl->now) {
      taskctl->now--;
    }

    for (; i<taskctl->running; i++) {
      taskctl->tasks[i] = taskctl->tasks[i+1];
    }
    task->flags = 1;

    if (ts != 0) {
      if (taskctl->now >= taskctl->running) {
        taskctl->now = 0;
      }
      farjmp(0, taskctl->tasks[taskctl->now]->sel);
    }
  }
  return;
}
