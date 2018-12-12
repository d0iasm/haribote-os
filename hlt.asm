  ; hlt.asm : A minimum application just to disable interruption.
  bits 32
  MOV AL, 'A'
  CALL 2*8:0x33e8
  RETF
