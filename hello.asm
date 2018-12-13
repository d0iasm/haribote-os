  ; hlt.asm : A minimum application just to disable interruption.
  bits 32
  MOV AL, 'A'
  INT 0x40
  MOV AL, 'B'
  INT 0x40
  MOV AL, 'C'
  INT 0x40
  RETF
