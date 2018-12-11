  ; hlt.asm : A minimum application just to disable interruption.
  bits 32
  MOV AL, 'A'
  CALL 0xbe3

fin:
  HLT
  JMP fin
