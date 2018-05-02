// bootpack.c
#include "bootpack.h"


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

void memman_init(struct MEMMAN *man) {
  man->frees = 0;
  man->maxfrees = 0;
  man->lostsize = 0;
  man->losts = 0;
  return;
}

unsigned int memman_total(struct MEMMAN *man) {
  unsigned int t = 0;
  for (int i=0; i<man->frees; i++) {
    t += man->free[i].size;
  }
  return t;
}

unsigned int memman_alloc(struct MEMMAN *man, unsigned int size) {
  unsigned int a;
  for (int i=0; i<man->frees; i++) {
    if (man->free[i].size >= size) {
      a = man->free[i].addr;
      man->free[i].addr += size;
      man->free[i].size -= size;
      if (man->free[i].size == 0) {
        man->frees--;
        for (; i<man->frees; i++) {
          man->free[i] = man->free[i+1];
        }
      }
      return a;
    }
  }
  return 0;
}

unsigned int memman_alloc_4k(struct MEMMAN *man, unsigned int size) {
  size = (size + 0xffff) & 0xfffff000;
  unsigned int a = memman_alloc(man, size);
  return a;
}

int memman_free(struct MEMMAN *man, unsigned int addr, unsigned int size) {
  int i, j;

  // Decide the place to insert new free
  for (i=0; i<man->frees; i++) {
    if (man->free[i].addr > addr) break;
  }

  // free[i-1].addr < addr < free[i].addr
  if (i > 0) { // Exist previous free
    if (man->free[i - 1].addr + man->free[i - 1].size == addr) { // Connect new free to previous free[i-1]
      man->free[i - 1].size += size;
      if (i < man->frees) { // Exist next free
        if (addr + size == man->free[i].addr) { // Connect new free to next free[i] 
          man->free[i - 1].size += man->free[i].size;
          man->frees--;
          for (; i < man->frees; i++) {
            man->free[i] = man->free[i + 1];
          }
        }
      }
      return 0;
    }
  }

  // addr < free[i].addr
  if (i < man->frees) {
    if (addr + size == man->free[i].addr) { // Connect new free to next free[i]
      man->free[i].addr = addr;
      man->free[i].size += size;
      return 0;
    }
  }

  // Create new free between free[i-1] and free[i]
  if (man->frees < MEMMAN_FREES) {
    for (j = man->frees; j > i; j--) {
      man->free[j] = man->free[j - 1];
    }
    man->frees++;
    if (man->maxfrees < man->frees) {
      man->maxfrees = man->frees;
    }
    man->free[i].addr = addr;
    man->free[i].size = size;
    return 0;
  }

  // Failed free
  man->losts++;
  man->lostsize += size;
  return -1;
}

int memman_free_4k(struct MEMMAN *man, unsigned int addr, unsigned int size) {
  size = (size + 0xffff) & 0xfffff000;
  int i = memman_free(man, addr, size);
  return i;
}

