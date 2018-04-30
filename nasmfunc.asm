  ; nasmfunc.asm

  bits 32
  global io_hlt
  global io_cli
  global io_sti
  global io_stihlt
  global io_in8
  global io_in16
  global io_in32
  global io_out8
  global io_out16
  global io_out32
  global io_load_eflags
  global io_store_eflags
  global load_gdtr
  global load_idtr

  section .text

io_hlt: ; void io_hlt(void);
  HLT
  RET

io_cli: ; void io_cli(void);
  CLI ; set interrupt flag to 0
  RET

io_sti: ; void io_sti(void);
  STI ; Set interrupt flag to 1
  RET

io_stihlt: ; void io_stihlt(void);
  STI
  HLT
  RET

io_in8: ; int io_in8(int port);
  MOV EDX, [ESP+4] ; Port
  MOV EAX, 0
  IN AL, DX
  RET

io_in16: ; int io_in16(int port);
  MOV EDX, [ESP+4] ; Port
  MOV EAX, 0
  IN AX, DX
  RET

io_in32: ; int io_in32(int port);
  MOV EDX, [ESP+4] ; Port
  IN EAX, DX
  RET

io_out8: ; void io_out8(void);
  MOV EDX, [ESP+4] ; Port
  MOV AL, [ESP+8] ; Data
  OUT DX, AL
  RET

io_out16: ; void io_out16(void);
  MOV EDX, [ESP+4] ; Port
  MOV AX, [ESP+8] ; Data
  OUT DX, AX
  RET

io_out32: ; void io_out32(void);
  MOV EDX, [ESP+4] ; Port
  MOV EAX, [ESP+8] ; Data
  OUT DX, EAX
  RET

io_load_eflags: ; int io_load_eflags(void);
  PUSHFD ; Push flags double-word
  POP EAX
  RET

io_store_eflags: ; void io_store_eflags(int eflags);
  MOV EAX, [ESP+4]
  PUSH EAX
  POPFD ; Pop flags double-word
  RET ; Return EAX value when RET is called

load_gdtr: ; void load_gdtr(int limit, int addr);
  MOV AX, [ESP+4] ; limit
  MOV [ESP+6], AX
  LGDT [ESP+6] ; Set limit and number to GDTR register
  RET

load_idtr: ; void load_idtr(int limit, int addr);
  MOV AX, [ESP+4] ; limit
  MOV [ESP+6], AX
  LIDT [ESP+6]
  RET

