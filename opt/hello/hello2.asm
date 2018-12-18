  ; hello2.asm : A minimum application just to show 'hello'.
  ; EDX: function number
  ;   1: call cons_putchar() that shows only one char.
  ;   2: call cons_putstr0() that shows string until coming 0.
  ;   3: call cons_putstr1() that shows string of the specified number of ones.
  bits 32
  mov edx, 2
  mov ebx, msg
  int 0x40
  mov edx, 4
  int 0x40

msg: db "hello", 0

