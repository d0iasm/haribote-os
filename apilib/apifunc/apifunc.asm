  bits 32

  global api_putchar
  global api_putstr0
  global api_openwin
  global api_boxfilwin
  global api_putstrwin
  global api_initmalloc
  global api_malloc
  global api_free
  global api_point
  global api_refreshwin
  global api_linewin
  global api_closewin
  global api_getkey
  global api_alloctimer
  global api_inittimer
  global api_settimer
  global api_freetimer
  global api_end

  section .text

api_putchar: ; void api_putchar(int c);
  mov edx, 1
  mov al, [esp+4] ; c
  int 0x40
  ret

api_putstr0: ; void api_putstr0(char *s);
  push ebx
  mov edx, 2
  mov ebx, [esp+8] ; s
  int 0x40
  pop ebx
  ret

api_openwin: ; int api_openwin(char *buf, int xsiz, int ysiz, int col_inv, char *title);
  push edi
  push esi
  push ebx
  mov edx, 5
  mov ebx, [esp + 16] ; buf
  mov esi, [esp + 20] ; xsiz
  mov edi, [esp + 24] ; ysiz
  mov eax, [esp + 28] ; col_inv
  mov ecx, [esp + 32] ; title
  int 0x40
  pop ebx
  pop esi
  pop edi
  ret

api_putstrwin: ; void api_putstrwin(int win, int x, int y, int col, int len, char *str);
  push edi
  push esi
  push ebp
  push ebx
  mov edx, 6
  mov ebx, [esp + 20] ; win
  mov esi, [esp + 24] ; x
  mov edi, [esp + 28] ; y
  mov eax, [esp + 32] ; col
  mov ecx, [esp + 36] ; len
  mov ebp, [esp + 40] ; str
  int 0x40
  pop ebx
  pop ebp
  pop esi
  pop edi
  ret

api_boxfilwin: ; void api_boxfilwin(int win, int x0, int y0, int x1, int y1, int col);
  push edi
  push esi
  push ebp
  push ebx
  mov edx, 7
  mov ebx, [esp + 20] ; win
  mov eax, [esp + 24] ; x0
  mov ecx, [esp + 28] ; y0
  mov esi, [esp + 32] ; x1
  mov edi, [esp + 36] ; y1
  mov ebp, [esp + 40] ; col
  int 0x40
  pop ebx
  pop ebp
  pop esi
  pop edi
  ret

api_initmalloc: ; void api_initmalloc(void);
  push ebx
  mov edx, 8
  mov ebx, [cs:0x0020] ; The address of malloc space.
  mov eax, ebx
  add eax, 32*1024 ; Add 32KB.
  mov ecx, [cs:0x0000] ; The size of data segment.
  sub ecx, eax
  int 0x40
  pop ebx
  ret
  
api_malloc: ; char *api_malloc(int size);
  push ebx
  mov edx, 9
  mov ebx, [cs:0x0020]
  mov ecx, [esp+8] ; size
  int 0x40
  pop ebx
  ret

api_free: ; void api_free(char *addr, int size);
  push ebx
  mov edx, 10
  mov ebx, [cs:0x0020]
  mov eax, [esp+8] ; addr
  mov ecx, [esp+12] ; size
  int 0x40
  pop ebx
  ret

api_point: ; void api_point(int win, int x, int y, int col);
  push edi
  push esi
  push ebx
  mov edx, 11
  mov ebx, [esp+16] ; win
  mov esi, [esp+20] ; x
  mov edi, [esp+24] ; y
  mov eax, [esp+28] ; col
  int 0x40
  pop ebx
  pop esi
  pop edi
  ret

api_refreshwin: ; void api_refreshwin(int win, int x0, int y0, int x1, int y1);
  push edi
  push esi
  push ebx
  mov edx, 12
  mov ebx, [esp+16] ; win
  mov eax, [esp+20] ; x0
  mov ecx, [esp+24] ; y0
  mov esi, [esp+28] ; x1
  mov edi, [esp+32] ; y1
  int 0x40
  pop ebx
  pop esi
  pop edi
  ret
  
api_linewin: ; void api_linewin(int win, int x0, int y0, int x1, int y1, int col);
  push edi
  push esi
  push ebp
  push ebx
  mov edx, 13
  mov ebx, [esp+20] ; win
  mov eax, [esp+24] ; x0
  mov ecx, [esp+28] ; y0
  mov esi, [esp+32] ; x1
  mov edi, [esp+36] ; y1
  mov ebp, [esp+40] ; col
  int 0x40
  pop ebx
  pop ebp
  pop esi
  pop edi
  ret

api_closewin: ; void api_closewin(int win);
  push ebx
  mov edx, 14
  mov ebx, [esp+8] ; win
  int 0x40
  pop ebx
  ret

api_getkey: ; int api_getkey(int mode);
  mov edx, 15
  mov eax, [esp+4] ; mode
  int 0x40
  ret

api_alloctimer: ; int api_alloctimer(void);
  mov edx, 16
  int 0x40
  ret

api_inittimer: ; void api_inittimer(int timer, int data);
  push ebx
  mov edx, 17
  mov ebx, [esp+8] ; timer
  mov eax, [esp+12] ; data
  int 0x40
  pop ebx
  ret

api_settimer: ; void api_settimer(int timer, int time);
  push ebx
  mov edx, 18
  mov ebx, [esp+8] ; timer
  mov eax, [esp+12] ; time
  int 0x40
  pop ebx
  ret

api_freetimer: ; void api_freetimer(int timer);
  push ebx
  mov edx, 19
  mov ebx, [esp+8] ; timer
  int 0x40
  pop ebx
  ret

api_end: ; void api_end(void);
  mov edx, 4
  int 0x40

