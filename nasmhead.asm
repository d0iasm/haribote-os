  ; nasmhead.asm

  VBEMODE EQU 0x105 ; 1024 x 768 x 8bit 
  ; 0x100 :  640 x  400 x 8bit
  ; 0x101 :  640 x  480 x 8bit
  ; 0x103 :  800 x  600 x 8bit
  ; 0x105 : 1024 x  768 x 8bit
  ; 0x107 : 1280 x 1024 x 8bit

  BOTPAK EQU 0x00280000 ; Load destination of bootpack
  DSKCAC EQU 0x00100000 ; Disk cache destination
  DSKCAC0 EQU 0x00008000 ; Disk cache destination (Real mode)

  ; Boot information
  CYLS EQU 0x0ff0
  LEDS EQU 0x0ff1
  VMODE EQU 0x0ff2 ; Color information
  SCRNX EQU 0x0ff4 ; Screen X
  SCRNY EQU 0x0ff6 ; Screen Y
  VRAM EQU 0x0ff8 ; Start number of graphic buffer

  ORG 0xc200 ; Where to read this code


  MOV		AX, 0x9000
  MOV		ES, AX
  MOV		DI, 0
  MOV		AX, 0x4f00
  INT		0x10
  CMP		AX, 0x004f
  JNE		scrn320

  MOV		AX, [ES:DI+4]
  CMP		AX, 0x0200
  JB		scrn320			; if (AX < 0x0200) goto scrn320

  MOV		CX, VBEMODE
  MOV		AX, 0x4f01
  INT		0x10
  CMP		AX, 0x004f
  JNE		scrn320

  CMP		BYTE [ES:DI+0x19], 8
  JNE		scrn320
  CMP		BYTE [ES:DI+0x1b], 4
  JNE		scrn320
  MOV		AX, [ES:DI+0x00]
  AND		AX, 0x0080
  JZ		scrn320

  MOV		BX, VBEMODE+0x4000
  MOV		AX, 0x4f02
  INT		0x10
  MOV		BYTE [VMODE], 8	
  MOV		AX, [ES:DI+0x12]
  MOV		[SCRNX], AX
  MOV		AX, [ES:DI+0x14]
  MOV		[SCRNY], AX
  MOV		EAX, [ES:DI+0x28]
  MOV		[VRAM], EAX
  JMP		keystatus

scrn320:
  MOV		AL, 0x13			
  MOV		AH, 0x00
  INT		0x10
  MOV		BYTE [VMODE], 8
  MOV		WORD [SCRNX], 320
  MOV		WORD [SCRNY], 200
  MOV DWORD [VRAM], 0x000a0000

keystatus:
  MOV AH, 0x02
  INT 0x16 ; keyboard BIOS
  MOV [LEDS], AL

  ; PICが一切の割り込みを受け付けないようにする
  ; AT互換機の仕様では、PICの初期化をする場合、割り込み禁止をCLI前に行わないと、
  ; たまにハングアップする
  ; PICの初期化はあとで
  MOV AL, 0x0ff
  OUT 0x21, AL
  NOP
  OUT 0xa1, AL

  CLI ; Clear interrupt flag

  ; Settings to access memories over 1MB from CPU
  CALL waitkbdout
  MOV AL, 0xd1
  OUT 0x64, AL
  CALL waitkbdout
  MOV AL, 0xdf ; Enable A20
  OUT 0x60, AL
  CALL waitkbdout

  ; Move protect mode to use i486 instruction set
  LGDT [GDTR0]
  MOV EAX, CR0
  AND EAX, 0x7fffffff ; Set bit31 to 0 not to allow paging
  OR EAX, 0x00000001 ; Set bit0 to 1 to move protect mode
  MOV CR0, EAX
  JMP pipelineflush

pipelineflush:
  MOV AX, 1*8 ; read-write 32bit segments
  MOV DS, AX
  MOV ES, AX
  MOV FS, AX
  MOV GS, AX
  MOV SS, AX

  ; Send bootpack
  MOV ESI, bootpack ; Source
  MOV EDI, BOTPAK ; Destination
  MOV ECX, 512*1024/4
  CALL memcpy

  ; Send disk data
  ; Send boot sector
  MOV ESI, 0x7c00 ; Source
  MOV EDI, DSKCAC ; Destination
  MOV ECX, 512/4
  CALL memcpy

  ; All of remainings
  MOV ESI, DSKCAC0+512 ; Source
  MOV EDI, DSKCAC+512 ; Destination
  MOV ECX, 0
  MOV CL, BYTE [CYLS]
  IMUL ECX, 512*18*2/4 ; To convert from number of cylinders to bite/4
  SUB ECX, 512/4 ; Minus IPL
  ; Fin asmhead

  ; Start bootpack
  MOV EBX, BOTPAK
  MOV ECX, [EBX+16]
  ADD ECX, 3 ; ECX += 3
  SHR ECX, 2 ; ECX /= 4
  JZ skip ; No things to send
  MOV ESI, [EBX+20] ; Source
  ADD ESI, EBX
  MOV EDI, [EBX+12] ; Destination
  CALL memcpy

skip:
  MOV ESP, [EBX+12] ; Initial value of stack
  JMP DWORD 2*8:0x0000001b

waitkbdout:
  IN AL, 0x64
  AND AL, 0x02
  JNZ waitkbdout
  RET

memcpy:
  MOV EAX, [ESI]
  ADD ESI, 4
  MOV [EDI], EAX
  ADD EDI, 4
  SUB ECX, 1
  JNZ memcpy ; Move memcpy if a result is not 0
  RET

  ALIGNB 16

GDT0:
  RESB 8
  DW 0xffff, 0x0000, 0x9200, 0x00cf ; Read-write segment 32bits
  DW 0xffff, 0x0000, 0x9a28, 0x0047 ; Execuable segment 32bits for bootpack

  DW 0

GDTR0:
  DW 8*3-1
  DD GDT0

  ALIGNB 16

bootpack:

