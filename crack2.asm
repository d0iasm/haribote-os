  bits 32
  mov eax, 1*8
  mov ds, ax ; The segment number for OS
  mov byte [0x102600], 0
  retf
