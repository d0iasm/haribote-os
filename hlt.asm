  ; hlt.asm : A minimum application just to disable interruption.
  bits 32
  CLI

fin:
  HLT
  JMP fin
