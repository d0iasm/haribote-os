  ; hello.asm : A minimum application just to show 'hello'.
  ; EDX: function number
  ;   1: call cons_putchar() that shows only one char.
  ;   2: call cons_putstr0() that shows string until coming 0.
  ;   3: call cons_putstr1() that shows string of the specified number of ones.
  bits 32
  mov ecx, msg
  mov edx, 1

putloop:
  mov al, [cs: ecx]
  cmp al, 0
  je fin
  int 0x40
  add ecx, 1
  jmp putloop

fin:
  retf

msg: db "hello", 0

