  bits 32
  global api_settimer

  section .text

api_settimer: ; void api_settimer(int timer, int time);
  push ebx
  mov edx, 18
  mov ebx, [esp+8] ; timer
  mov eax, [esp+12] ; time
  int 0x40
  pop ebx
  ret
