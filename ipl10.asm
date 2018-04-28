; minimumos.asm

  CYLS EQU 10
  ORG 0x7c00 ; The place of a memory to read at first

  ; Discription for FAT12 format
  JMP entry
  DB 0x90
  DB "HELLOIPL"
  DW 512 ; Size of a sector
  DB 1
  DW 1
  DB 2
  DW 224
  DW 2880
  DB 0xf0
  DW 9
  DW 18
  DW 2
  DD 0
  DD 2880

  ; Fields after offset 36
  DB 0x00
  DB 0x00
  DB 0x29

  DD 0xffffffff
  DB "MINIMUM-OS " ; Disk name 11 byte
  DB "FAT12   " ; Format name 8 byte
  RESB 18

; Main program
entry:
  MOV AX, 0
  MOV SS, AX
  MOV SP, 0x7c00
  MOV DS, AX

  ; Load disk
  MOV AX, 0x0820
  MOV ES, AX
  MOV CH, 0
  MOV DH, 0
  MOV CL, 2

readloop:
  MOV SI, 0 ; Failing count

retry:
  MOV AH, 0x02 ; acumulator high 0x02 to read disk
  MOV AL, 1 ; acumulator low 1 sector
  MOV BX, 0
  MOV DL, 0x00
  INT 0x13 ; Call disk BIOS
  JNC next ; Move next if error isn't happened
  ADD SI, 1
  CMP SI, 5 ; Compare SI and 5
  JAE error ; Move error if SI >= 5
  MOV AH, 0x00
  MOV DL, 0x00
  INT 0x13
  JMP retry

next:
  MOV AX, ES ; Move 0x200 addresses
  ADD AX, 0x0020
  MOV ES, AX
  
  ADD CL, 1
  CMP CL, 18
  JBE readloop ; Move readloop if CL <= 18
  
  MOV CL, 1
  ADD DH, 1
  CMP DH, 2
  JB readloop ; Move readloop if DH < 2
  
  MOV DH, 0
  ADD CH, 1
  CMP CH, CYLS
  JB readloop ; Move readloop if CH < CYLS
  
  MOV [0x0ff0], CH
  JMP 0xc200

error:
  MOV SI, msg

putloop:
  MOV AL, [SI]
  ADD SI, 1
  CMP AL, 0
  JE fin

  MOV AH, 0x0e
  MOV BX, 15
  INT 0x10
  JMP putloop

fin:
  HLT
  JMP fin

msg:
  DB 0x0a, 0x0a
  DB "Load error"
  DB 0x0a
  DB 0

  RESB 0x7dfe - 0x7c00 - ($ - $$) 

  DB 0x55, 0xaa

