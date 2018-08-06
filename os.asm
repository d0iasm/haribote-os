
os.img:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	eb 4e                	jmp    0x50
       2:	90                   	nop
       3:	48                   	dec    eax
       4:	45                   	inc    ebp
       5:	4c                   	dec    esp
       6:	4c                   	dec    esp
       7:	4f                   	dec    edi
       8:	49                   	dec    ecx
       9:	50                   	push   eax
       a:	4c                   	dec    esp
       b:	00 02                	add    BYTE PTR [edx],al
       d:	01 01                	add    DWORD PTR [ecx],eax
       f:	00 02                	add    BYTE PTR [edx],al
      11:	e0 00                	loopne 0x13
      13:	40                   	inc    eax
      14:	0b f0                	or     esi,eax
      16:	09 00                	or     DWORD PTR [eax],eax
      18:	12 00                	adc    al,BYTE PTR [eax]
      1a:	02 00                	add    al,BYTE PTR [eax]
	...
      24:	00 00                	add    BYTE PTR [eax],al
      26:	29 a1 be 8d 57 4e    	sub    DWORD PTR [ecx+0x4e578dbe],esp
      2c:	4f                   	dec    edi
      2d:	20 4e 41             	and    BYTE PTR [esi+0x41],cl
      30:	4d                   	dec    ebp
      31:	45                   	inc    ebp
      32:	20 20                	and    BYTE PTR [eax],ah
      34:	20 20                	and    BYTE PTR [eax],ah
      36:	46                   	inc    esi
      37:	41                   	inc    ecx
      38:	54                   	push   esp
      39:	31 32                	xor    DWORD PTR [edx],esi
      3b:	20 20                	and    BYTE PTR [eax],ah
      3d:	20 00                	and    BYTE PTR [eax],al
	...
      4f:	00 b8 00 00 8e d0    	add    BYTE PTR [eax-0x2f720000],bh
      55:	bc 00 7c 8e d8       	mov    esp,0xd88e7c00
      5a:	b8 20 08 8e c0       	mov    eax,0xc08e0820
      5f:	b5 00                	mov    ch,0x0
      61:	b6 00                	mov    dh,0x0
      63:	b1 02                	mov    cl,0x2
      65:	be 00 00 b4 02       	mov    esi,0x2b40000
      6a:	b0 01                	mov    al,0x1
      6c:	bb 00 00 b2 00       	mov    ebx,0xb20000
      71:	cd 13                	int    0x13
      73:	73 10                	jae    0x85
      75:	83 c6 01             	add    esi,0x1
      78:	83 fe 05             	cmp    esi,0x5
      7b:	73 32                	jae    0xaf
      7d:	b4 00                	mov    ah,0x0
      7f:	b2 00                	mov    dl,0x0
      81:	cd 13                	int    0x13
      83:	eb e3                	jmp    0x68
      85:	8c c0                	mov    eax,es
      87:	83 c0 20             	add    eax,0x20
      8a:	8e c0                	mov    es,eax
      8c:	80 c1 01             	add    cl,0x1
      8f:	80 f9 12             	cmp    cl,0x12
      92:	76 d1                	jbe    0x65
      94:	b1 01                	mov    cl,0x1
      96:	80 c6 01             	add    dh,0x1
      99:	80 fe 02             	cmp    dh,0x2
      9c:	72 c7                	jb     0x65
      9e:	b6 00                	mov    dh,0x0
      a0:	80 c5 01             	add    ch,0x1
      a3:	80 fd 0a             	cmp    ch,0xa
      a6:	72 bd                	jb     0x65
      a8:	88 2e                	mov    BYTE PTR [esi],ch
      aa:	f0 0f e9 51 45       	lock psubsw mm2,QWORD PTR [ecx+0x45]
      af:	be c7 7c 8a 04       	mov    esi,0x48a7cc7
      b4:	83 c6 01             	add    esi,0x1
      b7:	3c 00                	cmp    al,0x0
      b9:	74 09                	je     0xc4
      bb:	b4 0e                	mov    ah,0xe
      bd:	bb 0f 00 cd 10       	mov    ebx,0x10cd000f
      c2:	eb ee                	jmp    0xb2
      c4:	f4                   	hlt    
      c5:	eb fd                	jmp    0xc4
      c7:	0a 0a                	or     cl,BYTE PTR [edx]
      c9:	4c                   	dec    esp
      ca:	6f                   	outs   dx,DWORD PTR ds:[esi]
      cb:	61                   	popa   
      cc:	64 20 65 72          	and    BYTE PTR fs:[ebp+0x72],ah
      d0:	72 6f                	jb     0x141
      d2:	72 0a                	jb     0xde
	...
     1fc:	00 00                	add    BYTE PTR [eax],al
     1fe:	55                   	push   ebp
     1ff:	aa                   	stos   BYTE PTR es:[edi],al
     200:	f0 ff                	lock (bad) 
     202:	ff 03                	inc    DWORD PTR [ebx]
     204:	40                   	inc    eax
     205:	00 05 60 00 07 80    	add    BYTE PTR ds:0x80070060,al
     20b:	00 09                	add    BYTE PTR [ecx],cl
     20d:	a0 00 0b c0 00       	mov    al,ds:0xc00b00
     212:	0d e0 00 0f 00       	or     eax,0xf00e0
     217:	01 11                	add    DWORD PTR [ecx],edx
     219:	20 01                	and    BYTE PTR [ecx],al
     21b:	13 40 01             	adc    eax,DWORD PTR [eax+0x1]
     21e:	15 60 01 17 80       	adc    eax,0x80170160
     223:	01 19                	add    DWORD PTR [ecx],ebx
     225:	a0 01 1b c0 01       	mov    al,ds:0x1c01b01
     22a:	1d e0 01 1f 00       	sbb    eax,0x1f01e0
     22f:	02 21                	add    ah,BYTE PTR [ecx]
     231:	20 02                	and    BYTE PTR [edx],al
     233:	23 40 02             	and    eax,DWORD PTR [eax+0x2]
     236:	25 60 02 27 80       	and    eax,0x80270260
     23b:	02 29                	add    ch,BYTE PTR [ecx]
     23d:	a0 02 2b c0 02       	mov    al,ds:0x2c02b02
     242:	ff 0f                	dec    DWORD PTR [edi]
	...
    1400:	f0 ff                	lock (bad) 
    1402:	ff 03                	inc    DWORD PTR [ebx]
    1404:	40                   	inc    eax
    1405:	00 05 60 00 07 80    	add    BYTE PTR ds:0x80070060,al
    140b:	00 09                	add    BYTE PTR [ecx],cl
    140d:	a0 00 0b c0 00       	mov    al,ds:0xc00b00
    1412:	0d e0 00 0f 00       	or     eax,0xf00e0
    1417:	01 11                	add    DWORD PTR [ecx],edx
    1419:	20 01                	and    BYTE PTR [ecx],al
    141b:	13 40 01             	adc    eax,DWORD PTR [eax+0x1]
    141e:	15 60 01 17 80       	adc    eax,0x80170160
    1423:	01 19                	add    DWORD PTR [ecx],ebx
    1425:	a0 01 1b c0 01       	mov    al,ds:0x1c01b01
    142a:	1d e0 01 1f 00       	sbb    eax,0x1f01e0
    142f:	02 21                	add    ah,BYTE PTR [ecx]
    1431:	20 02                	and    BYTE PTR [edx],al
    1433:	23 40 02             	and    eax,DWORD PTR [eax+0x2]
    1436:	25 60 02 27 80       	and    eax,0x80270260
    143b:	02 29                	add    ch,BYTE PTR [ecx]
    143d:	a0 02 2b c0 02       	mov    al,ds:0x2c02b02
    1442:	ff 0f                	dec    DWORD PTR [edi]
	...
    2600:	4f                   	dec    edi
    2601:	53                   	push   ebx
    2602:	20 20                	and    BYTE PTR [eax],ah
    2604:	20 20                	and    BYTE PTR [eax],ah
    2606:	20 20                	and    BYTE PTR [eax],ah
    2608:	53                   	push   ebx
    2609:	59                   	pop    ecx
    260a:	53                   	push   ebx
    260b:	20 18                	and    BYTE PTR [eax],bl
    260d:	00 64 b7 06          	add    BYTE PTR [edi+esi*4+0x6],ah
    2611:	4d                   	dec    ebp
    2612:	06                   	push   es
    2613:	4d                   	dec    ebp
    2614:	00 00                	add    BYTE PTR [eax],al
    2616:	64 b7 06             	fs mov bh,0x6
    2619:	4d                   	dec    ebp
    261a:	02 00                	add    al,BYTE PTR [eax]
    261c:	3a 54 00 00          	cmp    dl,BYTE PTR [eax+eax*1+0x0]
	...
    4200:	b8 00 90 8e c0       	mov    eax,0xc08e9000
    4205:	bf 00 00 b8 00       	mov    edi,0xb80000
    420a:	4f                   	dec    edi
    420b:	cd 10                	int    0x10
    420d:	83 f8 4f             	cmp    eax,0x4f
    4210:	75 52                	jne    0x4264
    4212:	26 8b 45 04          	mov    eax,DWORD PTR es:[ebp+0x4]
    4216:	3d 00 02 72 49       	cmp    eax,0x49720200
    421b:	b9 05 01 b8 01       	mov    ecx,0x1b80105
    4220:	4f                   	dec    edi
    4221:	cd 10                	int    0x10
    4223:	83 f8 4f             	cmp    eax,0x4f
    4226:	75 3c                	jne    0x4264
    4228:	26 80 7d 19 08       	cmp    BYTE PTR es:[ebp+0x19],0x8
    422d:	75 35                	jne    0x4264
    422f:	26 80 7d 1b 04       	cmp    BYTE PTR es:[ebp+0x1b],0x4
    4234:	75 2e                	jne    0x4264
    4236:	26 8b 05 25 80 00 74 	mov    eax,DWORD PTR es:0x74008025
    423d:	26 bb 05 41 b8 02    	es mov ebx,0x2b84105
    4243:	4f                   	dec    edi
    4244:	cd 10                	int    0x10
    4246:	c6 06 f2             	mov    BYTE PTR [esi],0xf2
    4249:	0f 08                	invd   
    424b:	26 8b 45 12          	mov    eax,DWORD PTR es:[ebp+0x12]
    424f:	a3 f4 0f 26 8b       	mov    ds:0x8b260ff4,eax
    4254:	45                   	inc    ebp
    4255:	14 a3                	adc    al,0xa3
    4257:	f6 0f 26             	test   BYTE PTR [edi],0x26
    425a:	66 8b 45 28          	mov    ax,WORD PTR [ebp+0x28]
    425e:	66 a3 f8 0f eb 20    	mov    ds:0x20eb0ff8,ax
    4264:	b0 13                	mov    al,0x13
    4266:	b4 00                	mov    ah,0x0
    4268:	cd 10                	int    0x10
    426a:	c6 06 f2             	mov    BYTE PTR [esi],0xf2
    426d:	0f 08                	invd   
    426f:	c7 06 f4 0f 40 01    	mov    DWORD PTR [esi],0x1400ff4
    4275:	c7 06 f6 0f c8 00    	mov    DWORD PTR [esi],0xc80ff6
    427b:	66 c7 06 f8 0f       	mov    WORD PTR [esi],0xff8
    4280:	00 00                	add    BYTE PTR [eax],al
    4282:	0a 00                	or     al,BYTE PTR [eax]
    4284:	b4 02                	mov    ah,0x2
    4286:	cd 16                	int    0x16
    4288:	a2 f1 0f b0 ff       	mov    ds:0xffb00ff1,al
    428d:	e6 21                	out    0x21,al
    428f:	90                   	nop
    4290:	e6 a1                	out    0xa1,al
    4292:	fa                   	cli    
    4293:	e8 b2 00 b0 d1       	call   0xd1b0434a
    4298:	e6 64                	out    0x64,al
    429a:	e8 ab 00 b0 df       	call   0xdfb0434a
    429f:	e6 60                	out    0x60,al
    42a1:	e8 a4 00 0f 01       	call   0x10f434a
    42a6:	16                   	push   ss
    42a7:	8a c3                	mov    al,bl
    42a9:	0f 20 c0             	mov    eax,cr0
    42ac:	66 25 ff ff          	and    ax,0xffff
    42b0:	ff                   	(bad)  
    42b1:	7f 66                	jg     0x4319
    42b3:	83 c8 01             	or     eax,0x1
    42b6:	0f 22 c0             	mov    cr0,eax
    42b9:	eb 00                	jmp    0x42bb
    42bb:	b8 08 00 8e d8       	mov    eax,0xd88e0008
    42c0:	8e c0                	mov    es,eax
    42c2:	8e e0                	mov    fs,eax
    42c4:	8e e8                	mov    gs,eax
    42c6:	8e d0                	mov    ss,eax
    42c8:	66 be 90 c3          	mov    si,0xc390
    42cc:	00 00                	add    BYTE PTR [eax],al
    42ce:	66 bf 00 00          	mov    di,0x0
    42d2:	28 00                	sub    BYTE PTR [eax],al
    42d4:	66 b9 00 00          	mov    cx,0x0
    42d8:	02 00                	add    al,BYTE PTR [eax]
    42da:	e8 72 00 66 be       	call   0xbe664351
    42df:	00 7c 00 00          	add    BYTE PTR [eax+eax*1+0x0],bh
    42e3:	66 bf 00 00          	mov    di,0x0
    42e7:	10 00                	adc    BYTE PTR [eax],al
    42e9:	66 b9 80 00          	mov    cx,0x80
    42ed:	00 00                	add    BYTE PTR [eax],al
    42ef:	e8 5d 00 66 be       	call   0xbe664351
    42f4:	00 82 00 00 66 bf    	add    BYTE PTR [edx-0x409a0000],al
    42fa:	00 02                	add    BYTE PTR [edx],al
    42fc:	10 00                	adc    BYTE PTR [eax],al
    42fe:	66 b9 00 00          	mov    cx,0x0
    4302:	00 00                	add    BYTE PTR [eax],al
    4304:	8a 0e                	mov    cl,BYTE PTR [esi]
    4306:	f0 0f 66 69 c9       	lock pcmpgtd mm5,QWORD PTR [ecx-0x37]
    430b:	00 12                	add    BYTE PTR [edx],dl
    430d:	00 00                	add    BYTE PTR [eax],al
    430f:	66 81 e9 80 00       	sub    cx,0x80
    4314:	00 00                	add    BYTE PTR [eax],al
    4316:	66 bb 00 00          	mov    bx,0x0
    431a:	28 00                	sub    BYTE PTR [eax],al
    431c:	66 67 8b 4b 10       	mov    cx,WORD PTR [bp+di+0x10]
    4321:	66 83 c1 03          	add    cx,0x3
    4325:	66 c1 e9 02          	shr    cx,0x2
    4329:	74 10                	je     0x433b
    432b:	66 67 8b 73 14       	mov    si,WORD PTR [bp+di+0x14]
    4330:	66 01 de             	add    si,bx
    4333:	66 67 8b 7b 0c       	mov    di,WORD PTR [bp+di+0xc]
    4338:	e8 14 00 66 67       	call   0x67664351
    433d:	8b 63 0c             	mov    esp,DWORD PTR [ebx+0xc]
    4340:	66 ea 1b 00 00 00    	jmp    0x0:0x1b
    4346:	10 00                	adc    BYTE PTR [eax],al
    4348:	e4 64                	in     al,0x64
    434a:	24 02                	and    al,0x2
    434c:	75 fa                	jne    0x4348
    434e:	c3                   	ret    
    434f:	66 67 8b 06 66 83    	mov    ax,WORD PTR ds:0x8366
    4355:	c6 04 66 67          	mov    BYTE PTR [esi+eiz*2],0x67
    4359:	89 07                	mov    DWORD PTR [edi],eax
    435b:	66 83 c7 04          	add    di,0x4
    435f:	66 83 e9 01          	sub    cx,0x1
    4363:	75 ea                	jne    0x434f
    4365:	c3                   	ret    
	...
    4376:	00 00                	add    BYTE PTR [eax],al
    4378:	ff                   	(bad)  
    4379:	ff 00                	inc    DWORD PTR [eax]
    437b:	00 00                	add    BYTE PTR [eax],al
    437d:	92                   	xchg   edx,eax
    437e:	cf                   	iret   
    437f:	00 ff                	add    bh,bh
    4381:	ff 00                	inc    DWORD PTR [eax]
    4383:	00 28                	add    BYTE PTR [eax],ch
    4385:	9a 47 00 00 00 17 00 	call   0x17:0x47
    438c:	70 c3                	jo     0x4351
    438e:	00 00                	add    BYTE PTR [eax],al
    4390:	00 00                	add    BYTE PTR [eax],al
    4392:	01 00                	add    DWORD PTR [eax],eax
    4394:	48                   	dec    eax
    4395:	61                   	popa   
    4396:	72 69                	jb     0x4401
    4398:	00 00                	add    BYTE PTR [eax],al
    439a:	00 00                	add    BYTE PTR [eax],al
    439c:	00 00                	add    BYTE PTR [eax],al
    439e:	31 00                	xor    DWORD PTR [eax],eax
    43a0:	dc 16                	fcom   QWORD PTR [esi]
    43a2:	00 00                	add    BYTE PTR [eax],al
    43a4:	ce                   	into   
    43a5:	3b 00                	cmp    eax,DWORD PTR [eax]
    43a7:	00 00                	add    BYTE PTR [eax],al
    43a9:	00 00                	add    BYTE PTR [eax],al
    43ab:	e9 03 03 00 00       	jmp    0x46b3
    43b0:	01 00                	add    DWORD PTR [eax],eax
	...
    43be:	00 00                	add    BYTE PTR [eax],al
    43c0:	55                   	push   ebp
    43c1:	89 e5                	mov    ebp,esp
    43c3:	81 ec 48 02 00 00    	sub    esp,0x248
    43c9:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    43d0:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    43d7:	6a 00                	push   0x0
    43d9:	8d 85 cc fd ff ff    	lea    eax,[ebp-0x234]
    43df:	50                   	push   eax
    43e0:	68 80 00 00 00       	push   0x80
    43e5:	8d 45 cc             	lea    eax,[ebp-0x34]
    43e8:	50                   	push   eax
    43e9:	e8 dd 13 00 00       	call   0x57cb
    43ee:	83 c4 10             	add    esp,0x10
    43f1:	e8 9e 35 00 00       	call   0x7994
    43f6:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    43f9:	83 ec 04             	sub    esp,0x4
    43fc:	6a 64                	push   0x64
    43fe:	8d 45 cc             	lea    eax,[ebp-0x34]
    4401:	50                   	push   eax
    4402:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    4405:	e8 04 36 00 00       	call   0x7a0e
    440a:	83 c4 10             	add    esp,0x10
    440d:	83 ec 08             	sub    esp,0x8
    4410:	6a 64                	push   0x64
    4412:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    4415:	e8 0c 36 00 00       	call   0x7a26
    441a:	83 c4 10             	add    esp,0x10
    441d:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    4421:	e8 bc 29 00 00       	call   0x6de2
    4426:	83 ec 0c             	sub    esp,0xc
    4429:	8d 45 cc             	lea    eax,[ebp-0x34]
    442c:	50                   	push   eax
    442d:	e8 fc 14 00 00       	call   0x592e
    4432:	83 c4 10             	add    esp,0x10
    4435:	85 c0                	test   eax,eax
    4437:	75 07                	jne    0x4440
    4439:	e8 a8 29 00 00       	call   0x6de6
    443e:	eb dd                	jmp    0x441d
    4440:	83 ec 0c             	sub    esp,0xc
    4443:	8d 45 cc             	lea    eax,[ebp-0x34]
    4446:	50                   	push   eax
    4447:	e8 73 14 00 00       	call   0x58bf
    444c:	83 c4 10             	add    esp,0x10
    444f:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    4452:	e8 8d 29 00 00       	call   0x6de4
    4457:	83 7d e8 64          	cmp    DWORD PTR [ebp-0x18],0x64
    445b:	75 c0                	jne    0x441d
    445d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    4460:	2b 45 f0             	sub    eax,DWORD PTR [ebp-0x10]
    4463:	83 ec 04             	sub    esp,0x4
    4466:	50                   	push   eax
    4467:	68 94 16 31 00       	push   0x311694
    446c:	8d 85 c0 fd ff ff    	lea    eax,[ebp-0x240]
    4472:	50                   	push   eax
    4473:	e8 0e 37 00 00       	call   0x7b86
    4478:	83 c4 10             	add    esp,0x10
    447b:	83 ec 04             	sub    esp,0x4
    447e:	6a 0b                	push   0xb
    4480:	8d 85 c0 fd ff ff    	lea    eax,[ebp-0x240]
    4486:	50                   	push   eax
    4487:	6a 08                	push   0x8
    4489:	6a 00                	push   0x0
    448b:	6a 1c                	push   0x1c
    448d:	6a 18                	push   0x18
    448f:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    4492:	e8 7f 0e 00 00       	call   0x5316
    4497:	83 c4 20             	add    esp,0x20
    449a:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    449d:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    44a0:	83 ec 08             	sub    esp,0x8
    44a3:	6a 64                	push   0x64
    44a5:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    44a8:	e8 79 35 00 00       	call   0x7a26
    44ad:	83 c4 10             	add    esp,0x10
    44b0:	e9 68 ff ff ff       	jmp    0x441d
    44b5:	55                   	push   ebp
    44b6:	89 e5                	mov    ebp,esp
    44b8:	53                   	push   ebx
    44b9:	81 ec 24 02 00 00    	sub    esp,0x224
    44bf:	e8 11 23 00 00       	call   0x67d5
    44c4:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    44c7:	c7 45 f4 10 00 00 00 	mov    DWORD PTR [ebp-0xc],0x10
    44ce:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    44d5:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    44d8:	8d 50 10             	lea    edx,[eax+0x10]
    44db:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    44de:	8d 85 e4 fd ff ff    	lea    eax,[ebp-0x21c]
    44e4:	50                   	push   eax
    44e5:	68 80 00 00 00       	push   0x80
    44ea:	52                   	push   edx
    44eb:	e8 db 12 00 00       	call   0x57cb
    44f0:	83 c4 10             	add    esp,0x10
    44f3:	e8 9c 34 00 00       	call   0x7994
    44f8:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    44fb:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    44fe:	83 c0 10             	add    eax,0x10
    4501:	83 ec 04             	sub    esp,0x4
    4504:	6a 01                	push   0x1
    4506:	50                   	push   eax
    4507:	ff 75 e8             	push   DWORD PTR [ebp-0x18]
    450a:	e8 ff 34 00 00       	call   0x7a0e
    450f:	83 c4 10             	add    esp,0x10
    4512:	83 ec 08             	sub    esp,0x8
    4515:	6a 32                	push   0x32
    4517:	ff 75 e8             	push   DWORD PTR [ebp-0x18]
    451a:	e8 07 35 00 00       	call   0x7a26
    451f:	83 c4 10             	add    esp,0x10
    4522:	83 ec 04             	sub    esp,0x4
    4525:	6a 01                	push   0x1
    4527:	68 97 16 31 00       	push   0x311697
    452c:	6a 00                	push   0x0
    452e:	6a 07                	push   0x7
    4530:	6a 1c                	push   0x1c
    4532:	6a 08                	push   0x8
    4534:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    4537:	e8 da 0d 00 00       	call   0x5316
    453c:	83 c4 20             	add    esp,0x20
    453f:	e8 9e 28 00 00       	call   0x6de2
    4544:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    4547:	83 c0 10             	add    eax,0x10
    454a:	83 ec 0c             	sub    esp,0xc
    454d:	50                   	push   eax
    454e:	e8 db 13 00 00       	call   0x592e
    4553:	83 c4 10             	add    esp,0x10
    4556:	85 c0                	test   eax,eax
    4558:	75 15                	jne    0x456f
    455a:	83 ec 0c             	sub    esp,0xc
    455d:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    4560:	e8 19 28 00 00       	call   0x6d7e
    4565:	83 c4 10             	add    esp,0x10
    4568:	e8 77 28 00 00       	call   0x6de4
    456d:	eb d0                	jmp    0x453f
    456f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    4572:	83 c0 10             	add    eax,0x10
    4575:	83 ec 0c             	sub    esp,0xc
    4578:	50                   	push   eax
    4579:	e8 41 13 00 00       	call   0x58bf
    457e:	83 c4 10             	add    esp,0x10
    4581:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
    4584:	e8 5b 28 00 00       	call   0x6de4
    4589:	83 7d e4 01          	cmp    DWORD PTR [ebp-0x1c],0x1
    458d:	7f 54                	jg     0x45e3
    458f:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
    4593:	74 20                	je     0x45b5
    4595:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    4598:	83 c0 10             	add    eax,0x10
    459b:	83 ec 04             	sub    esp,0x4
    459e:	6a 00                	push   0x0
    45a0:	50                   	push   eax
    45a1:	ff 75 e8             	push   DWORD PTR [ebp-0x18]
    45a4:	e8 65 34 00 00       	call   0x7a0e
    45a9:	83 c4 10             	add    esp,0x10
    45ac:	c7 45 f0 07 00 00 00 	mov    DWORD PTR [ebp-0x10],0x7
    45b3:	eb 1e                	jmp    0x45d3
    45b5:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    45b8:	83 c0 10             	add    eax,0x10
    45bb:	83 ec 04             	sub    esp,0x4
    45be:	6a 01                	push   0x1
    45c0:	50                   	push   eax
    45c1:	ff 75 e8             	push   DWORD PTR [ebp-0x18]
    45c4:	e8 45 34 00 00       	call   0x7a0e
    45c9:	83 c4 10             	add    esp,0x10
    45cc:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    45d3:	83 ec 08             	sub    esp,0x8
    45d6:	6a 32                	push   0x32
    45d8:	ff 75 e8             	push   DWORD PTR [ebp-0x18]
    45db:	e8 46 34 00 00       	call   0x7a26
    45e0:	83 c4 10             	add    esp,0x10
    45e3:	81 7d e4 ff 00 00 00 	cmp    DWORD PTR [ebp-0x1c],0xff
    45ea:	7e 79                	jle    0x4665
    45ec:	81 7d e4 ff 01 00 00 	cmp    DWORD PTR [ebp-0x1c],0x1ff
    45f3:	7f 70                	jg     0x4665
    45f5:	81 7d e4 08 01 00 00 	cmp    DWORD PTR [ebp-0x1c],0x108
    45fc:	75 2a                	jne    0x4628
    45fe:	83 7d f4 10          	cmp    DWORD PTR [ebp-0xc],0x10
    4602:	7e 61                	jle    0x4665
    4604:	83 ec 04             	sub    esp,0x4
    4607:	6a 01                	push   0x1
    4609:	68 99 16 31 00       	push   0x311699
    460e:	6a 00                	push   0x0
    4610:	6a 07                	push   0x7
    4612:	6a 1c                	push   0x1c
    4614:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    4617:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    461a:	e8 f7 0c 00 00       	call   0x5316
    461f:	83 c4 20             	add    esp,0x20
    4622:	83 6d f4 08          	sub    DWORD PTR [ebp-0xc],0x8
    4626:	eb 3d                	jmp    0x4665
    4628:	81 7d f4 ef 00 00 00 	cmp    DWORD PTR [ebp-0xc],0xef
    462f:	7f 34                	jg     0x4665
    4631:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    4634:	88 85 e2 fd ff ff    	mov    BYTE PTR [ebp-0x21e],al
    463a:	c6 85 e3 fd ff ff 00 	mov    BYTE PTR [ebp-0x21d],0x0
    4641:	83 ec 04             	sub    esp,0x4
    4644:	6a 01                	push   0x1
    4646:	8d 85 e2 fd ff ff    	lea    eax,[ebp-0x21e]
    464c:	50                   	push   eax
    464d:	6a 00                	push   0x0
    464f:	6a 07                	push   0x7
    4651:	6a 1c                	push   0x1c
    4653:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    4656:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    4659:	e8 b8 0c 00 00       	call   0x5316
    465e:	83 c4 20             	add    esp,0x20
    4661:	83 45 f4 08          	add    DWORD PTR [ebp-0xc],0x8
    4665:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    4668:	8d 58 07             	lea    ebx,[eax+0x7]
    466b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    466e:	0f b6 c8             	movzx  ecx,al
    4671:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    4674:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    4677:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    467a:	8b 00                	mov    eax,DWORD PTR [eax]
    467c:	83 ec 04             	sub    esp,0x4
    467f:	6a 2b                	push   0x2b
    4681:	53                   	push   ebx
    4682:	6a 1c                	push   0x1c
    4684:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    4687:	51                   	push   ecx
    4688:	52                   	push   edx
    4689:	50                   	push   eax
    468a:	e8 7e 13 00 00       	call   0x5a0d
    468f:	83 c4 20             	add    esp,0x20
    4692:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    4695:	83 c0 08             	add    eax,0x8
    4698:	83 ec 0c             	sub    esp,0xc
    469b:	6a 2c                	push   0x2c
    469d:	50                   	push   eax
    469e:	6a 1c                	push   0x1c
    46a0:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    46a3:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    46a6:	e8 96 30 00 00       	call   0x7741
    46ab:	83 c4 20             	add    esp,0x20
    46ae:	e9 8c fe ff ff       	jmp    0x453f
    46b3:	55                   	push   ebp
    46b4:	89 e5                	mov    ebp,esp
    46b6:	53                   	push   ebx
    46b7:	81 ec c4 03 00 00    	sub    esp,0x3c4
    46bd:	c7 45 e0 f0 0f 00 00 	mov    DWORD PTR [ebp-0x20],0xff0
    46c4:	c7 45 dc 00 00 3c 00 	mov    DWORD PTR [ebp-0x24],0x3c0000
    46cb:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
    46d2:	e8 dd 0e 00 00       	call   0x55b4
    46d7:	e8 3a 18 00 00       	call   0x5f16
    46dc:	e8 03 27 00 00       	call   0x6de4
    46e1:	6a 00                	push   0x0
    46e3:	8d 85 64 fd ff ff    	lea    eax,[ebp-0x29c]
    46e9:	50                   	push   eax
    46ea:	68 80 00 00 00       	push   0x80
    46ef:	8d 45 8c             	lea    eax,[ebp-0x74]
    46f2:	50                   	push   eax
    46f3:	e8 d3 10 00 00       	call   0x57cb
    46f8:	83 c4 10             	add    esp,0x10
    46fb:	e8 ec 31 00 00       	call   0x78ec
    4700:	83 ec 08             	sub    esp,0x8
    4703:	68 00 01 00 00       	push   0x100
    4708:	8d 45 8c             	lea    eax,[ebp-0x74]
    470b:	50                   	push   eax
    470c:	e8 5d 19 00 00       	call   0x606e
    4711:	83 c4 10             	add    esp,0x10
    4714:	83 ec 04             	sub    esp,0x4
    4717:	8d 85 54 fd ff ff    	lea    eax,[ebp-0x2ac]
    471d:	50                   	push   eax
    471e:	68 00 02 00 00       	push   0x200
    4723:	8d 45 8c             	lea    eax,[ebp-0x74]
    4726:	50                   	push   eax
    4727:	e8 1c 1f 00 00       	call   0x6648
    472c:	83 c4 10             	add    esp,0x10
    472f:	83 ec 08             	sub    esp,0x8
    4732:	68 f8 00 00 00       	push   0xf8
    4737:	6a 21                	push   0x21
    4739:	e8 c8 26 00 00       	call   0x6e06
    473e:	83 c4 10             	add    esp,0x10
    4741:	83 ec 08             	sub    esp,0x8
    4744:	68 ef 00 00 00       	push   0xef
    4749:	68 a1 00 00 00       	push   0xa1
    474e:	e8 b3 26 00 00       	call   0x6e06
    4753:	83 c4 10             	add    esp,0x10
    4756:	83 ec 08             	sub    esp,0x8
    4759:	68 ff ff ff bf       	push   0xbfffffff
    475e:	68 00 00 40 00       	push   0x400000
    4763:	e8 47 19 00 00       	call   0x60af
    4768:	83 c4 10             	add    esp,0x10
    476b:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
    476e:	83 ec 0c             	sub    esp,0xc
    4771:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    4774:	e8 7e 1a 00 00       	call   0x61f7
    4779:	83 c4 10             	add    esp,0x10
    477c:	83 ec 04             	sub    esp,0x4
    477f:	68 00 e0 09 00       	push   0x9e000
    4784:	68 00 10 00 00       	push   0x1000
    4789:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    478c:	e8 e1 1b 00 00       	call   0x6372
    4791:	83 c4 10             	add    esp,0x10
    4794:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    4797:	2d 00 00 40 00       	sub    eax,0x400000
    479c:	83 ec 04             	sub    esp,0x4
    479f:	50                   	push   eax
    47a0:	68 00 00 40 00       	push   0x400000
    47a5:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    47a8:	e8 c5 1b 00 00       	call   0x6372
    47ad:	83 c4 10             	add    esp,0x10
    47b0:	e8 8e 11 00 00       	call   0x5943
    47b5:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    47b8:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
    47bc:	0f bf c8             	movsx  ecx,ax
    47bf:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    47c2:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
    47c6:	0f bf d0             	movsx  edx,ax
    47c9:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    47cc:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    47cf:	51                   	push   ecx
    47d0:	52                   	push   edx
    47d1:	50                   	push   eax
    47d2:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    47d5:	e8 e9 26 00 00       	call   0x6ec3
    47da:	83 c4 10             	add    esp,0x10
    47dd:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
    47e0:	83 ec 0c             	sub    esp,0xc
    47e3:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    47e6:	e8 6c 21 00 00       	call   0x6957
    47eb:	83 c4 10             	add    esp,0x10
    47ee:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
    47f1:	8b 45 d0             	mov    eax,DWORD PTR [ebp-0x30]
    47f4:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
    47f7:	83 ec 04             	sub    esp,0x4
    47fa:	6a 00                	push   0x0
    47fc:	6a 01                	push   0x1
    47fe:	ff 75 d0             	push   DWORD PTR [ebp-0x30]
    4801:	e8 3c 24 00 00       	call   0x6c42
    4806:	83 c4 10             	add    esp,0x10
    4809:	83 ec 0c             	sub    esp,0xc
    480c:	ff 75 d4             	push   DWORD PTR [ebp-0x2c]
    480f:	e8 96 27 00 00       	call   0x6faa
    4814:	83 c4 10             	add    esp,0x10
    4817:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
    481a:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    481d:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
    4821:	0f bf d0             	movsx  edx,ax
    4824:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4827:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
    482b:	98                   	cwde   
    482c:	0f af c2             	imul   eax,edx
    482f:	83 ec 08             	sub    esp,0x8
    4832:	50                   	push   eax
    4833:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    4836:	e8 0b 1b 00 00       	call   0x6346
    483b:	83 c4 10             	add    esp,0x10
    483e:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
    4841:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4844:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
    4848:	0f bf d0             	movsx  edx,ax
    484b:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    484e:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
    4852:	98                   	cwde   
    4853:	83 ec 0c             	sub    esp,0xc
    4856:	6a ff                	push   0xffffffff
    4858:	52                   	push   edx
    4859:	50                   	push   eax
    485a:	ff 75 c8             	push   DWORD PTR [ebp-0x38]
    485d:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
    4860:	e8 bc 27 00 00       	call   0x7021
    4865:	83 c4 20             	add    esp,0x20
    4868:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    486b:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
    486f:	0f bf d0             	movsx  edx,ax
    4872:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4875:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
    4879:	98                   	cwde   
    487a:	83 ec 04             	sub    esp,0x4
    487d:	52                   	push   edx
    487e:	50                   	push   eax
    487f:	ff 75 c8             	push   DWORD PTR [ebp-0x38]
    4882:	e8 d8 11 00 00       	call   0x5a5f
    4887:	83 c4 10             	add    esp,0x10
    488a:	83 ec 0c             	sub    esp,0xc
    488d:	ff 75 d4             	push   DWORD PTR [ebp-0x2c]
    4890:	e8 15 27 00 00       	call   0x6faa
    4895:	83 c4 10             	add    esp,0x10
    4898:	89 45 c4             	mov    DWORD PTR [ebp-0x3c],eax
    489b:	83 ec 08             	sub    esp,0x8
    489e:	68 80 20 00 00       	push   0x2080
    48a3:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    48a6:	e8 9b 1a 00 00       	call   0x6346
    48ab:	83 c4 10             	add    esp,0x10
    48ae:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
    48b1:	83 ec 0c             	sub    esp,0xc
    48b4:	6a ff                	push   0xffffffff
    48b6:	6a 34                	push   0x34
    48b8:	68 90 00 00 00       	push   0x90
    48bd:	ff 75 c0             	push   DWORD PTR [ebp-0x40]
    48c0:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    48c3:	e8 59 27 00 00       	call   0x7021
    48c8:	83 c4 20             	add    esp,0x20
    48cb:	83 ec 0c             	sub    esp,0xc
    48ce:	6a 01                	push   0x1
    48d0:	68 9b 16 31 00       	push   0x31169b
    48d5:	6a 34                	push   0x34
    48d7:	68 90 00 00 00       	push   0x90
    48dc:	ff 75 c0             	push   DWORD PTR [ebp-0x40]
    48df:	e8 c8 07 00 00       	call   0x50ac
    48e4:	83 c4 20             	add    esp,0x20
    48e7:	83 ec 08             	sub    esp,0x8
    48ea:	6a 07                	push   0x7
    48ec:	6a 10                	push   0x10
    48ee:	68 80 00 00 00       	push   0x80
    48f3:	6a 1c                	push   0x1c
    48f5:	6a 08                	push   0x8
    48f7:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    48fa:	e8 b6 0a 00 00       	call   0x53b5
    48ff:	83 c4 20             	add    esp,0x20
    4902:	c7 45 ec 08 00 00 00 	mov    DWORD PTR [ebp-0x14],0x8
    4909:	c7 45 e8 07 00 00 00 	mov    DWORD PTR [ebp-0x18],0x7
    4910:	e8 7f 30 00 00       	call   0x7994
    4915:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
    4918:	83 ec 04             	sub    esp,0x4
    491b:	6a 01                	push   0x1
    491d:	8d 45 8c             	lea    eax,[ebp-0x74]
    4920:	50                   	push   eax
    4921:	ff 75 bc             	push   DWORD PTR [ebp-0x44]
    4924:	e8 e5 30 00 00       	call   0x7a0e
    4929:	83 c4 10             	add    esp,0x10
    492c:	83 ec 08             	sub    esp,0x8
    492f:	6a 32                	push   0x32
    4931:	ff 75 bc             	push   DWORD PTR [ebp-0x44]
    4934:	e8 ed 30 00 00       	call   0x7a26
    4939:	83 c4 10             	add    esp,0x10
    493c:	83 ec 0c             	sub    esp,0xc
    493f:	ff 75 d4             	push   DWORD PTR [ebp-0x2c]
    4942:	e8 63 26 00 00       	call   0x6faa
    4947:	83 c4 10             	add    esp,0x10
    494a:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
    494d:	83 ec 08             	sub    esp,0x8
    4950:	68 00 a5 00 00       	push   0xa500
    4955:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    4958:	e8 e9 19 00 00       	call   0x6346
    495d:	83 c4 10             	add    esp,0x10
    4960:	89 45 b4             	mov    DWORD PTR [ebp-0x4c],eax
    4963:	83 ec 0c             	sub    esp,0xc
    4966:	6a ff                	push   0xffffffff
    4968:	68 a5 00 00 00       	push   0xa5
    496d:	68 00 01 00 00       	push   0x100
    4972:	ff 75 b4             	push   DWORD PTR [ebp-0x4c]
    4975:	ff 75 b8             	push   DWORD PTR [ebp-0x48]
    4978:	e8 a4 26 00 00       	call   0x7021
    497d:	83 c4 20             	add    esp,0x20
    4980:	83 ec 0c             	sub    esp,0xc
    4983:	6a 00                	push   0x0
    4985:	68 a2 16 31 00       	push   0x3116a2
    498a:	68 a5 00 00 00       	push   0xa5
    498f:	68 00 01 00 00       	push   0x100
    4994:	ff 75 b4             	push   DWORD PTR [ebp-0x4c]
    4997:	e8 10 07 00 00       	call   0x50ac
    499c:	83 c4 20             	add    esp,0x20
    499f:	83 ec 08             	sub    esp,0x8
    49a2:	6a 00                	push   0x0
    49a4:	68 80 00 00 00       	push   0x80
    49a9:	68 f0 00 00 00       	push   0xf0
    49ae:	6a 1c                	push   0x1c
    49b0:	6a 08                	push   0x8
    49b2:	ff 75 b8             	push   DWORD PTR [ebp-0x48]
    49b5:	e8 fb 09 00 00       	call   0x53b5
    49ba:	83 c4 20             	add    esp,0x20
    49bd:	e8 85 21 00 00       	call   0x6b47
    49c2:	89 45 b0             	mov    DWORD PTR [ebp-0x50],eax
    49c5:	83 ec 08             	sub    esp,0x8
    49c8:	68 00 00 01 00       	push   0x10000
    49cd:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    49d0:	e8 71 19 00 00       	call   0x6346
    49d5:	83 c4 10             	add    esp,0x10
    49d8:	05 f8 ff 00 00       	add    eax,0xfff8
    49dd:	89 c2                	mov    edx,eax
    49df:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    49e2:	89 50 64             	mov    DWORD PTR [eax+0x64],edx
    49e5:	ba 25 01 00 00       	mov    edx,0x125
    49ea:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    49ed:	89 50 4c             	mov    DWORD PTR [eax+0x4c],edx
    49f0:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    49f3:	c7 40 74 08 00 00 00 	mov    DWORD PTR [eax+0x74],0x8
    49fa:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    49fd:	c7 40 78 10 00 00 00 	mov    DWORD PTR [eax+0x78],0x10
    4a04:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    4a07:	c7 40 7c 08 00 00 00 	mov    DWORD PTR [eax+0x7c],0x8
    4a0e:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    4a11:	c7 80 80 00 00 00 08 	mov    DWORD PTR [eax+0x80],0x8
    4a18:	00 00 00 
    4a1b:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    4a1e:	c7 80 84 00 00 00 08 	mov    DWORD PTR [eax+0x84],0x8
    4a25:	00 00 00 
    4a28:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    4a2b:	c7 80 88 00 00 00 08 	mov    DWORD PTR [eax+0x88],0x8
    4a32:	00 00 00 
    4a35:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    4a38:	8b 40 64             	mov    eax,DWORD PTR [eax+0x64]
    4a3b:	83 c0 04             	add    eax,0x4
    4a3e:	89 c2                	mov    edx,eax
    4a40:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
    4a43:	89 02                	mov    DWORD PTR [edx],eax
    4a45:	83 ec 04             	sub    esp,0x4
    4a48:	6a 02                	push   0x2
    4a4a:	6a 02                	push   0x2
    4a4c:	ff 75 b0             	push   DWORD PTR [ebp-0x50]
    4a4f:	e8 ee 21 00 00       	call   0x6c42
    4a54:	83 c4 10             	add    esp,0x10
    4a57:	83 ec 0c             	sub    esp,0xc
    4a5a:	ff 75 d4             	push   DWORD PTR [ebp-0x2c]
    4a5d:	e8 48 25 00 00       	call   0x6faa
    4a62:	83 c4 10             	add    esp,0x10
    4a65:	89 45 ac             	mov    DWORD PTR [ebp-0x54],eax
    4a68:	83 ec 0c             	sub    esp,0xc
    4a6b:	6a 63                	push   0x63
    4a6d:	6a 10                	push   0x10
    4a6f:	6a 10                	push   0x10
    4a71:	8d 85 48 fc ff ff    	lea    eax,[ebp-0x3b8]
    4a77:	50                   	push   eax
    4a78:	ff 75 ac             	push   DWORD PTR [ebp-0x54]
    4a7b:	e8 a1 25 00 00       	call   0x7021
    4a80:	83 c4 20             	add    esp,0x20
    4a83:	83 ec 08             	sub    esp,0x8
    4a86:	6a 63                	push   0x63
    4a88:	8d 85 48 fc ff ff    	lea    eax,[ebp-0x3b8]
    4a8e:	50                   	push   eax
    4a8f:	e8 e8 11 00 00       	call   0x5c7c
    4a94:	83 c4 10             	add    esp,0x10
    4a97:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4a9a:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
    4a9e:	98                   	cwde   
    4a9f:	83 e8 10             	sub    eax,0x10
    4aa2:	89 c2                	mov    edx,eax
    4aa4:	c1 ea 1f             	shr    edx,0x1f
    4aa7:	01 d0                	add    eax,edx
    4aa9:	d1 f8                	sar    eax,1
    4aab:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    4aae:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4ab1:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
    4ab5:	98                   	cwde   
    4ab6:	83 e8 2c             	sub    eax,0x2c
    4ab9:	89 c2                	mov    edx,eax
    4abb:	c1 ea 1f             	shr    edx,0x1f
    4abe:	01 d0                	add    eax,edx
    4ac0:	d1 f8                	sar    eax,1
    4ac2:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    4ac5:	83 ec 04             	sub    esp,0x4
    4ac8:	6a 00                	push   0x0
    4aca:	6a 00                	push   0x0
    4acc:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
    4acf:	e8 de 2c 00 00       	call   0x77b2
    4ad4:	83 c4 10             	add    esp,0x10
    4ad7:	83 ec 04             	sub    esp,0x4
    4ada:	6a 04                	push   0x4
    4adc:	6a 20                	push   0x20
    4ade:	ff 75 b8             	push   DWORD PTR [ebp-0x48]
    4ae1:	e8 cc 2c 00 00       	call   0x77b2
    4ae6:	83 c4 10             	add    esp,0x10
    4ae9:	83 ec 04             	sub    esp,0x4
    4aec:	6a 38                	push   0x38
    4aee:	6a 40                	push   0x40
    4af0:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    4af3:	e8 ba 2c 00 00       	call   0x77b2
    4af8:	83 c4 10             	add    esp,0x10
    4afb:	83 ec 04             	sub    esp,0x4
    4afe:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    4b01:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    4b04:	ff 75 ac             	push   DWORD PTR [ebp-0x54]
    4b07:	e8 a6 2c 00 00       	call   0x77b2
    4b0c:	83 c4 10             	add    esp,0x10
    4b0f:	83 ec 08             	sub    esp,0x8
    4b12:	6a 00                	push   0x0
    4b14:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
    4b17:	e8 ae 28 00 00       	call   0x73ca
    4b1c:	83 c4 10             	add    esp,0x10
    4b1f:	83 ec 08             	sub    esp,0x8
    4b22:	6a 01                	push   0x1
    4b24:	ff 75 b8             	push   DWORD PTR [ebp-0x48]
    4b27:	e8 9e 28 00 00       	call   0x73ca
    4b2c:	83 c4 10             	add    esp,0x10
    4b2f:	83 ec 08             	sub    esp,0x8
    4b32:	6a 02                	push   0x2
    4b34:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    4b37:	e8 8e 28 00 00       	call   0x73ca
    4b3c:	83 c4 10             	add    esp,0x10
    4b3f:	83 ec 08             	sub    esp,0x8
    4b42:	6a 03                	push   0x3
    4b44:	ff 75 ac             	push   DWORD PTR [ebp-0x54]
    4b47:	e8 7e 28 00 00       	call   0x73ca
    4b4c:	83 c4 10             	add    esp,0x10
    4b4f:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    4b52:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    4b55:	68 aa 16 31 00       	push   0x3116aa
    4b5a:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4b60:	50                   	push   eax
    4b61:	e8 20 30 00 00       	call   0x7b86
    4b66:	83 c4 10             	add    esp,0x10
    4b69:	83 ec 04             	sub    esp,0x4
    4b6c:	6a 0a                	push   0xa
    4b6e:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4b74:	50                   	push   eax
    4b75:	6a 0e                	push   0xe
    4b77:	6a 07                	push   0x7
    4b79:	6a 00                	push   0x0
    4b7b:	6a 00                	push   0x0
    4b7d:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
    4b80:	e8 91 07 00 00       	call   0x5316
    4b85:	83 c4 20             	add    esp,0x20
    4b88:	83 ec 0c             	sub    esp,0xc
    4b8b:	ff 75 dc             	push   DWORD PTR [ebp-0x24]
    4b8e:	e8 91 16 00 00       	call   0x6224
    4b93:	83 c4 10             	add    esp,0x10
    4b96:	c1 e8 0a             	shr    eax,0xa
    4b99:	89 c2                	mov    edx,eax
    4b9b:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    4b9e:	c1 e8 14             	shr    eax,0x14
    4ba1:	52                   	push   edx
    4ba2:	50                   	push   eax
    4ba3:	68 b3 16 31 00       	push   0x3116b3
    4ba8:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4bae:	50                   	push   eax
    4baf:	e8 d2 2f 00 00       	call   0x7b86
    4bb4:	83 c4 10             	add    esp,0x10
    4bb7:	83 ec 04             	sub    esp,0x4
    4bba:	6a 28                	push   0x28
    4bbc:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4bc2:	50                   	push   eax
    4bc3:	6a 0e                	push   0xe
    4bc5:	6a 07                	push   0x7
    4bc7:	6a 20                	push   0x20
    4bc9:	6a 00                	push   0x0
    4bcb:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
    4bce:	e8 43 07 00 00       	call   0x5316
    4bd3:	83 c4 20             	add    esp,0x20
    4bd6:	e8 07 22 00 00       	call   0x6de2
    4bdb:	83 ec 0c             	sub    esp,0xc
    4bde:	8d 45 8c             	lea    eax,[ebp-0x74]
    4be1:	50                   	push   eax
    4be2:	e8 47 0d 00 00       	call   0x592e
    4be7:	83 c4 10             	add    esp,0x10
    4bea:	85 c0                	test   eax,eax
    4bec:	75 15                	jne    0x4c03
    4bee:	83 ec 0c             	sub    esp,0xc
    4bf1:	ff 75 d0             	push   DWORD PTR [ebp-0x30]
    4bf4:	e8 85 21 00 00       	call   0x6d7e
    4bf9:	83 c4 10             	add    esp,0x10
    4bfc:	e8 e3 21 00 00       	call   0x6de4
    4c01:	eb d3                	jmp    0x4bd6
    4c03:	83 ec 0c             	sub    esp,0xc
    4c06:	8d 45 8c             	lea    eax,[ebp-0x74]
    4c09:	50                   	push   eax
    4c0a:	e8 b0 0c 00 00       	call   0x58bf
    4c0f:	83 c4 10             	add    esp,0x10
    4c12:	89 45 a8             	mov    DWORD PTR [ebp-0x58],eax
    4c15:	e8 ca 21 00 00       	call   0x6de4
    4c1a:	81 7d a8 ff 00 00 00 	cmp    DWORD PTR [ebp-0x58],0xff
    4c21:	0f 8e 3a 02 00 00    	jle    0x4e61
    4c27:	81 7d a8 ff 01 00 00 	cmp    DWORD PTR [ebp-0x58],0x1ff
    4c2e:	0f 8f 2d 02 00 00    	jg     0x4e61
    4c34:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
    4c37:	2d 00 01 00 00       	sub    eax,0x100
    4c3c:	83 ec 04             	sub    esp,0x4
    4c3f:	50                   	push   eax
    4c40:	68 cd 16 31 00       	push   0x3116cd
    4c45:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4c4b:	50                   	push   eax
    4c4c:	e8 35 2f 00 00       	call   0x7b86
    4c51:	83 c4 10             	add    esp,0x10
    4c54:	83 ec 04             	sub    esp,0x4
    4c57:	6a 02                	push   0x2
    4c59:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4c5f:	50                   	push   eax
    4c60:	6a 0e                	push   0xe
    4c62:	6a 07                	push   0x7
    4c64:	6a 10                	push   0x10
    4c66:	6a 00                	push   0x0
    4c68:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
    4c6b:	e8 a6 06 00 00       	call   0x5316
    4c70:	83 c4 20             	add    esp,0x20
    4c73:	81 7d a8 53 01 00 00 	cmp    DWORD PTR [ebp-0x58],0x153
    4c7a:	0f 8f 86 00 00 00    	jg     0x4d06
    4c80:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
    4c83:	2d 00 01 00 00       	sub    eax,0x100
    4c88:	0f b6 80 00 00 31 00 	movzx  eax,BYTE PTR [eax+0x310000]
    4c8f:	84 c0                	test   al,al
    4c91:	74 73                	je     0x4d06
    4c93:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
    4c97:	75 42                	jne    0x4cdb
    4c99:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
    4c9c:	2d 00 01 00 00       	sub    eax,0x100
    4ca1:	0f b6 80 00 00 31 00 	movzx  eax,BYTE PTR [eax+0x310000]
    4ca8:	88 85 64 ff ff ff    	mov    BYTE PTR [ebp-0x9c],al
    4cae:	c6 85 65 ff ff ff 00 	mov    BYTE PTR [ebp-0x9b],0x0
    4cb5:	83 ec 04             	sub    esp,0x4
    4cb8:	6a 01                	push   0x1
    4cba:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4cc0:	50                   	push   eax
    4cc1:	6a 07                	push   0x7
    4cc3:	6a 00                	push   0x0
    4cc5:	6a 1c                	push   0x1c
    4cc7:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    4cca:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    4ccd:	e8 44 06 00 00       	call   0x5316
    4cd2:	83 c4 20             	add    esp,0x20
    4cd5:	83 45 ec 08          	add    DWORD PTR [ebp-0x14],0x8
    4cd9:	eb 2b                	jmp    0x4d06
    4cdb:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
    4cde:	2d 00 01 00 00       	sub    eax,0x100
    4ce3:	0f b6 80 00 00 31 00 	movzx  eax,BYTE PTR [eax+0x310000]
    4cea:	0f be c0             	movsx  eax,al
    4ced:	8d 90 00 01 00 00    	lea    edx,[eax+0x100]
    4cf3:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    4cf6:	83 c0 10             	add    eax,0x10
    4cf9:	83 ec 08             	sub    esp,0x8
    4cfc:	52                   	push   edx
    4cfd:	50                   	push   eax
    4cfe:	e8 0f 0b 00 00       	call   0x5812
    4d03:	83 c4 10             	add    esp,0x10
    4d06:	81 7d a8 0e 01 00 00 	cmp    DWORD PTR [ebp-0x58],0x10e
    4d0d:	75 47                	jne    0x4d56
    4d0f:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
    4d13:	75 2a                	jne    0x4d3f
    4d15:	83 7d ec 08          	cmp    DWORD PTR [ebp-0x14],0x8
    4d19:	7e 3b                	jle    0x4d56
    4d1b:	83 ec 04             	sub    esp,0x4
    4d1e:	6a 01                	push   0x1
    4d20:	68 99 16 31 00       	push   0x311699
    4d25:	6a 07                	push   0x7
    4d27:	6a 00                	push   0x0
    4d29:	6a 1c                	push   0x1c
    4d2b:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    4d2e:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    4d31:	e8 e0 05 00 00       	call   0x5316
    4d36:	83 c4 20             	add    esp,0x20
    4d39:	83 6d ec 08          	sub    DWORD PTR [ebp-0x14],0x8
    4d3d:	eb 17                	jmp    0x4d56
    4d3f:	8b 45 b0             	mov    eax,DWORD PTR [ebp-0x50]
    4d42:	83 c0 10             	add    eax,0x10
    4d45:	83 ec 08             	sub    esp,0x8
    4d48:	68 08 01 00 00       	push   0x108
    4d4d:	50                   	push   eax
    4d4e:	e8 bf 0a 00 00       	call   0x5812
    4d53:	83 c4 10             	add    esp,0x10
    4d56:	81 7d a8 0f 01 00 00 	cmp    DWORD PTR [ebp-0x58],0x10f
    4d5d:	0f 85 b0 00 00 00    	jne    0x4e13
    4d63:	83 7d e4 00          	cmp    DWORD PTR [ebp-0x1c],0x0
    4d67:	75 3b                	jne    0x4da4
    4d69:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
    4d70:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    4d73:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    4d76:	6a 00                	push   0x0
    4d78:	68 9b 16 31 00       	push   0x31169b
    4d7d:	50                   	push   eax
    4d7e:	ff 75 c0             	push   DWORD PTR [ebp-0x40]
    4d81:	e8 98 04 00 00       	call   0x521e
    4d86:	83 c4 10             	add    esp,0x10
    4d89:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
    4d8c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    4d8f:	6a 01                	push   0x1
    4d91:	68 a2 16 31 00       	push   0x3116a2
    4d96:	50                   	push   eax
    4d97:	ff 75 b4             	push   DWORD PTR [ebp-0x4c]
    4d9a:	e8 7f 04 00 00       	call   0x521e
    4d9f:	83 c4 10             	add    esp,0x10
    4da2:	eb 39                	jmp    0x4ddd
    4da4:	c7 45 e4 00 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x0
    4dab:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    4dae:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    4db1:	6a 01                	push   0x1
    4db3:	68 9b 16 31 00       	push   0x31169b
    4db8:	50                   	push   eax
    4db9:	ff 75 c0             	push   DWORD PTR [ebp-0x40]
    4dbc:	e8 5d 04 00 00       	call   0x521e
    4dc1:	83 c4 10             	add    esp,0x10
    4dc4:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
    4dc7:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    4dca:	6a 00                	push   0x0
    4dcc:	68 a2 16 31 00       	push   0x3116a2
    4dd1:	50                   	push   eax
    4dd2:	ff 75 b4             	push   DWORD PTR [ebp-0x4c]
    4dd5:	e8 44 04 00 00       	call   0x521e
    4dda:	83 c4 10             	add    esp,0x10
    4ddd:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    4de0:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    4de3:	83 ec 0c             	sub    esp,0xc
    4de6:	6a 15                	push   0x15
    4de8:	50                   	push   eax
    4de9:	6a 00                	push   0x0
    4deb:	6a 00                	push   0x0
    4ded:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    4df0:	e8 4c 29 00 00       	call   0x7741
    4df5:	83 c4 20             	add    esp,0x20
    4df8:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
    4dfb:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    4dfe:	83 ec 0c             	sub    esp,0xc
    4e01:	6a 15                	push   0x15
    4e03:	50                   	push   eax
    4e04:	6a 00                	push   0x0
    4e06:	6a 00                	push   0x0
    4e08:	ff 75 b8             	push   DWORD PTR [ebp-0x48]
    4e0b:	e8 31 29 00 00       	call   0x7741
    4e10:	83 c4 20             	add    esp,0x20
    4e13:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    4e16:	8d 58 07             	lea    ebx,[eax+0x7]
    4e19:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    4e1c:	0f b6 c8             	movzx  ecx,al
    4e1f:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    4e22:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    4e25:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    4e28:	8b 00                	mov    eax,DWORD PTR [eax]
    4e2a:	83 ec 04             	sub    esp,0x4
    4e2d:	6a 2b                	push   0x2b
    4e2f:	53                   	push   ebx
    4e30:	6a 1c                	push   0x1c
    4e32:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    4e35:	51                   	push   ecx
    4e36:	52                   	push   edx
    4e37:	50                   	push   eax
    4e38:	e8 d0 0b 00 00       	call   0x5a0d
    4e3d:	83 c4 20             	add    esp,0x20
    4e40:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    4e43:	83 c0 08             	add    eax,0x8
    4e46:	83 ec 0c             	sub    esp,0xc
    4e49:	6a 2c                	push   0x2c
    4e4b:	50                   	push   eax
    4e4c:	6a 1c                	push   0x1c
    4e4e:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    4e51:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    4e54:	e8 e8 28 00 00       	call   0x7741
    4e59:	83 c4 20             	add    esp,0x20
    4e5c:	e9 46 02 00 00       	jmp    0x50a7
    4e61:	81 7d a8 ff 01 00 00 	cmp    DWORD PTR [ebp-0x58],0x1ff
    4e68:	0f 8e 92 01 00 00    	jle    0x5000
    4e6e:	81 7d a8 ff 02 00 00 	cmp    DWORD PTR [ebp-0x58],0x2ff
    4e75:	0f 8f 85 01 00 00    	jg     0x5000
    4e7b:	8b 45 a8             	mov    eax,DWORD PTR [ebp-0x58]
    4e7e:	0f b6 c0             	movzx  eax,al
    4e81:	83 ec 08             	sub    esp,0x8
    4e84:	50                   	push   eax
    4e85:	8d 85 54 fd ff ff    	lea    eax,[ebp-0x2ac]
    4e8b:	50                   	push   eax
    4e8c:	e8 05 18 00 00       	call   0x6696
    4e91:	83 c4 10             	add    esp,0x10
    4e94:	85 c0                	test   eax,eax
    4e96:	0f 84 0a 02 00 00    	je     0x50a6
    4e9c:	8b 95 5c fd ff ff    	mov    edx,DWORD PTR [ebp-0x2a4]
    4ea2:	8b 85 58 fd ff ff    	mov    eax,DWORD PTR [ebp-0x2a8]
    4ea8:	52                   	push   edx
    4ea9:	50                   	push   eax
    4eaa:	68 d0 16 31 00       	push   0x3116d0
    4eaf:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4eb5:	50                   	push   eax
    4eb6:	e8 cb 2c 00 00       	call   0x7b86
    4ebb:	83 c4 10             	add    esp,0x10
    4ebe:	8b 85 60 fd ff ff    	mov    eax,DWORD PTR [ebp-0x2a0]
    4ec4:	83 e0 01             	and    eax,0x1
    4ec7:	85 c0                	test   eax,eax
    4ec9:	74 07                	je     0x4ed2
    4ecb:	c6 85 65 ff ff ff 4c 	mov    BYTE PTR [ebp-0x9b],0x4c
    4ed2:	8b 85 60 fd ff ff    	mov    eax,DWORD PTR [ebp-0x2a0]
    4ed8:	83 e0 02             	and    eax,0x2
    4edb:	85 c0                	test   eax,eax
    4edd:	74 07                	je     0x4ee6
    4edf:	c6 85 67 ff ff ff 52 	mov    BYTE PTR [ebp-0x99],0x52
    4ee6:	8b 85 60 fd ff ff    	mov    eax,DWORD PTR [ebp-0x2a0]
    4eec:	83 e0 04             	and    eax,0x4
    4eef:	85 c0                	test   eax,eax
    4ef1:	74 07                	je     0x4efa
    4ef3:	c6 85 66 ff ff ff 43 	mov    BYTE PTR [ebp-0x9a],0x43
    4efa:	83 ec 04             	sub    esp,0x4
    4efd:	6a 0f                	push   0xf
    4eff:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4f05:	50                   	push   eax
    4f06:	6a 0e                	push   0xe
    4f08:	6a 07                	push   0x7
    4f0a:	6a 10                	push   0x10
    4f0c:	6a 20                	push   0x20
    4f0e:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
    4f11:	e8 00 04 00 00       	call   0x5316
    4f16:	83 c4 20             	add    esp,0x20
    4f19:	8b 85 58 fd ff ff    	mov    eax,DWORD PTR [ebp-0x2a8]
    4f1f:	01 45 f4             	add    DWORD PTR [ebp-0xc],eax
    4f22:	8b 85 5c fd ff ff    	mov    eax,DWORD PTR [ebp-0x2a4]
    4f28:	01 45 f0             	add    DWORD PTR [ebp-0x10],eax
    4f2b:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
    4f2f:	79 07                	jns    0x4f38
    4f31:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    4f38:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
    4f3c:	79 07                	jns    0x4f45
    4f3e:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    4f45:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4f48:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
    4f4c:	98                   	cwde   
    4f4d:	83 e8 01             	sub    eax,0x1
    4f50:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    4f53:	7e 0e                	jle    0x4f63
    4f55:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4f58:	0f b7 40 04          	movzx  eax,WORD PTR [eax+0x4]
    4f5c:	98                   	cwde   
    4f5d:	83 e8 01             	sub    eax,0x1
    4f60:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    4f63:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4f66:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
    4f6a:	98                   	cwde   
    4f6b:	83 e8 01             	sub    eax,0x1
    4f6e:	39 45 f0             	cmp    DWORD PTR [ebp-0x10],eax
    4f71:	7e 0e                	jle    0x4f81
    4f73:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    4f76:	0f b7 40 06          	movzx  eax,WORD PTR [eax+0x6]
    4f7a:	98                   	cwde   
    4f7b:	83 e8 01             	sub    eax,0x1
    4f7e:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    4f81:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    4f84:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    4f87:	68 aa 16 31 00       	push   0x3116aa
    4f8c:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4f92:	50                   	push   eax
    4f93:	e8 ee 2b 00 00       	call   0x7b86
    4f98:	83 c4 10             	add    esp,0x10
    4f9b:	83 ec 04             	sub    esp,0x4
    4f9e:	6a 0a                	push   0xa
    4fa0:	8d 85 64 ff ff ff    	lea    eax,[ebp-0x9c]
    4fa6:	50                   	push   eax
    4fa7:	6a 0e                	push   0xe
    4fa9:	6a 07                	push   0x7
    4fab:	6a 00                	push   0x0
    4fad:	6a 00                	push   0x0
    4faf:	ff 75 cc             	push   DWORD PTR [ebp-0x34]
    4fb2:	e8 5f 03 00 00       	call   0x5316
    4fb7:	83 c4 20             	add    esp,0x20
    4fba:	83 ec 04             	sub    esp,0x4
    4fbd:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    4fc0:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    4fc3:	ff 75 ac             	push   DWORD PTR [ebp-0x54]
    4fc6:	e8 e7 27 00 00       	call   0x77b2
    4fcb:	83 c4 10             	add    esp,0x10
    4fce:	8b 85 60 fd ff ff    	mov    eax,DWORD PTR [ebp-0x2a0]
    4fd4:	83 e0 01             	and    eax,0x1
    4fd7:	85 c0                	test   eax,eax
    4fd9:	0f 84 c7 00 00 00    	je     0x50a6
    4fdf:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    4fe2:	8d 50 f8             	lea    edx,[eax-0x8]
    4fe5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    4fe8:	83 e8 50             	sub    eax,0x50
    4feb:	83 ec 04             	sub    esp,0x4
    4fee:	52                   	push   edx
    4fef:	50                   	push   eax
    4ff0:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    4ff3:	e8 ba 27 00 00       	call   0x77b2
    4ff8:	83 c4 10             	add    esp,0x10
    4ffb:	e9 a6 00 00 00       	jmp    0x50a6
    5000:	83 7d a8 01          	cmp    DWORD PTR [ebp-0x58],0x1
    5004:	0f 8f cc fb ff ff    	jg     0x4bd6
    500a:	83 7d a8 00          	cmp    DWORD PTR [ebp-0x58],0x0
    500e:	74 1d                	je     0x502d
    5010:	83 ec 04             	sub    esp,0x4
    5013:	6a 00                	push   0x0
    5015:	8d 45 8c             	lea    eax,[ebp-0x74]
    5018:	50                   	push   eax
    5019:	ff 75 bc             	push   DWORD PTR [ebp-0x44]
    501c:	e8 ed 29 00 00       	call   0x7a0e
    5021:	83 c4 10             	add    esp,0x10
    5024:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [ebp-0x18],0x0
    502b:	eb 1b                	jmp    0x5048
    502d:	83 ec 04             	sub    esp,0x4
    5030:	6a 01                	push   0x1
    5032:	8d 45 8c             	lea    eax,[ebp-0x74]
    5035:	50                   	push   eax
    5036:	ff 75 bc             	push   DWORD PTR [ebp-0x44]
    5039:	e8 d0 29 00 00       	call   0x7a0e
    503e:	83 c4 10             	add    esp,0x10
    5041:	c7 45 e8 07 00 00 00 	mov    DWORD PTR [ebp-0x18],0x7
    5048:	83 ec 08             	sub    esp,0x8
    504b:	6a 32                	push   0x32
    504d:	ff 75 bc             	push   DWORD PTR [ebp-0x44]
    5050:	e8 d1 29 00 00       	call   0x7a26
    5055:	83 c4 10             	add    esp,0x10
    5058:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    505b:	8d 58 07             	lea    ebx,[eax+0x7]
    505e:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    5061:	0f b6 c8             	movzx  ecx,al
    5064:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    5067:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    506a:	8b 45 c4             	mov    eax,DWORD PTR [ebp-0x3c]
    506d:	8b 00                	mov    eax,DWORD PTR [eax]
    506f:	83 ec 04             	sub    esp,0x4
    5072:	6a 2b                	push   0x2b
    5074:	53                   	push   ebx
    5075:	6a 1c                	push   0x1c
    5077:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    507a:	51                   	push   ecx
    507b:	52                   	push   edx
    507c:	50                   	push   eax
    507d:	e8 8b 09 00 00       	call   0x5a0d
    5082:	83 c4 20             	add    esp,0x20
    5085:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    5088:	83 c0 08             	add    eax,0x8
    508b:	83 ec 0c             	sub    esp,0xc
    508e:	6a 2c                	push   0x2c
    5090:	50                   	push   eax
    5091:	6a 1c                	push   0x1c
    5093:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    5096:	ff 75 c4             	push   DWORD PTR [ebp-0x3c]
    5099:	e8 a3 26 00 00       	call   0x7741
    509e:	83 c4 20             	add    esp,0x20
    50a1:	e9 30 fb ff ff       	jmp    0x4bd6
    50a6:	90                   	nop
    50a7:	e9 2a fb ff ff       	jmp    0x4bd6
    50ac:	55                   	push   ebp
    50ad:	89 e5                	mov    ebp,esp
    50af:	83 ec 18             	sub    esp,0x18
    50b2:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
    50b5:	88 45 f4             	mov    BYTE PTR [ebp-0xc],al
    50b8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    50bb:	83 e8 01             	sub    eax,0x1
    50be:	83 ec 04             	sub    esp,0x4
    50c1:	6a 00                	push   0x0
    50c3:	50                   	push   eax
    50c4:	6a 00                	push   0x0
    50c6:	6a 00                	push   0x0
    50c8:	6a 08                	push   0x8
    50ca:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    50cd:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    50d0:	e8 38 09 00 00       	call   0x5a0d
    50d5:	83 c4 20             	add    esp,0x20
    50d8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    50db:	83 e8 02             	sub    eax,0x2
    50de:	83 ec 04             	sub    esp,0x4
    50e1:	6a 01                	push   0x1
    50e3:	50                   	push   eax
    50e4:	6a 01                	push   0x1
    50e6:	6a 01                	push   0x1
    50e8:	6a 07                	push   0x7
    50ea:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    50ed:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    50f0:	e8 18 09 00 00       	call   0x5a0d
    50f5:	83 c4 20             	add    esp,0x20
    50f8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    50fb:	83 e8 01             	sub    eax,0x1
    50fe:	83 ec 04             	sub    esp,0x4
    5101:	50                   	push   eax
    5102:	6a 00                	push   0x0
    5104:	6a 00                	push   0x0
    5106:	6a 00                	push   0x0
    5108:	6a 08                	push   0x8
    510a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    510d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5110:	e8 f8 08 00 00       	call   0x5a0d
    5115:	83 c4 20             	add    esp,0x20
    5118:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    511b:	83 e8 02             	sub    eax,0x2
    511e:	83 ec 04             	sub    esp,0x4
    5121:	50                   	push   eax
    5122:	6a 01                	push   0x1
    5124:	6a 01                	push   0x1
    5126:	6a 01                	push   0x1
    5128:	6a 07                	push   0x7
    512a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    512d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5130:	e8 d8 08 00 00       	call   0x5a0d
    5135:	83 c4 20             	add    esp,0x20
    5138:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    513b:	8d 48 fe             	lea    ecx,[eax-0x2]
    513e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5141:	8d 50 fe             	lea    edx,[eax-0x2]
    5144:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5147:	83 e8 02             	sub    eax,0x2
    514a:	83 ec 04             	sub    esp,0x4
    514d:	51                   	push   ecx
    514e:	52                   	push   edx
    514f:	6a 01                	push   0x1
    5151:	50                   	push   eax
    5152:	6a 0f                	push   0xf
    5154:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5157:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    515a:	e8 ae 08 00 00       	call   0x5a0d
    515f:	83 c4 20             	add    esp,0x20
    5162:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5165:	8d 48 ff             	lea    ecx,[eax-0x1]
    5168:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    516b:	8d 50 ff             	lea    edx,[eax-0x1]
    516e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5171:	83 e8 01             	sub    eax,0x1
    5174:	83 ec 04             	sub    esp,0x4
    5177:	51                   	push   ecx
    5178:	52                   	push   edx
    5179:	6a 00                	push   0x0
    517b:	50                   	push   eax
    517c:	6a 00                	push   0x0
    517e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5181:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5184:	e8 84 08 00 00       	call   0x5a0d
    5189:	83 c4 20             	add    esp,0x20
    518c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    518f:	8d 50 fd             	lea    edx,[eax-0x3]
    5192:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5195:	83 e8 03             	sub    eax,0x3
    5198:	83 ec 04             	sub    esp,0x4
    519b:	52                   	push   edx
    519c:	50                   	push   eax
    519d:	6a 02                	push   0x2
    519f:	6a 02                	push   0x2
    51a1:	6a 08                	push   0x8
    51a3:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    51a6:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    51a9:	e8 5f 08 00 00       	call   0x5a0d
    51ae:	83 c4 20             	add    esp,0x20
    51b1:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    51b4:	8d 48 fe             	lea    ecx,[eax-0x2]
    51b7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    51ba:	8d 50 fe             	lea    edx,[eax-0x2]
    51bd:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    51c0:	83 e8 02             	sub    eax,0x2
    51c3:	83 ec 04             	sub    esp,0x4
    51c6:	51                   	push   ecx
    51c7:	52                   	push   edx
    51c8:	50                   	push   eax
    51c9:	6a 01                	push   0x1
    51cb:	6a 0f                	push   0xf
    51cd:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    51d0:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    51d3:	e8 35 08 00 00       	call   0x5a0d
    51d8:	83 c4 20             	add    esp,0x20
    51db:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    51de:	8d 48 ff             	lea    ecx,[eax-0x1]
    51e1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    51e4:	8d 50 ff             	lea    edx,[eax-0x1]
    51e7:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    51ea:	83 e8 01             	sub    eax,0x1
    51ed:	83 ec 04             	sub    esp,0x4
    51f0:	51                   	push   ecx
    51f1:	52                   	push   edx
    51f2:	50                   	push   eax
    51f3:	6a 00                	push   0x0
    51f5:	6a 00                	push   0x0
    51f7:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    51fa:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    51fd:	e8 0b 08 00 00       	call   0x5a0d
    5202:	83 c4 20             	add    esp,0x20
    5205:	0f be 45 f4          	movsx  eax,BYTE PTR [ebp-0xc]
    5209:	50                   	push   eax
    520a:	ff 75 14             	push   DWORD PTR [ebp+0x14]
    520d:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5210:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5213:	e8 06 00 00 00       	call   0x521e
    5218:	83 c4 10             	add    esp,0x10
    521b:	90                   	nop
    521c:	c9                   	leave  
    521d:	c3                   	ret    
    521e:	55                   	push   ebp
    521f:	89 e5                	mov    ebp,esp
    5221:	83 ec 28             	sub    esp,0x28
    5224:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    5227:	88 45 e4             	mov    BYTE PTR [ebp-0x1c],al
    522a:	80 7d e4 00          	cmp    BYTE PTR [ebp-0x1c],0x0
    522e:	74 0a                	je     0x523a
    5230:	c6 45 ee 07          	mov    BYTE PTR [ebp-0x12],0x7
    5234:	c6 45 ed 0c          	mov    BYTE PTR [ebp-0x13],0xc
    5238:	eb 08                	jmp    0x5242
    523a:	c6 45 ee 08          	mov    BYTE PTR [ebp-0x12],0x8
    523e:	c6 45 ed 0f          	mov    BYTE PTR [ebp-0x13],0xf
    5242:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5245:	8d 50 fc             	lea    edx,[eax-0x4]
    5248:	0f b6 45 ed          	movzx  eax,BYTE PTR [ebp-0x13]
    524c:	0f b6 c0             	movzx  eax,al
    524f:	83 ec 04             	sub    esp,0x4
    5252:	6a 14                	push   0x14
    5254:	52                   	push   edx
    5255:	6a 03                	push   0x3
    5257:	6a 03                	push   0x3
    5259:	50                   	push   eax
    525a:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    525d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5260:	e8 a8 07 00 00       	call   0x5a0d
    5265:	83 c4 20             	add    esp,0x20
    5268:	0f be 45 ee          	movsx  eax,BYTE PTR [ebp-0x12]
    526c:	83 ec 08             	sub    esp,0x8
    526f:	ff 75 10             	push   DWORD PTR [ebp+0x10]
    5272:	50                   	push   eax
    5273:	6a 04                	push   0x4
    5275:	6a 18                	push   0x18
    5277:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    527a:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    527d:	e8 d6 0b 00 00       	call   0x5e58
    5282:	83 c4 20             	add    esp,0x20
    5285:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    528c:	eb 7b                	jmp    0x5309
    528e:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    5295:	eb 68                	jmp    0x52ff
    5297:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    529a:	c1 e0 04             	shl    eax,0x4
    529d:	89 c2                	mov    edx,eax
    529f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    52a2:	01 d0                	add    eax,edx
    52a4:	05 60 00 31 00       	add    eax,0x310060
    52a9:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    52ac:	88 45 ef             	mov    BYTE PTR [ebp-0x11],al
    52af:	80 7d ef 40          	cmp    BYTE PTR [ebp-0x11],0x40
    52b3:	75 06                	jne    0x52bb
    52b5:	c6 45 ef 00          	mov    BYTE PTR [ebp-0x11],0x0
    52b9:	eb 1c                	jmp    0x52d7
    52bb:	80 7d ef 24          	cmp    BYTE PTR [ebp-0x11],0x24
    52bf:	75 06                	jne    0x52c7
    52c1:	c6 45 ef 0f          	mov    BYTE PTR [ebp-0x11],0xf
    52c5:	eb 10                	jmp    0x52d7
    52c7:	80 7d ef 51          	cmp    BYTE PTR [ebp-0x11],0x51
    52cb:	75 06                	jne    0x52d3
    52cd:	c6 45 ef 08          	mov    BYTE PTR [ebp-0x11],0x8
    52d1:	eb 04                	jmp    0x52d7
    52d3:	c6 45 ef 07          	mov    BYTE PTR [ebp-0x11],0x7
    52d7:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    52da:	83 c0 05             	add    eax,0x5
    52dd:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
    52e1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    52e4:	8d 4a eb             	lea    ecx,[edx-0x15]
    52e7:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    52ea:	01 ca                	add    edx,ecx
    52ec:	01 d0                	add    eax,edx
    52ee:	89 c2                	mov    edx,eax
    52f0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    52f3:	01 c2                	add    edx,eax
    52f5:	0f b6 45 ef          	movzx  eax,BYTE PTR [ebp-0x11]
    52f9:	88 02                	mov    BYTE PTR [edx],al
    52fb:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    52ff:	83 7d f4 0f          	cmp    DWORD PTR [ebp-0xc],0xf
    5303:	7e 92                	jle    0x5297
    5305:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
    5309:	83 7d f0 0d          	cmp    DWORD PTR [ebp-0x10],0xd
    530d:	0f 8e 7b ff ff ff    	jle    0x528e
    5313:	90                   	nop
    5314:	c9                   	leave  
    5315:	c3                   	ret    
    5316:	55                   	push   ebp
    5317:	89 e5                	mov    ebp,esp
    5319:	56                   	push   esi
    531a:	53                   	push   ebx
    531b:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    531e:	8d 70 0f             	lea    esi,[eax+0xf]
    5321:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
    5324:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
    532b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    532e:	01 d0                	add    eax,edx
    5330:	8d 58 ff             	lea    ebx,[eax-0x1]
    5333:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
    5336:	0f b6 c8             	movzx  ecx,al
    5339:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    533c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    533f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5342:	8b 00                	mov    eax,DWORD PTR [eax]
    5344:	83 ec 04             	sub    esp,0x4
    5347:	56                   	push   esi
    5348:	53                   	push   ebx
    5349:	ff 75 10             	push   DWORD PTR [ebp+0x10]
    534c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    534f:	51                   	push   ecx
    5350:	52                   	push   edx
    5351:	50                   	push   eax
    5352:	e8 b6 06 00 00       	call   0x5a0d
    5357:	83 c4 20             	add    esp,0x20
    535a:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    535d:	0f be c8             	movsx  ecx,al
    5360:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5363:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    5366:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5369:	8b 00                	mov    eax,DWORD PTR [eax]
    536b:	83 ec 08             	sub    esp,0x8
    536e:	ff 75 1c             	push   DWORD PTR [ebp+0x1c]
    5371:	51                   	push   ecx
    5372:	ff 75 10             	push   DWORD PTR [ebp+0x10]
    5375:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5378:	52                   	push   edx
    5379:	50                   	push   eax
    537a:	e8 d9 0a 00 00       	call   0x5e58
    537f:	83 c4 20             	add    esp,0x20
    5382:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5385:	8d 50 10             	lea    edx,[eax+0x10]
    5388:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
    538b:	8d 0c c5 00 00 00 00 	lea    ecx,[eax*8+0x0]
    5392:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5395:	01 c8                	add    eax,ecx
    5397:	83 ec 0c             	sub    esp,0xc
    539a:	52                   	push   edx
    539b:	50                   	push   eax
    539c:	ff 75 10             	push   DWORD PTR [ebp+0x10]
    539f:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    53a2:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    53a5:	e8 97 23 00 00       	call   0x7741
    53aa:	83 c4 20             	add    esp,0x20
    53ad:	90                   	nop
    53ae:	8d 65 f8             	lea    esp,[ebp-0x8]
    53b1:	5b                   	pop    ebx
    53b2:	5e                   	pop    esi
    53b3:	5d                   	pop    ebp
    53b4:	c3                   	ret    
    53b5:	55                   	push   ebp
    53b6:	89 e5                	mov    ebp,esp
    53b8:	57                   	push   edi
    53b9:	56                   	push   esi
    53ba:	53                   	push   ebx
    53bb:	83 ec 1c             	sub    esp,0x1c
    53be:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    53c1:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    53c4:	01 d0                	add    eax,edx
    53c6:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
    53c9:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    53cc:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
    53cf:	01 d0                	add    eax,edx
    53d1:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
    53d4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    53d7:	8d 78 fd             	lea    edi,[eax-0x3]
    53da:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    53dd:	8d 70 01             	lea    esi,[eax+0x1]
    53e0:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    53e3:	8d 58 fd             	lea    ebx,[eax-0x3]
    53e6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    53e9:	8d 48 fe             	lea    ecx,[eax-0x2]
    53ec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    53ef:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    53f2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    53f5:	8b 00                	mov    eax,DWORD PTR [eax]
    53f7:	83 ec 04             	sub    esp,0x4
    53fa:	57                   	push   edi
    53fb:	56                   	push   esi
    53fc:	53                   	push   ebx
    53fd:	51                   	push   ecx
    53fe:	6a 0f                	push   0xf
    5400:	52                   	push   edx
    5401:	50                   	push   eax
    5402:	e8 06 06 00 00       	call   0x5a0d
    5407:	83 c4 20             	add    esp,0x20
    540a:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    540d:	8d 78 01             	lea    edi,[eax+0x1]
    5410:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5413:	8d 70 fd             	lea    esi,[eax-0x3]
    5416:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5419:	8d 58 fd             	lea    ebx,[eax-0x3]
    541c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    541f:	8d 48 fd             	lea    ecx,[eax-0x3]
    5422:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5425:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    5428:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    542b:	8b 00                	mov    eax,DWORD PTR [eax]
    542d:	83 ec 04             	sub    esp,0x4
    5430:	57                   	push   edi
    5431:	56                   	push   esi
    5432:	53                   	push   ebx
    5433:	51                   	push   ecx
    5434:	6a 0f                	push   0xf
    5436:	52                   	push   edx
    5437:	50                   	push   eax
    5438:	e8 d0 05 00 00       	call   0x5a0d
    543d:	83 c4 20             	add    esp,0x20
    5440:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    5443:	8d 78 02             	lea    edi,[eax+0x2]
    5446:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    5449:	8d 70 01             	lea    esi,[eax+0x1]
    544c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    544f:	8d 58 02             	lea    ebx,[eax+0x2]
    5452:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5455:	8d 48 fd             	lea    ecx,[eax-0x3]
    5458:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    545b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    545e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5461:	8b 00                	mov    eax,DWORD PTR [eax]
    5463:	83 ec 04             	sub    esp,0x4
    5466:	57                   	push   edi
    5467:	56                   	push   esi
    5468:	53                   	push   ebx
    5469:	51                   	push   ecx
    546a:	6a 07                	push   0x7
    546c:	52                   	push   edx
    546d:	50                   	push   eax
    546e:	e8 9a 05 00 00       	call   0x5a0d
    5473:	83 c4 20             	add    esp,0x20
    5476:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    5479:	8d 78 02             	lea    edi,[eax+0x2]
    547c:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    547f:	8d 70 02             	lea    esi,[eax+0x2]
    5482:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5485:	8d 58 fd             	lea    ebx,[eax-0x3]
    5488:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    548b:	8d 48 02             	lea    ecx,[eax+0x2]
    548e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5491:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    5494:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5497:	8b 00                	mov    eax,DWORD PTR [eax]
    5499:	83 ec 04             	sub    esp,0x4
    549c:	57                   	push   edi
    549d:	56                   	push   esi
    549e:	53                   	push   ebx
    549f:	51                   	push   ecx
    54a0:	6a 07                	push   0x7
    54a2:	52                   	push   edx
    54a3:	50                   	push   eax
    54a4:	e8 64 05 00 00       	call   0x5a0d
    54a9:	83 c4 20             	add    esp,0x20
    54ac:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    54af:	8d 70 fe             	lea    esi,[eax-0x2]
    54b2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    54b5:	8d 58 fe             	lea    ebx,[eax-0x2]
    54b8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    54bb:	8d 48 ff             	lea    ecx,[eax-0x1]
    54be:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    54c1:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    54c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    54c7:	8b 00                	mov    eax,DWORD PTR [eax]
    54c9:	83 ec 04             	sub    esp,0x4
    54cc:	56                   	push   esi
    54cd:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
    54d0:	53                   	push   ebx
    54d1:	51                   	push   ecx
    54d2:	6a 00                	push   0x0
    54d4:	52                   	push   edx
    54d5:	50                   	push   eax
    54d6:	e8 32 05 00 00       	call   0x5a0d
    54db:	83 c4 20             	add    esp,0x20
    54de:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    54e1:	8d 70 fe             	lea    esi,[eax-0x2]
    54e4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    54e7:	8d 58 fe             	lea    ebx,[eax-0x2]
    54ea:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    54ed:	8d 48 fe             	lea    ecx,[eax-0x2]
    54f0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    54f3:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    54f6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    54f9:	8b 00                	mov    eax,DWORD PTR [eax]
    54fb:	83 ec 04             	sub    esp,0x4
    54fe:	ff 75 e0             	push   DWORD PTR [ebp-0x20]
    5501:	56                   	push   esi
    5502:	53                   	push   ebx
    5503:	51                   	push   ecx
    5504:	6a 00                	push   0x0
    5506:	52                   	push   edx
    5507:	50                   	push   eax
    5508:	e8 00 05 00 00       	call   0x5a0d
    550d:	83 c4 20             	add    esp,0x20
    5510:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    5513:	8d 70 01             	lea    esi,[eax+0x1]
    5516:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    5519:	8d 58 01             	lea    ebx,[eax+0x1]
    551c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    551f:	8d 48 fe             	lea    ecx,[eax-0x2]
    5522:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5525:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    5528:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    552b:	8b 00                	mov    eax,DWORD PTR [eax]
    552d:	83 ec 04             	sub    esp,0x4
    5530:	56                   	push   esi
    5531:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
    5534:	53                   	push   ebx
    5535:	51                   	push   ecx
    5536:	6a 08                	push   0x8
    5538:	52                   	push   edx
    5539:	50                   	push   eax
    553a:	e8 ce 04 00 00       	call   0x5a0d
    553f:	83 c4 20             	add    esp,0x20
    5542:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    5545:	8d 78 01             	lea    edi,[eax+0x1]
    5548:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    554b:	8d 70 01             	lea    esi,[eax+0x1]
    554e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5551:	8d 58 fe             	lea    ebx,[eax-0x2]
    5554:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    5557:	8d 48 01             	lea    ecx,[eax+0x1]
    555a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    555d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    5560:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5563:	8b 00                	mov    eax,DWORD PTR [eax]
    5565:	83 ec 04             	sub    esp,0x4
    5568:	57                   	push   edi
    5569:	56                   	push   esi
    556a:	53                   	push   ebx
    556b:	51                   	push   ecx
    556c:	6a 08                	push   0x8
    556e:	52                   	push   edx
    556f:	50                   	push   eax
    5570:	e8 98 04 00 00       	call   0x5a0d
    5575:	83 c4 20             	add    esp,0x20
    5578:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    557b:	8d 70 ff             	lea    esi,[eax-0x1]
    557e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5581:	8d 58 ff             	lea    ebx,[eax-0x1]
    5584:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
    5587:	0f b6 c8             	movzx  ecx,al
    558a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    558d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    5590:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5593:	8b 00                	mov    eax,DWORD PTR [eax]
    5595:	83 ec 04             	sub    esp,0x4
    5598:	ff 75 e0             	push   DWORD PTR [ebp-0x20]
    559b:	ff 75 e4             	push   DWORD PTR [ebp-0x1c]
    559e:	56                   	push   esi
    559f:	53                   	push   ebx
    55a0:	51                   	push   ecx
    55a1:	52                   	push   edx
    55a2:	50                   	push   eax
    55a3:	e8 65 04 00 00       	call   0x5a0d
    55a8:	83 c4 20             	add    esp,0x20
    55ab:	90                   	nop
    55ac:	8d 65 f4             	lea    esp,[ebp-0xc]
    55af:	5b                   	pop    ebx
    55b0:	5e                   	pop    esi
    55b1:	5f                   	pop    edi
    55b2:	5d                   	pop    ebp
    55b3:	c3                   	ret    
    55b4:	55                   	push   ebp
    55b5:	89 e5                	mov    ebp,esp
    55b7:	83 ec 18             	sub    esp,0x18
    55ba:	c7 45 ec 00 00 27 00 	mov    DWORD PTR [ebp-0x14],0x270000
    55c1:	c7 45 e8 00 f8 26 00 	mov    DWORD PTR [ebp-0x18],0x26f800
    55c8:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    55cf:	eb 22                	jmp    0x55f3
    55d1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    55d4:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
    55db:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    55de:	01 d0                	add    eax,edx
    55e0:	6a 00                	push   0x0
    55e2:	6a 00                	push   0x0
    55e4:	6a 00                	push   0x0
    55e6:	50                   	push   eax
    55e7:	e8 1f 01 00 00       	call   0x570b
    55ec:	83 c4 10             	add    esp,0x10
    55ef:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    55f3:	81 7d f4 ff 1f 00 00 	cmp    DWORD PTR [ebp-0xc],0x1fff
    55fa:	7e d5                	jle    0x55d1
    55fc:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    55ff:	83 c0 08             	add    eax,0x8
    5602:	68 92 40 00 00       	push   0x4092
    5607:	6a 00                	push   0x0
    5609:	6a ff                	push   0xffffffff
    560b:	50                   	push   eax
    560c:	e8 fa 00 00 00       	call   0x570b
    5611:	83 c4 10             	add    esp,0x10
    5614:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    5617:	83 c0 10             	add    eax,0x10
    561a:	68 9a 40 00 00       	push   0x409a
    561f:	68 00 00 28 00       	push   0x280000
    5624:	68 ff ff 07 00       	push   0x7ffff
    5629:	50                   	push   eax
    562a:	e8 dc 00 00 00       	call   0x570b
    562f:	83 c4 10             	add    esp,0x10
    5632:	83 ec 08             	sub    esp,0x8
    5635:	68 00 00 27 00       	push   0x270000
    563a:	68 ff ff 00 00       	push   0xffff
    563f:	e8 ec 17 00 00       	call   0x6e30
    5644:	83 c4 10             	add    esp,0x10
    5647:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    564e:	eb 22                	jmp    0x5672
    5650:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    5653:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
    565a:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    565d:	01 d0                	add    eax,edx
    565f:	6a 00                	push   0x0
    5661:	6a 00                	push   0x0
    5663:	6a 00                	push   0x0
    5665:	50                   	push   eax
    5666:	e8 1b 01 00 00       	call   0x5786
    566b:	83 c4 10             	add    esp,0x10
    566e:	83 45 f0 01          	add    DWORD PTR [ebp-0x10],0x1
    5672:	81 7d f0 ff 00 00 00 	cmp    DWORD PTR [ebp-0x10],0xff
    5679:	7e d5                	jle    0x5650
    567b:	83 ec 08             	sub    esp,0x8
    567e:	68 00 f8 26 00       	push   0x26f800
    5683:	68 ff 07 00 00       	push   0x7ff
    5688:	e8 b3 17 00 00       	call   0x6e40
    568d:	83 c4 10             	add    esp,0x10
    5690:	ba c0 2a 00 00       	mov    edx,0x2ac0
    5695:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    5698:	05 00 01 00 00       	add    eax,0x100
    569d:	68 8e 00 00 00       	push   0x8e
    56a2:	6a 10                	push   0x10
    56a4:	52                   	push   edx
    56a5:	50                   	push   eax
    56a6:	e8 db 00 00 00       	call   0x5786
    56ab:	83 c4 10             	add    esp,0x10
    56ae:	ba d7 2a 00 00       	mov    edx,0x2ad7
    56b3:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    56b6:	05 08 01 00 00       	add    eax,0x108
    56bb:	68 8e 00 00 00       	push   0x8e
    56c0:	6a 10                	push   0x10
    56c2:	52                   	push   edx
    56c3:	50                   	push   eax
    56c4:	e8 bd 00 00 00       	call   0x5786
    56c9:	83 c4 10             	add    esp,0x10
    56cc:	ba ee 2a 00 00       	mov    edx,0x2aee
    56d1:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    56d4:	05 38 01 00 00       	add    eax,0x138
    56d9:	68 8e 00 00 00       	push   0x8e
    56de:	6a 10                	push   0x10
    56e0:	52                   	push   edx
    56e1:	50                   	push   eax
    56e2:	e8 9f 00 00 00       	call   0x5786
    56e7:	83 c4 10             	add    esp,0x10
    56ea:	ba 05 2b 00 00       	mov    edx,0x2b05
    56ef:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    56f2:	05 60 01 00 00       	add    eax,0x160
    56f7:	68 8e 00 00 00       	push   0x8e
    56fc:	6a 10                	push   0x10
    56fe:	52                   	push   edx
    56ff:	50                   	push   eax
    5700:	e8 81 00 00 00       	call   0x5786
    5705:	83 c4 10             	add    esp,0x10
    5708:	90                   	nop
    5709:	c9                   	leave  
    570a:	c3                   	ret    
    570b:	55                   	push   ebp
    570c:	89 e5                	mov    ebp,esp
    570e:	81 7d 0c ff ff 0f 00 	cmp    DWORD PTR [ebp+0xc],0xfffff
    5715:	76 10                	jbe    0x5727
    5717:	81 4d 14 00 80 00 00 	or     DWORD PTR [ebp+0x14],0x8000
    571e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5721:	c1 e8 0c             	shr    eax,0xc
    5724:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    5727:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    572a:	89 c2                	mov    edx,eax
    572c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    572f:	66 89 10             	mov    WORD PTR [eax],dx
    5732:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5735:	89 c2                	mov    edx,eax
    5737:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    573a:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
    573e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5741:	c1 f8 10             	sar    eax,0x10
    5744:	89 c2                	mov    edx,eax
    5746:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5749:	88 50 04             	mov    BYTE PTR [eax+0x4],dl
    574c:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    574f:	89 c2                	mov    edx,eax
    5751:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5754:	88 50 05             	mov    BYTE PTR [eax+0x5],dl
    5757:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    575a:	c1 e8 10             	shr    eax,0x10
    575d:	83 e0 0f             	and    eax,0xf
    5760:	89 c2                	mov    edx,eax
    5762:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    5765:	c1 f8 08             	sar    eax,0x8
    5768:	83 e0 f0             	and    eax,0xfffffff0
    576b:	09 d0                	or     eax,edx
    576d:	89 c2                	mov    edx,eax
    576f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5772:	88 50 06             	mov    BYTE PTR [eax+0x6],dl
    5775:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5778:	c1 e8 18             	shr    eax,0x18
    577b:	89 c2                	mov    edx,eax
    577d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5780:	88 50 07             	mov    BYTE PTR [eax+0x7],dl
    5783:	90                   	nop
    5784:	5d                   	pop    ebp
    5785:	c3                   	ret    
    5786:	55                   	push   ebp
    5787:	89 e5                	mov    ebp,esp
    5789:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    578c:	89 c2                	mov    edx,eax
    578e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5791:	66 89 10             	mov    WORD PTR [eax],dx
    5794:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5797:	89 c2                	mov    edx,eax
    5799:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    579c:	66 89 50 02          	mov    WORD PTR [eax+0x2],dx
    57a0:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    57a3:	c1 f8 08             	sar    eax,0x8
    57a6:	89 c2                	mov    edx,eax
    57a8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57ab:	88 50 04             	mov    BYTE PTR [eax+0x4],dl
    57ae:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    57b1:	89 c2                	mov    edx,eax
    57b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57b6:	88 50 05             	mov    BYTE PTR [eax+0x5],dl
    57b9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    57bc:	c1 e8 10             	shr    eax,0x10
    57bf:	89 c2                	mov    edx,eax
    57c1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57c4:	66 89 50 06          	mov    WORD PTR [eax+0x6],dx
    57c8:	90                   	nop
    57c9:	5d                   	pop    ebp
    57ca:	c3                   	ret    
    57cb:	55                   	push   ebp
    57cc:	89 e5                	mov    ebp,esp
    57ce:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57d1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    57d4:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    57d7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57da:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    57dd:	89 10                	mov    DWORD PTR [eax],edx
    57df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57e2:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    57e5:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    57e8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57eb:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
    57f2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57f5:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    57fc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    57ff:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    5806:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5809:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
    580c:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
    580f:	90                   	nop
    5810:	5d                   	pop    ebp
    5811:	c3                   	ret    
    5812:	55                   	push   ebp
    5813:	89 e5                	mov    ebp,esp
    5815:	83 ec 08             	sub    esp,0x8
    5818:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    581b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    581e:	85 c0                	test   eax,eax
    5820:	75 1b                	jne    0x583d
    5822:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5825:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
    5828:	83 c8 01             	or     eax,0x1
    582b:	89 c2                	mov    edx,eax
    582d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5830:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
    5833:	b8 ff ff ff ff       	mov    eax,0xffffffff
    5838:	e9 80 00 00 00       	jmp    0x58bd
    583d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5840:	8b 10                	mov    edx,DWORD PTR [eax]
    5842:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5845:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    5848:	c1 e0 02             	shl    eax,0x2
    584b:	01 c2                	add    edx,eax
    584d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5850:	89 02                	mov    DWORD PTR [edx],eax
    5852:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5855:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    5858:	8d 50 01             	lea    edx,[eax+0x1]
    585b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    585e:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    5861:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5864:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    5867:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    586a:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    586d:	39 c2                	cmp    edx,eax
    586f:	75 0a                	jne    0x587b
    5871:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5874:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    587b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    587e:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    5881:	8d 50 ff             	lea    edx,[eax-0x1]
    5884:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5887:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    588a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    588d:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    5890:	85 c0                	test   eax,eax
    5892:	74 24                	je     0x58b8
    5894:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5897:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    589a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    589d:	83 f8 02             	cmp    eax,0x2
    58a0:	74 16                	je     0x58b8
    58a2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    58a5:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    58a8:	83 ec 04             	sub    esp,0x4
    58ab:	6a 00                	push   0x0
    58ad:	6a ff                	push   0xffffffff
    58af:	50                   	push   eax
    58b0:	e8 8d 13 00 00       	call   0x6c42
    58b5:	83 c4 10             	add    esp,0x10
    58b8:	b8 00 00 00 00       	mov    eax,0x0
    58bd:	c9                   	leave  
    58be:	c3                   	ret    
    58bf:	55                   	push   ebp
    58c0:	89 e5                	mov    ebp,esp
    58c2:	83 ec 10             	sub    esp,0x10
    58c5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    58c8:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    58cb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    58ce:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    58d1:	39 c2                	cmp    edx,eax
    58d3:	75 07                	jne    0x58dc
    58d5:	b8 ff ff ff ff       	mov    eax,0xffffffff
    58da:	eb 50                	jmp    0x592c
    58dc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    58df:	8b 10                	mov    edx,DWORD PTR [eax]
    58e1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    58e4:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    58e7:	c1 e0 02             	shl    eax,0x2
    58ea:	01 d0                	add    eax,edx
    58ec:	8b 00                	mov    eax,DWORD PTR [eax]
    58ee:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    58f1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    58f4:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    58f7:	8d 50 01             	lea    edx,[eax+0x1]
    58fa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    58fd:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    5900:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5903:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
    5906:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5909:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    590c:	39 c2                	cmp    edx,eax
    590e:	75 0a                	jne    0x591a
    5910:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5913:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    591a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    591d:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    5920:	8d 50 01             	lea    edx,[eax+0x1]
    5923:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5926:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    5929:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    592c:	c9                   	leave  
    592d:	c3                   	ret    
    592e:	55                   	push   ebp
    592f:	89 e5                	mov    ebp,esp
    5931:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5934:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    5937:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    593a:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    593d:	29 c2                	sub    edx,eax
    593f:	89 d0                	mov    eax,edx
    5941:	5d                   	pop    ebp
    5942:	c3                   	ret    
    5943:	55                   	push   ebp
    5944:	89 e5                	mov    ebp,esp
    5946:	83 ec 08             	sub    esp,0x8
    5949:	83 ec 04             	sub    esp,0x4
    594c:	68 60 02 31 00       	push   0x310260
    5951:	6a 0f                	push   0xf
    5953:	6a 00                	push   0x0
    5955:	e8 06 00 00 00       	call   0x5960
    595a:	83 c4 10             	add    esp,0x10
    595d:	90                   	nop
    595e:	c9                   	leave  
    595f:	c3                   	ret    
    5960:	55                   	push   ebp
    5961:	89 e5                	mov    ebp,esp
    5963:	83 ec 18             	sub    esp,0x18
    5966:	e8 bb 14 00 00       	call   0x6e26
    596b:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    596e:	e8 6f 14 00 00       	call   0x6de2
    5973:	83 ec 08             	sub    esp,0x8
    5976:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5979:	68 c8 03 00 00       	push   0x3c8
    597e:	e8 83 14 00 00       	call   0x6e06
    5983:	83 c4 10             	add    esp,0x10
    5986:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    598d:	eb 65                	jmp    0x59f4
    598f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5992:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    5995:	c0 e8 02             	shr    al,0x2
    5998:	0f b6 c0             	movzx  eax,al
    599b:	83 ec 08             	sub    esp,0x8
    599e:	50                   	push   eax
    599f:	68 c9 03 00 00       	push   0x3c9
    59a4:	e8 5d 14 00 00       	call   0x6e06
    59a9:	83 c4 10             	add    esp,0x10
    59ac:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    59af:	83 c0 01             	add    eax,0x1
    59b2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    59b5:	c0 e8 02             	shr    al,0x2
    59b8:	0f b6 c0             	movzx  eax,al
    59bb:	83 ec 08             	sub    esp,0x8
    59be:	50                   	push   eax
    59bf:	68 c9 03 00 00       	push   0x3c9
    59c4:	e8 3d 14 00 00       	call   0x6e06
    59c9:	83 c4 10             	add    esp,0x10
    59cc:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    59cf:	83 c0 02             	add    eax,0x2
    59d2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    59d5:	c0 e8 02             	shr    al,0x2
    59d8:	0f b6 c0             	movzx  eax,al
    59db:	83 ec 08             	sub    esp,0x8
    59de:	50                   	push   eax
    59df:	68 c9 03 00 00       	push   0x3c9
    59e4:	e8 1d 14 00 00       	call   0x6e06
    59e9:	83 c4 10             	add    esp,0x10
    59ec:	83 45 10 03          	add    DWORD PTR [ebp+0x10],0x3
    59f0:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    59f4:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    59f7:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
    59fa:	7e 93                	jle    0x598f
    59fc:	83 ec 0c             	sub    esp,0xc
    59ff:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    5a02:	e8 22 14 00 00       	call   0x6e29
    5a07:	83 c4 10             	add    esp,0x10
    5a0a:	90                   	nop
    5a0b:	c9                   	leave  
    5a0c:	c3                   	ret    
    5a0d:	55                   	push   ebp
    5a0e:	89 e5                	mov    ebp,esp
    5a10:	83 ec 14             	sub    esp,0x14
    5a13:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5a16:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
    5a19:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
    5a1c:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    5a1f:	eb 33                	jmp    0x5a54
    5a21:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    5a24:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
    5a27:	eb 1f                	jmp    0x5a48
    5a29:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5a2c:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
    5a30:	89 c2                	mov    edx,eax
    5a32:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5a35:	01 d0                	add    eax,edx
    5a37:	89 c2                	mov    edx,eax
    5a39:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5a3c:	01 c2                	add    edx,eax
    5a3e:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5a42:	88 02                	mov    BYTE PTR [edx],al
    5a44:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    5a48:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5a4b:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
    5a4e:	7e d9                	jle    0x5a29
    5a50:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    5a54:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5a57:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
    5a5a:	7e c5                	jle    0x5a21
    5a5c:	90                   	nop
    5a5d:	c9                   	leave  
    5a5e:	c3                   	ret    
    5a5f:	55                   	push   ebp
    5a60:	89 e5                	mov    ebp,esp
    5a62:	53                   	push   ebx
    5a63:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5a66:	8d 50 e3             	lea    edx,[eax-0x1d]
    5a69:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5a6c:	83 e8 01             	sub    eax,0x1
    5a6f:	52                   	push   edx
    5a70:	50                   	push   eax
    5a71:	6a 00                	push   0x0
    5a73:	6a 00                	push   0x0
    5a75:	6a 0e                	push   0xe
    5a77:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5a7a:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5a7d:	e8 8b ff ff ff       	call   0x5a0d
    5a82:	83 c4 1c             	add    esp,0x1c
    5a85:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5a88:	8d 48 e4             	lea    ecx,[eax-0x1c]
    5a8b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5a8e:	8d 50 ff             	lea    edx,[eax-0x1]
    5a91:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5a94:	83 e8 1c             	sub    eax,0x1c
    5a97:	51                   	push   ecx
    5a98:	52                   	push   edx
    5a99:	50                   	push   eax
    5a9a:	6a 00                	push   0x0
    5a9c:	6a 08                	push   0x8
    5a9e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5aa1:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5aa4:	e8 64 ff ff ff       	call   0x5a0d
    5aa9:	83 c4 1c             	add    esp,0x1c
    5aac:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5aaf:	8d 48 e5             	lea    ecx,[eax-0x1b]
    5ab2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5ab5:	8d 50 ff             	lea    edx,[eax-0x1]
    5ab8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5abb:	83 e8 1b             	sub    eax,0x1b
    5abe:	51                   	push   ecx
    5abf:	52                   	push   edx
    5ac0:	50                   	push   eax
    5ac1:	6a 00                	push   0x0
    5ac3:	6a 07                	push   0x7
    5ac5:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5ac8:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5acb:	e8 3d ff ff ff       	call   0x5a0d
    5ad0:	83 c4 1c             	add    esp,0x1c
    5ad3:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5ad6:	8d 48 ff             	lea    ecx,[eax-0x1]
    5ad9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5adc:	8d 50 ff             	lea    edx,[eax-0x1]
    5adf:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5ae2:	83 e8 1a             	sub    eax,0x1a
    5ae5:	51                   	push   ecx
    5ae6:	52                   	push   edx
    5ae7:	50                   	push   eax
    5ae8:	6a 00                	push   0x0
    5aea:	6a 08                	push   0x8
    5aec:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5aef:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5af2:	e8 16 ff ff ff       	call   0x5a0d
    5af7:	83 c4 1c             	add    esp,0x1c
    5afa:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5afd:	8d 50 e8             	lea    edx,[eax-0x18]
    5b00:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b03:	83 e8 18             	sub    eax,0x18
    5b06:	52                   	push   edx
    5b07:	6a 3b                	push   0x3b
    5b09:	50                   	push   eax
    5b0a:	6a 03                	push   0x3
    5b0c:	6a 07                	push   0x7
    5b0e:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5b11:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5b14:	e8 f4 fe ff ff       	call   0x5a0d
    5b19:	83 c4 1c             	add    esp,0x1c
    5b1c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b1f:	8d 50 fc             	lea    edx,[eax-0x4]
    5b22:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b25:	83 e8 18             	sub    eax,0x18
    5b28:	52                   	push   edx
    5b29:	6a 02                	push   0x2
    5b2b:	50                   	push   eax
    5b2c:	6a 02                	push   0x2
    5b2e:	6a 07                	push   0x7
    5b30:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5b33:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5b36:	e8 d2 fe ff ff       	call   0x5a0d
    5b3b:	83 c4 1c             	add    esp,0x1c
    5b3e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b41:	8d 50 fc             	lea    edx,[eax-0x4]
    5b44:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b47:	83 e8 04             	sub    eax,0x4
    5b4a:	52                   	push   edx
    5b4b:	6a 3b                	push   0x3b
    5b4d:	50                   	push   eax
    5b4e:	6a 03                	push   0x3
    5b50:	6a 0f                	push   0xf
    5b52:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5b55:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5b58:	e8 b0 fe ff ff       	call   0x5a0d
    5b5d:	83 c4 1c             	add    esp,0x1c
    5b60:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b63:	8d 50 fb             	lea    edx,[eax-0x5]
    5b66:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b69:	83 e8 17             	sub    eax,0x17
    5b6c:	52                   	push   edx
    5b6d:	6a 3b                	push   0x3b
    5b6f:	50                   	push   eax
    5b70:	6a 3b                	push   0x3b
    5b72:	6a 0f                	push   0xf
    5b74:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5b77:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5b7a:	e8 8e fe ff ff       	call   0x5a0d
    5b7f:	83 c4 1c             	add    esp,0x1c
    5b82:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b85:	8d 50 fd             	lea    edx,[eax-0x3]
    5b88:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5b8b:	83 e8 03             	sub    eax,0x3
    5b8e:	52                   	push   edx
    5b8f:	6a 3b                	push   0x3b
    5b91:	50                   	push   eax
    5b92:	6a 02                	push   0x2
    5b94:	6a 00                	push   0x0
    5b96:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5b99:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5b9c:	e8 6c fe ff ff       	call   0x5a0d
    5ba1:	83 c4 1c             	add    esp,0x1c
    5ba4:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5ba7:	8d 50 fd             	lea    edx,[eax-0x3]
    5baa:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5bad:	83 e8 18             	sub    eax,0x18
    5bb0:	52                   	push   edx
    5bb1:	6a 3c                	push   0x3c
    5bb3:	50                   	push   eax
    5bb4:	6a 3c                	push   0x3c
    5bb6:	6a 00                	push   0x0
    5bb8:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5bbb:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5bbe:	e8 4a fe ff ff       	call   0x5a0d
    5bc3:	83 c4 1c             	add    esp,0x1c
    5bc6:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5bc9:	8d 58 e8             	lea    ebx,[eax-0x18]
    5bcc:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5bcf:	8d 48 fc             	lea    ecx,[eax-0x4]
    5bd2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5bd5:	8d 50 e8             	lea    edx,[eax-0x18]
    5bd8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5bdb:	83 e8 2f             	sub    eax,0x2f
    5bde:	53                   	push   ebx
    5bdf:	51                   	push   ecx
    5be0:	52                   	push   edx
    5be1:	50                   	push   eax
    5be2:	6a 0f                	push   0xf
    5be4:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5be7:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5bea:	e8 1e fe ff ff       	call   0x5a0d
    5bef:	83 c4 1c             	add    esp,0x1c
    5bf2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5bf5:	8d 58 fc             	lea    ebx,[eax-0x4]
    5bf8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5bfb:	8d 48 d1             	lea    ecx,[eax-0x2f]
    5bfe:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5c01:	8d 50 e9             	lea    edx,[eax-0x17]
    5c04:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5c07:	83 e8 2f             	sub    eax,0x2f
    5c0a:	53                   	push   ebx
    5c0b:	51                   	push   ecx
    5c0c:	52                   	push   edx
    5c0d:	50                   	push   eax
    5c0e:	6a 0f                	push   0xf
    5c10:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5c13:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5c16:	e8 f2 fd ff ff       	call   0x5a0d
    5c1b:	83 c4 1c             	add    esp,0x1c
    5c1e:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5c21:	8d 58 fd             	lea    ebx,[eax-0x3]
    5c24:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5c27:	8d 48 fc             	lea    ecx,[eax-0x4]
    5c2a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5c2d:	8d 50 fd             	lea    edx,[eax-0x3]
    5c30:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5c33:	83 e8 2f             	sub    eax,0x2f
    5c36:	53                   	push   ebx
    5c37:	51                   	push   ecx
    5c38:	52                   	push   edx
    5c39:	50                   	push   eax
    5c3a:	6a 07                	push   0x7
    5c3c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5c3f:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5c42:	e8 c6 fd ff ff       	call   0x5a0d
    5c47:	83 c4 1c             	add    esp,0x1c
    5c4a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5c4d:	8d 58 fd             	lea    ebx,[eax-0x3]
    5c50:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5c53:	8d 48 fd             	lea    ecx,[eax-0x3]
    5c56:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5c59:	8d 50 e8             	lea    edx,[eax-0x18]
    5c5c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5c5f:	83 e8 03             	sub    eax,0x3
    5c62:	53                   	push   ebx
    5c63:	51                   	push   ecx
    5c64:	52                   	push   edx
    5c65:	50                   	push   eax
    5c66:	6a 07                	push   0x7
    5c68:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5c6b:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5c6e:	e8 9a fd ff ff       	call   0x5a0d
    5c73:	83 c4 1c             	add    esp,0x1c
    5c76:	90                   	nop
    5c77:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    5c7a:	c9                   	leave  
    5c7b:	c3                   	ret    
    5c7c:	55                   	push   ebp
    5c7d:	89 e5                	mov    ebp,esp
    5c7f:	83 ec 14             	sub    esp,0x14
    5c82:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    5c85:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
    5c88:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    5c8f:	e9 b5 00 00 00       	jmp    0x5d49
    5c94:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
    5c9b:	e9 9b 00 00 00       	jmp    0x5d3b
    5ca0:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5ca3:	c1 e0 04             	shl    eax,0x4
    5ca6:	89 c2                	mov    edx,eax
    5ca8:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5cab:	01 d0                	add    eax,edx
    5cad:	05 a0 02 31 00       	add    eax,0x3102a0
    5cb2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    5cb5:	3c 2a                	cmp    al,0x2a
    5cb7:	75 19                	jne    0x5cd2
    5cb9:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5cbc:	c1 e0 04             	shl    eax,0x4
    5cbf:	89 c2                	mov    edx,eax
    5cc1:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5cc4:	01 d0                	add    eax,edx
    5cc6:	89 c2                	mov    edx,eax
    5cc8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5ccb:	01 d0                	add    eax,edx
    5ccd:	c6 00 00             	mov    BYTE PTR [eax],0x0
    5cd0:	eb 65                	jmp    0x5d37
    5cd2:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5cd5:	c1 e0 04             	shl    eax,0x4
    5cd8:	89 c2                	mov    edx,eax
    5cda:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5cdd:	01 d0                	add    eax,edx
    5cdf:	05 a0 02 31 00       	add    eax,0x3102a0
    5ce4:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    5ce7:	3c 4f                	cmp    al,0x4f
    5ce9:	75 19                	jne    0x5d04
    5ceb:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5cee:	c1 e0 04             	shl    eax,0x4
    5cf1:	89 c2                	mov    edx,eax
    5cf3:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5cf6:	01 d0                	add    eax,edx
    5cf8:	89 c2                	mov    edx,eax
    5cfa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5cfd:	01 d0                	add    eax,edx
    5cff:	c6 00 07             	mov    BYTE PTR [eax],0x7
    5d02:	eb 33                	jmp    0x5d37
    5d04:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5d07:	c1 e0 04             	shl    eax,0x4
    5d0a:	89 c2                	mov    edx,eax
    5d0c:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5d0f:	01 d0                	add    eax,edx
    5d11:	05 a0 02 31 00       	add    eax,0x3102a0
    5d16:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    5d19:	3c 2e                	cmp    al,0x2e
    5d1b:	75 1a                	jne    0x5d37
    5d1d:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5d20:	c1 e0 04             	shl    eax,0x4
    5d23:	89 c2                	mov    edx,eax
    5d25:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5d28:	01 d0                	add    eax,edx
    5d2a:	89 c2                	mov    edx,eax
    5d2c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5d2f:	01 c2                	add    edx,eax
    5d31:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5d35:	88 02                	mov    BYTE PTR [edx],al
    5d37:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    5d3b:	83 7d f8 0f          	cmp    DWORD PTR [ebp-0x8],0xf
    5d3f:	0f 8e 5b ff ff ff    	jle    0x5ca0
    5d45:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    5d49:	83 7d fc 0f          	cmp    DWORD PTR [ebp-0x4],0xf
    5d4d:	0f 8e 41 ff ff ff    	jle    0x5c94
    5d53:	90                   	nop
    5d54:	c9                   	leave  
    5d55:	c3                   	ret    
    5d56:	55                   	push   ebp
    5d57:	89 e5                	mov    ebp,esp
    5d59:	83 ec 14             	sub    esp,0x14
    5d5c:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
    5d5f:	88 45 ec             	mov    BYTE PTR [ebp-0x14],al
    5d62:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    5d69:	e9 dd 00 00 00       	jmp    0x5e4b
    5d6e:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
    5d71:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    5d74:	01 d0                	add    eax,edx
    5d76:	0f af 45 0c          	imul   eax,DWORD PTR [ebp+0xc]
    5d7a:	89 c2                	mov    edx,eax
    5d7c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    5d7f:	01 c2                	add    edx,eax
    5d81:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    5d84:	01 d0                	add    eax,edx
    5d86:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
    5d89:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    5d8c:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
    5d8f:	01 d0                	add    eax,edx
    5d91:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    5d94:	88 45 f7             	mov    BYTE PTR [ebp-0x9],al
    5d97:	80 7d f7 00          	cmp    BYTE PTR [ebp-0x9],0x0
    5d9b:	79 09                	jns    0x5da6
    5d9d:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5da0:	0f b6 55 ec          	movzx  edx,BYTE PTR [ebp-0x14]
    5da4:	88 10                	mov    BYTE PTR [eax],dl
    5da6:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
    5daa:	83 e0 40             	and    eax,0x40
    5dad:	85 c0                	test   eax,eax
    5daf:	74 0c                	je     0x5dbd
    5db1:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5db4:	8d 50 01             	lea    edx,[eax+0x1]
    5db7:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5dbb:	88 02                	mov    BYTE PTR [edx],al
    5dbd:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
    5dc1:	83 e0 20             	and    eax,0x20
    5dc4:	85 c0                	test   eax,eax
    5dc6:	74 0c                	je     0x5dd4
    5dc8:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5dcb:	8d 50 02             	lea    edx,[eax+0x2]
    5dce:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5dd2:	88 02                	mov    BYTE PTR [edx],al
    5dd4:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
    5dd8:	83 e0 10             	and    eax,0x10
    5ddb:	85 c0                	test   eax,eax
    5ddd:	74 0c                	je     0x5deb
    5ddf:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5de2:	8d 50 03             	lea    edx,[eax+0x3]
    5de5:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5de9:	88 02                	mov    BYTE PTR [edx],al
    5deb:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
    5def:	83 e0 08             	and    eax,0x8
    5df2:	85 c0                	test   eax,eax
    5df4:	74 0c                	je     0x5e02
    5df6:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5df9:	8d 50 04             	lea    edx,[eax+0x4]
    5dfc:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5e00:	88 02                	mov    BYTE PTR [edx],al
    5e02:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
    5e06:	83 e0 04             	and    eax,0x4
    5e09:	85 c0                	test   eax,eax
    5e0b:	74 0c                	je     0x5e19
    5e0d:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5e10:	8d 50 05             	lea    edx,[eax+0x5]
    5e13:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5e17:	88 02                	mov    BYTE PTR [edx],al
    5e19:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
    5e1d:	83 e0 02             	and    eax,0x2
    5e20:	85 c0                	test   eax,eax
    5e22:	74 0c                	je     0x5e30
    5e24:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5e27:	8d 50 06             	lea    edx,[eax+0x6]
    5e2a:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5e2e:	88 02                	mov    BYTE PTR [edx],al
    5e30:	0f be 45 f7          	movsx  eax,BYTE PTR [ebp-0x9]
    5e34:	83 e0 01             	and    eax,0x1
    5e37:	85 c0                	test   eax,eax
    5e39:	74 0c                	je     0x5e47
    5e3b:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5e3e:	8d 50 07             	lea    edx,[eax+0x7]
    5e41:	0f b6 45 ec          	movzx  eax,BYTE PTR [ebp-0x14]
    5e45:	88 02                	mov    BYTE PTR [edx],al
    5e47:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    5e4b:	83 7d fc 0f          	cmp    DWORD PTR [ebp-0x4],0xf
    5e4f:	0f 8e 19 ff ff ff    	jle    0x5d6e
    5e55:	90                   	nop
    5e56:	c9                   	leave  
    5e57:	c3                   	ret    
    5e58:	55                   	push   ebp
    5e59:	89 e5                	mov    ebp,esp
    5e5b:	83 ec 04             	sub    esp,0x4
    5e5e:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
    5e61:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
    5e64:	eb 34                	jmp    0x5e9a
    5e66:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
    5e69:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    5e6c:	0f b6 c0             	movzx  eax,al
    5e6f:	c1 e0 04             	shl    eax,0x4
    5e72:	8d 90 a0 03 31 00    	lea    edx,[eax+0x3103a0]
    5e78:	0f be 45 fc          	movsx  eax,BYTE PTR [ebp-0x4]
    5e7c:	52                   	push   edx
    5e7d:	50                   	push   eax
    5e7e:	ff 75 14             	push   DWORD PTR [ebp+0x14]
    5e81:	ff 75 10             	push   DWORD PTR [ebp+0x10]
    5e84:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    5e87:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    5e8a:	e8 c7 fe ff ff       	call   0x5d56
    5e8f:	83 c4 18             	add    esp,0x18
    5e92:	83 45 10 08          	add    DWORD PTR [ebp+0x10],0x8
    5e96:	83 45 1c 01          	add    DWORD PTR [ebp+0x1c],0x1
    5e9a:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
    5e9d:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    5ea0:	84 c0                	test   al,al
    5ea2:	75 c2                	jne    0x5e66
    5ea4:	90                   	nop
    5ea5:	c9                   	leave  
    5ea6:	c3                   	ret    
    5ea7:	55                   	push   ebp
    5ea8:	89 e5                	mov    ebp,esp
    5eaa:	53                   	push   ebx
    5eab:	83 ec 10             	sub    esp,0x10
    5eae:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    5eb5:	eb 50                	jmp    0x5f07
    5eb7:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
    5ebe:	eb 3b                	jmp    0x5efb
    5ec0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    5ec3:	0f af 45 24          	imul   eax,DWORD PTR [ebp+0x24]
    5ec7:	89 c2                	mov    edx,eax
    5ec9:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5ecc:	01 d0                	add    eax,edx
    5ece:	89 c2                	mov    edx,eax
    5ed0:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
    5ed3:	01 d0                	add    eax,edx
    5ed5:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
    5ed8:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    5edb:	01 ca                	add    edx,ecx
    5edd:	0f af 55 0c          	imul   edx,DWORD PTR [ebp+0xc]
    5ee1:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
    5ee4:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
    5ee7:	01 d9                	add    ecx,ebx
    5ee9:	01 ca                	add    edx,ecx
    5eeb:	89 d1                	mov    ecx,edx
    5eed:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    5ef0:	01 ca                	add    edx,ecx
    5ef2:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    5ef5:	88 02                	mov    BYTE PTR [edx],al
    5ef7:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    5efb:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    5efe:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
    5f01:	7c bd                	jl     0x5ec0
    5f03:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    5f07:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    5f0a:	3b 45 14             	cmp    eax,DWORD PTR [ebp+0x14]
    5f0d:	7c a8                	jl     0x5eb7
    5f0f:	90                   	nop
    5f10:	83 c4 10             	add    esp,0x10
    5f13:	5b                   	pop    ebx
    5f14:	5d                   	pop    ebp
    5f15:	c3                   	ret    
    5f16:	55                   	push   ebp
    5f17:	89 e5                	mov    ebp,esp
    5f19:	83 ec 08             	sub    esp,0x8
    5f1c:	83 ec 08             	sub    esp,0x8
    5f1f:	68 ff 00 00 00       	push   0xff
    5f24:	6a 21                	push   0x21
    5f26:	e8 db 0e 00 00       	call   0x6e06
    5f2b:	83 c4 10             	add    esp,0x10
    5f2e:	83 ec 08             	sub    esp,0x8
    5f31:	68 ff 00 00 00       	push   0xff
    5f36:	68 a1 00 00 00       	push   0xa1
    5f3b:	e8 c6 0e 00 00       	call   0x6e06
    5f40:	83 c4 10             	add    esp,0x10
    5f43:	83 ec 08             	sub    esp,0x8
    5f46:	6a 11                	push   0x11
    5f48:	6a 20                	push   0x20
    5f4a:	e8 b7 0e 00 00       	call   0x6e06
    5f4f:	83 c4 10             	add    esp,0x10
    5f52:	83 ec 08             	sub    esp,0x8
    5f55:	6a 20                	push   0x20
    5f57:	6a 21                	push   0x21
    5f59:	e8 a8 0e 00 00       	call   0x6e06
    5f5e:	83 c4 10             	add    esp,0x10
    5f61:	83 ec 08             	sub    esp,0x8
    5f64:	6a 04                	push   0x4
    5f66:	6a 21                	push   0x21
    5f68:	e8 99 0e 00 00       	call   0x6e06
    5f6d:	83 c4 10             	add    esp,0x10
    5f70:	83 ec 08             	sub    esp,0x8
    5f73:	6a 01                	push   0x1
    5f75:	6a 21                	push   0x21
    5f77:	e8 8a 0e 00 00       	call   0x6e06
    5f7c:	83 c4 10             	add    esp,0x10
    5f7f:	83 ec 08             	sub    esp,0x8
    5f82:	6a 11                	push   0x11
    5f84:	68 a0 00 00 00       	push   0xa0
    5f89:	e8 78 0e 00 00       	call   0x6e06
    5f8e:	83 c4 10             	add    esp,0x10
    5f91:	83 ec 08             	sub    esp,0x8
    5f94:	6a 28                	push   0x28
    5f96:	68 a1 00 00 00       	push   0xa1
    5f9b:	e8 66 0e 00 00       	call   0x6e06
    5fa0:	83 c4 10             	add    esp,0x10
    5fa3:	83 ec 08             	sub    esp,0x8
    5fa6:	6a 02                	push   0x2
    5fa8:	68 a1 00 00 00       	push   0xa1
    5fad:	e8 54 0e 00 00       	call   0x6e06
    5fb2:	83 c4 10             	add    esp,0x10
    5fb5:	83 ec 08             	sub    esp,0x8
    5fb8:	6a 01                	push   0x1
    5fba:	68 a1 00 00 00       	push   0xa1
    5fbf:	e8 42 0e 00 00       	call   0x6e06
    5fc4:	83 c4 10             	add    esp,0x10
    5fc7:	83 ec 08             	sub    esp,0x8
    5fca:	68 fb 00 00 00       	push   0xfb
    5fcf:	6a 21                	push   0x21
    5fd1:	e8 30 0e 00 00       	call   0x6e06
    5fd6:	83 c4 10             	add    esp,0x10
    5fd9:	83 ec 08             	sub    esp,0x8
    5fdc:	68 ff 00 00 00       	push   0xff
    5fe1:	68 a1 00 00 00       	push   0xa1
    5fe6:	e8 1b 0e 00 00       	call   0x6e06
    5feb:	83 c4 10             	add    esp,0x10
    5fee:	90                   	nop
    5fef:	c9                   	leave  
    5ff0:	c3                   	ret    
    5ff1:	55                   	push   ebp
    5ff2:	89 e5                	mov    ebp,esp
    5ff4:	83 ec 08             	sub    esp,0x8
    5ff7:	83 ec 08             	sub    esp,0x8
    5ffa:	6a 67                	push   0x67
    5ffc:	6a 20                	push   0x20
    5ffe:	e8 03 0e 00 00       	call   0x6e06
    6003:	83 c4 10             	add    esp,0x10
    6006:	90                   	nop
    6007:	c9                   	leave  
    6008:	c3                   	ret    
    6009:	55                   	push   ebp
    600a:	89 e5                	mov    ebp,esp
    600c:	83 ec 18             	sub    esp,0x18
    600f:	83 ec 08             	sub    esp,0x8
    6012:	6a 61                	push   0x61
    6014:	6a 20                	push   0x20
    6016:	e8 eb 0d 00 00       	call   0x6e06
    601b:	83 c4 10             	add    esp,0x10
    601e:	83 ec 0c             	sub    esp,0xc
    6021:	6a 60                	push   0x60
    6023:	e8 c1 0d 00 00       	call   0x6de9
    6028:	83 c4 10             	add    esp,0x10
    602b:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    602e:	8b 15 e4 16 31 00    	mov    edx,DWORD PTR ds:0x3116e4
    6034:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6037:	01 c2                	add    edx,eax
    6039:	a1 e0 16 31 00       	mov    eax,ds:0x3116e0
    603e:	83 ec 08             	sub    esp,0x8
    6041:	52                   	push   edx
    6042:	50                   	push   eax
    6043:	e8 ca f7 ff ff       	call   0x5812
    6048:	83 c4 10             	add    esp,0x10
    604b:	90                   	nop
    604c:	c9                   	leave  
    604d:	c3                   	ret    
    604e:	55                   	push   ebp
    604f:	89 e5                	mov    ebp,esp
    6051:	83 ec 08             	sub    esp,0x8
    6054:	83 ec 0c             	sub    esp,0xc
    6057:	6a 64                	push   0x64
    6059:	e8 8b 0d 00 00       	call   0x6de9
    605e:	83 c4 10             	add    esp,0x10
    6061:	83 e0 02             	and    eax,0x2
    6064:	85 c0                	test   eax,eax
    6066:	74 02                	je     0x606a
    6068:	eb ea                	jmp    0x6054
    606a:	90                   	nop
    606b:	90                   	nop
    606c:	c9                   	leave  
    606d:	c3                   	ret    
    606e:	55                   	push   ebp
    606f:	89 e5                	mov    ebp,esp
    6071:	83 ec 08             	sub    esp,0x8
    6074:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6077:	a3 e0 16 31 00       	mov    ds:0x3116e0,eax
    607c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    607f:	a3 e4 16 31 00       	mov    ds:0x3116e4,eax
    6084:	e8 c5 ff ff ff       	call   0x604e
    6089:	83 ec 08             	sub    esp,0x8
    608c:	6a 60                	push   0x60
    608e:	6a 64                	push   0x64
    6090:	e8 71 0d 00 00       	call   0x6e06
    6095:	83 c4 10             	add    esp,0x10
    6098:	e8 b1 ff ff ff       	call   0x604e
    609d:	83 ec 08             	sub    esp,0x8
    60a0:	6a 47                	push   0x47
    60a2:	6a 60                	push   0x60
    60a4:	e8 5d 0d 00 00       	call   0x6e06
    60a9:	83 c4 10             	add    esp,0x10
    60ac:	90                   	nop
    60ad:	c9                   	leave  
    60ae:	c3                   	ret    
    60af:	55                   	push   ebp
    60b0:	89 e5                	mov    ebp,esp
    60b2:	83 ec 18             	sub    esp,0x18
    60b5:	c6 45 f7 00          	mov    BYTE PTR [ebp-0x9],0x0
    60b9:	e8 68 0d 00 00       	call   0x6e26
    60be:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    60c1:	81 4d f0 00 00 04 00 	or     DWORD PTR [ebp-0x10],0x40000
    60c8:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    60cb:	83 ec 0c             	sub    esp,0xc
    60ce:	50                   	push   eax
    60cf:	e8 55 0d 00 00       	call   0x6e29
    60d4:	83 c4 10             	add    esp,0x10
    60d7:	e8 4a 0d 00 00       	call   0x6e26
    60dc:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    60df:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    60e2:	25 00 00 04 00       	and    eax,0x40000
    60e7:	85 c0                	test   eax,eax
    60e9:	74 04                	je     0x60ef
    60eb:	c6 45 f7 01          	mov    BYTE PTR [ebp-0x9],0x1
    60ef:	81 65 f0 ff ff fb ff 	and    DWORD PTR [ebp-0x10],0xfffbffff
    60f6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    60f9:	83 ec 0c             	sub    esp,0xc
    60fc:	50                   	push   eax
    60fd:	e8 27 0d 00 00       	call   0x6e29
    6102:	83 c4 10             	add    esp,0x10
    6105:	80 7d f7 00          	cmp    BYTE PTR [ebp-0x9],0x0
    6109:	74 1e                	je     0x6129
    610b:	e8 9c 0d 00 00       	call   0x6eac
    6110:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    6113:	81 4d ec 00 00 00 60 	or     DWORD PTR [ebp-0x14],0x60000000
    611a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    611d:	83 ec 0c             	sub    esp,0xc
    6120:	50                   	push   eax
    6121:	e8 8a 0d 00 00       	call   0x6eb0
    6126:	83 c4 10             	add    esp,0x10
    6129:	83 ec 08             	sub    esp,0x8
    612c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    612f:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6132:	e8 2f 00 00 00       	call   0x6166
    6137:	83 c4 10             	add    esp,0x10
    613a:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    613d:	80 7d f7 00          	cmp    BYTE PTR [ebp-0x9],0x0
    6141:	74 1e                	je     0x6161
    6143:	e8 64 0d 00 00       	call   0x6eac
    6148:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    614b:	81 65 ec ff ff ff 9f 	and    DWORD PTR [ebp-0x14],0x9fffffff
    6152:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6155:	83 ec 0c             	sub    esp,0xc
    6158:	50                   	push   eax
    6159:	e8 52 0d 00 00       	call   0x6eb0
    615e:	83 c4 10             	add    esp,0x10
    6161:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6164:	c9                   	leave  
    6165:	c3                   	ret    
    6166:	55                   	push   ebp
    6167:	89 e5                	mov    ebp,esp
    6169:	83 ec 20             	sub    esp,0x20
    616c:	c7 45 f8 55 aa 55 aa 	mov    DWORD PTR [ebp-0x8],0xaa55aa55
    6173:	c7 45 f4 aa 55 aa 55 	mov    DWORD PTR [ebp-0xc],0x55aa55aa
    617a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    617d:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    6180:	eb 68                	jmp    0x61ea
    6182:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    6185:	05 fc 0f 00 00       	add    eax,0xffc
    618a:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    618d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6190:	8b 00                	mov    eax,DWORD PTR [eax]
    6192:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    6195:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6198:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    619b:	89 10                	mov    DWORD PTR [eax],edx
    619d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    61a0:	8b 00                	mov    eax,DWORD PTR [eax]
    61a2:	f7 d0                	not    eax
    61a4:	89 c2                	mov    edx,eax
    61a6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    61a9:	89 10                	mov    DWORD PTR [eax],edx
    61ab:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    61ae:	8b 00                	mov    eax,DWORD PTR [eax]
    61b0:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    61b3:	74 0e                	je     0x61c3
    61b5:	90                   	nop
    61b6:	eb 01                	jmp    0x61b9
    61b8:	90                   	nop
    61b9:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    61bc:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
    61bf:	89 10                	mov    DWORD PTR [eax],edx
    61c1:	eb 2f                	jmp    0x61f2
    61c3:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    61c6:	8b 00                	mov    eax,DWORD PTR [eax]
    61c8:	f7 d0                	not    eax
    61ca:	89 c2                	mov    edx,eax
    61cc:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    61cf:	89 10                	mov    DWORD PTR [eax],edx
    61d1:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    61d4:	8b 00                	mov    eax,DWORD PTR [eax]
    61d6:	39 45 f8             	cmp    DWORD PTR [ebp-0x8],eax
    61d9:	75 dd                	jne    0x61b8
    61db:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    61de:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
    61e1:	89 10                	mov    DWORD PTR [eax],edx
    61e3:	81 45 fc 00 10 00 00 	add    DWORD PTR [ebp-0x4],0x1000
    61ea:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    61ed:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
    61f0:	76 90                	jbe    0x6182
    61f2:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    61f5:	c9                   	leave  
    61f6:	c3                   	ret    
    61f7:	55                   	push   ebp
    61f8:	89 e5                	mov    ebp,esp
    61fa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    61fd:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
    6203:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6206:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    620d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6210:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    6217:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    621a:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
    6221:	90                   	nop
    6222:	5d                   	pop    ebp
    6223:	c3                   	ret    
    6224:	55                   	push   ebp
    6225:	89 e5                	mov    ebp,esp
    6227:	83 ec 10             	sub    esp,0x10
    622a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    6231:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
    6238:	eb 14                	jmp    0x624e
    623a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    623d:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    6240:	83 c2 02             	add    edx,0x2
    6243:	8b 44 d0 04          	mov    eax,DWORD PTR [eax+edx*8+0x4]
    6247:	01 45 fc             	add    DWORD PTR [ebp-0x4],eax
    624a:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    624e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6251:	8b 00                	mov    eax,DWORD PTR [eax]
    6253:	39 45 f8             	cmp    DWORD PTR [ebp-0x8],eax
    6256:	7c e2                	jl     0x623a
    6258:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    625b:	c9                   	leave  
    625c:	c3                   	ret    
    625d:	55                   	push   ebp
    625e:	89 e5                	mov    ebp,esp
    6260:	53                   	push   ebx
    6261:	83 ec 10             	sub    esp,0x10
    6264:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
    626b:	e9 bd 00 00 00       	jmp    0x632d
    6270:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6273:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    6276:	83 c2 02             	add    edx,0x2
    6279:	8b 44 d0 04          	mov    eax,DWORD PTR [eax+edx*8+0x4]
    627d:	39 45 0c             	cmp    DWORD PTR [ebp+0xc],eax
    6280:	0f 87 a3 00 00 00    	ja     0x6329
    6286:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6289:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    628c:	83 c2 02             	add    edx,0x2
    628f:	8b 04 d0             	mov    eax,DWORD PTR [eax+edx*8]
    6292:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    6295:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6298:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    629b:	83 c2 02             	add    edx,0x2
    629e:	8b 14 d0             	mov    edx,DWORD PTR [eax+edx*8]
    62a1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    62a4:	8d 0c 02             	lea    ecx,[edx+eax*1]
    62a7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    62aa:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    62ad:	83 c2 02             	add    edx,0x2
    62b0:	89 0c d0             	mov    DWORD PTR [eax+edx*8],ecx
    62b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    62b6:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    62b9:	83 c2 02             	add    edx,0x2
    62bc:	8b 44 d0 04          	mov    eax,DWORD PTR [eax+edx*8+0x4]
    62c0:	2b 45 0c             	sub    eax,DWORD PTR [ebp+0xc]
    62c3:	89 c2                	mov    edx,eax
    62c5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    62c8:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
    62cb:	83 c1 02             	add    ecx,0x2
    62ce:	89 54 c8 04          	mov    DWORD PTR [eax+ecx*8+0x4],edx
    62d2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    62d5:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    62d8:	83 c2 02             	add    edx,0x2
    62db:	8b 44 d0 04          	mov    eax,DWORD PTR [eax+edx*8+0x4]
    62df:	85 c0                	test   eax,eax
    62e1:	75 41                	jne    0x6324
    62e3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    62e6:	8b 00                	mov    eax,DWORD PTR [eax]
    62e8:	8d 50 ff             	lea    edx,[eax-0x1]
    62eb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    62ee:	89 10                	mov    DWORD PTR [eax],edx
    62f0:	eb 28                	jmp    0x631a
    62f2:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    62f5:	8d 50 01             	lea    edx,[eax+0x1]
    62f8:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    62fb:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    62fe:	8d 58 02             	lea    ebx,[eax+0x2]
    6301:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6304:	83 c2 02             	add    edx,0x2
    6307:	8d 14 d0             	lea    edx,[eax+edx*8]
    630a:	8b 02                	mov    eax,DWORD PTR [edx]
    630c:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
    630f:	89 04 d9             	mov    DWORD PTR [ecx+ebx*8],eax
    6312:	89 54 d9 04          	mov    DWORD PTR [ecx+ebx*8+0x4],edx
    6316:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    631a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    631d:	8b 00                	mov    eax,DWORD PTR [eax]
    631f:	39 45 f8             	cmp    DWORD PTR [ebp-0x8],eax
    6322:	7c ce                	jl     0x62f2
    6324:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6327:	eb 17                	jmp    0x6340
    6329:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    632d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6330:	8b 00                	mov    eax,DWORD PTR [eax]
    6332:	39 45 f8             	cmp    DWORD PTR [ebp-0x8],eax
    6335:	0f 8c 35 ff ff ff    	jl     0x6270
    633b:	b8 00 00 00 00       	mov    eax,0x0
    6340:	83 c4 10             	add    esp,0x10
    6343:	5b                   	pop    ebx
    6344:	5d                   	pop    ebp
    6345:	c3                   	ret    
    6346:	55                   	push   ebp
    6347:	89 e5                	mov    ebp,esp
    6349:	83 ec 10             	sub    esp,0x10
    634c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    634f:	05 ff ff 00 00       	add    eax,0xffff
    6354:	25 00 f0 ff ff       	and    eax,0xfffff000
    6359:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    635c:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    635f:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6362:	e8 f6 fe ff ff       	call   0x625d
    6367:	83 c4 08             	add    esp,0x8
    636a:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    636d:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    6370:	c9                   	leave  
    6371:	c3                   	ret    
    6372:	55                   	push   ebp
    6373:	89 e5                	mov    ebp,esp
    6375:	53                   	push   ebx
    6376:	83 ec 10             	sub    esp,0x10
    6379:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
    6380:	eb 15                	jmp    0x6397
    6382:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6385:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    6388:	83 c2 02             	add    edx,0x2
    638b:	8b 04 d0             	mov    eax,DWORD PTR [eax+edx*8]
    638e:	39 45 0c             	cmp    DWORD PTR [ebp+0xc],eax
    6391:	72 10                	jb     0x63a3
    6393:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    6397:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    639a:	8b 00                	mov    eax,DWORD PTR [eax]
    639c:	39 45 f8             	cmp    DWORD PTR [ebp-0x8],eax
    639f:	7c e1                	jl     0x6382
    63a1:	eb 01                	jmp    0x63a4
    63a3:	90                   	nop
    63a4:	83 7d f8 00          	cmp    DWORD PTR [ebp-0x8],0x0
    63a8:	0f 8e f2 00 00 00    	jle    0x64a0
    63ae:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    63b1:	8d 50 ff             	lea    edx,[eax-0x1]
    63b4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    63b7:	83 c2 02             	add    edx,0x2
    63ba:	8b 14 d0             	mov    edx,DWORD PTR [eax+edx*8]
    63bd:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    63c0:	8d 48 ff             	lea    ecx,[eax-0x1]
    63c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    63c6:	83 c1 02             	add    ecx,0x2
    63c9:	8b 44 c8 04          	mov    eax,DWORD PTR [eax+ecx*8+0x4]
    63cd:	01 d0                	add    eax,edx
    63cf:	39 45 0c             	cmp    DWORD PTR [ebp+0xc],eax
    63d2:	0f 85 c8 00 00 00    	jne    0x64a0
    63d8:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    63db:	8d 50 ff             	lea    edx,[eax-0x1]
    63de:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    63e1:	83 c2 02             	add    edx,0x2
    63e4:	8b 54 d0 04          	mov    edx,DWORD PTR [eax+edx*8+0x4]
    63e8:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    63eb:	8d 58 ff             	lea    ebx,[eax-0x1]
    63ee:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    63f1:	8d 0c 02             	lea    ecx,[edx+eax*1]
    63f4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    63f7:	8d 53 02             	lea    edx,[ebx+0x2]
    63fa:	89 4c d0 04          	mov    DWORD PTR [eax+edx*8+0x4],ecx
    63fe:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6401:	8b 00                	mov    eax,DWORD PTR [eax]
    6403:	39 45 f8             	cmp    DWORD PTR [ebp-0x8],eax
    6406:	0f 8d 8a 00 00 00    	jge    0x6496
    640c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    640f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    6412:	8d 0c 02             	lea    ecx,[edx+eax*1]
    6415:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6418:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    641b:	83 c2 02             	add    edx,0x2
    641e:	8b 04 d0             	mov    eax,DWORD PTR [eax+edx*8]
    6421:	39 c1                	cmp    ecx,eax
    6423:	75 71                	jne    0x6496
    6425:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6428:	8d 50 ff             	lea    edx,[eax-0x1]
    642b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    642e:	83 c2 02             	add    edx,0x2
    6431:	8b 54 d0 04          	mov    edx,DWORD PTR [eax+edx*8+0x4]
    6435:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6438:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
    643b:	83 c1 02             	add    ecx,0x2
    643e:	8b 44 c8 04          	mov    eax,DWORD PTR [eax+ecx*8+0x4]
    6442:	8b 4d f8             	mov    ecx,DWORD PTR [ebp-0x8]
    6445:	8d 59 ff             	lea    ebx,[ecx-0x1]
    6448:	8d 0c 02             	lea    ecx,[edx+eax*1]
    644b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    644e:	8d 53 02             	lea    edx,[ebx+0x2]
    6451:	89 4c d0 04          	mov    DWORD PTR [eax+edx*8+0x4],ecx
    6455:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6458:	8b 00                	mov    eax,DWORD PTR [eax]
    645a:	8d 50 ff             	lea    edx,[eax-0x1]
    645d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6460:	89 10                	mov    DWORD PTR [eax],edx
    6462:	eb 28                	jmp    0x648c
    6464:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6467:	8d 50 01             	lea    edx,[eax+0x1]
    646a:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    646d:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6470:	8d 58 02             	lea    ebx,[eax+0x2]
    6473:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6476:	83 c2 02             	add    edx,0x2
    6479:	8d 14 d0             	lea    edx,[eax+edx*8]
    647c:	8b 02                	mov    eax,DWORD PTR [edx]
    647e:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
    6481:	89 04 d9             	mov    DWORD PTR [ecx+ebx*8],eax
    6484:	89 54 d9 04          	mov    DWORD PTR [ecx+ebx*8+0x4],edx
    6488:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    648c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    648f:	8b 00                	mov    eax,DWORD PTR [eax]
    6491:	39 45 f8             	cmp    DWORD PTR [ebp-0x8],eax
    6494:	7c ce                	jl     0x6464
    6496:	b8 00 00 00 00       	mov    eax,0x0
    649b:	e9 1c 01 00 00       	jmp    0x65bc
    64a0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    64a3:	8b 00                	mov    eax,DWORD PTR [eax]
    64a5:	39 45 f8             	cmp    DWORD PTR [ebp-0x8],eax
    64a8:	7d 52                	jge    0x64fc
    64aa:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    64ad:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    64b0:	8d 0c 02             	lea    ecx,[edx+eax*1]
    64b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    64b6:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    64b9:	83 c2 02             	add    edx,0x2
    64bc:	8b 04 d0             	mov    eax,DWORD PTR [eax+edx*8]
    64bf:	39 c1                	cmp    ecx,eax
    64c1:	75 39                	jne    0x64fc
    64c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    64c6:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    64c9:	8d 4a 02             	lea    ecx,[edx+0x2]
    64cc:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    64cf:	89 14 c8             	mov    DWORD PTR [eax+ecx*8],edx
    64d2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    64d5:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    64d8:	83 c2 02             	add    edx,0x2
    64db:	8b 54 d0 04          	mov    edx,DWORD PTR [eax+edx*8+0x4]
    64df:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    64e2:	8d 0c 02             	lea    ecx,[edx+eax*1]
    64e5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    64e8:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    64eb:	83 c2 02             	add    edx,0x2
    64ee:	89 4c d0 04          	mov    DWORD PTR [eax+edx*8+0x4],ecx
    64f2:	b8 00 00 00 00       	mov    eax,0x0
    64f7:	e9 c0 00 00 00       	jmp    0x65bc
    64fc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    64ff:	8b 00                	mov    eax,DWORD PTR [eax]
    6501:	3d f9 0f 00 00       	cmp    eax,0xff9
    6506:	0f 8f 87 00 00 00    	jg     0x6593
    650c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    650f:	8b 00                	mov    eax,DWORD PTR [eax]
    6511:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    6514:	eb 28                	jmp    0x653e
    6516:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6519:	8d 50 ff             	lea    edx,[eax-0x1]
    651c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    651f:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6522:	8d 58 02             	lea    ebx,[eax+0x2]
    6525:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6528:	83 c2 02             	add    edx,0x2
    652b:	8d 14 d0             	lea    edx,[eax+edx*8]
    652e:	8b 02                	mov    eax,DWORD PTR [edx]
    6530:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
    6533:	89 04 d9             	mov    DWORD PTR [ecx+ebx*8],eax
    6536:	89 54 d9 04          	mov    DWORD PTR [ecx+ebx*8+0x4],edx
    653a:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
    653e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6541:	3b 45 f8             	cmp    eax,DWORD PTR [ebp-0x8]
    6544:	7f d0                	jg     0x6516
    6546:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6549:	8b 00                	mov    eax,DWORD PTR [eax]
    654b:	8d 50 01             	lea    edx,[eax+0x1]
    654e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6551:	89 10                	mov    DWORD PTR [eax],edx
    6553:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6556:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    6559:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    655c:	8b 00                	mov    eax,DWORD PTR [eax]
    655e:	39 c2                	cmp    edx,eax
    6560:	7d 0b                	jge    0x656d
    6562:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6565:	8b 10                	mov    edx,DWORD PTR [eax]
    6567:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    656a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    656d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6570:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    6573:	8d 4a 02             	lea    ecx,[edx+0x2]
    6576:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    6579:	89 14 c8             	mov    DWORD PTR [eax+ecx*8],edx
    657c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    657f:	8b 55 f8             	mov    edx,DWORD PTR [ebp-0x8]
    6582:	8d 4a 02             	lea    ecx,[edx+0x2]
    6585:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    6588:	89 54 c8 04          	mov    DWORD PTR [eax+ecx*8+0x4],edx
    658c:	b8 00 00 00 00       	mov    eax,0x0
    6591:	eb 29                	jmp    0x65bc
    6593:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6596:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    6599:	8d 50 01             	lea    edx,[eax+0x1]
    659c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    659f:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    65a2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    65a5:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    65a8:	89 c2                	mov    edx,eax
    65aa:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    65ad:	01 d0                	add    eax,edx
    65af:	89 c2                	mov    edx,eax
    65b1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    65b4:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    65b7:	b8 ff ff ff ff       	mov    eax,0xffffffff
    65bc:	83 c4 10             	add    esp,0x10
    65bf:	5b                   	pop    ebx
    65c0:	5d                   	pop    ebp
    65c1:	c3                   	ret    
    65c2:	55                   	push   ebp
    65c3:	89 e5                	mov    ebp,esp
    65c5:	83 ec 10             	sub    esp,0x10
    65c8:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    65cb:	05 ff ff 00 00       	add    eax,0xffff
    65d0:	25 00 f0 ff ff       	and    eax,0xfffff000
    65d5:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
    65d8:	ff 75 10             	push   DWORD PTR [ebp+0x10]
    65db:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    65de:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    65e1:	e8 8c fd ff ff       	call   0x6372
    65e6:	83 c4 0c             	add    esp,0xc
    65e9:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    65ec:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    65ef:	c9                   	leave  
    65f0:	c3                   	ret    
    65f1:	55                   	push   ebp
    65f2:	89 e5                	mov    ebp,esp
    65f4:	83 ec 18             	sub    esp,0x18
    65f7:	83 ec 08             	sub    esp,0x8
    65fa:	6a 64                	push   0x64
    65fc:	68 a0 00 00 00       	push   0xa0
    6601:	e8 00 08 00 00       	call   0x6e06
    6606:	83 c4 10             	add    esp,0x10
    6609:	83 ec 08             	sub    esp,0x8
    660c:	6a 62                	push   0x62
    660e:	6a 20                	push   0x20
    6610:	e8 f1 07 00 00       	call   0x6e06
    6615:	83 c4 10             	add    esp,0x10
    6618:	83 ec 0c             	sub    esp,0xc
    661b:	6a 60                	push   0x60
    661d:	e8 c7 07 00 00       	call   0x6de9
    6622:	83 c4 10             	add    esp,0x10
    6625:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    6628:	8b 15 e8 16 31 00    	mov    edx,DWORD PTR ds:0x3116e8
    662e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6631:	01 c2                	add    edx,eax
    6633:	a1 ec 16 31 00       	mov    eax,ds:0x3116ec
    6638:	83 ec 08             	sub    esp,0x8
    663b:	52                   	push   edx
    663c:	50                   	push   eax
    663d:	e8 d0 f1 ff ff       	call   0x5812
    6642:	83 c4 10             	add    esp,0x10
    6645:	90                   	nop
    6646:	c9                   	leave  
    6647:	c3                   	ret    
    6648:	55                   	push   ebp
    6649:	89 e5                	mov    ebp,esp
    664b:	83 ec 08             	sub    esp,0x8
    664e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6651:	a3 ec 16 31 00       	mov    ds:0x3116ec,eax
    6656:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    6659:	a3 e8 16 31 00       	mov    ds:0x3116e8,eax
    665e:	e8 eb f9 ff ff       	call   0x604e
    6663:	83 ec 08             	sub    esp,0x8
    6666:	68 d4 00 00 00       	push   0xd4
    666b:	6a 64                	push   0x64
    666d:	e8 94 07 00 00       	call   0x6e06
    6672:	83 c4 10             	add    esp,0x10
    6675:	e8 d4 f9 ff ff       	call   0x604e
    667a:	83 ec 08             	sub    esp,0x8
    667d:	68 f4 00 00 00       	push   0xf4
    6682:	6a 60                	push   0x60
    6684:	e8 7d 07 00 00       	call   0x6e06
    6689:	83 c4 10             	add    esp,0x10
    668c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    668f:	c6 40 03 00          	mov    BYTE PTR [eax+0x3],0x0
    6693:	90                   	nop
    6694:	c9                   	leave  
    6695:	c3                   	ret    
    6696:	55                   	push   ebp
    6697:	89 e5                	mov    ebp,esp
    6699:	83 ec 04             	sub    esp,0x4
    669c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    669f:	88 45 fc             	mov    BYTE PTR [ebp-0x4],al
    66a2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    66a5:	0f b6 40 03          	movzx  eax,BYTE PTR [eax+0x3]
    66a9:	84 c0                	test   al,al
    66ab:	75 17                	jne    0x66c4
    66ad:	80 7d fc fa          	cmp    BYTE PTR [ebp-0x4],0xfa
    66b1:	75 07                	jne    0x66ba
    66b3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    66b6:	c6 40 03 01          	mov    BYTE PTR [eax+0x3],0x1
    66ba:	b8 00 00 00 00       	mov    eax,0x0
    66bf:	e9 0f 01 00 00       	jmp    0x67d3
    66c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    66c7:	0f b6 40 03          	movzx  eax,BYTE PTR [eax+0x3]
    66cb:	3c 01                	cmp    al,0x1
    66cd:	75 28                	jne    0x66f7
    66cf:	0f b6 45 fc          	movzx  eax,BYTE PTR [ebp-0x4]
    66d3:	25 c8 00 00 00       	and    eax,0xc8
    66d8:	83 f8 08             	cmp    eax,0x8
    66db:	75 10                	jne    0x66ed
    66dd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    66e0:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
    66e4:	88 10                	mov    BYTE PTR [eax],dl
    66e6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    66e9:	c6 40 03 02          	mov    BYTE PTR [eax+0x3],0x2
    66ed:	b8 00 00 00 00       	mov    eax,0x0
    66f2:	e9 dc 00 00 00       	jmp    0x67d3
    66f7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    66fa:	0f b6 40 03          	movzx  eax,BYTE PTR [eax+0x3]
    66fe:	3c 02                	cmp    al,0x2
    6700:	75 1b                	jne    0x671d
    6702:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6705:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
    6709:	88 50 01             	mov    BYTE PTR [eax+0x1],dl
    670c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    670f:	c6 40 03 03          	mov    BYTE PTR [eax+0x3],0x3
    6713:	b8 00 00 00 00       	mov    eax,0x0
    6718:	e9 b6 00 00 00       	jmp    0x67d3
    671d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6720:	0f b6 40 03          	movzx  eax,BYTE PTR [eax+0x3]
    6724:	3c 03                	cmp    al,0x3
    6726:	0f 85 a2 00 00 00    	jne    0x67ce
    672c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    672f:	0f b6 55 fc          	movzx  edx,BYTE PTR [ebp-0x4]
    6733:	88 50 02             	mov    BYTE PTR [eax+0x2],dl
    6736:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6739:	c6 40 03 01          	mov    BYTE PTR [eax+0x3],0x1
    673d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6740:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    6743:	0f b6 c0             	movzx  eax,al
    6746:	83 e0 07             	and    eax,0x7
    6749:	89 c2                	mov    edx,eax
    674b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    674e:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    6751:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6754:	0f b6 40 01          	movzx  eax,BYTE PTR [eax+0x1]
    6758:	0f b6 d0             	movzx  edx,al
    675b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    675e:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    6761:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6764:	0f b6 40 02          	movzx  eax,BYTE PTR [eax+0x2]
    6768:	0f b6 d0             	movzx  edx,al
    676b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    676e:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    6771:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6774:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    6777:	0f b6 c0             	movzx  eax,al
    677a:	83 e0 10             	and    eax,0x10
    677d:	85 c0                	test   eax,eax
    677f:	74 13                	je     0x6794
    6781:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6784:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    6787:	0d 00 ff ff ff       	or     eax,0xffffff00
    678c:	89 c2                	mov    edx,eax
    678e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6791:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    6794:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6797:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    679a:	0f b6 c0             	movzx  eax,al
    679d:	83 e0 20             	and    eax,0x20
    67a0:	85 c0                	test   eax,eax
    67a2:	74 13                	je     0x67b7
    67a4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    67a7:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    67aa:	0d 00 ff ff ff       	or     eax,0xffffff00
    67af:	89 c2                	mov    edx,eax
    67b1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    67b4:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    67b7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    67ba:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    67bd:	f7 d8                	neg    eax
    67bf:	89 c2                	mov    edx,eax
    67c1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    67c4:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    67c7:	b8 01 00 00 00       	mov    eax,0x1
    67cc:	eb 05                	jmp    0x67d3
    67ce:	b8 ff ff ff ff       	mov    eax,0xffffffff
    67d3:	c9                   	leave  
    67d4:	c3                   	ret    
    67d5:	55                   	push   ebp
    67d6:	89 e5                	mov    ebp,esp
    67d8:	83 ec 10             	sub    esp,0x10
    67db:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    67e1:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    67e6:	8b 00                	mov    eax,DWORD PTR [eax]
    67e8:	69 c0 98 01 00 00    	imul   eax,eax,0x198
    67ee:	01 d0                	add    eax,edx
    67f0:	83 c0 08             	add    eax,0x8
    67f3:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    67f6:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    67f9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    67fc:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    67ff:	8b 44 90 08          	mov    eax,DWORD PTR [eax+edx*4+0x8]
    6803:	c9                   	leave  
    6804:	c3                   	ret    
    6805:	55                   	push   ebp
    6806:	89 e5                	mov    ebp,esp
    6808:	83 ec 10             	sub    esp,0x10
    680b:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    6811:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6814:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    6817:	69 c0 98 01 00 00    	imul   eax,eax,0x198
    681d:	01 d0                	add    eax,edx
    681f:	83 c0 08             	add    eax,0x8
    6822:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    6825:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    6828:	8b 10                	mov    edx,DWORD PTR [eax]
    682a:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    682d:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    6830:	89 4c 90 08          	mov    DWORD PTR [eax+edx*4+0x8],ecx
    6834:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    6837:	8b 00                	mov    eax,DWORD PTR [eax]
    6839:	8d 50 01             	lea    edx,[eax+0x1]
    683c:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    683f:	89 10                	mov    DWORD PTR [eax],edx
    6841:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6844:	c7 40 04 02 00 00 00 	mov    DWORD PTR [eax+0x4],0x2
    684b:	90                   	nop
    684c:	c9                   	leave  
    684d:	c3                   	ret    
    684e:	55                   	push   ebp
    684f:	89 e5                	mov    ebp,esp
    6851:	83 ec 10             	sub    esp,0x10
    6854:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    685a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    685d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    6860:	69 c0 98 01 00 00    	imul   eax,eax,0x198
    6866:	01 d0                	add    eax,edx
    6868:	83 c0 08             	add    eax,0x8
    686b:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
    686e:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    6875:	eb 13                	jmp    0x688a
    6877:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    687a:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    687d:	8b 44 90 08          	mov    eax,DWORD PTR [eax+edx*4+0x8]
    6881:	39 45 08             	cmp    DWORD PTR [ebp+0x8],eax
    6884:	74 10                	je     0x6896
    6886:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    688a:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    688d:	8b 00                	mov    eax,DWORD PTR [eax]
    688f:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
    6892:	7c e3                	jl     0x6877
    6894:	eb 01                	jmp    0x6897
    6896:	90                   	nop
    6897:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    689a:	8b 00                	mov    eax,DWORD PTR [eax]
    689c:	8d 50 ff             	lea    edx,[eax-0x1]
    689f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68a2:	89 10                	mov    DWORD PTR [eax],edx
    68a4:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68a7:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    68aa:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
    68ad:	7d 0f                	jge    0x68be
    68af:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68b2:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    68b5:	8d 50 ff             	lea    edx,[eax-0x1]
    68b8:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68bb:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    68be:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68c1:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    68c4:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68c7:	8b 00                	mov    eax,DWORD PTR [eax]
    68c9:	39 c2                	cmp    edx,eax
    68cb:	7c 0a                	jl     0x68d7
    68cd:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68d0:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    68d7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    68da:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
    68e1:	eb 1b                	jmp    0x68fe
    68e3:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    68e6:	8d 50 01             	lea    edx,[eax+0x1]
    68e9:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68ec:	8b 4c 90 08          	mov    ecx,DWORD PTR [eax+edx*4+0x8]
    68f0:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    68f3:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    68f6:	89 4c 90 08          	mov    DWORD PTR [eax+edx*4+0x8],ecx
    68fa:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    68fe:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6901:	8b 00                	mov    eax,DWORD PTR [eax]
    6903:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
    6906:	7c db                	jl     0x68e3
    6908:	90                   	nop
    6909:	c9                   	leave  
    690a:	c3                   	ret    
    690b:	55                   	push   ebp
    690c:	89 e5                	mov    ebp,esp
    690e:	83 ec 10             	sub    esp,0x10
    6911:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    6918:	eb 1e                	jmp    0x6938
    691a:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    6920:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    6923:	69 c0 98 01 00 00    	imul   eax,eax,0x198
    6929:	01 d0                	add    eax,edx
    692b:	83 c0 08             	add    eax,0x8
    692e:	8b 00                	mov    eax,DWORD PTR [eax]
    6930:	85 c0                	test   eax,eax
    6932:	7f 0c                	jg     0x6940
    6934:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    6938:	83 7d fc 09          	cmp    DWORD PTR [ebp-0x4],0x9
    693c:	7e dc                	jle    0x691a
    693e:	eb 01                	jmp    0x6941
    6940:	90                   	nop
    6941:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    6946:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    6949:	89 10                	mov    DWORD PTR [eax],edx
    694b:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    6950:	c6 40 04 00          	mov    BYTE PTR [eax+0x4],0x0
    6954:	90                   	nop
    6955:	c9                   	leave  
    6956:	c3                   	ret    
    6957:	55                   	push   ebp
    6958:	89 e5                	mov    ebp,esp
    695a:	83 ec 18             	sub    esp,0x18
    695d:	c7 45 f0 00 00 27 00 	mov    DWORD PTR [ebp-0x10],0x270000
    6964:	83 ec 08             	sub    esp,0x8
    6967:	68 b8 e4 01 00       	push   0x1e4b8
    696c:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    696f:	e8 d2 f9 ff ff       	call   0x6346
    6974:	83 c4 10             	add    esp,0x10
    6977:	a3 f0 16 31 00       	mov    ds:0x3116f0,eax
    697c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    6983:	eb 7a                	jmp    0x69ff
    6985:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    698b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    698e:	6b c0 78             	imul   eax,eax,0x78
    6991:	01 d0                	add    eax,edx
    6993:	05 fc 0f 00 00       	add    eax,0xffc
    6998:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
    699e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    69a1:	83 c0 03             	add    eax,0x3
    69a4:	8b 0d f0 16 31 00    	mov    ecx,DWORD PTR ds:0x3116f0
    69aa:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
    69b1:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    69b4:	6b c0 78             	imul   eax,eax,0x78
    69b7:	01 c8                	add    eax,ecx
    69b9:	05 f8 0f 00 00       	add    eax,0xff8
    69be:	89 10                	mov    DWORD PTR [eax],edx
    69c0:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    69c5:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    69c8:	6b d2 78             	imul   edx,edx,0x78
    69cb:	81 c2 00 10 00 00    	add    edx,0x1000
    69d1:	01 d0                	add    eax,edx
    69d3:	83 c0 08             	add    eax,0x8
    69d6:	89 c1                	mov    ecx,eax
    69d8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    69db:	83 c0 03             	add    eax,0x3
    69de:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
    69e5:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    69e8:	01 d0                	add    eax,edx
    69ea:	68 89 00 00 00       	push   0x89
    69ef:	51                   	push   ecx
    69f0:	6a 67                	push   0x67
    69f2:	50                   	push   eax
    69f3:	e8 13 ed ff ff       	call   0x570b
    69f8:	83 c4 10             	add    esp,0x10
    69fb:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    69ff:	81 7d f4 e7 03 00 00 	cmp    DWORD PTR [ebp-0xc],0x3e7
    6a06:	0f 8e 79 ff ff ff    	jle    0x6985
    6a0c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    6a13:	eb 38                	jmp    0x6a4d
    6a15:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    6a1b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6a1e:	69 c0 98 01 00 00    	imul   eax,eax,0x198
    6a24:	01 d0                	add    eax,edx
    6a26:	83 c0 08             	add    eax,0x8
    6a29:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
    6a2f:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    6a35:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6a38:	69 c0 98 01 00 00    	imul   eax,eax,0x198
    6a3e:	01 d0                	add    eax,edx
    6a40:	83 c0 0c             	add    eax,0xc
    6a43:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
    6a49:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    6a4d:	83 7d f4 09          	cmp    DWORD PTR [ebp-0xc],0x9
    6a51:	7e c2                	jle    0x6a15
    6a53:	e8 ef 00 00 00       	call   0x6b47
    6a58:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    6a5b:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6a5e:	c7 40 04 02 00 00 00 	mov    DWORD PTR [eax+0x4],0x2
    6a65:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6a68:	c7 40 0c 02 00 00 00 	mov    DWORD PTR [eax+0xc],0x2
    6a6f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6a72:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    6a79:	83 ec 0c             	sub    esp,0xc
    6a7c:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    6a7f:	e8 81 fd ff ff       	call   0x6805
    6a84:	83 c4 10             	add    esp,0x10
    6a87:	e8 7f fe ff ff       	call   0x690b
    6a8c:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6a8f:	8b 00                	mov    eax,DWORD PTR [eax]
    6a91:	83 ec 0c             	sub    esp,0xc
    6a94:	50                   	push   eax
    6a95:	e8 1e 04 00 00       	call   0x6eb8
    6a9a:	83 c4 10             	add    esp,0x10
    6a9d:	e8 f2 0e 00 00       	call   0x7994
    6aa2:	a3 f4 16 31 00       	mov    ds:0x3116f4,eax
    6aa7:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6aaa:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    6aad:	89 c2                	mov    edx,eax
    6aaf:	a1 f4 16 31 00       	mov    eax,ds:0x3116f4
    6ab4:	83 ec 08             	sub    esp,0x8
    6ab7:	52                   	push   edx
    6ab8:	50                   	push   eax
    6ab9:	e8 68 0f 00 00       	call   0x7a26
    6abe:	83 c4 10             	add    esp,0x10
    6ac1:	e8 81 00 00 00       	call   0x6b47
    6ac6:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    6ac9:	83 ec 08             	sub    esp,0x8
    6acc:	68 00 00 01 00       	push   0x10000
    6ad1:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6ad4:	e8 6d f8 ff ff       	call   0x6346
    6ad9:	83 c4 10             	add    esp,0x10
    6adc:	05 00 00 01 00       	add    eax,0x10000
    6ae1:	89 c2                	mov    edx,eax
    6ae3:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6ae6:	89 50 48             	mov    DWORD PTR [eax+0x48],edx
    6ae9:	ba 3e 2a 00 00       	mov    edx,0x2a3e
    6aee:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6af1:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
    6af4:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6af7:	c7 40 58 08 00 00 00 	mov    DWORD PTR [eax+0x58],0x8
    6afe:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6b01:	c7 40 5c 10 00 00 00 	mov    DWORD PTR [eax+0x5c],0x10
    6b08:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6b0b:	c7 40 60 08 00 00 00 	mov    DWORD PTR [eax+0x60],0x8
    6b12:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6b15:	c7 40 64 08 00 00 00 	mov    DWORD PTR [eax+0x64],0x8
    6b1c:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6b1f:	c7 40 68 08 00 00 00 	mov    DWORD PTR [eax+0x68],0x8
    6b26:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    6b29:	c7 40 6c 08 00 00 00 	mov    DWORD PTR [eax+0x6c],0x8
    6b30:	83 ec 04             	sub    esp,0x4
    6b33:	6a 01                	push   0x1
    6b35:	6a 09                	push   0x9
    6b37:	ff 75 e8             	push   DWORD PTR [ebp-0x18]
    6b3a:	e8 03 01 00 00       	call   0x6c42
    6b3f:	83 c4 10             	add    esp,0x10
    6b42:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6b45:	c9                   	leave  
    6b46:	c3                   	ret    
    6b47:	55                   	push   ebp
    6b48:	89 e5                	mov    ebp,esp
    6b4a:	83 ec 10             	sub    esp,0x10
    6b4d:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    6b54:	e9 d5 00 00 00       	jmp    0x6c2e
    6b59:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    6b5f:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    6b62:	6b c0 78             	imul   eax,eax,0x78
    6b65:	01 d0                	add    eax,edx
    6b67:	05 fc 0f 00 00       	add    eax,0xffc
    6b6c:	8b 00                	mov    eax,DWORD PTR [eax]
    6b6e:	85 c0                	test   eax,eax
    6b70:	0f 85 b4 00 00 00    	jne    0x6c2a
    6b76:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    6b7b:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    6b7e:	6b d2 78             	imul   edx,edx,0x78
    6b81:	81 c2 f0 0f 00 00    	add    edx,0xff0
    6b87:	01 d0                	add    eax,edx
    6b89:	83 c0 08             	add    eax,0x8
    6b8c:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
    6b8f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6b92:	c7 40 04 01 00 00 00 	mov    DWORD PTR [eax+0x4],0x1
    6b99:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6b9c:	c7 40 34 02 02 00 00 	mov    DWORD PTR [eax+0x34],0x202
    6ba3:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6ba6:	c7 40 38 00 00 00 00 	mov    DWORD PTR [eax+0x38],0x0
    6bad:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6bb0:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [eax+0x3c],0x0
    6bb7:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6bba:	c7 40 40 00 00 00 00 	mov    DWORD PTR [eax+0x40],0x0
    6bc1:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6bc4:	c7 40 44 00 00 00 00 	mov    DWORD PTR [eax+0x44],0x0
    6bcb:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6bce:	c7 40 4c 00 00 00 00 	mov    DWORD PTR [eax+0x4c],0x0
    6bd5:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6bd8:	c7 40 50 00 00 00 00 	mov    DWORD PTR [eax+0x50],0x0
    6bdf:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6be2:	c7 40 54 00 00 00 00 	mov    DWORD PTR [eax+0x54],0x0
    6be9:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6bec:	c7 40 58 00 00 00 00 	mov    DWORD PTR [eax+0x58],0x0
    6bf3:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6bf6:	c7 40 64 00 00 00 00 	mov    DWORD PTR [eax+0x64],0x0
    6bfd:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6c00:	c7 40 68 00 00 00 00 	mov    DWORD PTR [eax+0x68],0x0
    6c07:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6c0a:	c7 40 6c 00 00 00 00 	mov    DWORD PTR [eax+0x6c],0x0
    6c11:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6c14:	c7 40 70 00 00 00 00 	mov    DWORD PTR [eax+0x70],0x0
    6c1b:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6c1e:	c7 40 74 00 00 00 40 	mov    DWORD PTR [eax+0x74],0x40000000
    6c25:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6c28:	eb 16                	jmp    0x6c40
    6c2a:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    6c2e:	81 7d fc e7 03 00 00 	cmp    DWORD PTR [ebp-0x4],0x3e7
    6c35:	0f 8e 1e ff ff ff    	jle    0x6b59
    6c3b:	b8 00 00 00 00       	mov    eax,0x0
    6c40:	c9                   	leave  
    6c41:	c3                   	ret    
    6c42:	55                   	push   ebp
    6c43:	89 e5                	mov    ebp,esp
    6c45:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
    6c49:	79 09                	jns    0x6c54
    6c4b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6c4e:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    6c51:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    6c54:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
    6c58:	7e 09                	jle    0x6c63
    6c5a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6c5d:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    6c60:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    6c63:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6c66:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    6c69:	83 f8 02             	cmp    eax,0x2
    6c6c:	75 16                	jne    0x6c84
    6c6e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6c71:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    6c74:	39 45 0c             	cmp    DWORD PTR [ebp+0xc],eax
    6c77:	74 0b                	je     0x6c84
    6c79:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6c7c:	e8 cd fb ff ff       	call   0x684e
    6c81:	83 c4 04             	add    esp,0x4
    6c84:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6c87:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    6c8a:	83 f8 02             	cmp    eax,0x2
    6c8d:	74 14                	je     0x6ca3
    6c8f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6c92:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    6c95:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    6c98:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6c9b:	e8 65 fb ff ff       	call   0x6805
    6ca0:	83 c4 04             	add    esp,0x4
    6ca3:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    6ca8:	c6 40 04 01          	mov    BYTE PTR [eax+0x4],0x1
    6cac:	90                   	nop
    6cad:	c9                   	leave  
    6cae:	c3                   	ret    
    6caf:	55                   	push   ebp
    6cb0:	89 e5                	mov    ebp,esp
    6cb2:	83 ec 18             	sub    esp,0x18
    6cb5:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    6cbb:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    6cc0:	8b 00                	mov    eax,DWORD PTR [eax]
    6cc2:	69 c0 98 01 00 00    	imul   eax,eax,0x198
    6cc8:	01 d0                	add    eax,edx
    6cca:	83 c0 08             	add    eax,0x8
    6ccd:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    6cd0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6cd3:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    6cd6:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6cd9:	8b 44 90 08          	mov    eax,DWORD PTR [eax+edx*4+0x8]
    6cdd:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    6ce0:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6ce3:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    6ce6:	8d 50 01             	lea    edx,[eax+0x1]
    6ce9:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6cec:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    6cef:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6cf2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    6cf5:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6cf8:	8b 00                	mov    eax,DWORD PTR [eax]
    6cfa:	39 c2                	cmp    edx,eax
    6cfc:	75 0a                	jne    0x6d08
    6cfe:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6d01:	c7 40 04 00 00 00 00 	mov    DWORD PTR [eax+0x4],0x0
    6d08:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    6d0d:	0f b6 40 04          	movzx  eax,BYTE PTR [eax+0x4]
    6d11:	84 c0                	test   al,al
    6d13:	74 20                	je     0x6d35
    6d15:	e8 f1 fb ff ff       	call   0x690b
    6d1a:	8b 15 f0 16 31 00    	mov    edx,DWORD PTR ds:0x3116f0
    6d20:	a1 f0 16 31 00       	mov    eax,ds:0x3116f0
    6d25:	8b 00                	mov    eax,DWORD PTR [eax]
    6d27:	69 c0 98 01 00 00    	imul   eax,eax,0x198
    6d2d:	01 d0                	add    eax,edx
    6d2f:	83 c0 08             	add    eax,0x8
    6d32:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    6d35:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6d38:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    6d3b:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6d3e:	8b 44 90 08          	mov    eax,DWORD PTR [eax+edx*4+0x8]
    6d42:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    6d45:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6d48:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    6d4b:	89 c2                	mov    edx,eax
    6d4d:	a1 f4 16 31 00       	mov    eax,ds:0x3116f4
    6d52:	83 ec 08             	sub    esp,0x8
    6d55:	52                   	push   edx
    6d56:	50                   	push   eax
    6d57:	e8 ca 0c 00 00       	call   0x7a26
    6d5c:	83 c4 10             	add    esp,0x10
    6d5f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6d62:	3b 45 f0             	cmp    eax,DWORD PTR [ebp-0x10]
    6d65:	74 14                	je     0x6d7b
    6d67:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    6d6a:	8b 00                	mov    eax,DWORD PTR [eax]
    6d6c:	83 ec 08             	sub    esp,0x8
    6d6f:	50                   	push   eax
    6d70:	6a 00                	push   0x0
    6d72:	e8 47 01 00 00       	call   0x6ebe
    6d77:	83 c4 10             	add    esp,0x10
    6d7a:	90                   	nop
    6d7b:	90                   	nop
    6d7c:	c9                   	leave  
    6d7d:	c3                   	ret    
    6d7e:	55                   	push   ebp
    6d7f:	89 e5                	mov    ebp,esp
    6d81:	83 ec 18             	sub    esp,0x18
    6d84:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6d87:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    6d8a:	83 f8 02             	cmp    eax,0x2
    6d8d:	75 3c                	jne    0x6dcb
    6d8f:	e8 41 fa ff ff       	call   0x67d5
    6d94:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    6d97:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6d9a:	e8 af fa ff ff       	call   0x684e
    6d9f:	83 c4 04             	add    esp,0x4
    6da2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6da5:	3b 45 f4             	cmp    eax,DWORD PTR [ebp-0xc]
    6da8:	75 21                	jne    0x6dcb
    6daa:	e8 5c fb ff ff       	call   0x690b
    6daf:	e8 21 fa ff ff       	call   0x67d5
    6db4:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    6db7:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    6dba:	8b 00                	mov    eax,DWORD PTR [eax]
    6dbc:	83 ec 08             	sub    esp,0x8
    6dbf:	50                   	push   eax
    6dc0:	6a 00                	push   0x0
    6dc2:	e8 f7 00 00 00       	call   0x6ebe
    6dc7:	83 c4 10             	add    esp,0x10
    6dca:	90                   	nop
    6dcb:	90                   	nop
    6dcc:	c9                   	leave  
    6dcd:	c3                   	ret    
    6dce:	55                   	push   ebp
    6dcf:	89 e5                	mov    ebp,esp
    6dd1:	83 ec 08             	sub    esp,0x8
    6dd4:	e8 07 00 00 00       	call   0x6de0
    6dd9:	eb f9                	jmp    0x6dd4
    6ddb:	66 90                	xchg   ax,ax
    6ddd:	66 90                	xchg   ax,ax
    6ddf:	90                   	nop
    6de0:	f4                   	hlt    
    6de1:	c3                   	ret    
    6de2:	fa                   	cli    
    6de3:	c3                   	ret    
    6de4:	fb                   	sti    
    6de5:	c3                   	ret    
    6de6:	fb                   	sti    
    6de7:	f4                   	hlt    
    6de8:	c3                   	ret    
    6de9:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    6ded:	b8 00 00 00 00       	mov    eax,0x0
    6df2:	ec                   	in     al,dx
    6df3:	c3                   	ret    
    6df4:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    6df8:	b8 00 00 00 00       	mov    eax,0x0
    6dfd:	66 ed                	in     ax,dx
    6dff:	c3                   	ret    
    6e00:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    6e04:	ed                   	in     eax,dx
    6e05:	c3                   	ret    
    6e06:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    6e0a:	8a 44 24 08          	mov    al,BYTE PTR [esp+0x8]
    6e0e:	ee                   	out    dx,al
    6e0f:	c3                   	ret    
    6e10:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    6e14:	66 8b 44 24 08       	mov    ax,WORD PTR [esp+0x8]
    6e19:	66 ef                	out    dx,ax
    6e1b:	c3                   	ret    
    6e1c:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
    6e20:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
    6e24:	ef                   	out    dx,eax
    6e25:	c3                   	ret    
    6e26:	9c                   	pushf  
    6e27:	58                   	pop    eax
    6e28:	c3                   	ret    
    6e29:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    6e2d:	50                   	push   eax
    6e2e:	9d                   	popf   
    6e2f:	c3                   	ret    
    6e30:	66 8b 44 24 04       	mov    ax,WORD PTR [esp+0x4]
    6e35:	66 89 44 24 06       	mov    WORD PTR [esp+0x6],ax
    6e3a:	0f 01 54 24 06       	lgdtd  [esp+0x6]
    6e3f:	c3                   	ret    
    6e40:	66 8b 44 24 04       	mov    ax,WORD PTR [esp+0x4]
    6e45:	66 89 44 24 06       	mov    WORD PTR [esp+0x6],ax
    6e4a:	0f 01 5c 24 06       	lidtd  [esp+0x6]
    6e4f:	c3                   	ret    
    6e50:	06                   	push   es
    6e51:	1e                   	push   ds
    6e52:	60                   	pusha  
    6e53:	89 e0                	mov    eax,esp
    6e55:	50                   	push   eax
    6e56:	66 8c d0             	mov    ax,ss
    6e59:	8e d8                	mov    ds,eax
    6e5b:	8e c0                	mov    es,eax
    6e5d:	e8 73 0c 00 00       	call   0x7ad5
    6e62:	58                   	pop    eax
    6e63:	61                   	popa   
    6e64:	1f                   	pop    ds
    6e65:	07                   	pop    es
    6e66:	cf                   	iret   
    6e67:	06                   	push   es
    6e68:	1e                   	push   ds
    6e69:	60                   	pusha  
    6e6a:	89 e0                	mov    eax,esp
    6e6c:	50                   	push   eax
    6e6d:	66 8c d0             	mov    ax,ss
    6e70:	8e d8                	mov    ds,eax
    6e72:	8e c0                	mov    es,eax
    6e74:	e8 90 f1 ff ff       	call   0x6009
    6e79:	58                   	pop    eax
    6e7a:	61                   	popa   
    6e7b:	1f                   	pop    ds
    6e7c:	07                   	pop    es
    6e7d:	cf                   	iret   
    6e7e:	06                   	push   es
    6e7f:	1e                   	push   ds
    6e80:	60                   	pusha  
    6e81:	89 e0                	mov    eax,esp
    6e83:	50                   	push   eax
    6e84:	66 8c d0             	mov    ax,ss
    6e87:	8e d8                	mov    ds,eax
    6e89:	8e c0                	mov    es,eax
    6e8b:	e8 61 f1 ff ff       	call   0x5ff1
    6e90:	58                   	pop    eax
    6e91:	61                   	popa   
    6e92:	1f                   	pop    ds
    6e93:	07                   	pop    es
    6e94:	cf                   	iret   
    6e95:	06                   	push   es
    6e96:	1e                   	push   ds
    6e97:	60                   	pusha  
    6e98:	89 e0                	mov    eax,esp
    6e9a:	50                   	push   eax
    6e9b:	66 8c d0             	mov    ax,ss
    6e9e:	8e d8                	mov    ds,eax
    6ea0:	8e c0                	mov    es,eax
    6ea2:	e8 4a f7 ff ff       	call   0x65f1
    6ea7:	58                   	pop    eax
    6ea8:	61                   	popa   
    6ea9:	1f                   	pop    ds
    6eaa:	07                   	pop    es
    6eab:	cf                   	iret   
    6eac:	0f 20 c0             	mov    eax,cr0
    6eaf:	c3                   	ret    
    6eb0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
    6eb4:	0f 22 c0             	mov    cr0,eax
    6eb7:	c3                   	ret    
    6eb8:	0f 00 5c 24 04       	ltr    WORD PTR [esp+0x4]
    6ebd:	c3                   	ret    
    6ebe:	ff 6c 24 04          	jmp    FWORD PTR [esp+0x4]
    6ec2:	c3                   	ret    
    6ec3:	55                   	push   ebp
    6ec4:	89 e5                	mov    ebp,esp
    6ec6:	83 ec 18             	sub    esp,0x18
    6ec9:	83 ec 08             	sub    esp,0x8
    6ecc:	68 14 28 00 00       	push   0x2814
    6ed1:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6ed4:	e8 6d f4 ff ff       	call   0x6346
    6ed9:	83 c4 10             	add    esp,0x10
    6edc:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    6edf:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
    6ee3:	75 08                	jne    0x6eed
    6ee5:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6ee8:	e9 bb 00 00 00       	jmp    0x6fa8
    6eed:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    6ef0:	0f af 45 14          	imul   eax,DWORD PTR [ebp+0x14]
    6ef4:	83 ec 08             	sub    esp,0x8
    6ef7:	50                   	push   eax
    6ef8:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6efb:	e8 46 f4 ff ff       	call   0x6346
    6f00:	83 c4 10             	add    esp,0x10
    6f03:	89 c2                	mov    edx,eax
    6f05:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f08:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    6f0b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f0e:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    6f11:	85 c0                	test   eax,eax
    6f13:	75 1c                	jne    0x6f31
    6f15:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f18:	83 ec 04             	sub    esp,0x4
    6f1b:	68 14 28 00 00       	push   0x2814
    6f20:	50                   	push   eax
    6f21:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    6f24:	e8 99 f6 ff ff       	call   0x65c2
    6f29:	83 c4 10             	add    esp,0x10
    6f2c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f2f:	eb 77                	jmp    0x6fa8
    6f31:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f34:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    6f37:	89 10                	mov    DWORD PTR [eax],edx
    6f39:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f3c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    6f3f:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    6f42:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f45:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
    6f48:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    6f4b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f4e:	c7 40 10 ff ff ff ff 	mov    DWORD PTR [eax+0x10],0xffffffff
    6f55:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    6f5c:	eb 3e                	jmp    0x6f9c
    6f5e:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
    6f61:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    6f64:	89 d0                	mov    eax,edx
    6f66:	c1 e0 03             	shl    eax,0x3
    6f69:	01 d0                	add    eax,edx
    6f6b:	c1 e0 02             	shl    eax,0x2
    6f6e:	01 c8                	add    eax,ecx
    6f70:	05 30 04 00 00       	add    eax,0x430
    6f75:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
    6f7b:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
    6f7e:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    6f81:	89 d0                	mov    eax,edx
    6f83:	c1 e0 03             	shl    eax,0x3
    6f86:	01 d0                	add    eax,edx
    6f88:	c1 e0 02             	shl    eax,0x2
    6f8b:	01 c8                	add    eax,ecx
    6f8d:	8d 90 34 04 00 00    	lea    edx,[eax+0x434]
    6f93:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6f96:	89 02                	mov    DWORD PTR [edx],eax
    6f98:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    6f9c:	81 7d f4 ff 00 00 00 	cmp    DWORD PTR [ebp-0xc],0xff
    6fa3:	7e b9                	jle    0x6f5e
    6fa5:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    6fa8:	c9                   	leave  
    6fa9:	c3                   	ret    
    6faa:	55                   	push   ebp
    6fab:	89 e5                	mov    ebp,esp
    6fad:	83 ec 10             	sub    esp,0x10
    6fb0:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    6fb7:	eb 58                	jmp    0x7011
    6fb9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    6fbc:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    6fbf:	89 d0                	mov    eax,edx
    6fc1:	c1 e0 03             	shl    eax,0x3
    6fc4:	01 d0                	add    eax,edx
    6fc6:	c1 e0 02             	shl    eax,0x2
    6fc9:	01 c8                	add    eax,ecx
    6fcb:	05 30 04 00 00       	add    eax,0x430
    6fd0:	8b 00                	mov    eax,DWORD PTR [eax]
    6fd2:	85 c0                	test   eax,eax
    6fd4:	75 37                	jne    0x700d
    6fd6:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    6fd9:	89 d0                	mov    eax,edx
    6fdb:	c1 e0 03             	shl    eax,0x3
    6fde:	01 d0                	add    eax,edx
    6fe0:	c1 e0 02             	shl    eax,0x2
    6fe3:	8d 90 10 04 00 00    	lea    edx,[eax+0x410]
    6fe9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    6fec:	01 d0                	add    eax,edx
    6fee:	83 c0 04             	add    eax,0x4
    6ff1:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
    6ff4:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    6ff7:	c7 40 1c 01 00 00 00 	mov    DWORD PTR [eax+0x1c],0x1
    6ffe:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    7001:	c7 40 18 ff ff ff ff 	mov    DWORD PTR [eax+0x18],0xffffffff
    7008:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    700b:	eb 12                	jmp    0x701f
    700d:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    7011:	81 7d fc ff 00 00 00 	cmp    DWORD PTR [ebp-0x4],0xff
    7018:	7e 9f                	jle    0x6fb9
    701a:	b8 00 00 00 00       	mov    eax,0x0
    701f:	c9                   	leave  
    7020:	c3                   	ret    
    7021:	55                   	push   ebp
    7022:	89 e5                	mov    ebp,esp
    7024:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7027:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    702a:	89 10                	mov    DWORD PTR [eax],edx
    702c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    702f:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    7032:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    7035:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7038:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
    703b:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
    703e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7041:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
    7044:	89 50 14             	mov    DWORD PTR [eax+0x14],edx
    7047:	90                   	nop
    7048:	5d                   	pop    ebp
    7049:	c3                   	ret    
    704a:	55                   	push   ebp
    704b:	89 e5                	mov    ebp,esp
    704d:	83 ec 40             	sub    esp,0x40
    7050:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7053:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7056:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
    7059:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
    705d:	79 07                	jns    0x7066
    705f:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
    7066:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
    706a:	79 07                	jns    0x7073
    706c:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
    7073:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7076:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7079:	39 45 14             	cmp    DWORD PTR [ebp+0x14],eax
    707c:	7e 09                	jle    0x7087
    707e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7081:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7084:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
    7087:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    708a:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    708d:	39 45 18             	cmp    DWORD PTR [ebp+0x18],eax
    7090:	7e 09                	jle    0x709b
    7092:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7095:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    7098:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
    709b:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
    709e:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    70a1:	e9 46 01 00 00       	jmp    0x71ec
    70a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    70a9:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    70ac:	83 c2 04             	add    edx,0x4
    70af:	8b 44 90 04          	mov    eax,DWORD PTR [eax+edx*4+0x4]
    70b3:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
    70b6:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    70b9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    70bc:	81 c2 14 04 00 00    	add    edx,0x414
    70c2:	29 d0                	sub    eax,edx
    70c4:	c1 f8 02             	sar    eax,0x2
    70c7:	69 c0 39 8e e3 38    	imul   eax,eax,0x38e38e39
    70cd:	88 45 db             	mov    BYTE PTR [ebp-0x25],al
    70d0:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    70d3:	8b 00                	mov    eax,DWORD PTR [eax]
    70d5:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
    70d8:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    70db:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    70de:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    70e1:	29 c2                	sub    edx,eax
    70e3:	89 d0                	mov    eax,edx
    70e5:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    70e8:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    70eb:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    70ee:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    70f1:	29 c2                	sub    edx,eax
    70f3:	89 d0                	mov    eax,edx
    70f5:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    70f8:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    70fb:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    70fe:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
    7101:	29 c2                	sub    edx,eax
    7103:	89 d0                	mov    eax,edx
    7105:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    7108:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    710b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    710e:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
    7111:	29 c2                	sub    edx,eax
    7113:	89 d0                	mov    eax,edx
    7115:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
    7118:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
    711c:	79 07                	jns    0x7125
    711e:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    7125:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
    7129:	79 07                	jns    0x7132
    712b:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
    7132:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    7135:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7138:	39 45 e8             	cmp    DWORD PTR [ebp-0x18],eax
    713b:	7e 09                	jle    0x7146
    713d:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    7140:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7143:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    7146:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    7149:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    714c:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
    714f:	7e 09                	jle    0x715a
    7151:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    7154:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7157:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
    715a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    715d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    7160:	eb 7a                	jmp    0x71dc
    7162:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    7165:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    7168:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    716b:	01 d0                	add    eax,edx
    716d:	89 45 d0             	mov    DWORD PTR [ebp-0x30],eax
    7170:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7173:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
    7176:	eb 58                	jmp    0x71d0
    7178:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    717b:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    717e:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    7181:	01 d0                	add    eax,edx
    7183:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
    7186:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    7189:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    718c:	0f af 45 f4          	imul   eax,DWORD PTR [ebp-0xc]
    7190:	89 c2                	mov    edx,eax
    7192:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    7195:	01 d0                	add    eax,edx
    7197:	89 c2                	mov    edx,eax
    7199:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
    719c:	01 d0                	add    eax,edx
    719e:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    71a1:	0f b6 d0             	movzx  edx,al
    71a4:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    71a7:	8b 40 14             	mov    eax,DWORD PTR [eax+0x14]
    71aa:	39 c2                	cmp    edx,eax
    71ac:	74 1e                	je     0x71cc
    71ae:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    71b1:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    71b4:	0f af 45 d0          	imul   eax,DWORD PTR [ebp-0x30]
    71b8:	89 c2                	mov    edx,eax
    71ba:	8b 45 cc             	mov    eax,DWORD PTR [ebp-0x34]
    71bd:	01 d0                	add    eax,edx
    71bf:	89 c2                	mov    edx,eax
    71c1:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    71c4:	01 c2                	add    edx,eax
    71c6:	0f b6 45 db          	movzx  eax,BYTE PTR [ebp-0x25]
    71ca:	88 02                	mov    BYTE PTR [edx],al
    71cc:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    71d0:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    71d3:	3b 45 e8             	cmp    eax,DWORD PTR [ebp-0x18]
    71d6:	7c a0                	jl     0x7178
    71d8:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    71dc:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    71df:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
    71e2:	0f 8c 7a ff ff ff    	jl     0x7162
    71e8:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    71ec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    71ef:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    71f2:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
    71f5:	0f 8e ab fe ff ff    	jle    0x70a6
    71fb:	90                   	nop
    71fc:	c9                   	leave  
    71fd:	c3                   	ret    
    71fe:	55                   	push   ebp
    71ff:	89 e5                	mov    ebp,esp
    7201:	83 ec 40             	sub    esp,0x40
    7204:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7207:	8b 00                	mov    eax,DWORD PTR [eax]
    7209:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
    720c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    720f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7212:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
    7215:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
    7219:	79 07                	jns    0x7222
    721b:	c7 45 0c 00 00 00 00 	mov    DWORD PTR [ebp+0xc],0x0
    7222:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
    7226:	79 07                	jns    0x722f
    7228:	c7 45 10 00 00 00 00 	mov    DWORD PTR [ebp+0x10],0x0
    722f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7232:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7235:	39 45 14             	cmp    DWORD PTR [ebp+0x14],eax
    7238:	7e 09                	jle    0x7243
    723a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    723d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7240:	89 45 14             	mov    DWORD PTR [ebp+0x14],eax
    7243:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7246:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    7249:	39 45 18             	cmp    DWORD PTR [ebp+0x18],eax
    724c:	7e 09                	jle    0x7257
    724e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7251:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    7254:	89 45 18             	mov    DWORD PTR [ebp+0x18],eax
    7257:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
    725a:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    725d:	e9 59 01 00 00       	jmp    0x73bb
    7262:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7265:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    7268:	83 c2 04             	add    edx,0x4
    726b:	8b 44 90 04          	mov    eax,DWORD PTR [eax+edx*4+0x4]
    726f:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
    7272:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    7275:	8b 00                	mov    eax,DWORD PTR [eax]
    7277:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
    727a:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    727d:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    7280:	81 c2 14 04 00 00    	add    edx,0x414
    7286:	29 d0                	sub    eax,edx
    7288:	c1 f8 02             	sar    eax,0x2
    728b:	69 c0 39 8e e3 38    	imul   eax,eax,0x38e38e39
    7291:	88 45 d3             	mov    BYTE PTR [ebp-0x2d],al
    7294:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    7297:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    729a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    729d:	29 c2                	sub    edx,eax
    729f:	89 d0                	mov    eax,edx
    72a1:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    72a4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    72a7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    72aa:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    72ad:	29 c2                	sub    edx,eax
    72af:	89 d0                	mov    eax,edx
    72b1:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    72b4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    72b7:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    72ba:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
    72bd:	29 c2                	sub    edx,eax
    72bf:	89 d0                	mov    eax,edx
    72c1:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    72c4:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    72c7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    72ca:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
    72cd:	29 c2                	sub    edx,eax
    72cf:	89 d0                	mov    eax,edx
    72d1:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
    72d4:	83 7d f0 00          	cmp    DWORD PTR [ebp-0x10],0x0
    72d8:	79 07                	jns    0x72e1
    72da:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    72e1:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
    72e5:	79 07                	jns    0x72ee
    72e7:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
    72ee:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    72f1:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    72f4:	39 45 e8             	cmp    DWORD PTR [ebp-0x18],eax
    72f7:	7e 09                	jle    0x7302
    72f9:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    72fc:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    72ff:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    7302:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    7305:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7308:	39 45 e4             	cmp    DWORD PTR [ebp-0x1c],eax
    730b:	7e 09                	jle    0x7316
    730d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    7310:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7313:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
    7316:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    7319:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    731c:	e9 8a 00 00 00       	jmp    0x73ab
    7321:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    7324:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    7327:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    732a:	01 d0                	add    eax,edx
    732c:	89 45 cc             	mov    DWORD PTR [ebp-0x34],eax
    732f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7332:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
    7335:	eb 68                	jmp    0x739f
    7337:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    733a:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    733d:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    7340:	01 d0                	add    eax,edx
    7342:	89 45 c8             	mov    DWORD PTR [ebp-0x38],eax
    7345:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7348:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    734b:	0f af 45 cc          	imul   eax,DWORD PTR [ebp-0x34]
    734f:	89 c2                	mov    edx,eax
    7351:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
    7354:	01 d0                	add    eax,edx
    7356:	89 c2                	mov    edx,eax
    7358:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
    735b:	01 d0                	add    eax,edx
    735d:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    7360:	38 45 d3             	cmp    BYTE PTR [ebp-0x2d],al
    7363:	75 36                	jne    0x739b
    7365:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
    7368:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    736b:	0f af 45 f4          	imul   eax,DWORD PTR [ebp-0xc]
    736f:	89 c2                	mov    edx,eax
    7371:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    7374:	01 d0                	add    eax,edx
    7376:	89 c2                	mov    edx,eax
    7378:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
    737b:	8d 0c 02             	lea    ecx,[edx+eax*1]
    737e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7381:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7384:	0f af 45 cc          	imul   eax,DWORD PTR [ebp-0x34]
    7388:	89 c2                	mov    edx,eax
    738a:	8b 45 c8             	mov    eax,DWORD PTR [ebp-0x38]
    738d:	01 d0                	add    eax,edx
    738f:	89 c2                	mov    edx,eax
    7391:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
    7394:	01 c2                	add    edx,eax
    7396:	0f b6 01             	movzx  eax,BYTE PTR [ecx]
    7399:	88 02                	mov    BYTE PTR [edx],al
    739b:	83 45 f8 01          	add    DWORD PTR [ebp-0x8],0x1
    739f:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
    73a2:	3b 45 e8             	cmp    eax,DWORD PTR [ebp-0x18]
    73a5:	7c 90                	jl     0x7337
    73a7:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    73ab:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    73ae:	3b 45 e4             	cmp    eax,DWORD PTR [ebp-0x1c]
    73b1:	0f 8c 6a ff ff ff    	jl     0x7321
    73b7:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    73bb:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    73be:	3b 45 20             	cmp    eax,DWORD PTR [ebp+0x20]
    73c1:	0f 8e 9b fe ff ff    	jle    0x7262
    73c7:	90                   	nop
    73c8:	c9                   	leave  
    73c9:	c3                   	ret    
    73ca:	55                   	push   ebp
    73cb:	89 e5                	mov    ebp,esp
    73cd:	56                   	push   esi
    73ce:	53                   	push   ebx
    73cf:	83 ec 10             	sub    esp,0x10
    73d2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    73d5:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
    73d8:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    73db:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    73de:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    73e1:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    73e4:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    73e7:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    73ea:	83 c0 01             	add    eax,0x1
    73ed:	39 45 0c             	cmp    DWORD PTR [ebp+0xc],eax
    73f0:	7e 0c                	jle    0x73fe
    73f2:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    73f5:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    73f8:	83 c0 01             	add    eax,0x1
    73fb:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
    73fe:	83 7d 0c ff          	cmp    DWORD PTR [ebp+0xc],0xffffffff
    7402:	7d 07                	jge    0x740b
    7404:	c7 45 0c ff ff ff ff 	mov    DWORD PTR [ebp+0xc],0xffffffff
    740b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    740e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    7411:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
    7414:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    7417:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
    741a:	0f 8e c9 01 00 00    	jle    0x75e9
    7420:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
    7424:	0f 88 dc 00 00 00    	js     0x7506
    742a:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    742d:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    7430:	eb 34                	jmp    0x7466
    7432:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7435:	8d 50 ff             	lea    edx,[eax-0x1]
    7438:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    743b:	83 c2 04             	add    edx,0x4
    743e:	8b 54 90 04          	mov    edx,DWORD PTR [eax+edx*4+0x4]
    7442:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7445:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
    7448:	83 c1 04             	add    ecx,0x4
    744b:	89 54 88 04          	mov    DWORD PTR [eax+ecx*4+0x4],edx
    744f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7452:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    7455:	83 c2 04             	add    edx,0x4
    7458:	8b 44 90 04          	mov    eax,DWORD PTR [eax+edx*4+0x4]
    745c:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    745f:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
    7462:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
    7466:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7469:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
    746c:	7f c4                	jg     0x7432
    746e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7471:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    7474:	8d 4a 04             	lea    ecx,[edx+0x4]
    7477:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    747a:	89 54 88 04          	mov    DWORD PTR [eax+ecx*4+0x4],edx
    747e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    7481:	8d 70 01             	lea    esi,[eax+0x1]
    7484:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7487:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    748a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    748d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7490:	8d 1c 02             	lea    ebx,[edx+eax*1]
    7493:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7496:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    7499:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    749c:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    749f:	8d 0c 02             	lea    ecx,[edx+eax*1]
    74a2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    74a5:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    74a8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    74ab:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    74ae:	56                   	push   esi
    74af:	53                   	push   ebx
    74b0:	51                   	push   ecx
    74b1:	52                   	push   edx
    74b2:	50                   	push   eax
    74b3:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    74b6:	e8 8f fb ff ff       	call   0x704a
    74bb:	83 c4 18             	add    esp,0x18
    74be:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    74c1:	8d 70 01             	lea    esi,[eax+0x1]
    74c4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    74c7:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    74ca:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    74cd:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    74d0:	8d 1c 02             	lea    ebx,[edx+eax*1]
    74d3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    74d6:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    74d9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    74dc:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    74df:	8d 0c 02             	lea    ecx,[edx+eax*1]
    74e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    74e5:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    74e8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    74eb:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    74ee:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    74f1:	56                   	push   esi
    74f2:	53                   	push   ebx
    74f3:	51                   	push   ecx
    74f4:	52                   	push   edx
    74f5:	50                   	push   eax
    74f6:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    74f9:	e8 00 fd ff ff       	call   0x71fe
    74fe:	83 c4 1c             	add    esp,0x1c
    7501:	e9 33 02 00 00       	jmp    0x7739
    7506:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7509:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    750c:	39 45 ec             	cmp    DWORD PTR [ebp-0x14],eax
    750f:	7d 47                	jge    0x7558
    7511:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    7514:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    7517:	eb 34                	jmp    0x754d
    7519:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    751c:	8d 50 01             	lea    edx,[eax+0x1]
    751f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7522:	83 c2 04             	add    edx,0x4
    7525:	8b 54 90 04          	mov    edx,DWORD PTR [eax+edx*4+0x4]
    7529:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    752c:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
    752f:	83 c1 04             	add    ecx,0x4
    7532:	89 54 88 04          	mov    DWORD PTR [eax+ecx*4+0x4],edx
    7536:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7539:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    753c:	83 c2 04             	add    edx,0x4
    753f:	8b 44 90 04          	mov    eax,DWORD PTR [eax+edx*4+0x4]
    7543:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    7546:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
    7549:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    754d:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7550:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    7553:	39 45 f4             	cmp    DWORD PTR [ebp-0xc],eax
    7556:	7c c1                	jl     0x7519
    7558:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    755b:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    755e:	8d 50 ff             	lea    edx,[eax-0x1]
    7561:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7564:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    7567:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    756a:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    756d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7570:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7573:	8d 1c 02             	lea    ebx,[edx+eax*1]
    7576:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7579:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    757c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    757f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7582:	8d 0c 02             	lea    ecx,[edx+eax*1]
    7585:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7588:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    758b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    758e:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    7591:	6a 00                	push   0x0
    7593:	53                   	push   ebx
    7594:	51                   	push   ecx
    7595:	52                   	push   edx
    7596:	50                   	push   eax
    7597:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    759a:	e8 ab fa ff ff       	call   0x704a
    759f:	83 c4 18             	add    esp,0x18
    75a2:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    75a5:	8d 70 ff             	lea    esi,[eax-0x1]
    75a8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    75ab:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    75ae:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    75b1:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    75b4:	8d 1c 02             	lea    ebx,[edx+eax*1]
    75b7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    75ba:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    75bd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    75c0:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    75c3:	8d 0c 02             	lea    ecx,[edx+eax*1]
    75c6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    75c9:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    75cc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    75cf:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    75d2:	56                   	push   esi
    75d3:	6a 00                	push   0x0
    75d5:	53                   	push   ebx
    75d6:	51                   	push   ecx
    75d7:	52                   	push   edx
    75d8:	50                   	push   eax
    75d9:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    75dc:	e8 1d fc ff ff       	call   0x71fe
    75e1:	83 c4 1c             	add    esp,0x1c
    75e4:	e9 50 01 00 00       	jmp    0x7739
    75e9:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    75ec:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
    75ef:	0f 8d 44 01 00 00    	jge    0x7739
    75f5:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
    75f9:	78 56                	js     0x7651
    75fb:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    75fe:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    7601:	eb 34                	jmp    0x7637
    7603:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7606:	8d 50 01             	lea    edx,[eax+0x1]
    7609:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    760c:	83 c2 04             	add    edx,0x4
    760f:	8b 54 90 04          	mov    edx,DWORD PTR [eax+edx*4+0x4]
    7613:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7616:	8b 4d f4             	mov    ecx,DWORD PTR [ebp-0xc]
    7619:	83 c1 04             	add    ecx,0x4
    761c:	89 54 88 04          	mov    DWORD PTR [eax+ecx*4+0x4],edx
    7620:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7623:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    7626:	83 c2 04             	add    edx,0x4
    7629:	8b 44 90 04          	mov    eax,DWORD PTR [eax+edx*4+0x4]
    762d:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    7630:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
    7633:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    7637:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    763a:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
    763d:	7c c4                	jl     0x7603
    763f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7642:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    7645:	8d 4a 04             	lea    ecx,[edx+0x4]
    7648:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    764b:	89 54 88 04          	mov    DWORD PTR [eax+ecx*4+0x4],edx
    764f:	eb 6c                	jmp    0x76bd
    7651:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7654:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    7657:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    765a:	eb 3a                	jmp    0x7696
    765c:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    765f:	8d 48 01             	lea    ecx,[eax+0x1]
    7662:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7665:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    7668:	83 c2 04             	add    edx,0x4
    766b:	8b 54 90 04          	mov    edx,DWORD PTR [eax+edx*4+0x4]
    766f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7672:	83 c1 04             	add    ecx,0x4
    7675:	89 54 88 04          	mov    DWORD PTR [eax+ecx*4+0x4],edx
    7679:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    767c:	8d 50 01             	lea    edx,[eax+0x1]
    767f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7682:	83 c2 04             	add    edx,0x4
    7685:	8b 44 90 04          	mov    eax,DWORD PTR [eax+edx*4+0x4]
    7689:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    768c:	83 c2 01             	add    edx,0x1
    768f:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
    7692:	83 6d f4 01          	sub    DWORD PTR [ebp-0xc],0x1
    7696:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7699:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
    769c:	7d be                	jge    0x765c
    769e:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    76a1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    76a4:	8d 4a 04             	lea    ecx,[edx+0x4]
    76a7:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    76aa:	89 54 88 04          	mov    DWORD PTR [eax+ecx*4+0x4],edx
    76ae:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    76b1:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    76b4:	8d 50 01             	lea    edx,[eax+0x1]
    76b7:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    76ba:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    76bd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    76c0:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    76c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    76c6:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    76c9:	8d 1c 02             	lea    ebx,[edx+eax*1]
    76cc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    76cf:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    76d2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    76d5:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    76d8:	8d 0c 02             	lea    ecx,[edx+eax*1]
    76db:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    76de:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    76e1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    76e4:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    76e7:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    76ea:	53                   	push   ebx
    76eb:	51                   	push   ecx
    76ec:	52                   	push   edx
    76ed:	50                   	push   eax
    76ee:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    76f1:	e8 54 f9 ff ff       	call   0x704a
    76f6:	83 c4 18             	add    esp,0x18
    76f9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    76fc:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    76ff:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7702:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
    7705:	8d 1c 02             	lea    ebx,[edx+eax*1]
    7708:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    770b:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    770e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7711:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7714:	8d 0c 02             	lea    ecx,[edx+eax*1]
    7717:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    771a:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    771d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7720:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    7723:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    7726:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    7729:	53                   	push   ebx
    772a:	51                   	push   ecx
    772b:	52                   	push   edx
    772c:	50                   	push   eax
    772d:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    7730:	e8 c9 fa ff ff       	call   0x71fe
    7735:	83 c4 1c             	add    esp,0x1c
    7738:	90                   	nop
    7739:	90                   	nop
    773a:	8d 65 f8             	lea    esp,[ebp-0x8]
    773d:	5b                   	pop    ebx
    773e:	5e                   	pop    esi
    773f:	5d                   	pop    ebp
    7740:	c3                   	ret    
    7741:	55                   	push   ebp
    7742:	89 e5                	mov    ebp,esp
    7744:	57                   	push   edi
    7745:	56                   	push   esi
    7746:	53                   	push   ebx
    7747:	83 ec 04             	sub    esp,0x4
    774a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    774d:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    7750:	85 c0                	test   eax,eax
    7752:	78 55                	js     0x77a9
    7754:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7757:	8b 58 18             	mov    ebx,DWORD PTR [eax+0x18]
    775a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    775d:	8b 48 18             	mov    ecx,DWORD PTR [eax+0x18]
    7760:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7763:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    7766:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
    7769:	01 d0                	add    eax,edx
    776b:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    776e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7771:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    7774:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
    7777:	8d 3c 02             	lea    edi,[edx+eax*1]
    777a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    777d:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    7780:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
    7783:	8d 34 02             	lea    esi,[edx+eax*1]
    7786:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7789:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
    778c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    778f:	01 c2                	add    edx,eax
    7791:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7794:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
    7797:	53                   	push   ebx
    7798:	51                   	push   ecx
    7799:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    779c:	57                   	push   edi
    779d:	56                   	push   esi
    779e:	52                   	push   edx
    779f:	50                   	push   eax
    77a0:	e8 59 fa ff ff       	call   0x71fe
    77a5:	83 c4 1c             	add    esp,0x1c
    77a8:	90                   	nop
    77a9:	90                   	nop
    77aa:	8d 65 f4             	lea    esp,[ebp-0xc]
    77ad:	5b                   	pop    ebx
    77ae:	5e                   	pop    esi
    77af:	5f                   	pop    edi
    77b0:	5d                   	pop    ebp
    77b1:	c3                   	ret    
    77b2:	55                   	push   ebp
    77b3:	89 e5                	mov    ebp,esp
    77b5:	56                   	push   esi
    77b6:	53                   	push   ebx
    77b7:	83 ec 10             	sub    esp,0x10
    77ba:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    77bd:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
    77c0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    77c3:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    77c6:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    77c9:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    77cc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    77cf:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
    77d2:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    77d5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    77d8:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    77db:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    77de:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    77e1:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    77e4:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    77e7:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    77ea:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    77ed:	85 c0                	test   eax,eax
    77ef:	0f 88 c8 00 00 00    	js     0x78bd
    77f5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    77f8:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
    77fb:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    77fe:	01 c2                	add    edx,eax
    7800:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7803:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
    7806:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7809:	01 c8                	add    eax,ecx
    780b:	6a 00                	push   0x0
    780d:	52                   	push   edx
    780e:	50                   	push   eax
    780f:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    7812:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    7815:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    7818:	e8 2d f8 ff ff       	call   0x704a
    781d:	83 c4 18             	add    esp,0x18
    7820:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7823:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    7826:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    7829:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
    782c:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    782f:	01 d1                	add    ecx,edx
    7831:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    7834:	8b 5a 04             	mov    ebx,DWORD PTR [edx+0x4]
    7837:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    783a:	01 da                	add    edx,ebx
    783c:	50                   	push   eax
    783d:	51                   	push   ecx
    783e:	52                   	push   edx
    783f:	ff 75 10             	push   DWORD PTR [ebp+0x10]
    7842:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    7845:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    7848:	e8 fd f7 ff ff       	call   0x704a
    784d:	83 c4 18             	add    esp,0x18
    7850:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7853:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    7856:	8d 48 ff             	lea    ecx,[eax-0x1]
    7859:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    785c:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
    785f:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    7862:	01 c2                	add    edx,eax
    7864:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7867:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
    786a:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    786d:	01 d8                	add    eax,ebx
    786f:	51                   	push   ecx
    7870:	6a 00                	push   0x0
    7872:	52                   	push   edx
    7873:	50                   	push   eax
    7874:	ff 75 ec             	push   DWORD PTR [ebp-0x14]
    7877:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    787a:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    787d:	e8 7c f9 ff ff       	call   0x71fe
    7882:	83 c4 1c             	add    esp,0x1c
    7885:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7888:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
    788b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    788e:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    7891:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    7894:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
    7897:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
    789a:	01 cb                	add    ebx,ecx
    789c:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    789f:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
    78a2:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
    78a5:	01 f1                	add    ecx,esi
    78a7:	52                   	push   edx
    78a8:	50                   	push   eax
    78a9:	53                   	push   ebx
    78aa:	51                   	push   ecx
    78ab:	ff 75 10             	push   DWORD PTR [ebp+0x10]
    78ae:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    78b1:	ff 75 f4             	push   DWORD PTR [ebp-0xc]
    78b4:	e8 45 f9 ff ff       	call   0x71fe
    78b9:	83 c4 1c             	add    esp,0x1c
    78bc:	90                   	nop
    78bd:	90                   	nop
    78be:	8d 65 f8             	lea    esp,[ebp-0x8]
    78c1:	5b                   	pop    ebx
    78c2:	5e                   	pop    esi
    78c3:	5d                   	pop    ebp
    78c4:	c3                   	ret    
    78c5:	55                   	push   ebp
    78c6:	89 e5                	mov    ebp,esp
    78c8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    78cb:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
    78ce:	85 c0                	test   eax,eax
    78d0:	78 0d                	js     0x78df
    78d2:	6a ff                	push   0xffffffff
    78d4:	ff 75 08             	push   DWORD PTR [ebp+0x8]
    78d7:	e8 ee fa ff ff       	call   0x73ca
    78dc:	83 c4 08             	add    esp,0x8
    78df:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    78e2:	c7 40 1c 00 00 00 00 	mov    DWORD PTR [eax+0x1c],0x0
    78e9:	90                   	nop
    78ea:	c9                   	leave  
    78eb:	c3                   	ret    
    78ec:	55                   	push   ebp
    78ed:	89 e5                	mov    ebp,esp
    78ef:	83 ec 18             	sub    esp,0x18
    78f2:	83 ec 08             	sub    esp,0x8
    78f5:	6a 34                	push   0x34
    78f7:	6a 43                	push   0x43
    78f9:	e8 08 f5 ff ff       	call   0x6e06
    78fe:	83 c4 10             	add    esp,0x10
    7901:	83 ec 08             	sub    esp,0x8
    7904:	68 9c 00 00 00       	push   0x9c
    7909:	6a 40                	push   0x40
    790b:	e8 f6 f4 ff ff       	call   0x6e06
    7910:	83 c4 10             	add    esp,0x10
    7913:	83 ec 08             	sub    esp,0x8
    7916:	6a 2e                	push   0x2e
    7918:	6a 40                	push   0x40
    791a:	e8 e7 f4 ff ff       	call   0x6e06
    791f:	83 c4 10             	add    esp,0x10
    7922:	c7 05 00 17 31 00 00 	mov    DWORD PTR ds:0x311700,0x0
    7929:	00 00 00 
    792c:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    7933:	eb 1c                	jmp    0x7951
    7935:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    7938:	89 d0                	mov    eax,edx
    793a:	c1 e0 02             	shl    eax,0x2
    793d:	01 d0                	add    eax,edx
    793f:	c1 e0 02             	shl    eax,0x2
    7942:	05 14 17 31 00       	add    eax,0x311714
    7947:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
    794d:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    7951:	81 7d f4 f3 01 00 00 	cmp    DWORD PTR [ebp-0xc],0x1f3
    7958:	7e db                	jle    0x7935
    795a:	e8 35 00 00 00       	call   0x7994
    795f:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    7962:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7965:	c7 40 04 ff ff ff ff 	mov    DWORD PTR [eax+0x4],0xffffffff
    796c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    796f:	c7 40 08 02 00 00 00 	mov    DWORD PTR [eax+0x8],0x2
    7976:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7979:	c7 00 00 00 00 00    	mov    DWORD PTR [eax],0x0
    797f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7982:	a3 08 17 31 00       	mov    ds:0x311708,eax
    7987:	c7 05 04 17 31 00 ff 	mov    DWORD PTR ds:0x311704,0xffffffff
    798e:	ff ff ff 
    7991:	90                   	nop
    7992:	c9                   	leave  
    7993:	c3                   	ret    
    7994:	55                   	push   ebp
    7995:	89 e5                	mov    ebp,esp
    7997:	83 ec 10             	sub    esp,0x10
    799a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    79a1:	eb 4b                	jmp    0x79ee
    79a3:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    79a6:	89 d0                	mov    eax,edx
    79a8:	c1 e0 02             	shl    eax,0x2
    79ab:	01 d0                	add    eax,edx
    79ad:	c1 e0 02             	shl    eax,0x2
    79b0:	05 14 17 31 00       	add    eax,0x311714
    79b5:	8b 00                	mov    eax,DWORD PTR [eax]
    79b7:	85 c0                	test   eax,eax
    79b9:	75 2f                	jne    0x79ea
    79bb:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    79be:	89 d0                	mov    eax,edx
    79c0:	c1 e0 02             	shl    eax,0x2
    79c3:	01 d0                	add    eax,edx
    79c5:	c1 e0 02             	shl    eax,0x2
    79c8:	05 14 17 31 00       	add    eax,0x311714
    79cd:	c7 00 01 00 00 00    	mov    DWORD PTR [eax],0x1
    79d3:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    79d6:	89 d0                	mov    eax,edx
    79d8:	c1 e0 02             	shl    eax,0x2
    79db:	01 d0                	add    eax,edx
    79dd:	c1 e0 02             	shl    eax,0x2
    79e0:	05 00 17 31 00       	add    eax,0x311700
    79e5:	83 c0 0c             	add    eax,0xc
    79e8:	eb 12                	jmp    0x79fc
    79ea:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    79ee:	81 7d fc f3 01 00 00 	cmp    DWORD PTR [ebp-0x4],0x1f3
    79f5:	7e ac                	jle    0x79a3
    79f7:	b8 00 00 00 00       	mov    eax,0x0
    79fc:	c9                   	leave  
    79fd:	c3                   	ret    
    79fe:	55                   	push   ebp
    79ff:	89 e5                	mov    ebp,esp
    7a01:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a04:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
    7a0b:	90                   	nop
    7a0c:	5d                   	pop    ebp
    7a0d:	c3                   	ret    
    7a0e:	55                   	push   ebp
    7a0f:	89 e5                	mov    ebp,esp
    7a11:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a14:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    7a17:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
    7a1a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a1d:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
    7a20:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
    7a23:	90                   	nop
    7a24:	5d                   	pop    ebp
    7a25:	c3                   	ret    
    7a26:	55                   	push   ebp
    7a27:	89 e5                	mov    ebp,esp
    7a29:	83 ec 18             	sub    esp,0x18
    7a2c:	8b 15 00 17 31 00    	mov    edx,DWORD PTR ds:0x311700
    7a32:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    7a35:	01 c2                	add    edx,eax
    7a37:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a3a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
    7a3d:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a40:	c7 40 08 02 00 00 00 	mov    DWORD PTR [eax+0x8],0x2
    7a47:	e8 da f3 ff ff       	call   0x6e26
    7a4c:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    7a4f:	e8 8e f3 ff ff       	call   0x6de2
    7a54:	a1 08 17 31 00       	mov    eax,ds:0x311708
    7a59:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    7a5c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a5f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    7a62:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7a65:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7a68:	39 c2                	cmp    edx,eax
    7a6a:	77 2b                	ja     0x7a97
    7a6c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a6f:	a3 08 17 31 00       	mov    ds:0x311708,eax
    7a74:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a77:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    7a7a:	89 10                	mov    DWORD PTR [eax],edx
    7a7c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7a7f:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7a82:	a3 04 17 31 00       	mov    ds:0x311704,eax
    7a87:	83 ec 0c             	sub    esp,0xc
    7a8a:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    7a8d:	e8 97 f3 ff ff       	call   0x6e29
    7a92:	83 c4 10             	add    esp,0x10
    7a95:	eb 3c                	jmp    0x7ad3
    7a97:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7a9a:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
    7a9d:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7aa0:	8b 00                	mov    eax,DWORD PTR [eax]
    7aa2:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    7aa5:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7aa8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    7aab:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7aae:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7ab1:	39 c2                	cmp    edx,eax
    7ab3:	77 e2                	ja     0x7a97
    7ab5:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    7ab8:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
    7abb:	89 10                	mov    DWORD PTR [eax],edx
    7abd:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7ac0:	8b 55 f4             	mov    edx,DWORD PTR [ebp-0xc]
    7ac3:	89 10                	mov    DWORD PTR [eax],edx
    7ac5:	83 ec 0c             	sub    esp,0xc
    7ac8:	ff 75 f0             	push   DWORD PTR [ebp-0x10]
    7acb:	e8 59 f3 ff ff       	call   0x6e29
    7ad0:	83 c4 10             	add    esp,0x10
    7ad3:	c9                   	leave  
    7ad4:	c3                   	ret    
    7ad5:	55                   	push   ebp
    7ad6:	89 e5                	mov    ebp,esp
    7ad8:	83 ec 18             	sub    esp,0x18
    7adb:	c6 45 f7 00          	mov    BYTE PTR [ebp-0x9],0x0
    7adf:	83 ec 08             	sub    esp,0x8
    7ae2:	6a 60                	push   0x60
    7ae4:	6a 20                	push   0x20
    7ae6:	e8 1b f3 ff ff       	call   0x6e06
    7aeb:	83 c4 10             	add    esp,0x10
    7aee:	a1 00 17 31 00       	mov    eax,ds:0x311700
    7af3:	83 c0 01             	add    eax,0x1
    7af6:	a3 00 17 31 00       	mov    ds:0x311700,eax
    7afb:	8b 15 04 17 31 00    	mov    edx,DWORD PTR ds:0x311704
    7b01:	a1 00 17 31 00       	mov    eax,ds:0x311700
    7b06:	39 c2                	cmp    edx,eax
    7b08:	77 76                	ja     0x7b80
    7b0a:	a1 08 17 31 00       	mov    eax,ds:0x311708
    7b0f:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    7b12:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7b15:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
    7b18:	a1 00 17 31 00       	mov    eax,ds:0x311700
    7b1d:	39 c2                	cmp    edx,eax
    7b1f:	77 3d                	ja     0x7b5e
    7b21:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7b24:	c7 40 08 01 00 00 00 	mov    DWORD PTR [eax+0x8],0x1
    7b2b:	a1 f4 16 31 00       	mov    eax,ds:0x3116f4
    7b30:	39 45 f0             	cmp    DWORD PTR [ebp-0x10],eax
    7b33:	74 1b                	je     0x7b50
    7b35:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7b38:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
    7b3b:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7b3e:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
    7b41:	83 ec 08             	sub    esp,0x8
    7b44:	52                   	push   edx
    7b45:	50                   	push   eax
    7b46:	e8 c7 dc ff ff       	call   0x5812
    7b4b:	83 c4 10             	add    esp,0x10
    7b4e:	eb 04                	jmp    0x7b54
    7b50:	c6 45 f7 01          	mov    BYTE PTR [ebp-0x9],0x1
    7b54:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7b57:	8b 00                	mov    eax,DWORD PTR [eax]
    7b59:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
    7b5c:	eb b4                	jmp    0x7b12
    7b5e:	90                   	nop
    7b5f:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7b62:	a3 08 17 31 00       	mov    ds:0x311708,eax
    7b67:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7b6a:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
    7b6d:	a3 04 17 31 00       	mov    ds:0x311704,eax
    7b72:	80 7d f7 00          	cmp    BYTE PTR [ebp-0x9],0x0
    7b76:	74 0b                	je     0x7b83
    7b78:	e8 32 f1 ff ff       	call   0x6caf
    7b7d:	90                   	nop
    7b7e:	eb 03                	jmp    0x7b83
    7b80:	90                   	nop
    7b81:	eb 01                	jmp    0x7b84
    7b83:	90                   	nop
    7b84:	c9                   	leave  
    7b85:	c3                   	ret    
    7b86:	55                   	push   ebp
    7b87:	89 e5                	mov    ebp,esp
    7b89:	83 ec 38             	sub    esp,0x38
    7b8c:	8d 45 10             	lea    eax,[ebp+0x10]
    7b8f:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
    7b92:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
    7b99:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    7b9c:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
    7b9f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7ba2:	83 ec 0c             	sub    esp,0xc
    7ba5:	50                   	push   eax
    7ba6:	e8 7f 01 00 00       	call   0x7d2a
    7bab:	83 c4 10             	add    esp,0x10
    7bae:	83 ec 0c             	sub    esp,0xc
    7bb1:	8d 45 d0             	lea    eax,[ebp-0x30]
    7bb4:	50                   	push   eax
    7bb5:	e8 70 01 00 00       	call   0x7d2a
    7bba:	83 c4 10             	add    esp,0x10
    7bbd:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
    7bc4:	e9 4e 01 00 00       	jmp    0x7d17
    7bc9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    7bcc:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    7bcf:	0f be c0             	movsx  eax,al
    7bd2:	83 f8 25             	cmp    eax,0x25
    7bd5:	74 0e                	je     0x7be5
    7bd7:	83 f8 5c             	cmp    eax,0x5c
    7bda:	0f 84 32 01 00 00    	je     0x7d12
    7be0:	e9 16 01 00 00       	jmp    0x7cfb
    7be5:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    7be8:	83 c0 01             	add    eax,0x1
    7beb:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    7bee:	0f be c0             	movsx  eax,al
    7bf1:	83 f8 64             	cmp    eax,0x64
    7bf4:	74 22                	je     0x7c18
    7bf6:	83 f8 64             	cmp    eax,0x64
    7bf9:	7f 0a                	jg     0x7c05
    7bfb:	83 f8 58             	cmp    eax,0x58
    7bfe:	74 6c                	je     0x7c6c
    7c00:	e9 ba 00 00 00       	jmp    0x7cbf
    7c05:	83 f8 73             	cmp    eax,0x73
    7c08:	0f 84 89 00 00 00    	je     0x7c97
    7c0e:	83 f8 78             	cmp    eax,0x78
    7c11:	74 2e                	je     0x7c41
    7c13:	e9 a7 00 00 00       	jmp    0x7cbf
    7c18:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7c1b:	8d 50 01             	lea    edx,[eax+0x1]
    7c1e:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
    7c21:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
    7c28:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    7c2b:	01 d0                	add    eax,edx
    7c2d:	8b 00                	mov    eax,DWORD PTR [eax]
    7c2f:	83 ec 08             	sub    esp,0x8
    7c32:	50                   	push   eax
    7c33:	8d 45 d0             	lea    eax,[ebp-0x30]
    7c36:	50                   	push   eax
    7c37:	e8 6e 02 00 00       	call   0x7eaa
    7c3c:	83 c4 10             	add    esp,0x10
    7c3f:	eb 7e                	jmp    0x7cbf
    7c41:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7c44:	8d 50 01             	lea    edx,[eax+0x1]
    7c47:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
    7c4a:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
    7c51:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    7c54:	01 d0                	add    eax,edx
    7c56:	8b 00                	mov    eax,DWORD PTR [eax]
    7c58:	83 ec 04             	sub    esp,0x4
    7c5b:	6a 00                	push   0x0
    7c5d:	50                   	push   eax
    7c5e:	8d 45 d0             	lea    eax,[ebp-0x30]
    7c61:	50                   	push   eax
    7c62:	e8 fa 00 00 00       	call   0x7d61
    7c67:	83 c4 10             	add    esp,0x10
    7c6a:	eb 53                	jmp    0x7cbf
    7c6c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7c6f:	8d 50 01             	lea    edx,[eax+0x1]
    7c72:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
    7c75:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
    7c7c:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    7c7f:	01 d0                	add    eax,edx
    7c81:	8b 00                	mov    eax,DWORD PTR [eax]
    7c83:	83 ec 04             	sub    esp,0x4
    7c86:	6a 01                	push   0x1
    7c88:	50                   	push   eax
    7c89:	8d 45 d0             	lea    eax,[ebp-0x30]
    7c8c:	50                   	push   eax
    7c8d:	e8 cf 00 00 00       	call   0x7d61
    7c92:	83 c4 10             	add    esp,0x10
    7c95:	eb 28                	jmp    0x7cbf
    7c97:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
    7c9a:	8d 50 01             	lea    edx,[eax+0x1]
    7c9d:	89 55 f0             	mov    DWORD PTR [ebp-0x10],edx
    7ca0:	8d 14 85 00 00 00 00 	lea    edx,[eax*4+0x0]
    7ca7:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
    7caa:	01 d0                	add    eax,edx
    7cac:	8b 00                	mov    eax,DWORD PTR [eax]
    7cae:	83 ec 08             	sub    esp,0x8
    7cb1:	50                   	push   eax
    7cb2:	8d 45 d0             	lea    eax,[ebp-0x30]
    7cb5:	50                   	push   eax
    7cb6:	e8 71 02 00 00       	call   0x7f2c
    7cbb:	83 c4 10             	add    esp,0x10
    7cbe:	90                   	nop
    7cbf:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
    7cc6:	eb 1e                	jmp    0x7ce6
    7cc8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7ccb:	8d 50 01             	lea    edx,[eax+0x1]
    7cce:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
    7cd1:	8d 4d d0             	lea    ecx,[ebp-0x30]
    7cd4:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
    7cd7:	01 ca                	add    edx,ecx
    7cd9:	0f b6 12             	movzx  edx,BYTE PTR [edx]
    7cdc:	88 10                	mov    BYTE PTR [eax],dl
    7cde:	83 45 ec 01          	add    DWORD PTR [ebp-0x14],0x1
    7ce2:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    7ce6:	8d 55 d0             	lea    edx,[ebp-0x30]
    7ce9:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
    7cec:	01 d0                	add    eax,edx
    7cee:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    7cf1:	84 c0                	test   al,al
    7cf3:	75 d3                	jne    0x7cc8
    7cf5:	83 45 e8 01          	add    DWORD PTR [ebp-0x18],0x1
    7cf9:	eb 18                	jmp    0x7d13
    7cfb:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7cfe:	8d 50 01             	lea    edx,[eax+0x1]
    7d01:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
    7d04:	8b 55 e8             	mov    edx,DWORD PTR [ebp-0x18]
    7d07:	0f b6 12             	movzx  edx,BYTE PTR [edx]
    7d0a:	88 10                	mov    BYTE PTR [eax],dl
    7d0c:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
    7d10:	eb 01                	jmp    0x7d13
    7d12:	90                   	nop
    7d13:	83 45 e8 01          	add    DWORD PTR [ebp-0x18],0x1
    7d17:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
    7d1a:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    7d1d:	84 c0                	test   al,al
    7d1f:	0f 85 a4 fe ff ff    	jne    0x7bc9
    7d25:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7d28:	c9                   	leave  
    7d29:	c3                   	ret    
    7d2a:	55                   	push   ebp
    7d2b:	89 e5                	mov    ebp,esp
    7d2d:	eb 0c                	jmp    0x7d3b
    7d2f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7d32:	8d 50 01             	lea    edx,[eax+0x1]
    7d35:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
    7d38:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7d3b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7d3e:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    7d41:	84 c0                	test   al,al
    7d43:	75 ea                	jne    0x7d2f
    7d45:	90                   	nop
    7d46:	5d                   	pop    ebp
    7d47:	c3                   	ret    
    7d48:	55                   	push   ebp
    7d49:	89 e5                	mov    ebp,esp
    7d4b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    7d4e:	89 c2                	mov    edx,eax
    7d50:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7d53:	88 10                	mov    BYTE PTR [eax],dl
    7d55:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7d58:	83 c0 01             	add    eax,0x1
    7d5b:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7d5e:	90                   	nop
    7d5f:	5d                   	pop    ebp
    7d60:	c3                   	ret    
    7d61:	55                   	push   ebp
    7d62:	89 e5                	mov    ebp,esp
    7d64:	83 ec 10             	sub    esp,0x10
    7d67:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
    7d6e:	c7 45 f4 0f 00 00 00 	mov    DWORD PTR [ebp-0xc],0xf
    7d75:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
    7d79:	74 07                	je     0x7d82
    7d7b:	b8 41 00 00 00       	mov    eax,0x41
    7d80:	eb 05                	jmp    0x7d87
    7d82:	b8 61 00 00 00       	mov    eax,0x61
    7d87:	88 45 f3             	mov    BYTE PTR [ebp-0xd],al
    7d8a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    7d91:	e9 a1 00 00 00       	jmp    0x7e37
    7d96:	b8 07 00 00 00       	mov    eax,0x7
    7d9b:	2b 45 fc             	sub    eax,DWORD PTR [ebp-0x4]
    7d9e:	c1 e0 02             	shl    eax,0x2
    7da1:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    7da4:	89 c1                	mov    ecx,eax
    7da6:	d3 fa                	sar    edx,cl
    7da8:	89 d0                	mov    eax,edx
    7daa:	23 45 f4             	and    eax,DWORD PTR [ebp-0xc]
    7dad:	83 f8 09             	cmp    eax,0x9
    7db0:	7e 35                	jle    0x7de7
    7db2:	b8 07 00 00 00       	mov    eax,0x7
    7db7:	2b 45 fc             	sub    eax,DWORD PTR [ebp-0x4]
    7dba:	c1 e0 02             	shl    eax,0x2
    7dbd:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    7dc0:	89 c1                	mov    ecx,eax
    7dc2:	d3 fa                	sar    edx,cl
    7dc4:	89 d0                	mov    eax,edx
    7dc6:	89 c2                	mov    edx,eax
    7dc8:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7dcb:	21 d0                	and    eax,edx
    7dcd:	89 c2                	mov    edx,eax
    7dcf:	0f b6 45 f3          	movzx  eax,BYTE PTR [ebp-0xd]
    7dd3:	01 d0                	add    eax,edx
    7dd5:	8d 48 f6             	lea    ecx,[eax-0xa]
    7dd8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7ddb:	8d 50 01             	lea    edx,[eax+0x1]
    7dde:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
    7de1:	89 ca                	mov    edx,ecx
    7de3:	88 10                	mov    BYTE PTR [eax],dl
    7de5:	eb 4c                	jmp    0x7e33
    7de7:	b8 07 00 00 00       	mov    eax,0x7
    7dec:	2b 45 fc             	sub    eax,DWORD PTR [ebp-0x4]
    7def:	c1 e0 02             	shl    eax,0x2
    7df2:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    7df5:	89 c1                	mov    ecx,eax
    7df7:	d3 fa                	sar    edx,cl
    7df9:	89 d0                	mov    eax,edx
    7dfb:	23 45 f4             	and    eax,DWORD PTR [ebp-0xc]
    7dfe:	85 c0                	test   eax,eax
    7e00:	75 06                	jne    0x7e08
    7e02:	83 7d f8 00          	cmp    DWORD PTR [ebp-0x8],0x0
    7e06:	74 2b                	je     0x7e33
    7e08:	b8 07 00 00 00       	mov    eax,0x7
    7e0d:	2b 45 fc             	sub    eax,DWORD PTR [ebp-0x4]
    7e10:	c1 e0 02             	shl    eax,0x2
    7e13:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
    7e16:	89 c1                	mov    ecx,eax
    7e18:	d3 fa                	sar    edx,cl
    7e1a:	89 d0                	mov    eax,edx
    7e1c:	89 c2                	mov    edx,eax
    7e1e:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    7e21:	21 d0                	and    eax,edx
    7e23:	8d 48 30             	lea    ecx,[eax+0x30]
    7e26:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7e29:	8d 50 01             	lea    edx,[eax+0x1]
    7e2c:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
    7e2f:	89 ca                	mov    edx,ecx
    7e31:	88 10                	mov    BYTE PTR [eax],dl
    7e33:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    7e37:	83 7d fc 07          	cmp    DWORD PTR [ebp-0x4],0x7
    7e3b:	0f 8e 55 ff ff ff    	jle    0x7d96
    7e41:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7e44:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7e47:	90                   	nop
    7e48:	c9                   	leave  
    7e49:	c3                   	ret    
    7e4a:	55                   	push   ebp
    7e4b:	89 e5                	mov    ebp,esp
    7e4d:	83 ec 10             	sub    esp,0x10
    7e50:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    7e57:	eb 1f                	jmp    0x7e78
    7e59:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    7e5c:	ba 67 66 66 66       	mov    edx,0x66666667
    7e61:	89 c8                	mov    eax,ecx
    7e63:	f7 ea                	imul   edx
    7e65:	c1 fa 02             	sar    edx,0x2
    7e68:	89 c8                	mov    eax,ecx
    7e6a:	c1 f8 1f             	sar    eax,0x1f
    7e6d:	29 c2                	sub    edx,eax
    7e6f:	89 d0                	mov    eax,edx
    7e71:	89 45 08             	mov    DWORD PTR [ebp+0x8],eax
    7e74:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    7e78:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    7e7b:	83 e8 01             	sub    eax,0x1
    7e7e:	39 45 fc             	cmp    DWORD PTR [ebp-0x4],eax
    7e81:	7c d6                	jl     0x7e59
    7e83:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
    7e86:	ba 67 66 66 66       	mov    edx,0x66666667
    7e8b:	89 c8                	mov    eax,ecx
    7e8d:	f7 ea                	imul   edx
    7e8f:	c1 fa 02             	sar    edx,0x2
    7e92:	89 c8                	mov    eax,ecx
    7e94:	c1 f8 1f             	sar    eax,0x1f
    7e97:	29 c2                	sub    edx,eax
    7e99:	89 d0                	mov    eax,edx
    7e9b:	c1 e0 02             	shl    eax,0x2
    7e9e:	01 d0                	add    eax,edx
    7ea0:	01 c0                	add    eax,eax
    7ea2:	29 c1                	sub    ecx,eax
    7ea4:	89 ca                	mov    edx,ecx
    7ea6:	89 d0                	mov    eax,edx
    7ea8:	c9                   	leave  
    7ea9:	c3                   	ret    
    7eaa:	55                   	push   ebp
    7eab:	89 e5                	mov    ebp,esp
    7ead:	83 ec 10             	sub    esp,0x10
    7eb0:	c6 45 fb 01          	mov    BYTE PTR [ebp-0x5],0x1
    7eb4:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
    7eb8:	75 11                	jne    0x7ecb
    7eba:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7ebd:	c6 00 30             	mov    BYTE PTR [eax],0x30
    7ec0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7ec3:	83 c0 01             	add    eax,0x1
    7ec6:	c6 00 00             	mov    BYTE PTR [eax],0x0
    7ec9:	eb 5f                	jmp    0x7f2a
    7ecb:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
    7ed2:	eb 50                	jmp    0x7f24
    7ed4:	80 7d fb 00          	cmp    BYTE PTR [ebp-0x5],0x0
    7ed8:	74 1c                	je     0x7ef6
    7eda:	b8 0a 00 00 00       	mov    eax,0xa
    7edf:	2b 45 fc             	sub    eax,DWORD PTR [ebp-0x4]
    7ee2:	50                   	push   eax
    7ee3:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    7ee6:	e8 5f ff ff ff       	call   0x7e4a
    7eeb:	83 c4 08             	add    esp,0x8
    7eee:	85 c0                	test   eax,eax
    7ef0:	74 04                	je     0x7ef6
    7ef2:	c6 45 fb 00          	mov    BYTE PTR [ebp-0x5],0x0
    7ef6:	80 7d fb 00          	cmp    BYTE PTR [ebp-0x5],0x0
    7efa:	75 24                	jne    0x7f20
    7efc:	b8 0a 00 00 00       	mov    eax,0xa
    7f01:	2b 45 fc             	sub    eax,DWORD PTR [ebp-0x4]
    7f04:	50                   	push   eax
    7f05:	ff 75 0c             	push   DWORD PTR [ebp+0xc]
    7f08:	e8 3d ff ff ff       	call   0x7e4a
    7f0d:	83 c4 08             	add    esp,0x8
    7f10:	8d 48 30             	lea    ecx,[eax+0x30]
    7f13:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7f16:	8d 50 01             	lea    edx,[eax+0x1]
    7f19:	89 55 08             	mov    DWORD PTR [ebp+0x8],edx
    7f1c:	89 ca                	mov    edx,ecx
    7f1e:	88 10                	mov    BYTE PTR [eax],dl
    7f20:	83 45 fc 01          	add    DWORD PTR [ebp-0x4],0x1
    7f24:	83 7d fc 09          	cmp    DWORD PTR [ebp-0x4],0x9
    7f28:	7e aa                	jle    0x7ed4
    7f2a:	c9                   	leave  
    7f2b:	c3                   	ret    
    7f2c:	55                   	push   ebp
    7f2d:	89 e5                	mov    ebp,esp
    7f2f:	83 ec 10             	sub    esp,0x10
    7f32:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
    7f35:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    7f38:	eb 17                	jmp    0x7f51
    7f3a:	8b 55 fc             	mov    edx,DWORD PTR [ebp-0x4]
    7f3d:	8d 42 01             	lea    eax,[edx+0x1]
    7f40:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
    7f43:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
    7f46:	8d 48 01             	lea    ecx,[eax+0x1]
    7f49:	89 4d 08             	mov    DWORD PTR [ebp+0x8],ecx
    7f4c:	0f b6 12             	movzx  edx,BYTE PTR [edx]
    7f4f:	88 10                	mov    BYTE PTR [eax],dl
    7f51:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
    7f54:	0f b6 00             	movzx  eax,BYTE PTR [eax]
    7f57:	84 c0                	test   al,al
    7f59:	75 df                	jne    0x7f3a
    7f5b:	90                   	nop
    7f5c:	c9                   	leave  
    7f5d:	c3                   	ret    
    7f5e:	00 00                	add    BYTE PTR [eax],al
    7f60:	31 32                	xor    DWORD PTR [edx],esi
    7f62:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    7f69:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    7f6f:	57                   	push   edi
    7f70:	45                   	inc    ebp
    7f71:	52                   	push   edx
    7f72:	54                   	push   esp
    7f73:	59                   	pop    ecx
    7f74:	55                   	push   ebp
    7f75:	49                   	dec    ecx
    7f76:	4f                   	dec    edi
    7f77:	50                   	push   eax
    7f78:	40                   	inc    eax
    7f79:	5b                   	pop    ebx
    7f7a:	00 00                	add    BYTE PTR [eax],al
    7f7c:	41                   	inc    ecx
    7f7d:	53                   	push   ebx
    7f7e:	44                   	inc    esp
    7f7f:	46                   	inc    esi
    7f80:	47                   	inc    edi
    7f81:	48                   	dec    eax
    7f82:	4a                   	dec    edx
    7f83:	4b                   	dec    ebx
    7f84:	4c                   	dec    esp
    7f85:	3b 3a                	cmp    edi,DWORD PTR [edx]
    7f87:	00 00                	add    BYTE PTR [eax],al
    7f89:	5d                   	pop    ebp
    7f8a:	5a                   	pop    edx
    7f8b:	58                   	pop    eax
    7f8c:	43                   	inc    ebx
    7f8d:	56                   	push   esi
    7f8e:	42                   	inc    edx
    7f8f:	4e                   	dec    esi
    7f90:	4d                   	dec    ebp
    7f91:	2c 2e                	sub    al,0x2e
    7f93:	2f                   	das    
    7f94:	00 2a                	add    BYTE PTR [edx],ch
    7f96:	00 20                	add    BYTE PTR [eax],ah
	...
    7fa4:	00 37                	add    BYTE PTR [edi],dh
    7fa6:	38 39                	cmp    BYTE PTR [ecx],bh
    7fa8:	2d 34 35 36 2b       	sub    eax,0x2b363534
    7fad:	31 32                	xor    DWORD PTR [edx],esi
    7faf:	33 30                	xor    esi,DWORD PTR [eax]
    7fb1:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    7fbc:	00 00                	add    BYTE PTR [eax],al
    7fbe:	4f                   	dec    edi
    7fbf:	4f                   	dec    edi
    7fc0:	4f                   	dec    edi
    7fc1:	4f                   	dec    edi
    7fc2:	4f                   	dec    edi
    7fc3:	4f                   	dec    edi
    7fc4:	4f                   	dec    edi
    7fc5:	4f                   	dec    edi
    7fc6:	4f                   	dec    edi
    7fc7:	4f                   	dec    edi
    7fc8:	4f                   	dec    edi
    7fc9:	4f                   	dec    edi
    7fca:	4f                   	dec    edi
    7fcb:	4f                   	dec    edi
    7fcc:	4f                   	dec    edi
    7fcd:	40                   	inc    eax
    7fce:	4f                   	dec    edi
    7fcf:	51                   	push   ecx
    7fd0:	51                   	push   ecx
    7fd1:	51                   	push   ecx
    7fd2:	51                   	push   ecx
    7fd3:	51                   	push   ecx
    7fd4:	51                   	push   ecx
    7fd5:	51                   	push   ecx
    7fd6:	51                   	push   ecx
    7fd7:	51                   	push   ecx
    7fd8:	51                   	push   ecx
    7fd9:	51                   	push   ecx
    7fda:	51                   	push   ecx
    7fdb:	51                   	push   ecx
    7fdc:	24 40                	and    al,0x40
    7fde:	4f                   	dec    edi
    7fdf:	51                   	push   ecx
    7fe0:	51                   	push   ecx
    7fe1:	51                   	push   ecx
    7fe2:	51                   	push   ecx
    7fe3:	51                   	push   ecx
    7fe4:	51                   	push   ecx
    7fe5:	51                   	push   ecx
    7fe6:	51                   	push   ecx
    7fe7:	51                   	push   ecx
    7fe8:	51                   	push   ecx
    7fe9:	51                   	push   ecx
    7fea:	51                   	push   ecx
    7feb:	51                   	push   ecx
    7fec:	24 40                	and    al,0x40
    7fee:	4f                   	dec    edi
    7fef:	51                   	push   ecx
    7ff0:	51                   	push   ecx
    7ff1:	51                   	push   ecx
    7ff2:	40                   	inc    eax
    7ff3:	40                   	inc    eax
    7ff4:	51                   	push   ecx
    7ff5:	51                   	push   ecx
    7ff6:	51                   	push   ecx
    7ff7:	51                   	push   ecx
    7ff8:	40                   	inc    eax
    7ff9:	40                   	inc    eax
    7ffa:	51                   	push   ecx
    7ffb:	51                   	push   ecx
    7ffc:	24 40                	and    al,0x40
    7ffe:	4f                   	dec    edi
    7fff:	51                   	push   ecx
    8000:	51                   	push   ecx
    8001:	51                   	push   ecx
    8002:	51                   	push   ecx
    8003:	40                   	inc    eax
    8004:	40                   	inc    eax
    8005:	51                   	push   ecx
    8006:	51                   	push   ecx
    8007:	40                   	inc    eax
    8008:	40                   	inc    eax
    8009:	51                   	push   ecx
    800a:	51                   	push   ecx
    800b:	51                   	push   ecx
    800c:	24 40                	and    al,0x40
    800e:	4f                   	dec    edi
    800f:	51                   	push   ecx
    8010:	51                   	push   ecx
    8011:	51                   	push   ecx
    8012:	51                   	push   ecx
    8013:	51                   	push   ecx
    8014:	40                   	inc    eax
    8015:	40                   	inc    eax
    8016:	40                   	inc    eax
    8017:	40                   	inc    eax
    8018:	51                   	push   ecx
    8019:	51                   	push   ecx
    801a:	51                   	push   ecx
    801b:	51                   	push   ecx
    801c:	24 40                	and    al,0x40
    801e:	4f                   	dec    edi
    801f:	51                   	push   ecx
    8020:	51                   	push   ecx
    8021:	51                   	push   ecx
    8022:	51                   	push   ecx
    8023:	51                   	push   ecx
    8024:	51                   	push   ecx
    8025:	40                   	inc    eax
    8026:	40                   	inc    eax
    8027:	51                   	push   ecx
    8028:	51                   	push   ecx
    8029:	51                   	push   ecx
    802a:	51                   	push   ecx
    802b:	51                   	push   ecx
    802c:	24 40                	and    al,0x40
    802e:	4f                   	dec    edi
    802f:	51                   	push   ecx
    8030:	51                   	push   ecx
    8031:	51                   	push   ecx
    8032:	51                   	push   ecx
    8033:	51                   	push   ecx
    8034:	40                   	inc    eax
    8035:	40                   	inc    eax
    8036:	40                   	inc    eax
    8037:	40                   	inc    eax
    8038:	51                   	push   ecx
    8039:	51                   	push   ecx
    803a:	51                   	push   ecx
    803b:	51                   	push   ecx
    803c:	24 40                	and    al,0x40
    803e:	4f                   	dec    edi
    803f:	51                   	push   ecx
    8040:	51                   	push   ecx
    8041:	51                   	push   ecx
    8042:	51                   	push   ecx
    8043:	40                   	inc    eax
    8044:	40                   	inc    eax
    8045:	51                   	push   ecx
    8046:	51                   	push   ecx
    8047:	40                   	inc    eax
    8048:	40                   	inc    eax
    8049:	51                   	push   ecx
    804a:	51                   	push   ecx
    804b:	51                   	push   ecx
    804c:	24 40                	and    al,0x40
    804e:	4f                   	dec    edi
    804f:	51                   	push   ecx
    8050:	51                   	push   ecx
    8051:	51                   	push   ecx
    8052:	40                   	inc    eax
    8053:	40                   	inc    eax
    8054:	51                   	push   ecx
    8055:	51                   	push   ecx
    8056:	51                   	push   ecx
    8057:	51                   	push   ecx
    8058:	40                   	inc    eax
    8059:	40                   	inc    eax
    805a:	51                   	push   ecx
    805b:	51                   	push   ecx
    805c:	24 40                	and    al,0x40
    805e:	4f                   	dec    edi
    805f:	51                   	push   ecx
    8060:	51                   	push   ecx
    8061:	51                   	push   ecx
    8062:	51                   	push   ecx
    8063:	51                   	push   ecx
    8064:	51                   	push   ecx
    8065:	51                   	push   ecx
    8066:	51                   	push   ecx
    8067:	51                   	push   ecx
    8068:	51                   	push   ecx
    8069:	51                   	push   ecx
    806a:	51                   	push   ecx
    806b:	51                   	push   ecx
    806c:	24 40                	and    al,0x40
    806e:	4f                   	dec    edi
    806f:	51                   	push   ecx
    8070:	51                   	push   ecx
    8071:	51                   	push   ecx
    8072:	51                   	push   ecx
    8073:	51                   	push   ecx
    8074:	51                   	push   ecx
    8075:	51                   	push   ecx
    8076:	51                   	push   ecx
    8077:	51                   	push   ecx
    8078:	51                   	push   ecx
    8079:	51                   	push   ecx
    807a:	51                   	push   ecx
    807b:	51                   	push   ecx
    807c:	24 40                	and    al,0x40
    807e:	4f                   	dec    edi
    807f:	24 24                	and    al,0x24
    8081:	24 24                	and    al,0x24
    8083:	24 24                	and    al,0x24
    8085:	24 24                	and    al,0x24
    8087:	24 24                	and    al,0x24
    8089:	24 24                	and    al,0x24
    808b:	24 24                	and    al,0x24
    808d:	40                   	inc    eax
    808e:	40                   	inc    eax
    808f:	40                   	inc    eax
    8090:	40                   	inc    eax
    8091:	40                   	inc    eax
    8092:	40                   	inc    eax
    8093:	40                   	inc    eax
    8094:	40                   	inc    eax
    8095:	40                   	inc    eax
    8096:	40                   	inc    eax
    8097:	40                   	inc    eax
    8098:	40                   	inc    eax
    8099:	40                   	inc    eax
    809a:	40                   	inc    eax
    809b:	40                   	inc    eax
    809c:	40                   	inc    eax
    809d:	40                   	inc    eax
    809e:	00 00                	add    BYTE PTR [eax],al
    80a0:	31 32                	xor    DWORD PTR [edx],esi
    80a2:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    80a9:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    80af:	57                   	push   edi
    80b0:	45                   	inc    ebp
    80b1:	52                   	push   edx
    80b2:	54                   	push   esp
    80b3:	59                   	pop    ecx
    80b4:	55                   	push   ebp
    80b5:	49                   	dec    ecx
    80b6:	4f                   	dec    edi
    80b7:	50                   	push   eax
    80b8:	40                   	inc    eax
    80b9:	5b                   	pop    ebx
    80ba:	00 00                	add    BYTE PTR [eax],al
    80bc:	41                   	inc    ecx
    80bd:	53                   	push   ebx
    80be:	44                   	inc    esp
    80bf:	46                   	inc    esi
    80c0:	47                   	inc    edi
    80c1:	48                   	dec    eax
    80c2:	4a                   	dec    edx
    80c3:	4b                   	dec    ebx
    80c4:	4c                   	dec    esp
    80c5:	3b 3a                	cmp    edi,DWORD PTR [edx]
    80c7:	00 00                	add    BYTE PTR [eax],al
    80c9:	5d                   	pop    ebp
    80ca:	5a                   	pop    edx
    80cb:	58                   	pop    eax
    80cc:	43                   	inc    ebx
    80cd:	56                   	push   esi
    80ce:	42                   	inc    edx
    80cf:	4e                   	dec    esi
    80d0:	4d                   	dec    ebp
    80d1:	2c 2e                	sub    al,0x2e
    80d3:	2f                   	das    
    80d4:	00 2a                	add    BYTE PTR [edx],ch
    80d6:	00 20                	add    BYTE PTR [eax],ah
	...
    80e4:	00 37                	add    BYTE PTR [edi],dh
    80e6:	38 39                	cmp    BYTE PTR [ecx],bh
    80e8:	2d 34 35 36 2b       	sub    eax,0x2b363534
    80ed:	31 32                	xor    DWORD PTR [edx],esi
    80ef:	33 30                	xor    esi,DWORD PTR [eax]
    80f1:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    8100:	31 32                	xor    DWORD PTR [edx],esi
    8102:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    8109:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    810f:	57                   	push   edi
    8110:	45                   	inc    ebp
    8111:	52                   	push   edx
    8112:	54                   	push   esp
    8113:	59                   	pop    ecx
    8114:	55                   	push   ebp
    8115:	49                   	dec    ecx
    8116:	4f                   	dec    edi
    8117:	50                   	push   eax
    8118:	40                   	inc    eax
    8119:	5b                   	pop    ebx
    811a:	00 00                	add    BYTE PTR [eax],al
    811c:	41                   	inc    ecx
    811d:	53                   	push   ebx
    811e:	44                   	inc    esp
    811f:	46                   	inc    esi
    8120:	47                   	inc    edi
    8121:	48                   	dec    eax
    8122:	4a                   	dec    edx
    8123:	4b                   	dec    ebx
    8124:	4c                   	dec    esp
    8125:	3b 3a                	cmp    edi,DWORD PTR [edx]
    8127:	00 00                	add    BYTE PTR [eax],al
    8129:	5d                   	pop    ebp
    812a:	5a                   	pop    edx
    812b:	58                   	pop    eax
    812c:	43                   	inc    ebx
    812d:	56                   	push   esi
    812e:	42                   	inc    edx
    812f:	4e                   	dec    esi
    8130:	4d                   	dec    ebp
    8131:	2c 2e                	sub    al,0x2e
    8133:	2f                   	das    
    8134:	00 2a                	add    BYTE PTR [edx],ch
    8136:	00 20                	add    BYTE PTR [eax],ah
	...
    8144:	00 37                	add    BYTE PTR [edi],dh
    8146:	38 39                	cmp    BYTE PTR [ecx],bh
    8148:	2d 34 35 36 2b       	sub    eax,0x2b363534
    814d:	31 32                	xor    DWORD PTR [edx],esi
    814f:	33 30                	xor    esi,DWORD PTR [eax]
    8151:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    8160:	31 32                	xor    DWORD PTR [edx],esi
    8162:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    8169:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    816f:	57                   	push   edi
    8170:	45                   	inc    ebp
    8171:	52                   	push   edx
    8172:	54                   	push   esp
    8173:	59                   	pop    ecx
    8174:	55                   	push   ebp
    8175:	49                   	dec    ecx
    8176:	4f                   	dec    edi
    8177:	50                   	push   eax
    8178:	40                   	inc    eax
    8179:	5b                   	pop    ebx
    817a:	00 00                	add    BYTE PTR [eax],al
    817c:	41                   	inc    ecx
    817d:	53                   	push   ebx
    817e:	44                   	inc    esp
    817f:	46                   	inc    esi
    8180:	47                   	inc    edi
    8181:	48                   	dec    eax
    8182:	4a                   	dec    edx
    8183:	4b                   	dec    ebx
    8184:	4c                   	dec    esp
    8185:	3b 3a                	cmp    edi,DWORD PTR [edx]
    8187:	00 00                	add    BYTE PTR [eax],al
    8189:	5d                   	pop    ebp
    818a:	5a                   	pop    edx
    818b:	58                   	pop    eax
    818c:	43                   	inc    ebx
    818d:	56                   	push   esi
    818e:	42                   	inc    edx
    818f:	4e                   	dec    esi
    8190:	4d                   	dec    ebp
    8191:	2c 2e                	sub    al,0x2e
    8193:	2f                   	das    
    8194:	00 2a                	add    BYTE PTR [edx],ch
    8196:	00 20                	add    BYTE PTR [eax],ah
	...
    81a4:	00 37                	add    BYTE PTR [edi],dh
    81a6:	38 39                	cmp    BYTE PTR [ecx],bh
    81a8:	2d 34 35 36 2b       	sub    eax,0x2b363534
    81ad:	31 32                	xor    DWORD PTR [edx],esi
    81af:	33 30                	xor    esi,DWORD PTR [eax]
    81b1:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    81c0:	00 ff                	add    bh,bh
    81c2:	00 00                	add    BYTE PTR [eax],al
    81c4:	00 ff                	add    bh,bh
    81c6:	00 ff                	add    bh,bh
    81c8:	ff 00                	inc    DWORD PTR [eax]
    81ca:	00 00                	add    BYTE PTR [eax],al
    81cc:	ff                   	(bad)  
    81cd:	ff 00                	inc    DWORD PTR [eax]
    81cf:	ff 00                	inc    DWORD PTR [eax]
    81d1:	ff                   	(bad)  
    81d2:	ff                   	(bad)  
    81d3:	ff                   	(bad)  
    81d4:	ff                   	(bad)  
    81d5:	ff c6                	inc    esi
    81d7:	c6 c6 84             	mov    dh,0x84
    81da:	00 00                	add    BYTE PTR [eax],al
    81dc:	00 84 00 84 84 00 00 	add    BYTE PTR [eax+eax*1+0x8484],al
    81e3:	00 84 84 00 84 00 84 	add    BYTE PTR [esp+eax*4-0x7bff7c00],al
    81ea:	84 84 84 84 00 00 00 	test   BYTE PTR [esp+eax*4+0x84],al
	...
    81fd:	00 2a                	add    BYTE PTR [edx],ch
    81ff:	2a 2a                	sub    ch,BYTE PTR [edx]
    8201:	2a 2a                	sub    ch,BYTE PTR [edx]
    8203:	2a 2a                	sub    ch,BYTE PTR [edx]
    8205:	2a 2a                	sub    ch,BYTE PTR [edx]
    8207:	2a 2a                	sub    ch,BYTE PTR [edx]
    8209:	2a 2a                	sub    ch,BYTE PTR [edx]
    820b:	2a 2e                	sub    ch,BYTE PTR [esi]
    820d:	2e 2a 4f 4f          	sub    cl,BYTE PTR cs:[edi+0x4f]
    8211:	4f                   	dec    edi
    8212:	4f                   	dec    edi
    8213:	4f                   	dec    edi
    8214:	4f                   	dec    edi
    8215:	4f                   	dec    edi
    8216:	4f                   	dec    edi
    8217:	4f                   	dec    edi
    8218:	4f                   	dec    edi
    8219:	4f                   	dec    edi
    821a:	2a 2e                	sub    ch,BYTE PTR [esi]
    821c:	2e 2e 2a 4f 4f       	cs sub cl,BYTE PTR cs:[edi+0x4f]
    8221:	4f                   	dec    edi
    8222:	4f                   	dec    edi
    8223:	4f                   	dec    edi
    8224:	4f                   	dec    edi
    8225:	4f                   	dec    edi
    8226:	4f                   	dec    edi
    8227:	4f                   	dec    edi
    8228:	4f                   	dec    edi
    8229:	2a 2e                	sub    ch,BYTE PTR [esi]
    822b:	2e 2e 2e 2a 4f 4f    	cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    8231:	4f                   	dec    edi
    8232:	4f                   	dec    edi
    8233:	4f                   	dec    edi
    8234:	4f                   	dec    edi
    8235:	4f                   	dec    edi
    8236:	4f                   	dec    edi
    8237:	4f                   	dec    edi
    8238:	2a 2e                	sub    ch,BYTE PTR [esi]
    823a:	2e 2e 2e 2e 2a 4f 4f 	cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    8241:	4f                   	dec    edi
    8242:	4f                   	dec    edi
    8243:	4f                   	dec    edi
    8244:	4f                   	dec    edi
    8245:	4f                   	dec    edi
    8246:	4f                   	dec    edi
    8247:	2a 2e                	sub    ch,BYTE PTR [esi]
    8249:	2e 2e 2e 2e 2e 2a 4f 	cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    8250:	4f 
    8251:	4f                   	dec    edi
    8252:	4f                   	dec    edi
    8253:	4f                   	dec    edi
    8254:	4f                   	dec    edi
    8255:	4f                   	dec    edi
    8256:	2a 2e                	sub    ch,BYTE PTR [esi]
    8258:	2e 2e 2e 2e 2e 2e 2a 	cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    825f:	4f 4f 
    8261:	4f                   	dec    edi
    8262:	4f                   	dec    edi
    8263:	4f                   	dec    edi
    8264:	4f                   	dec    edi
    8265:	4f                   	dec    edi
    8266:	2a 2e                	sub    ch,BYTE PTR [esi]
    8268:	2e 2e 2e 2e 2e 2e 2a 	cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    826f:	4f 4f 
    8271:	4f                   	dec    edi
    8272:	4f                   	dec    edi
    8273:	4f                   	dec    edi
    8274:	4f                   	dec    edi
    8275:	4f                   	dec    edi
    8276:	4f                   	dec    edi
    8277:	2a 2e                	sub    ch,BYTE PTR [esi]
    8279:	2e 2e 2e 2e 2e 2a 4f 	cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    8280:	4f 
    8281:	4f                   	dec    edi
    8282:	4f                   	dec    edi
    8283:	2a 2a                	sub    ch,BYTE PTR [edx]
    8285:	4f                   	dec    edi
    8286:	4f                   	dec    edi
    8287:	4f                   	dec    edi
    8288:	2a 2e                	sub    ch,BYTE PTR [esi]
    828a:	2e 2e 2e 2e 2a 4f 4f 	cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    8291:	4f                   	dec    edi
    8292:	2a 2e                	sub    ch,BYTE PTR [esi]
    8294:	2e 2a 4f 4f          	sub    cl,BYTE PTR cs:[edi+0x4f]
    8298:	4f                   	dec    edi
    8299:	2a 2e                	sub    ch,BYTE PTR [esi]
    829b:	2e 2e 2e 2a 4f 4f    	cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    82a1:	2a 2e                	sub    ch,BYTE PTR [esi]
    82a3:	2e 2e 2e 2a 4f 4f    	cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    82a9:	4f                   	dec    edi
    82aa:	2a 2e                	sub    ch,BYTE PTR [esi]
    82ac:	2e 2e 2a 4f 2a       	cs sub cl,BYTE PTR cs:[edi+0x2a]
    82b1:	2e 2e 2e 2e 2e 2e 2a 	cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    82b8:	4f 4f 
    82ba:	4f                   	dec    edi
    82bb:	2a 2e                	sub    ch,BYTE PTR [esi]
    82bd:	2e 2a 2a             	sub    ch,BYTE PTR cs:[edx]
    82c0:	2e 2e 2e 2e 2e 2e 2e 	cs cs cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    82c7:	2e 2a 4f 4f 
    82cb:	4f                   	dec    edi
    82cc:	2a 2e                	sub    ch,BYTE PTR [esi]
    82ce:	2a 2e                	sub    ch,BYTE PTR [esi]
    82d0:	2e 2e 2e 2e 2e 2e 2e 	cs cs cs cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    82d7:	2e 2e 2a 4f 4f 
    82dc:	4f                   	dec    edi
    82dd:	2a 2e                	sub    ch,BYTE PTR [esi]
    82df:	2e 2e 2e 2e 2e 2e 2e 	cs cs cs cs cs cs cs cs cs cs sub cl,BYTE PTR cs:[edi+0x4f]
    82e6:	2e 2e 2e 2e 2a 4f 4f 
    82ed:	2a 2e                	sub    ch,BYTE PTR [esi]
    82ef:	2e 2e 2e 2e 2e 2e 2e 	cs cs cs cs cs cs cs cs cs cs cs sub ch,BYTE PTR cs:[edx]
    82f6:	2e 2e 2e 2e 2e 2a 2a 
    82fd:	2a 00                	sub    al,BYTE PTR [eax]
	...
    830f:	00 38                	add    BYTE PTR [eax],bh
    8311:	44                   	inc    esp
    8312:	82 aa aa 82 82 aa 92 	sub    BYTE PTR [edx-0x557d7d56],0x92
    8319:	44                   	inc    esp
    831a:	38 00                	cmp    BYTE PTR [eax],al
    831c:	00 00                	add    BYTE PTR [eax],al
    831e:	00 00                	add    BYTE PTR [eax],al
    8320:	38 7c fe d6          	cmp    BYTE PTR [esi+edi*8-0x2a],bh
    8324:	d6                   	(bad)  
    8325:	fe                   	(bad)  
    8326:	fe                   	(bad)  
    8327:	d6                   	(bad)  
    8328:	ee                   	out    dx,al
    8329:	7c 38                	jl     0x8363
    832b:	00 00                	add    BYTE PTR [eax],al
    832d:	00 00                	add    BYTE PTR [eax],al
    832f:	00 00                	add    BYTE PTR [eax],al
    8331:	00 6c fe fe          	add    BYTE PTR [esi+edi*8-0x2],ch
    8335:	fe                   	(bad)  
    8336:	7c 38                	jl     0x8370
    8338:	10 00                	adc    BYTE PTR [eax],al
	...
    8342:	10 38                	adc    BYTE PTR [eax],bh
    8344:	7c fe                	jl     0x8344
    8346:	7c 38                	jl     0x8380
    8348:	10 00                	adc    BYTE PTR [eax],al
	...
    8352:	10 38                	adc    BYTE PTR [eax],bh
    8354:	54                   	push   esp
    8355:	fe                   	(bad)  
    8356:	54                   	push   esp
    8357:	10 38                	adc    BYTE PTR [eax],bh
	...
    8361:	00 10                	add    BYTE PTR [eax],dl
    8363:	38 7c fe d6          	cmp    BYTE PTR [esi+edi*8-0x2a],bh
    8367:	10 38                	adc    BYTE PTR [eax],bh
	...
    8371:	00 00                	add    BYTE PTR [eax],al
    8373:	00 18                	add    BYTE PTR [eax],bl
    8375:	3c 3c                	cmp    al,0x3c
    8377:	18 00                	sbb    BYTE PTR [eax],al
    8379:	00 00                	add    BYTE PTR [eax],al
    837b:	00 00                	add    BYTE PTR [eax],al
    837d:	00 ff                	add    bh,bh
    837f:	ff                   	(bad)  
    8380:	ff                   	(bad)  
    8381:	ff                   	(bad)  
    8382:	ff                   	(bad)  
    8383:	ff e7                	jmp    edi
    8385:	c3                   	ret    
    8386:	c3                   	ret    
    8387:	e7 ff                	out    0xff,eax
    8389:	ff                   	(bad)  
    838a:	ff                   	(bad)  
    838b:	ff                   	(bad)  
    838c:	ff                   	(bad)  
    838d:	ff 00                	inc    DWORD PTR [eax]
    838f:	00 00                	add    BYTE PTR [eax],al
    8391:	00 00                	add    BYTE PTR [eax],al
    8393:	3c 66                	cmp    al,0x66
    8395:	42                   	inc    edx
    8396:	42                   	inc    edx
    8397:	66 3c 00             	data16 cmp al,0x0
    839a:	00 00                	add    BYTE PTR [eax],al
    839c:	00 00                	add    BYTE PTR [eax],al
    839e:	ff                   	(bad)  
    839f:	ff                   	(bad)  
    83a0:	ff                   	(bad)  
    83a1:	ff                   	(bad)  
    83a2:	ff c3                	inc    ebx
    83a4:	99                   	cdq    
    83a5:	bd bd 99 c3 ff       	mov    ebp,0xffc399bd
    83aa:	ff                   	(bad)  
    83ab:	ff                   	(bad)  
    83ac:	ff                   	(bad)  
    83ad:	ff 00                	inc    DWORD PTR [eax]
    83af:	10 38                	adc    BYTE PTR [eax],bh
    83b1:	54                   	push   esp
    83b2:	92                   	xchg   edx,eax
    83b3:	10 10                	adc    BYTE PTR [eax],dl
    83b5:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    83b9:	82 44 38 00 00       	add    BYTE PTR [eax+edi*1+0x0],0x0
    83be:	00 38                	add    BYTE PTR [eax],bh
    83c0:	44                   	inc    esp
    83c1:	82 82 82 44 38 10 10 	add    BYTE PTR [edx+0x10384482],0x10
    83c8:	fe                   	(bad)  
    83c9:	10 10                	adc    BYTE PTR [eax],dl
    83cb:	10 00                	adc    BYTE PTR [eax],al
    83cd:	00 00                	add    BYTE PTR [eax],al
    83cf:	00 0c 0e             	add    BYTE PTR [esi+ecx*1],cl
    83d2:	0b 0b                	or     ecx,DWORD PTR [ebx]
    83d4:	0a 08                	or     cl,BYTE PTR [eax]
    83d6:	08 18                	or     BYTE PTR [eax],bl
    83d8:	78 f8                	js     0x83d2
    83da:	70 00                	jo     0x83dc
    83dc:	00 00                	add    BYTE PTR [eax],al
    83de:	00 00                	add    BYTE PTR [eax],al
    83e0:	1f                   	pop    ds
    83e1:	1f                   	pop    ds
    83e2:	11 11                	adc    DWORD PTR [ecx],edx
    83e4:	11 11                	adc    DWORD PTR [ecx],edx
    83e6:	11 11                	adc    DWORD PTR [ecx],edx
    83e8:	77 ff                	ja     0x83e9
    83ea:	66 00 00             	data16 add BYTE PTR [eax],al
    83ed:	00 00                	add    BYTE PTR [eax],al
    83ef:	00 00                	add    BYTE PTR [eax],al
    83f1:	00 10                	add    BYTE PTR [eax],dl
    83f3:	54                   	push   esp
    83f4:	38 28                	cmp    BYTE PTR [eax],ch
    83f6:	38 54 10 00          	cmp    BYTE PTR [eax+edx*1+0x0],dl
    83fa:	00 00                	add    BYTE PTR [eax],al
    83fc:	00 00                	add    BYTE PTR [eax],al
    83fe:	00 80 c0 e0 f0 f8    	add    BYTE PTR [eax-0x70f1f40],al
    8404:	fc                   	cld    
    8405:	fe                   	(bad)  
    8406:	fc                   	cld    
    8407:	f8                   	clc    
    8408:	f0 e0 c0             	lock loopne 0x83cb
    840b:	80 00 00             	add    BYTE PTR [eax],0x0
    840e:	00 02                	add    BYTE PTR [edx],al
    8410:	06                   	push   es
    8411:	0e                   	push   cs
    8412:	1e                   	push   ds
    8413:	3e 7e fe             	ds jle 0x8414
    8416:	7e 3e                	jle    0x8456
    8418:	1e                   	push   ds
    8419:	0e                   	push   cs
    841a:	06                   	push   es
    841b:	02 00                	add    al,BYTE PTR [eax]
    841d:	00 00                	add    BYTE PTR [eax],al
    841f:	00 10                	add    BYTE PTR [eax],dl
    8421:	38 54 92 10          	cmp    BYTE PTR [edx+edx*4+0x10],dl
    8425:	10 10                	adc    BYTE PTR [eax],dl
    8427:	92                   	xchg   edx,eax
    8428:	54                   	push   esp
    8429:	38 10                	cmp    BYTE PTR [eax],dl
    842b:	00 00                	add    BYTE PTR [eax],al
    842d:	00 00                	add    BYTE PTR [eax],al
    842f:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
    8433:	44                   	inc    esp
    8434:	44                   	inc    esp
    8435:	44                   	inc    esp
    8436:	44                   	inc    esp
    8437:	44                   	inc    esp
    8438:	00 00                	add    BYTE PTR [eax],al
    843a:	44                   	inc    esp
    843b:	44                   	inc    esp
    843c:	00 00                	add    BYTE PTR [eax],al
    843e:	00 3e                	add    BYTE PTR [esi],bh
    8440:	4a                   	dec    edx
    8441:	8a 8a 8a 8a 4a 3a    	mov    cl,BYTE PTR [edx+0x3a4a8a8a]
    8447:	0a 0a                	or     cl,BYTE PTR [edx]
    8449:	0a 0a                	or     cl,BYTE PTR [edx]
    844b:	0a 00                	or     al,BYTE PTR [eax]
    844d:	00 7c 82 40          	add    BYTE PTR [edx+eax*4+0x40],bh
    8451:	20 38                	and    BYTE PTR [eax],bh
    8453:	44                   	inc    esp
    8454:	82 82 82 44 38 08 04 	add    BYTE PTR [edx+0x8384482],0x4
    845b:	82 7c 00 00 00       	cmp    BYTE PTR [eax+eax*1+0x0],0x0
	...
    8468:	00 fe                	add    dh,bh
    846a:	fe                   	(bad)  
    846b:	fe 00                	inc    BYTE PTR [eax]
    846d:	00 00                	add    BYTE PTR [eax],al
    846f:	00 10                	add    BYTE PTR [eax],dl
    8471:	38 54 92 10          	cmp    BYTE PTR [edx+edx*4+0x10],dl
    8475:	10 10                	adc    BYTE PTR [eax],dl
    8477:	92                   	xchg   edx,eax
    8478:	54                   	push   esp
    8479:	38 10                	cmp    BYTE PTR [eax],dl
    847b:	7c 00                	jl     0x847d
    847d:	00 00                	add    BYTE PTR [eax],al
    847f:	10 38                	adc    BYTE PTR [eax],bh
    8481:	54                   	push   esp
    8482:	92                   	xchg   edx,eax
    8483:	10 10                	adc    BYTE PTR [eax],dl
    8485:	10 10                	adc    BYTE PTR [eax],dl
    8487:	10 10                	adc    BYTE PTR [eax],dl
    8489:	10 10                	adc    BYTE PTR [eax],dl
    848b:	10 00                	adc    BYTE PTR [eax],al
    848d:	00 00                	add    BYTE PTR [eax],al
    848f:	10 10                	adc    BYTE PTR [eax],dl
    8491:	10 10                	adc    BYTE PTR [eax],dl
    8493:	10 10                	adc    BYTE PTR [eax],dl
    8495:	10 10                	adc    BYTE PTR [eax],dl
    8497:	10 92 54 38 10 00    	adc    BYTE PTR [edx+0x103854],dl
    849d:	00 00                	add    BYTE PTR [eax],al
    849f:	00 00                	add    BYTE PTR [eax],al
    84a1:	00 10                	add    BYTE PTR [eax],dl
    84a3:	08 04 fe             	or     BYTE PTR [esi+edi*8],al
    84a6:	04 08                	add    al,0x8
    84a8:	10 00                	adc    BYTE PTR [eax],al
	...
    84b2:	10 20                	adc    BYTE PTR [eax],ah
    84b4:	40                   	inc    eax
    84b5:	fe 40 20             	inc    BYTE PTR [eax+0x20]
    84b8:	10 00                	adc    BYTE PTR [eax],al
	...
    84c6:	00 00                	add    BYTE PTR [eax],al
    84c8:	00 80 80 fe 00 00    	add    BYTE PTR [eax+0xfe80],al
    84ce:	00 00                	add    BYTE PTR [eax],al
    84d0:	00 00                	add    BYTE PTR [eax],al
    84d2:	00 28                	add    BYTE PTR [eax],ch
    84d4:	44                   	inc    esp
    84d5:	fe 44 28 00          	inc    BYTE PTR [eax+ebp*1+0x0]
	...
    84e1:	00 10                	add    BYTE PTR [eax],dl
    84e3:	10 38                	adc    BYTE PTR [eax],bh
    84e5:	38 7c 7c fe          	cmp    BYTE PTR [esp+edi*2-0x2],bh
    84e9:	fe 00                	inc    BYTE PTR [eax]
    84eb:	00 00                	add    BYTE PTR [eax],al
    84ed:	00 00                	add    BYTE PTR [eax],al
    84ef:	00 00                	add    BYTE PTR [eax],al
    84f1:	00 fe                	add    dh,bh
    84f3:	fe                   	(bad)  
    84f4:	7c 7c                	jl     0x8572
    84f6:	38 38                	cmp    BYTE PTR [eax],bh
    84f8:	10 10                	adc    BYTE PTR [eax],dl
	...
    850e:	00 10                	add    BYTE PTR [eax],dl
    8510:	10 10                	adc    BYTE PTR [eax],dl
    8512:	10 10                	adc    BYTE PTR [eax],dl
    8514:	10 10                	adc    BYTE PTR [eax],dl
    8516:	10 10                	adc    BYTE PTR [eax],dl
    8518:	00 00                	add    BYTE PTR [eax],al
    851a:	10 10                	adc    BYTE PTR [eax],dl
    851c:	00 00                	add    BYTE PTR [eax],al
    851e:	28 28                	sub    BYTE PTR [eax],ch
    8520:	28 00                	sub    BYTE PTR [eax],al
	...
    852e:	00 44 44 44          	add    BYTE PTR [esp+eax*2+0x44],al
    8532:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
    8536:	44                   	inc    esp
    8537:	44                   	inc    esp
    8538:	fe 44 44 44          	inc    BYTE PTR [esp+eax*2+0x44]
    853c:	00 00                	add    BYTE PTR [eax],al
    853e:	10 3a                	adc    BYTE PTR [edx],bh
    8540:	56                   	push   esi
    8541:	92                   	xchg   edx,eax
    8542:	92                   	xchg   edx,eax
    8543:	90                   	nop
    8544:	50                   	push   eax
    8545:	38 14 12             	cmp    BYTE PTR [edx+edx*1],dl
    8548:	92                   	xchg   edx,eax
    8549:	92                   	xchg   edx,eax
    854a:	d4 b8                	aam    0xb8
    854c:	10 10                	adc    BYTE PTR [eax],dl
    854e:	62 92 94 94 68 08    	bound  edx,QWORD PTR [edx+0x8689494]
    8554:	10 10                	adc    BYTE PTR [eax],dl
    8556:	20 2c 52             	and    BYTE PTR [edx+edx*2],ch
    8559:	52                   	push   edx
    855a:	92                   	xchg   edx,eax
    855b:	8c 00                	mov    WORD PTR [eax],es
    855d:	00 00                	add    BYTE PTR [eax],al
    855f:	70 88                	jo     0x84e9
    8561:	88 88 90 60 47 a2    	mov    BYTE PTR [eax-0x5db89f70],cl
    8567:	92                   	xchg   edx,eax
    8568:	8a 84 46 39 00 00 04 	mov    al,BYTE PTR [esi+eax*2+0x4000039]
    856f:	08 10                	or     BYTE PTR [eax],dl
	...
    857d:	00 02                	add    BYTE PTR [edx],al
    857f:	04 08                	add    al,0x8
    8581:	08 10                	or     BYTE PTR [eax],dl
    8583:	10 10                	adc    BYTE PTR [eax],dl
    8585:	10 10                	adc    BYTE PTR [eax],dl
    8587:	10 10                	adc    BYTE PTR [eax],dl
    8589:	08 08                	or     BYTE PTR [eax],cl
    858b:	04 02                	add    al,0x2
    858d:	00 80 40 20 20 10    	add    BYTE PTR [eax+0x10202040],al
    8593:	10 10                	adc    BYTE PTR [eax],dl
    8595:	10 10                	adc    BYTE PTR [eax],dl
    8597:	10 10                	adc    BYTE PTR [eax],dl
    8599:	20 20                	and    BYTE PTR [eax],ah
    859b:	40                   	inc    eax
    859c:	80 00 00             	add    BYTE PTR [eax],0x0
    859f:	00 00                	add    BYTE PTR [eax],al
    85a1:	00 00                	add    BYTE PTR [eax],al
    85a3:	10 92 54 38 54 92    	adc    BYTE PTR [edx-0x6dabc7ac],dl
    85a9:	10 00                	adc    BYTE PTR [eax],al
	...
    85b3:	10 10                	adc    BYTE PTR [eax],dl
    85b5:	10 fe                	adc    dh,bh
    85b7:	10 10                	adc    BYTE PTR [eax],dl
    85b9:	10 00                	adc    BYTE PTR [eax],al
	...
    85c7:	00 00                	add    BYTE PTR [eax],al
    85c9:	18 18                	sbb    BYTE PTR [eax],bl
    85cb:	08 08                	or     BYTE PTR [eax],cl
    85cd:	10 00                	adc    BYTE PTR [eax],al
    85cf:	00 00                	add    BYTE PTR [eax],al
    85d1:	00 00                	add    BYTE PTR [eax],al
    85d3:	00 00                	add    BYTE PTR [eax],al
    85d5:	00 fe                	add    dh,bh
	...
    85e7:	00 00                	add    BYTE PTR [eax],al
    85e9:	00 18                	add    BYTE PTR [eax],bl
    85eb:	18 00                	sbb    BYTE PTR [eax],al
    85ed:	00 02                	add    BYTE PTR [edx],al
    85ef:	02 04 04             	add    al,BYTE PTR [esp+eax*1]
    85f2:	08 08                	or     BYTE PTR [eax],cl
    85f4:	08 10                	or     BYTE PTR [eax],dl
    85f6:	10 20                	adc    BYTE PTR [eax],ah
    85f8:	20 40 40             	and    BYTE PTR [eax+0x40],al
    85fb:	40                   	inc    eax
    85fc:	80 80 00 18 24 24 42 	add    BYTE PTR [eax+0x24241800],0x42
    8603:	42                   	inc    edx
    8604:	42                   	inc    edx
    8605:	42                   	inc    edx
    8606:	42                   	inc    edx
    8607:	42                   	inc    edx
    8608:	42                   	inc    edx
    8609:	24 24                	and    al,0x24
    860b:	18 00                	sbb    BYTE PTR [eax],al
    860d:	00 00                	add    BYTE PTR [eax],al
    860f:	08 18                	or     BYTE PTR [eax],bl
    8611:	28 08                	sub    BYTE PTR [eax],cl
    8613:	08 08                	or     BYTE PTR [eax],cl
    8615:	08 08                	or     BYTE PTR [eax],cl
    8617:	08 08                	or     BYTE PTR [eax],cl
    8619:	08 08                	or     BYTE PTR [eax],cl
    861b:	3e 00 00             	add    BYTE PTR ds:[eax],al
    861e:	00 18                	add    BYTE PTR [eax],bl
    8620:	24 42                	and    al,0x42
    8622:	42                   	inc    edx
    8623:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
    8626:	10 20                	adc    BYTE PTR [eax],ah
    8628:	20 40 40             	and    BYTE PTR [eax+0x40],al
    862b:	7e 00                	jle    0x862d
    862d:	00 00                	add    BYTE PTR [eax],al
    862f:	18 24 42             	sbb    BYTE PTR [edx+eax*2],ah
    8632:	02 02                	add    al,BYTE PTR [edx]
    8634:	04 18                	add    al,0x18
    8636:	04 02                	add    al,0x2
    8638:	02 42 24             	add    al,BYTE PTR [edx+0x24]
    863b:	18 00                	sbb    BYTE PTR [eax],al
    863d:	00 00                	add    BYTE PTR [eax],al
    863f:	0c 0c                	or     al,0xc
    8641:	0c 14                	or     al,0x14
    8643:	14 14                	adc    al,0x14
    8645:	24 24                	and    al,0x24
    8647:	44                   	inc    esp
    8648:	7e 04                	jle    0x864e
    864a:	04 1e                	add    al,0x1e
    864c:	00 00                	add    BYTE PTR [eax],al
    864e:	00 7c 40 40          	add    BYTE PTR [eax+eax*2+0x40],bh
    8652:	40                   	inc    eax
    8653:	58                   	pop    eax
    8654:	64 02 02             	add    al,BYTE PTR fs:[edx]
    8657:	02 02                	add    al,BYTE PTR [edx]
    8659:	42                   	inc    edx
    865a:	24 18                	and    al,0x18
    865c:	00 00                	add    BYTE PTR [eax],al
    865e:	00 18                	add    BYTE PTR [eax],bl
    8660:	24 42                	and    al,0x42
    8662:	40                   	inc    eax
    8663:	58                   	pop    eax
    8664:	64 42                	fs inc edx
    8666:	42                   	inc    edx
    8667:	42                   	inc    edx
    8668:	42                   	inc    edx
    8669:	42                   	inc    edx
    866a:	24 18                	and    al,0x18
    866c:	00 00                	add    BYTE PTR [eax],al
    866e:	00 7e 42             	add    BYTE PTR [esi+0x42],bh
    8671:	42                   	inc    edx
    8672:	04 04                	add    al,0x4
    8674:	08 08                	or     BYTE PTR [eax],cl
    8676:	08 10                	or     BYTE PTR [eax],dl
    8678:	10 10                	adc    BYTE PTR [eax],dl
    867a:	10 38                	adc    BYTE PTR [eax],bh
    867c:	00 00                	add    BYTE PTR [eax],al
    867e:	00 18                	add    BYTE PTR [eax],bl
    8680:	24 42                	and    al,0x42
    8682:	42                   	inc    edx
    8683:	42                   	inc    edx
    8684:	24 18                	and    al,0x18
    8686:	24 42                	and    al,0x42
    8688:	42                   	inc    edx
    8689:	42                   	inc    edx
    868a:	24 18                	and    al,0x18
    868c:	00 00                	add    BYTE PTR [eax],al
    868e:	00 18                	add    BYTE PTR [eax],bl
    8690:	24 42                	and    al,0x42
    8692:	42                   	inc    edx
    8693:	42                   	inc    edx
    8694:	42                   	inc    edx
    8695:	42                   	inc    edx
    8696:	26 1a 02             	sbb    al,BYTE PTR es:[edx]
    8699:	42                   	inc    edx
    869a:	24 18                	and    al,0x18
    869c:	00 00                	add    BYTE PTR [eax],al
    869e:	00 00                	add    BYTE PTR [eax],al
    86a0:	00 00                	add    BYTE PTR [eax],al
    86a2:	00 18                	add    BYTE PTR [eax],bl
    86a4:	18 00                	sbb    BYTE PTR [eax],al
    86a6:	00 00                	add    BYTE PTR [eax],al
    86a8:	00 00                	add    BYTE PTR [eax],al
    86aa:	18 18                	sbb    BYTE PTR [eax],bl
    86ac:	00 00                	add    BYTE PTR [eax],al
    86ae:	00 00                	add    BYTE PTR [eax],al
    86b0:	00 00                	add    BYTE PTR [eax],al
    86b2:	00 18                	add    BYTE PTR [eax],bl
    86b4:	18 00                	sbb    BYTE PTR [eax],al
    86b6:	00 00                	add    BYTE PTR [eax],al
    86b8:	00 18                	add    BYTE PTR [eax],bl
    86ba:	18 08                	sbb    BYTE PTR [eax],cl
    86bc:	08 10                	or     BYTE PTR [eax],dl
    86be:	00 02                	add    BYTE PTR [edx],al
    86c0:	04 08                	add    al,0x8
    86c2:	10 20                	adc    BYTE PTR [eax],ah
    86c4:	40                   	inc    eax
    86c5:	80 80 40 20 10 08 04 	add    BYTE PTR [eax+0x8102040],0x4
    86cc:	02 00                	add    al,BYTE PTR [eax]
    86ce:	00 00                	add    BYTE PTR [eax],al
    86d0:	00 00                	add    BYTE PTR [eax],al
    86d2:	00 00                	add    BYTE PTR [eax],al
    86d4:	fe 00                	inc    BYTE PTR [eax]
    86d6:	00 fe                	add    dh,bh
    86d8:	00 00                	add    BYTE PTR [eax],al
    86da:	00 00                	add    BYTE PTR [eax],al
    86dc:	00 00                	add    BYTE PTR [eax],al
    86de:	00 80 40 20 10 08    	add    BYTE PTR [eax+0x8102040],al
    86e4:	04 02                	add    al,0x2
    86e6:	02 04 08             	add    al,BYTE PTR [eax+ecx*1]
    86e9:	10 20                	adc    BYTE PTR [eax],ah
    86eb:	40                   	inc    eax
    86ec:	80 00 00             	add    BYTE PTR [eax],0x0
    86ef:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    86f3:	82 04 08 10          	add    BYTE PTR [eax+ecx*1],0x10
    86f7:	10 00                	adc    BYTE PTR [eax],al
    86f9:	00 18                	add    BYTE PTR [eax],bl
    86fb:	18 00                	sbb    BYTE PTR [eax],al
    86fd:	00 00                	add    BYTE PTR [eax],al
    86ff:	38 44 82 9a          	cmp    BYTE PTR [edx+eax*4-0x66],al
    8703:	aa                   	stos   BYTE PTR es:[edi],al
    8704:	aa                   	stos   BYTE PTR es:[edi],al
    8705:	aa                   	stos   BYTE PTR es:[edi],al
    8706:	aa                   	stos   BYTE PTR es:[edi],al
    8707:	aa                   	stos   BYTE PTR es:[edi],al
    8708:	9c                   	pushf  
    8709:	80 46 38 00          	add    BYTE PTR [esi+0x38],0x0
    870d:	00 00                	add    BYTE PTR [eax],al
    870f:	18 18                	sbb    BYTE PTR [eax],bl
    8711:	18 18                	sbb    BYTE PTR [eax],bl
    8713:	24 24                	and    al,0x24
    8715:	24 24                	and    al,0x24
    8717:	7e 42                	jle    0x875b
    8719:	42                   	inc    edx
    871a:	42                   	inc    edx
    871b:	e7 00                	out    0x0,eax
    871d:	00 00                	add    BYTE PTR [eax],al
    871f:	f0 48                	lock dec eax
    8721:	44                   	inc    esp
    8722:	44                   	inc    esp
    8723:	44                   	inc    esp
    8724:	48                   	dec    eax
    8725:	78 44                	js     0x876b
    8727:	42                   	inc    edx
    8728:	42                   	inc    edx
    8729:	42                   	inc    edx
    872a:	44                   	inc    esp
    872b:	f8                   	clc    
    872c:	00 00                	add    BYTE PTR [eax],al
    872e:	00 3a                	add    BYTE PTR [edx],bh
    8730:	46                   	inc    esi
    8731:	42                   	inc    edx
    8732:	82 80 80 80 80 80 82 	add    BYTE PTR [eax-0x7f7f7f80],0x82
    8739:	42                   	inc    edx
    873a:	44                   	inc    esp
    873b:	38 00                	cmp    BYTE PTR [eax],al
    873d:	00 00                	add    BYTE PTR [eax],al
    873f:	f8                   	clc    
    8740:	44                   	inc    esp
    8741:	44                   	inc    esp
    8742:	42                   	inc    edx
    8743:	42                   	inc    edx
    8744:	42                   	inc    edx
    8745:	42                   	inc    edx
    8746:	42                   	inc    edx
    8747:	42                   	inc    edx
    8748:	42                   	inc    edx
    8749:	44                   	inc    esp
    874a:	44                   	inc    esp
    874b:	f8                   	clc    
    874c:	00 00                	add    BYTE PTR [eax],al
    874e:	00 fe                	add    dh,bh
    8750:	42                   	inc    edx
    8751:	42                   	inc    edx
    8752:	40                   	inc    eax
    8753:	40                   	inc    eax
    8754:	44                   	inc    esp
    8755:	7c 44                	jl     0x879b
    8757:	40                   	inc    eax
    8758:	40                   	inc    eax
    8759:	42                   	inc    edx
    875a:	42                   	inc    edx
    875b:	fe 00                	inc    BYTE PTR [eax]
    875d:	00 00                	add    BYTE PTR [eax],al
    875f:	fe 42 42             	inc    BYTE PTR [edx+0x42]
    8762:	40                   	inc    eax
    8763:	40                   	inc    eax
    8764:	44                   	inc    esp
    8765:	7c 44                	jl     0x87ab
    8767:	44                   	inc    esp
    8768:	40                   	inc    eax
    8769:	40                   	inc    eax
    876a:	40                   	inc    eax
    876b:	f0 00 00             	lock add BYTE PTR [eax],al
    876e:	00 3a                	add    BYTE PTR [edx],bh
    8770:	46                   	inc    esi
    8771:	42                   	inc    edx
    8772:	82 80 80 9e 82 82 82 	add    BYTE PTR [eax-0x7d7d6180],0x82
    8779:	42                   	inc    edx
    877a:	46                   	inc    esi
    877b:	38 00                	cmp    BYTE PTR [eax],al
    877d:	00 00                	add    BYTE PTR [eax],al
    877f:	e7 42                	out    0x42,eax
    8781:	42                   	inc    edx
    8782:	42                   	inc    edx
    8783:	42                   	inc    edx
    8784:	42                   	inc    edx
    8785:	7e 42                	jle    0x87c9
    8787:	42                   	inc    edx
    8788:	42                   	inc    edx
    8789:	42                   	inc    edx
    878a:	42                   	inc    edx
    878b:	e7 00                	out    0x0,eax
    878d:	00 00                	add    BYTE PTR [eax],al
    878f:	7c 10                	jl     0x87a1
    8791:	10 10                	adc    BYTE PTR [eax],dl
    8793:	10 10                	adc    BYTE PTR [eax],dl
    8795:	10 10                	adc    BYTE PTR [eax],dl
    8797:	10 10                	adc    BYTE PTR [eax],dl
    8799:	10 10                	adc    BYTE PTR [eax],dl
    879b:	7c 00                	jl     0x879d
    879d:	00 00                	add    BYTE PTR [eax],al
    879f:	1f                   	pop    ds
    87a0:	04 04                	add    al,0x4
    87a2:	04 04                	add    al,0x4
    87a4:	04 04                	add    al,0x4
    87a6:	04 04                	add    al,0x4
    87a8:	04 04                	add    al,0x4
    87aa:	84 48 30             	test   BYTE PTR [eax+0x30],cl
    87ad:	00 00                	add    BYTE PTR [eax],al
    87af:	e7 42                	out    0x42,eax
    87b1:	44                   	inc    esp
    87b2:	48                   	dec    eax
    87b3:	50                   	push   eax
    87b4:	50                   	push   eax
    87b5:	60                   	pusha  
    87b6:	50                   	push   eax
    87b7:	50                   	push   eax
    87b8:	48                   	dec    eax
    87b9:	44                   	inc    esp
    87ba:	42                   	inc    edx
    87bb:	e7 00                	out    0x0,eax
    87bd:	00 00                	add    BYTE PTR [eax],al
    87bf:	f0 40                	lock inc eax
    87c1:	40                   	inc    eax
    87c2:	40                   	inc    eax
    87c3:	40                   	inc    eax
    87c4:	40                   	inc    eax
    87c5:	40                   	inc    eax
    87c6:	40                   	inc    eax
    87c7:	40                   	inc    eax
    87c8:	40                   	inc    eax
    87c9:	42                   	inc    edx
    87ca:	42                   	inc    edx
    87cb:	fe 00                	inc    BYTE PTR [eax]
    87cd:	00 00                	add    BYTE PTR [eax],al
    87cf:	c3                   	ret    
    87d0:	42                   	inc    edx
    87d1:	66 66 66 5a          	data16 data16 pop dx
    87d5:	5a                   	pop    edx
    87d6:	5a                   	pop    edx
    87d7:	42                   	inc    edx
    87d8:	42                   	inc    edx
    87d9:	42                   	inc    edx
    87da:	42                   	inc    edx
    87db:	e7 00                	out    0x0,eax
    87dd:	00 00                	add    BYTE PTR [eax],al
    87df:	c7 42 62 62 52 52 52 	mov    DWORD PTR [edx+0x62],0x52525262
    87e6:	4a                   	dec    edx
    87e7:	4a                   	dec    edx
    87e8:	4a                   	dec    edx
    87e9:	46                   	inc    esi
    87ea:	46                   	inc    esi
    87eb:	e2 00                	loop   0x87ed
    87ed:	00 00                	add    BYTE PTR [eax],al
    87ef:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    87f3:	82 82 82 82 82 82 82 	add    BYTE PTR [edx-0x7d7d7d7e],0x82
    87fa:	44                   	inc    esp
    87fb:	38 00                	cmp    BYTE PTR [eax],al
    87fd:	00 00                	add    BYTE PTR [eax],al
    87ff:	f8                   	clc    
    8800:	44                   	inc    esp
    8801:	42                   	inc    edx
    8802:	42                   	inc    edx
    8803:	42                   	inc    edx
    8804:	44                   	inc    esp
    8805:	78 40                	js     0x8847
    8807:	40                   	inc    eax
    8808:	40                   	inc    eax
    8809:	40                   	inc    eax
    880a:	40                   	inc    eax
    880b:	f0 00 00             	lock add BYTE PTR [eax],al
    880e:	00 38                	add    BYTE PTR [eax],bh
    8810:	44                   	inc    esp
    8811:	82 82 82 82 82 82 82 	add    BYTE PTR [edx-0x7d7d7d7e],0x82
    8818:	92                   	xchg   edx,eax
    8819:	8a 44 3a 00          	mov    al,BYTE PTR [edx+edi*1+0x0]
    881d:	00 00                	add    BYTE PTR [eax],al
    881f:	fc                   	cld    
    8820:	42                   	inc    edx
    8821:	42                   	inc    edx
    8822:	42                   	inc    edx
    8823:	42                   	inc    edx
    8824:	7c 44                	jl     0x886a
    8826:	42                   	inc    edx
    8827:	42                   	inc    edx
    8828:	42                   	inc    edx
    8829:	42                   	inc    edx
    882a:	42                   	inc    edx
    882b:	e7 00                	out    0x0,eax
    882d:	00 00                	add    BYTE PTR [eax],al
    882f:	3a 46 82             	cmp    al,BYTE PTR [esi-0x7e]
    8832:	82 80 40 38 04 02 82 	add    BYTE PTR [eax+0x2043840],0x82
    8839:	82 c4 b8             	add    ah,0xb8
    883c:	00 00                	add    BYTE PTR [eax],al
    883e:	00 fe                	add    dh,bh
    8840:	92                   	xchg   edx,eax
    8841:	92                   	xchg   edx,eax
    8842:	10 10                	adc    BYTE PTR [eax],dl
    8844:	10 10                	adc    BYTE PTR [eax],dl
    8846:	10 10                	adc    BYTE PTR [eax],dl
    8848:	10 10                	adc    BYTE PTR [eax],dl
    884a:	10 7c 00 00          	adc    BYTE PTR [eax+eax*1+0x0],bh
    884e:	00 e7                	add    bh,ah
    8850:	42                   	inc    edx
    8851:	42                   	inc    edx
    8852:	42                   	inc    edx
    8853:	42                   	inc    edx
    8854:	42                   	inc    edx
    8855:	42                   	inc    edx
    8856:	42                   	inc    edx
    8857:	42                   	inc    edx
    8858:	42                   	inc    edx
    8859:	42                   	inc    edx
    885a:	24 3c                	and    al,0x3c
    885c:	00 00                	add    BYTE PTR [eax],al
    885e:	00 e7                	add    bh,ah
    8860:	42                   	inc    edx
    8861:	42                   	inc    edx
    8862:	42                   	inc    edx
    8863:	42                   	inc    edx
    8864:	24 24                	and    al,0x24
    8866:	24 24                	and    al,0x24
    8868:	18 18                	sbb    BYTE PTR [eax],bl
    886a:	18 18                	sbb    BYTE PTR [eax],bl
    886c:	00 00                	add    BYTE PTR [eax],al
    886e:	00 e7                	add    bh,ah
    8870:	42                   	inc    edx
    8871:	42                   	inc    edx
    8872:	42                   	inc    edx
    8873:	5a                   	pop    edx
    8874:	5a                   	pop    edx
    8875:	5a                   	pop    edx
    8876:	5a                   	pop    edx
    8877:	24 24                	and    al,0x24
    8879:	24 24                	and    al,0x24
    887b:	24 00                	and    al,0x0
    887d:	00 00                	add    BYTE PTR [eax],al
    887f:	e7 42                	out    0x42,eax
    8881:	42                   	inc    edx
    8882:	24 24                	and    al,0x24
    8884:	24 18                	and    al,0x18
    8886:	24 24                	and    al,0x24
    8888:	24 42                	and    al,0x42
    888a:	42                   	inc    edx
    888b:	e7 00                	out    0x0,eax
    888d:	00 00                	add    BYTE PTR [eax],al
    888f:	ee                   	out    dx,al
    8890:	44                   	inc    esp
    8891:	44                   	inc    esp
    8892:	44                   	inc    esp
    8893:	28 28                	sub    BYTE PTR [eax],ch
    8895:	28 10                	sub    BYTE PTR [eax],dl
    8897:	10 10                	adc    BYTE PTR [eax],dl
    8899:	10 10                	adc    BYTE PTR [eax],dl
    889b:	7c 00                	jl     0x889d
    889d:	00 00                	add    BYTE PTR [eax],al
    889f:	fe 84 84 08 08 10 10 	inc    BYTE PTR [esp+eax*4+0x10100808]
    88a6:	20 20                	and    BYTE PTR [eax],ah
    88a8:	40                   	inc    eax
    88a9:	42                   	inc    edx
    88aa:	82 fe 00             	cmp    dh,0x0
    88ad:	00 00                	add    BYTE PTR [eax],al
    88af:	3e 20 20             	and    BYTE PTR ds:[eax],ah
    88b2:	20 20                	and    BYTE PTR [eax],ah
    88b4:	20 20                	and    BYTE PTR [eax],ah
    88b6:	20 20                	and    BYTE PTR [eax],ah
    88b8:	20 20                	and    BYTE PTR [eax],ah
    88ba:	20 20                	and    BYTE PTR [eax],ah
    88bc:	3e 00 80 80 40 40 20 	add    BYTE PTR ds:[eax+0x20404080],al
    88c3:	20 20                	and    BYTE PTR [eax],ah
    88c5:	10 10                	adc    BYTE PTR [eax],dl
    88c7:	08 08                	or     BYTE PTR [eax],cl
    88c9:	04 04                	add    al,0x4
    88cb:	04 02                	add    al,0x2
    88cd:	02 00                	add    al,BYTE PTR [eax]
    88cf:	7c 04                	jl     0x88d5
    88d1:	04 04                	add    al,0x4
    88d3:	04 04                	add    al,0x4
    88d5:	04 04                	add    al,0x4
    88d7:	04 04                	add    al,0x4
    88d9:	04 04                	add    al,0x4
    88db:	04 7c                	add    al,0x7c
    88dd:	00 00                	add    BYTE PTR [eax],al
    88df:	10 28                	adc    BYTE PTR [eax],ch
    88e1:	44                   	inc    esp
    88e2:	82 00 00             	add    BYTE PTR [eax],0x0
	...
    88f9:	00 00                	add    BYTE PTR [eax],al
    88fb:	00 fe                	add    dh,bh
    88fd:	00 10                	add    BYTE PTR [eax],dl
    88ff:	08 04 00             	or     BYTE PTR [eax+eax*1],al
	...
    8912:	00 70 08             	add    BYTE PTR [eax+0x8],dh
    8915:	04 3c                	add    al,0x3c
    8917:	44                   	inc    esp
    8918:	84 84 8c 76 00 00 c0 	test   BYTE PTR [esp+ecx*4-0x3fffff8a],al
    891f:	40                   	inc    eax
    8920:	40                   	inc    eax
    8921:	40                   	inc    eax
    8922:	40                   	inc    eax
    8923:	58                   	pop    eax
    8924:	64 42                	fs inc edx
    8926:	42                   	inc    edx
    8927:	42                   	inc    edx
    8928:	42                   	inc    edx
    8929:	42                   	inc    edx
    892a:	64 58                	fs pop eax
    892c:	00 00                	add    BYTE PTR [eax],al
    892e:	00 00                	add    BYTE PTR [eax],al
    8930:	00 00                	add    BYTE PTR [eax],al
    8932:	00 30                	add    BYTE PTR [eax],dh
    8934:	4c                   	dec    esp
    8935:	84 84 80 80 82 44 38 	test   BYTE PTR [eax+eax*4+0x38448280],al
    893c:	00 00                	add    BYTE PTR [eax],al
    893e:	0c 04                	or     al,0x4
    8940:	04 04                	add    al,0x4
    8942:	04 34                	add    al,0x34
    8944:	4c                   	dec    esp
    8945:	84 84 84 84 84 4c 36 	test   BYTE PTR [esp+eax*4+0x364c8484],al
    894c:	00 00                	add    BYTE PTR [eax],al
    894e:	00 00                	add    BYTE PTR [eax],al
    8950:	00 00                	add    BYTE PTR [eax],al
    8952:	00 38                	add    BYTE PTR [eax],bh
    8954:	44                   	inc    esp
    8955:	82 82 fc 80 82 42 3c 	add    BYTE PTR [edx+0x428280fc],0x3c
    895c:	00 00                	add    BYTE PTR [eax],al
    895e:	0e                   	push   cs
    895f:	10 10                	adc    BYTE PTR [eax],dl
    8961:	10 10                	adc    BYTE PTR [eax],dl
    8963:	7c 10                	jl     0x8975
    8965:	10 10                	adc    BYTE PTR [eax],dl
    8967:	10 10                	adc    BYTE PTR [eax],dl
    8969:	10 10                	adc    BYTE PTR [eax],dl
    896b:	7c 00                	jl     0x896d
    896d:	00 00                	add    BYTE PTR [eax],al
    896f:	00 00                	add    BYTE PTR [eax],al
    8971:	00 00                	add    BYTE PTR [eax],al
    8973:	36 4c                	ss dec esp
    8975:	84 84 84 84 4c 34 04 	test   BYTE PTR [esp+eax*4+0x4344c84],al
    897c:	04 78                	add    al,0x78
    897e:	c0 40 40 40          	rol    BYTE PTR [eax+0x40],0x40
    8982:	40                   	inc    eax
    8983:	58                   	pop    eax
    8984:	64 42                	fs inc edx
    8986:	42                   	inc    edx
    8987:	42                   	inc    edx
    8988:	42                   	inc    edx
    8989:	42                   	inc    edx
    898a:	42                   	inc    edx
    898b:	e3 00                	jecxz  0x898d
    898d:	00 00                	add    BYTE PTR [eax],al
    898f:	10 10                	adc    BYTE PTR [eax],dl
    8991:	00 00                	add    BYTE PTR [eax],al
    8993:	30 10                	xor    BYTE PTR [eax],dl
    8995:	10 10                	adc    BYTE PTR [eax],dl
    8997:	10 10                	adc    BYTE PTR [eax],dl
    8999:	10 10                	adc    BYTE PTR [eax],dl
    899b:	38 00                	cmp    BYTE PTR [eax],al
    899d:	00 00                	add    BYTE PTR [eax],al
    899f:	04 04                	add    al,0x4
    89a1:	00 00                	add    BYTE PTR [eax],al
    89a3:	0c 04                	or     al,0x4
    89a5:	04 04                	add    al,0x4
    89a7:	04 04                	add    al,0x4
    89a9:	04 04                	add    al,0x4
    89ab:	08 08                	or     BYTE PTR [eax],cl
    89ad:	30 c0                	xor    al,al
    89af:	40                   	inc    eax
    89b0:	40                   	inc    eax
    89b1:	40                   	inc    eax
    89b2:	40                   	inc    eax
    89b3:	4e                   	dec    esi
    89b4:	44                   	inc    esp
    89b5:	48                   	dec    eax
    89b6:	50                   	push   eax
    89b7:	60                   	pusha  
    89b8:	50                   	push   eax
    89b9:	48                   	dec    eax
    89ba:	44                   	inc    esp
    89bb:	e6 00                	out    0x0,al
    89bd:	00 30                	add    BYTE PTR [eax],dh
    89bf:	10 10                	adc    BYTE PTR [eax],dl
    89c1:	10 10                	adc    BYTE PTR [eax],dl
    89c3:	10 10                	adc    BYTE PTR [eax],dl
    89c5:	10 10                	adc    BYTE PTR [eax],dl
    89c7:	10 10                	adc    BYTE PTR [eax],dl
    89c9:	10 10                	adc    BYTE PTR [eax],dl
    89cb:	38 00                	cmp    BYTE PTR [eax],al
    89cd:	00 00                	add    BYTE PTR [eax],al
    89cf:	00 00                	add    BYTE PTR [eax],al
    89d1:	00 00                	add    BYTE PTR [eax],al
    89d3:	f6 49 49 49          	test   BYTE PTR [ecx+0x49],0x49
    89d7:	49                   	dec    ecx
    89d8:	49                   	dec    ecx
    89d9:	49                   	dec    ecx
    89da:	49                   	dec    ecx
    89db:	db 00                	fild   DWORD PTR [eax]
    89dd:	00 00                	add    BYTE PTR [eax],al
    89df:	00 00                	add    BYTE PTR [eax],al
    89e1:	00 00                	add    BYTE PTR [eax],al
    89e3:	d8 64 42 42          	fsub   DWORD PTR [edx+eax*2+0x42]
    89e7:	42                   	inc    edx
    89e8:	42                   	inc    edx
    89e9:	42                   	inc    edx
    89ea:	42                   	inc    edx
    89eb:	e3 00                	jecxz  0x89ed
    89ed:	00 00                	add    BYTE PTR [eax],al
    89ef:	00 00                	add    BYTE PTR [eax],al
    89f1:	00 00                	add    BYTE PTR [eax],al
    89f3:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    89f7:	82 82 82 44 38 00 00 	add    BYTE PTR [edx+0x384482],0x0
    89fe:	00 00                	add    BYTE PTR [eax],al
    8a00:	00 00                	add    BYTE PTR [eax],al
    8a02:	00 d8                	add    al,bl
    8a04:	64 42                	fs inc edx
    8a06:	42                   	inc    edx
    8a07:	42                   	inc    edx
    8a08:	42                   	inc    edx
    8a09:	42                   	inc    edx
    8a0a:	64 58                	fs pop eax
    8a0c:	40                   	inc    eax
    8a0d:	e0 00                	loopne 0x8a0f
    8a0f:	00 00                	add    BYTE PTR [eax],al
    8a11:	00 00                	add    BYTE PTR [eax],al
    8a13:	34 4c                	xor    al,0x4c
    8a15:	84 84 84 84 84 4c 34 	test   BYTE PTR [esp+eax*4+0x344c8484],al
    8a1c:	04 0e                	add    al,0xe
    8a1e:	00 00                	add    BYTE PTR [eax],al
    8a20:	00 00                	add    BYTE PTR [eax],al
    8a22:	00 dc                	add    ah,bl
    8a24:	62 42 40             	bound  eax,QWORD PTR [edx+0x40]
    8a27:	40                   	inc    eax
    8a28:	40                   	inc    eax
    8a29:	40                   	inc    eax
    8a2a:	40                   	inc    eax
    8a2b:	e0 00                	loopne 0x8a2d
    8a2d:	00 00                	add    BYTE PTR [eax],al
    8a2f:	00 00                	add    BYTE PTR [eax],al
    8a31:	00 00                	add    BYTE PTR [eax],al
    8a33:	7a 86                	jp     0x89bb
    8a35:	82 c0 38             	add    al,0x38
    8a38:	06                   	push   es
    8a39:	82 c2 bc             	add    dl,0xbc
    8a3c:	00 00                	add    BYTE PTR [eax],al
    8a3e:	00 00                	add    BYTE PTR [eax],al
    8a40:	10 10                	adc    BYTE PTR [eax],dl
    8a42:	10 7c 10 10          	adc    BYTE PTR [eax+edx*1+0x10],bh
    8a46:	10 10                	adc    BYTE PTR [eax],dl
    8a48:	10 10                	adc    BYTE PTR [eax],dl
    8a4a:	10 0e                	adc    BYTE PTR [esi],cl
    8a4c:	00 00                	add    BYTE PTR [eax],al
    8a4e:	00 00                	add    BYTE PTR [eax],al
    8a50:	00 00                	add    BYTE PTR [eax],al
    8a52:	00 c6                	add    dh,al
    8a54:	42                   	inc    edx
    8a55:	42                   	inc    edx
    8a56:	42                   	inc    edx
    8a57:	42                   	inc    edx
    8a58:	42                   	inc    edx
    8a59:	42                   	inc    edx
    8a5a:	46                   	inc    esi
    8a5b:	3b 00                	cmp    eax,DWORD PTR [eax]
    8a5d:	00 00                	add    BYTE PTR [eax],al
    8a5f:	00 00                	add    BYTE PTR [eax],al
    8a61:	00 00                	add    BYTE PTR [eax],al
    8a63:	e7 42                	out    0x42,eax
    8a65:	42                   	inc    edx
    8a66:	42                   	inc    edx
    8a67:	24 24                	and    al,0x24
    8a69:	24 18                	and    al,0x18
    8a6b:	18 00                	sbb    BYTE PTR [eax],al
    8a6d:	00 00                	add    BYTE PTR [eax],al
    8a6f:	00 00                	add    BYTE PTR [eax],al
    8a71:	00 00                	add    BYTE PTR [eax],al
    8a73:	e7 42                	out    0x42,eax
    8a75:	42                   	inc    edx
    8a76:	5a                   	pop    edx
    8a77:	5a                   	pop    edx
    8a78:	5a                   	pop    edx
    8a79:	24 24                	and    al,0x24
    8a7b:	24 00                	and    al,0x0
    8a7d:	00 00                	add    BYTE PTR [eax],al
    8a7f:	00 00                	add    BYTE PTR [eax],al
    8a81:	00 00                	add    BYTE PTR [eax],al
    8a83:	c6 44 28 28 10       	mov    BYTE PTR [eax+ebp*1+0x28],0x10
    8a88:	28 28                	sub    BYTE PTR [eax],ch
    8a8a:	44                   	inc    esp
    8a8b:	c6 00 00             	mov    BYTE PTR [eax],0x0
    8a8e:	00 00                	add    BYTE PTR [eax],al
    8a90:	00 00                	add    BYTE PTR [eax],al
    8a92:	00 e7                	add    bh,ah
    8a94:	42                   	inc    edx
    8a95:	42                   	inc    edx
    8a96:	24 24                	and    al,0x24
    8a98:	24 18                	and    al,0x18
    8a9a:	18 10                	sbb    BYTE PTR [eax],dl
    8a9c:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
    8a9f:	00 00                	add    BYTE PTR [eax],al
    8aa1:	00 00                	add    BYTE PTR [eax],al
    8aa3:	fe 82 84 08 10 20    	inc    BYTE PTR [edx+0x20100884]
    8aa9:	42                   	inc    edx
    8aaa:	82 fe 00             	cmp    dh,0x0
    8aad:	00 00                	add    BYTE PTR [eax],al
    8aaf:	06                   	push   es
    8ab0:	08 10                	or     BYTE PTR [eax],dl
    8ab2:	10 10                	adc    BYTE PTR [eax],dl
    8ab4:	10 60 10             	adc    BYTE PTR [eax+0x10],ah
    8ab7:	10 10                	adc    BYTE PTR [eax],dl
    8ab9:	10 08                	adc    BYTE PTR [eax],cl
    8abb:	06                   	push   es
    8abc:	00 00                	add    BYTE PTR [eax],al
    8abe:	10 10                	adc    BYTE PTR [eax],dl
    8ac0:	10 10                	adc    BYTE PTR [eax],dl
    8ac2:	10 10                	adc    BYTE PTR [eax],dl
    8ac4:	10 10                	adc    BYTE PTR [eax],dl
    8ac6:	10 10                	adc    BYTE PTR [eax],dl
    8ac8:	10 10                	adc    BYTE PTR [eax],dl
    8aca:	10 10                	adc    BYTE PTR [eax],dl
    8acc:	10 10                	adc    BYTE PTR [eax],dl
    8ace:	00 60 10             	add    BYTE PTR [eax+0x10],ah
    8ad1:	08 08                	or     BYTE PTR [eax],cl
    8ad3:	08 08                	or     BYTE PTR [eax],cl
    8ad5:	06                   	push   es
    8ad6:	08 08                	or     BYTE PTR [eax],cl
    8ad8:	08 08                	or     BYTE PTR [eax],cl
    8ada:	10 60 00             	adc    BYTE PTR [eax+0x0],ah
    8add:	00 00                	add    BYTE PTR [eax],al
    8adf:	72 8c                	jb     0x8a6d
	...
    8af1:	00 10                	add    BYTE PTR [eax],dl
    8af3:	28 44 82 fe          	sub    BYTE PTR [edx+eax*4-0x2],al
    8af7:	82 fe 00             	cmp    dh,0x0
    8afa:	00 00                	add    BYTE PTR [eax],al
    8afc:	00 00                	add    BYTE PTR [eax],al
    8afe:	00 38                	add    BYTE PTR [eax],bh
    8b00:	44                   	inc    esp
    8b01:	82 80 80 80 80 80 80 	add    BYTE PTR [eax-0x7f7f7f80],0x80
    8b08:	80 82 44 38 10 20 00 	add    BYTE PTR [edx+0x20103844],0x0
    8b0f:	00 24 24             	add    BYTE PTR [esp],ah
    8b12:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    8b18:	82 82 42 3e 00 00 0c 	add    BYTE PTR [edx+0x3e42],0xc
    8b1f:	08 10                	or     BYTE PTR [eax],dl
    8b21:	00 00                	add    BYTE PTR [eax],al
    8b23:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    8b27:	fe 80 82 44 38 00    	inc    BYTE PTR [eax+0x384482]
    8b2d:	00 00                	add    BYTE PTR [eax],al
    8b2f:	10 28                	adc    BYTE PTR [eax],ch
    8b31:	44                   	inc    esp
    8b32:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    8b35:	04 3c                	add    al,0x3c
    8b37:	44                   	inc    esp
    8b38:	84 84 44 3e 00 00 00 	test   BYTE PTR [esp+eax*2+0x3e],al
    8b3f:	00 24 24             	add    BYTE PTR [esp],ah
    8b42:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    8b45:	04 3c                	add    al,0x3c
    8b47:	44                   	inc    esp
    8b48:	84 84 44 3e 00 00 10 	test   BYTE PTR [esp+eax*2+0x1000003e],al
    8b4f:	08 04 00             	or     BYTE PTR [eax+eax*1],al
    8b52:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    8b55:	04 3c                	add    al,0x3c
    8b57:	44                   	inc    esp
    8b58:	84 84 44 3e 00 00 00 	test   BYTE PTR [esp+eax*2+0x3e],al
    8b5f:	18 24 18             	sbb    BYTE PTR [eax+ebx*1],ah
    8b62:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    8b65:	04 3c                	add    al,0x3c
    8b67:	44                   	inc    esp
    8b68:	84 84 44 3e 00 00 00 	test   BYTE PTR [esp+eax*2+0x3e],al
    8b6f:	00 00                	add    BYTE PTR [eax],al
    8b71:	00 00                	add    BYTE PTR [eax],al
    8b73:	3c 42                	cmp    al,0x42
    8b75:	80 80 80 80 80 42 3c 	add    BYTE PTR [eax+0x42808080],0x3c
    8b7c:	08 10                	or     BYTE PTR [eax],dl
    8b7e:	00 10                	add    BYTE PTR [eax],dl
    8b80:	28 44 00 38          	sub    BYTE PTR [eax+eax*1+0x38],al
    8b84:	44                   	inc    esp
    8b85:	82 82 fe 80 82 44 38 	add    BYTE PTR [edx+0x448280fe],0x38
    8b8c:	00 00                	add    BYTE PTR [eax],al
    8b8e:	00 00                	add    BYTE PTR [eax],al
    8b90:	24 24                	and    al,0x24
    8b92:	00 38                	add    BYTE PTR [eax],bh
    8b94:	44                   	inc    esp
    8b95:	82 82 fe 80 82 44 38 	add    BYTE PTR [edx+0x448280fe],0x38
    8b9c:	00 00                	add    BYTE PTR [eax],al
    8b9e:	10 08                	adc    BYTE PTR [eax],cl
    8ba0:	04 00                	add    al,0x0
    8ba2:	00 38                	add    BYTE PTR [eax],bh
    8ba4:	44                   	inc    esp
    8ba5:	82 82 fe 80 82 44 38 	add    BYTE PTR [edx+0x448280fe],0x38
    8bac:	00 00                	add    BYTE PTR [eax],al
    8bae:	00 00                	add    BYTE PTR [eax],al
    8bb0:	24 24                	and    al,0x24
    8bb2:	00 10                	add    BYTE PTR [eax],dl
    8bb4:	10 10                	adc    BYTE PTR [eax],dl
    8bb6:	10 10                	adc    BYTE PTR [eax],dl
    8bb8:	10 10                	adc    BYTE PTR [eax],dl
    8bba:	10 10                	adc    BYTE PTR [eax],dl
    8bbc:	00 00                	add    BYTE PTR [eax],al
    8bbe:	00 10                	add    BYTE PTR [eax],dl
    8bc0:	28 44 00 10          	sub    BYTE PTR [eax+eax*1+0x10],al
    8bc4:	10 10                	adc    BYTE PTR [eax],dl
    8bc6:	10 10                	adc    BYTE PTR [eax],dl
    8bc8:	10 10                	adc    BYTE PTR [eax],dl
    8bca:	10 10                	adc    BYTE PTR [eax],dl
    8bcc:	00 00                	add    BYTE PTR [eax],al
    8bce:	10 08                	adc    BYTE PTR [eax],cl
    8bd0:	04 00                	add    al,0x0
    8bd2:	00 10                	add    BYTE PTR [eax],dl
    8bd4:	10 10                	adc    BYTE PTR [eax],dl
    8bd6:	10 10                	adc    BYTE PTR [eax],dl
    8bd8:	10 10                	adc    BYTE PTR [eax],dl
    8bda:	10 10                	adc    BYTE PTR [eax],dl
    8bdc:	00 00                	add    BYTE PTR [eax],al
    8bde:	24 24                	and    al,0x24
    8be0:	00 38                	add    BYTE PTR [eax],bh
    8be2:	44                   	inc    esp
    8be3:	82 82 82 82 fe 82 82 	add    BYTE PTR [edx-0x7d017d7e],0x82
    8bea:	82 82 00 00 00 38 44 	add    BYTE PTR [edx+0x38000000],0x44
    8bf1:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    8bf5:	82 82 fe 82 82 82 82 	add    BYTE PTR [edx-0x7d7d7d02],0x82
    8bfc:	00 00                	add    BYTE PTR [eax],al
    8bfe:	0c 08                	or     al,0x8
    8c00:	10 fe                	adc    dh,bh
    8c02:	80 80 80 80 f8 80 80 	add    BYTE PTR [eax-0x7f077f80],0x80
    8c09:	80 80 fe 00 00 00 00 	add    BYTE PTR [eax+0xfe],0x0
    8c10:	00 00                	add    BYTE PTR [eax],al
    8c12:	00 60 1c             	add    BYTE PTR [eax+0x1c],ah
    8c15:	12 72 9e             	adc    dh,BYTE PTR [edx-0x62]
    8c18:	90                   	nop
    8c19:	90                   	nop
    8c1a:	92                   	xchg   edx,eax
    8c1b:	6c                   	ins    BYTE PTR es:[edi],dx
    8c1c:	00 00                	add    BYTE PTR [eax],al
    8c1e:	0c 10                	or     al,0x10
    8c20:	20 28                	and    BYTE PTR [eax],ch
    8c22:	28 28                	sub    BYTE PTR [eax],ch
    8c24:	fe                   	(bad)  
    8c25:	28 28                	sub    BYTE PTR [eax],ch
    8c27:	28 28                	sub    BYTE PTR [eax],ch
    8c29:	28 28                	sub    BYTE PTR [eax],ch
    8c2b:	28 00                	sub    BYTE PTR [eax],al
    8c2d:	00 00                	add    BYTE PTR [eax],al
    8c2f:	10 28                	adc    BYTE PTR [eax],ch
    8c31:	44                   	inc    esp
    8c32:	00 38                	add    BYTE PTR [eax],bh
    8c34:	44                   	inc    esp
    8c35:	82 82 82 82 82 44 38 	add    BYTE PTR [edx+0x44828282],0x38
    8c3c:	00 00                	add    BYTE PTR [eax],al
    8c3e:	00 00                	add    BYTE PTR [eax],al
    8c40:	24 24                	and    al,0x24
    8c42:	00 38                	add    BYTE PTR [eax],bh
    8c44:	44                   	inc    esp
    8c45:	82 82 82 82 82 44 38 	add    BYTE PTR [edx+0x44828282],0x38
    8c4c:	00 00                	add    BYTE PTR [eax],al
    8c4e:	10 08                	adc    BYTE PTR [eax],cl
    8c50:	04 00                	add    al,0x0
    8c52:	00 38                	add    BYTE PTR [eax],bh
    8c54:	44                   	inc    esp
    8c55:	82 82 82 82 82 44 38 	add    BYTE PTR [edx+0x44828282],0x38
    8c5c:	00 00                	add    BYTE PTR [eax],al
    8c5e:	00 10                	add    BYTE PTR [eax],dl
    8c60:	28 44 00 82          	sub    BYTE PTR [eax+eax*1-0x7e],al
    8c64:	82 82 82 82 82 82 42 	add    BYTE PTR [edx-0x7d7d7d7e],0x42
    8c6b:	3e 00 00             	add    BYTE PTR ds:[eax],al
    8c6e:	10 08                	adc    BYTE PTR [eax],cl
    8c70:	04 00                	add    al,0x0
    8c72:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    8c78:	82 82 42 3e 00 00 00 	add    BYTE PTR [edx+0x3e42],0x0
    8c7f:	00 24 24             	add    BYTE PTR [esp],ah
    8c82:	00 82 82 44 44 28    	add    BYTE PTR [edx+0x28444482],al
    8c88:	28 10                	sub    BYTE PTR [eax],dl
    8c8a:	10 20                	adc    BYTE PTR [eax],ah
    8c8c:	20 40 24             	and    BYTE PTR [eax+0x24],al
    8c8f:	24 00                	and    al,0x0
    8c91:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    8c95:	82 82 82 82 82 44 38 	add    BYTE PTR [edx+0x44828282],0x38
    8c9c:	00 00                	add    BYTE PTR [eax],al
    8c9e:	24 24                	and    al,0x24
    8ca0:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    8ca6:	82 82 82 82 44 38 00 	add    BYTE PTR [edx+0x38448282],0x0
    8cad:	00 00                	add    BYTE PTR [eax],al
    8caf:	28 28                	sub    BYTE PTR [eax],ch
    8cb1:	28 3c 6a             	sub    BYTE PTR [edx+ebp*2],bh
    8cb4:	a8 a8                	test   al,0xa8
    8cb6:	a8 a8                	test   al,0xa8
    8cb8:	a8 6a                	test   al,0x6a
    8cba:	3c 28                	cmp    al,0x28
    8cbc:	28 28                	sub    BYTE PTR [eax],ch
    8cbe:	00 0c 12             	add    BYTE PTR [edx+edx*1],cl
    8cc1:	20 20                	and    BYTE PTR [eax],ah
    8cc3:	20 fc                	and    ah,bh
    8cc5:	20 20                	and    BYTE PTR [eax],ah
    8cc7:	20 60 a0             	and    BYTE PTR [eax-0x60],ah
    8cca:	b2 4c                	mov    dl,0x4c
    8ccc:	00 00                	add    BYTE PTR [eax],al
    8cce:	00 82 82 44 28 10    	add    BYTE PTR [edx+0x10284482],al
    8cd4:	fe                   	(bad)  
    8cd5:	10 10                	adc    BYTE PTR [eax],dl
    8cd7:	fe                   	(bad)  
    8cd8:	10 10                	adc    BYTE PTR [eax],dl
    8cda:	10 10                	adc    BYTE PTR [eax],dl
    8cdc:	00 00                	add    BYTE PTR [eax],al
    8cde:	00 e0                	add    al,ah
    8ce0:	90                   	nop
    8ce1:	88 88 88 94 e4 9f    	mov    BYTE PTR [eax-0x601b6b78],cl
    8ce7:	84 84 84 84 84 00 00 	test   BYTE PTR [esp+eax*4+0x8484],al
    8cee:	00 0c 12             	add    BYTE PTR [edx+edx*1],cl
    8cf1:	10 10                	adc    BYTE PTR [eax],dl
    8cf3:	10 fe                	adc    dh,bh
    8cf5:	10 10                	adc    BYTE PTR [eax],dl
    8cf7:	10 10                	adc    BYTE PTR [eax],dl
    8cf9:	10 90 60 00 00 0c    	adc    BYTE PTR [eax+0xc000060],dl
    8cff:	08 10                	or     BYTE PTR [eax],dl
    8d01:	00 00                	add    BYTE PTR [eax],al
    8d03:	78 04                	js     0x8d09
    8d05:	04 3c                	add    al,0x3c
    8d07:	44                   	inc    esp
    8d08:	84 84 44 3e 00 00 0c 	test   BYTE PTR [esp+eax*2+0xc00003e],al
    8d0f:	08 10                	or     BYTE PTR [eax],dl
    8d11:	00 00                	add    BYTE PTR [eax],al
    8d13:	10 10                	adc    BYTE PTR [eax],dl
    8d15:	10 10                	adc    BYTE PTR [eax],dl
    8d17:	10 10                	adc    BYTE PTR [eax],dl
    8d19:	10 10                	adc    BYTE PTR [eax],dl
    8d1b:	10 00                	adc    BYTE PTR [eax],al
    8d1d:	00 0c 08             	add    BYTE PTR [eax+ecx*1],cl
    8d20:	10 00                	adc    BYTE PTR [eax],al
    8d22:	00 38                	add    BYTE PTR [eax],bh
    8d24:	44                   	inc    esp
    8d25:	82 82 82 82 82 44 38 	add    BYTE PTR [edx+0x44828282],0x38
    8d2c:	00 00                	add    BYTE PTR [eax],al
    8d2e:	0c 08                	or     al,0x8
    8d30:	10 00                	adc    BYTE PTR [eax],al
    8d32:	00 82 82 82 82 82    	add    BYTE PTR [edx-0x7d7d7d7e],al
    8d38:	82 82 42 3e 00 00 00 	add    BYTE PTR [edx+0x3e42],0x0
    8d3f:	12 2a                	adc    ch,BYTE PTR [edx]
    8d41:	24 00                	and    al,0x0
    8d43:	f8                   	clc    
    8d44:	84 82 82 82 82 82    	test   BYTE PTR [edx-0x7d7d7d7e],al
    8d4a:	82 82 00 00 12 2a 24 	add    BYTE PTR [edx+0x2a120000],0x24
    8d51:	00 82 c2 c2 a2 92    	add    BYTE PTR [edx-0x6d5d3d3e],al
    8d57:	92                   	xchg   edx,eax
    8d58:	8a 86 86 82 00 00    	mov    al,BYTE PTR [esi+0x8286]
    8d5e:	00 00                	add    BYTE PTR [eax],al
    8d60:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    8d63:	04 3c                	add    al,0x3c
    8d65:	44                   	inc    esp
    8d66:	84 84 44 3e 00 fe 00 	test   BYTE PTR [esp+eax*2+0xfe003e],al
    8d6d:	00 00                	add    BYTE PTR [eax],al
    8d6f:	00 00                	add    BYTE PTR [eax],al
    8d71:	38 44 82 82          	cmp    BYTE PTR [edx+eax*4-0x7e],al
    8d75:	82 82 82 44 38 00 fe 	add    BYTE PTR [edx+0x384482],0xfe
    8d7c:	00 00                	add    BYTE PTR [eax],al
    8d7e:	00 10                	add    BYTE PTR [eax],dl
    8d80:	10 00                	adc    BYTE PTR [eax],al
    8d82:	00 10                	add    BYTE PTR [eax],dl
    8d84:	10 20                	adc    BYTE PTR [eax],ah
    8d86:	44                   	inc    esp
    8d87:	82 82 82 44 38 00 00 	add    BYTE PTR [edx+0x384482],0x0
	...
    8d96:	00 00                	add    BYTE PTR [eax],al
    8d98:	fe 80 80 80 00 00    	inc    BYTE PTR [eax+0x8080]
	...
    8da6:	00 00                	add    BYTE PTR [eax],al
    8da8:	fe 02                	inc    BYTE PTR [edx]
    8daa:	02 02                	add    al,BYTE PTR [edx]
    8dac:	00 00                	add    BYTE PTR [eax],al
    8dae:	00 10                	add    BYTE PTR [eax],dl
    8db0:	30 10                	xor    BYTE PTR [eax],dl
    8db2:	10 10                	adc    BYTE PTR [eax],dl
    8db4:	00 fe                	add    dh,bh
    8db6:	00 78 04             	add    BYTE PTR [eax+0x4],bh
    8db9:	38 40 7c             	cmp    BYTE PTR [eax+0x7c],al
    8dbc:	00 00                	add    BYTE PTR [eax],al
    8dbe:	00 10                	add    BYTE PTR [eax],dl
    8dc0:	30 10                	xor    BYTE PTR [eax],dl
    8dc2:	10 10                	adc    BYTE PTR [eax],dl
    8dc4:	00 fe                	add    dh,bh
    8dc6:	00 18                	add    BYTE PTR [eax],bl
    8dc8:	28 48 7c             	sub    BYTE PTR [eax+0x7c],cl
    8dcb:	08 00                	or     BYTE PTR [eax],al
    8dcd:	00 00                	add    BYTE PTR [eax],al
    8dcf:	10 10                	adc    BYTE PTR [eax],dl
    8dd1:	00 00                	add    BYTE PTR [eax],al
    8dd3:	10 10                	adc    BYTE PTR [eax],dl
    8dd5:	10 10                	adc    BYTE PTR [eax],dl
    8dd7:	10 10                	adc    BYTE PTR [eax],dl
    8dd9:	10 10                	adc    BYTE PTR [eax],dl
    8ddb:	10 00                	adc    BYTE PTR [eax],al
    8ddd:	00 00                	add    BYTE PTR [eax],al
    8ddf:	00 00                	add    BYTE PTR [eax],al
    8de1:	00 12                	add    BYTE PTR [edx],dl
    8de3:	24 48                	and    al,0x48
    8de5:	90                   	nop
    8de6:	90                   	nop
    8de7:	48                   	dec    eax
    8de8:	24 12                	and    al,0x12
	...
    8df2:	90                   	nop
    8df3:	48                   	dec    eax
    8df4:	24 12                	and    al,0x12
    8df6:	12 24 48             	adc    ah,BYTE PTR [eax+ecx*2]
    8df9:	90                   	nop
    8dfa:	00 00                	add    BYTE PTR [eax],al
    8dfc:	00 00                	add    BYTE PTR [eax],al
    8dfe:	11 44 11 44          	adc    DWORD PTR [ecx+edx*1+0x44],eax
    8e02:	11 44 11 44          	adc    DWORD PTR [ecx+edx*1+0x44],eax
    8e06:	11 44 11 44          	adc    DWORD PTR [ecx+edx*1+0x44],eax
    8e0a:	11 44 11 44          	adc    DWORD PTR [ecx+edx*1+0x44],eax
    8e0e:	55                   	push   ebp
    8e0f:	aa                   	stos   BYTE PTR es:[edi],al
    8e10:	55                   	push   ebp
    8e11:	aa                   	stos   BYTE PTR es:[edi],al
    8e12:	55                   	push   ebp
    8e13:	aa                   	stos   BYTE PTR es:[edi],al
    8e14:	55                   	push   ebp
    8e15:	aa                   	stos   BYTE PTR es:[edi],al
    8e16:	55                   	push   ebp
    8e17:	aa                   	stos   BYTE PTR es:[edi],al
    8e18:	55                   	push   ebp
    8e19:	aa                   	stos   BYTE PTR es:[edi],al
    8e1a:	55                   	push   ebp
    8e1b:	aa                   	stos   BYTE PTR es:[edi],al
    8e1c:	55                   	push   ebp
    8e1d:	aa                   	stos   BYTE PTR es:[edi],al
    8e1e:	77 dd                	ja     0x8dfd
    8e20:	77 dd                	ja     0x8dff
    8e22:	77 dd                	ja     0x8e01
    8e24:	77 dd                	ja     0x8e03
    8e26:	77 dd                	ja     0x8e05
    8e28:	77 dd                	ja     0x8e07
    8e2a:	77 dd                	ja     0x8e09
    8e2c:	77 dd                	ja     0x8e0b
    8e2e:	10 10                	adc    BYTE PTR [eax],dl
    8e30:	10 10                	adc    BYTE PTR [eax],dl
    8e32:	10 10                	adc    BYTE PTR [eax],dl
    8e34:	10 10                	adc    BYTE PTR [eax],dl
    8e36:	10 10                	adc    BYTE PTR [eax],dl
    8e38:	10 10                	adc    BYTE PTR [eax],dl
    8e3a:	10 10                	adc    BYTE PTR [eax],dl
    8e3c:	10 10                	adc    BYTE PTR [eax],dl
    8e3e:	10 10                	adc    BYTE PTR [eax],dl
    8e40:	10 10                	adc    BYTE PTR [eax],dl
    8e42:	10 10                	adc    BYTE PTR [eax],dl
    8e44:	10 f0                	adc    al,dh
    8e46:	10 10                	adc    BYTE PTR [eax],dl
    8e48:	10 10                	adc    BYTE PTR [eax],dl
    8e4a:	10 10                	adc    BYTE PTR [eax],dl
    8e4c:	10 10                	adc    BYTE PTR [eax],dl
    8e4e:	10 10                	adc    BYTE PTR [eax],dl
    8e50:	10 10                	adc    BYTE PTR [eax],dl
    8e52:	10 10                	adc    BYTE PTR [eax],dl
    8e54:	10 f0                	adc    al,dh
    8e56:	10 f0                	adc    al,dh
    8e58:	10 10                	adc    BYTE PTR [eax],dl
    8e5a:	10 10                	adc    BYTE PTR [eax],dl
    8e5c:	10 10                	adc    BYTE PTR [eax],dl
    8e5e:	14 14                	adc    al,0x14
    8e60:	14 14                	adc    al,0x14
    8e62:	14 14                	adc    al,0x14
    8e64:	14 f4                	adc    al,0xf4
    8e66:	14 14                	adc    al,0x14
    8e68:	14 14                	adc    al,0x14
    8e6a:	14 14                	adc    al,0x14
    8e6c:	14 14                	adc    al,0x14
    8e6e:	00 00                	add    BYTE PTR [eax],al
    8e70:	00 00                	add    BYTE PTR [eax],al
    8e72:	00 00                	add    BYTE PTR [eax],al
    8e74:	00 fc                	add    ah,bh
    8e76:	14 14                	adc    al,0x14
    8e78:	14 14                	adc    al,0x14
    8e7a:	14 14                	adc    al,0x14
    8e7c:	14 14                	adc    al,0x14
    8e7e:	00 00                	add    BYTE PTR [eax],al
    8e80:	00 00                	add    BYTE PTR [eax],al
    8e82:	00 00                	add    BYTE PTR [eax],al
    8e84:	00 f0                	add    al,dh
    8e86:	10 f0                	adc    al,dh
    8e88:	10 10                	adc    BYTE PTR [eax],dl
    8e8a:	10 10                	adc    BYTE PTR [eax],dl
    8e8c:	10 10                	adc    BYTE PTR [eax],dl
    8e8e:	14 14                	adc    al,0x14
    8e90:	14 14                	adc    al,0x14
    8e92:	14 14                	adc    al,0x14
    8e94:	14 f4                	adc    al,0xf4
    8e96:	04 f4                	add    al,0xf4
    8e98:	14 14                	adc    al,0x14
    8e9a:	14 14                	adc    al,0x14
    8e9c:	14 14                	adc    al,0x14
    8e9e:	14 14                	adc    al,0x14
    8ea0:	14 14                	adc    al,0x14
    8ea2:	14 14                	adc    al,0x14
    8ea4:	14 14                	adc    al,0x14
    8ea6:	14 14                	adc    al,0x14
    8ea8:	14 14                	adc    al,0x14
    8eaa:	14 14                	adc    al,0x14
    8eac:	14 14                	adc    al,0x14
    8eae:	00 00                	add    BYTE PTR [eax],al
    8eb0:	00 00                	add    BYTE PTR [eax],al
    8eb2:	00 00                	add    BYTE PTR [eax],al
    8eb4:	00 fc                	add    ah,bh
    8eb6:	04 f4                	add    al,0xf4
    8eb8:	14 14                	adc    al,0x14
    8eba:	14 14                	adc    al,0x14
    8ebc:	14 14                	adc    al,0x14
    8ebe:	14 14                	adc    al,0x14
    8ec0:	14 14                	adc    al,0x14
    8ec2:	14 14                	adc    al,0x14
    8ec4:	14 f4                	adc    al,0xf4
    8ec6:	04 fc                	add    al,0xfc
    8ec8:	00 00                	add    BYTE PTR [eax],al
    8eca:	00 00                	add    BYTE PTR [eax],al
    8ecc:	00 00                	add    BYTE PTR [eax],al
    8ece:	14 14                	adc    al,0x14
    8ed0:	14 14                	adc    al,0x14
    8ed2:	14 14                	adc    al,0x14
    8ed4:	14 fc                	adc    al,0xfc
	...
    8ede:	10 10                	adc    BYTE PTR [eax],dl
    8ee0:	10 10                	adc    BYTE PTR [eax],dl
    8ee2:	10 10                	adc    BYTE PTR [eax],dl
    8ee4:	10 f0                	adc    al,dh
    8ee6:	10 f0                	adc    al,dh
	...
    8ef4:	00 f0                	add    al,dh
    8ef6:	10 10                	adc    BYTE PTR [eax],dl
    8ef8:	10 10                	adc    BYTE PTR [eax],dl
    8efa:	10 10                	adc    BYTE PTR [eax],dl
    8efc:	10 10                	adc    BYTE PTR [eax],dl
    8efe:	10 10                	adc    BYTE PTR [eax],dl
    8f00:	10 10                	adc    BYTE PTR [eax],dl
    8f02:	10 10                	adc    BYTE PTR [eax],dl
    8f04:	10 1f                	adc    BYTE PTR [edi],bl
	...
    8f0e:	10 10                	adc    BYTE PTR [eax],dl
    8f10:	10 10                	adc    BYTE PTR [eax],dl
    8f12:	10 10                	adc    BYTE PTR [eax],dl
    8f14:	10 ff                	adc    bh,bh
	...
    8f22:	00 00                	add    BYTE PTR [eax],al
    8f24:	00 ff                	add    bh,bh
    8f26:	10 10                	adc    BYTE PTR [eax],dl
    8f28:	10 10                	adc    BYTE PTR [eax],dl
    8f2a:	10 10                	adc    BYTE PTR [eax],dl
    8f2c:	10 10                	adc    BYTE PTR [eax],dl
    8f2e:	10 10                	adc    BYTE PTR [eax],dl
    8f30:	10 10                	adc    BYTE PTR [eax],dl
    8f32:	10 10                	adc    BYTE PTR [eax],dl
    8f34:	10 1f                	adc    BYTE PTR [edi],bl
    8f36:	10 10                	adc    BYTE PTR [eax],dl
    8f38:	10 10                	adc    BYTE PTR [eax],dl
    8f3a:	10 10                	adc    BYTE PTR [eax],dl
    8f3c:	10 10                	adc    BYTE PTR [eax],dl
    8f3e:	00 00                	add    BYTE PTR [eax],al
    8f40:	00 00                	add    BYTE PTR [eax],al
    8f42:	00 00                	add    BYTE PTR [eax],al
    8f44:	00 ff                	add    bh,bh
	...
    8f4e:	10 10                	adc    BYTE PTR [eax],dl
    8f50:	10 10                	adc    BYTE PTR [eax],dl
    8f52:	10 10                	adc    BYTE PTR [eax],dl
    8f54:	10 ff                	adc    bh,bh
    8f56:	10 10                	adc    BYTE PTR [eax],dl
    8f58:	10 10                	adc    BYTE PTR [eax],dl
    8f5a:	10 10                	adc    BYTE PTR [eax],dl
    8f5c:	10 10                	adc    BYTE PTR [eax],dl
    8f5e:	10 10                	adc    BYTE PTR [eax],dl
    8f60:	10 10                	adc    BYTE PTR [eax],dl
    8f62:	10 10                	adc    BYTE PTR [eax],dl
    8f64:	10 1f                	adc    BYTE PTR [edi],bl
    8f66:	10 1f                	adc    BYTE PTR [edi],bl
    8f68:	10 10                	adc    BYTE PTR [eax],dl
    8f6a:	10 10                	adc    BYTE PTR [eax],dl
    8f6c:	10 10                	adc    BYTE PTR [eax],dl
    8f6e:	14 14                	adc    al,0x14
    8f70:	14 14                	adc    al,0x14
    8f72:	14 14                	adc    al,0x14
    8f74:	14 17                	adc    al,0x17
    8f76:	14 14                	adc    al,0x14
    8f78:	14 14                	adc    al,0x14
    8f7a:	14 14                	adc    al,0x14
    8f7c:	14 14                	adc    al,0x14
    8f7e:	14 14                	adc    al,0x14
    8f80:	14 14                	adc    al,0x14
    8f82:	14 14                	adc    al,0x14
    8f84:	14 17                	adc    al,0x17
    8f86:	10 1f                	adc    BYTE PTR [edi],bl
	...
    8f94:	00 1f                	add    BYTE PTR [edi],bl
    8f96:	10 17                	adc    BYTE PTR [edi],dl
    8f98:	14 14                	adc    al,0x14
    8f9a:	14 14                	adc    al,0x14
    8f9c:	14 14                	adc    al,0x14
    8f9e:	14 14                	adc    al,0x14
    8fa0:	14 14                	adc    al,0x14
    8fa2:	14 14                	adc    al,0x14
    8fa4:	14 f7                	adc    al,0xf7
    8fa6:	00 ff                	add    bh,bh
	...
    8fb4:	00 ff                	add    bh,bh
    8fb6:	00 f7                	add    bh,dh
    8fb8:	14 14                	adc    al,0x14
    8fba:	14 14                	adc    al,0x14
    8fbc:	14 14                	adc    al,0x14
    8fbe:	14 14                	adc    al,0x14
    8fc0:	14 14                	adc    al,0x14
    8fc2:	14 14                	adc    al,0x14
    8fc4:	14 17                	adc    al,0x17
    8fc6:	10 17                	adc    BYTE PTR [edi],dl
    8fc8:	14 14                	adc    al,0x14
    8fca:	14 14                	adc    al,0x14
    8fcc:	14 14                	adc    al,0x14
    8fce:	00 00                	add    BYTE PTR [eax],al
    8fd0:	00 00                	add    BYTE PTR [eax],al
    8fd2:	00 00                	add    BYTE PTR [eax],al
    8fd4:	00 ff                	add    bh,bh
    8fd6:	00 ff                	add    bh,bh
    8fd8:	00 00                	add    BYTE PTR [eax],al
    8fda:	00 00                	add    BYTE PTR [eax],al
    8fdc:	00 00                	add    BYTE PTR [eax],al
    8fde:	14 14                	adc    al,0x14
    8fe0:	14 14                	adc    al,0x14
    8fe2:	14 14                	adc    al,0x14
    8fe4:	14 f7                	adc    al,0xf7
    8fe6:	00 f7                	add    bh,dh
    8fe8:	14 14                	adc    al,0x14
    8fea:	14 14                	adc    al,0x14
    8fec:	14 14                	adc    al,0x14
    8fee:	10 10                	adc    BYTE PTR [eax],dl
    8ff0:	10 10                	adc    BYTE PTR [eax],dl
    8ff2:	10 10                	adc    BYTE PTR [eax],dl
    8ff4:	10 ff                	adc    bh,bh
    8ff6:	00 ff                	add    bh,bh
    8ff8:	00 00                	add    BYTE PTR [eax],al
    8ffa:	00 00                	add    BYTE PTR [eax],al
    8ffc:	00 00                	add    BYTE PTR [eax],al
    8ffe:	14 14                	adc    al,0x14
    9000:	14 14                	adc    al,0x14
    9002:	14 14                	adc    al,0x14
    9004:	14 ff                	adc    al,0xff
	...
    9012:	00 00                	add    BYTE PTR [eax],al
    9014:	00 ff                	add    bh,bh
    9016:	00 ff                	add    bh,bh
    9018:	10 10                	adc    BYTE PTR [eax],dl
    901a:	10 10                	adc    BYTE PTR [eax],dl
    901c:	10 10                	adc    BYTE PTR [eax],dl
    901e:	00 00                	add    BYTE PTR [eax],al
    9020:	00 00                	add    BYTE PTR [eax],al
    9022:	00 00                	add    BYTE PTR [eax],al
    9024:	00 ff                	add    bh,bh
    9026:	14 14                	adc    al,0x14
    9028:	14 14                	adc    al,0x14
    902a:	14 14                	adc    al,0x14
    902c:	14 14                	adc    al,0x14
    902e:	14 14                	adc    al,0x14
    9030:	14 14                	adc    al,0x14
    9032:	14 14                	adc    al,0x14
    9034:	14 1f                	adc    al,0x1f
	...
    903e:	10 10                	adc    BYTE PTR [eax],dl
    9040:	10 10                	adc    BYTE PTR [eax],dl
    9042:	10 10                	adc    BYTE PTR [eax],dl
    9044:	10 1f                	adc    BYTE PTR [edi],bl
    9046:	10 1f                	adc    BYTE PTR [edi],bl
	...
    9054:	00 1f                	add    BYTE PTR [edi],bl
    9056:	10 1f                	adc    BYTE PTR [edi],bl
    9058:	10 10                	adc    BYTE PTR [eax],dl
    905a:	10 10                	adc    BYTE PTR [eax],dl
    905c:	10 10                	adc    BYTE PTR [eax],dl
    905e:	00 00                	add    BYTE PTR [eax],al
    9060:	00 00                	add    BYTE PTR [eax],al
    9062:	00 00                	add    BYTE PTR [eax],al
    9064:	00 1f                	add    BYTE PTR [edi],bl
    9066:	14 14                	adc    al,0x14
    9068:	14 14                	adc    al,0x14
    906a:	14 14                	adc    al,0x14
    906c:	14 14                	adc    al,0x14
    906e:	14 14                	adc    al,0x14
    9070:	14 14                	adc    al,0x14
    9072:	14 14                	adc    al,0x14
    9074:	14 f7                	adc    al,0xf7
    9076:	14 14                	adc    al,0x14
    9078:	14 14                	adc    al,0x14
    907a:	14 14                	adc    al,0x14
    907c:	14 14                	adc    al,0x14
    907e:	10 10                	adc    BYTE PTR [eax],dl
    9080:	10 10                	adc    BYTE PTR [eax],dl
    9082:	10 10                	adc    BYTE PTR [eax],dl
    9084:	10 ff                	adc    bh,bh
    9086:	10 ff                	adc    bh,bh
    9088:	10 10                	adc    BYTE PTR [eax],dl
    908a:	10 10                	adc    BYTE PTR [eax],dl
    908c:	10 10                	adc    BYTE PTR [eax],dl
    908e:	10 10                	adc    BYTE PTR [eax],dl
    9090:	10 10                	adc    BYTE PTR [eax],dl
    9092:	10 10                	adc    BYTE PTR [eax],dl
    9094:	10 f0                	adc    al,dh
	...
    90a2:	00 00                	add    BYTE PTR [eax],al
    90a4:	00 1f                	add    BYTE PTR [edi],bl
    90a6:	10 10                	adc    BYTE PTR [eax],dl
    90a8:	10 10                	adc    BYTE PTR [eax],dl
    90aa:	10 10                	adc    BYTE PTR [eax],dl
    90ac:	10 10                	adc    BYTE PTR [eax],dl
    90ae:	ff                   	(bad)  
    90af:	ff                   	(bad)  
    90b0:	ff                   	(bad)  
    90b1:	ff                   	(bad)  
    90b2:	ff                   	(bad)  
    90b3:	ff                   	(bad)  
    90b4:	ff                   	(bad)  
    90b5:	ff                   	(bad)  
    90b6:	ff                   	(bad)  
    90b7:	ff                   	(bad)  
    90b8:	ff                   	(bad)  
    90b9:	ff                   	(bad)  
    90ba:	ff                   	(bad)  
    90bb:	ff                   	(bad)  
    90bc:	ff                   	(bad)  
    90bd:	ff 00                	inc    DWORD PTR [eax]
    90bf:	00 00                	add    BYTE PTR [eax],al
    90c1:	00 00                	add    BYTE PTR [eax],al
    90c3:	00 00                	add    BYTE PTR [eax],al
    90c5:	00 ff                	add    bh,bh
    90c7:	ff                   	(bad)  
    90c8:	ff                   	(bad)  
    90c9:	ff                   	(bad)  
    90ca:	ff                   	(bad)  
    90cb:	ff                   	(bad)  
    90cc:	ff                   	(bad)  
    90cd:	ff f0                	push   eax
    90cf:	f0 f0 f0 f0 f0 f0 f0 	lock lock lock lock lock lock lock lock lock lock lock lock lock lock
    90d6:	f0 f0 f0 f0 f0 f0 f0 
    90dd:	f0 0f                	lock (bad) 
    90df:	0f                   	(bad)  
    90e0:	0f                   	(bad)  
    90e1:	0f                   	(bad)  
    90e2:	0f                   	(bad)  
    90e3:	0f                   	(bad)  
    90e4:	0f                   	(bad)  
    90e5:	0f                   	(bad)  
    90e6:	0f                   	(bad)  
    90e7:	0f                   	(bad)  
    90e8:	0f                   	(bad)  
    90e9:	0f                   	(bad)  
    90ea:	0f                   	(bad)  
    90eb:	0f                   	(bad)  
    90ec:	0f                   	(bad)  
    90ed:	0f ff ff             	ud0    edi,edi
    90f0:	ff                   	(bad)  
    90f1:	ff                   	(bad)  
    90f2:	ff                   	(bad)  
    90f3:	ff                   	(bad)  
    90f4:	ff                   	(bad)  
    90f5:	ff 00                	inc    DWORD PTR [eax]
	...
    92ff:	00 31                	add    BYTE PTR [ecx],dh
    9301:	32 33                	xor    dh,BYTE PTR [ebx]
    9303:	34 35                	xor    al,0x35
    9305:	36 37                	ss aaa 
    9307:	38 39                	cmp    BYTE PTR [ecx],bh
    9309:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    930f:	57                   	push   edi
    9310:	45                   	inc    ebp
    9311:	52                   	push   edx
    9312:	54                   	push   esp
    9313:	59                   	pop    ecx
    9314:	55                   	push   ebp
    9315:	49                   	dec    ecx
    9316:	4f                   	dec    edi
    9317:	50                   	push   eax
    9318:	40                   	inc    eax
    9319:	5b                   	pop    ebx
    931a:	00 00                	add    BYTE PTR [eax],al
    931c:	41                   	inc    ecx
    931d:	53                   	push   ebx
    931e:	44                   	inc    esp
    931f:	46                   	inc    esi
    9320:	47                   	inc    edi
    9321:	48                   	dec    eax
    9322:	4a                   	dec    edx
    9323:	4b                   	dec    ebx
    9324:	4c                   	dec    esp
    9325:	3b 3a                	cmp    edi,DWORD PTR [edx]
    9327:	00 00                	add    BYTE PTR [eax],al
    9329:	5d                   	pop    ebp
    932a:	5a                   	pop    edx
    932b:	58                   	pop    eax
    932c:	43                   	inc    ebx
    932d:	56                   	push   esi
    932e:	42                   	inc    edx
    932f:	4e                   	dec    esi
    9330:	4d                   	dec    ebp
    9331:	2c 2e                	sub    al,0x2e
    9333:	2f                   	das    
    9334:	00 2a                	add    BYTE PTR [edx],ch
    9336:	00 20                	add    BYTE PTR [eax],ah
	...
    9344:	00 37                	add    BYTE PTR [edi],dh
    9346:	38 39                	cmp    BYTE PTR [ecx],bh
    9348:	2d 34 35 36 2b       	sub    eax,0x2b363534
    934d:	31 32                	xor    DWORD PTR [edx],esi
    934f:	33 30                	xor    esi,DWORD PTR [eax]
    9351:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    9360:	31 32                	xor    DWORD PTR [edx],esi
    9362:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    9369:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    936f:	57                   	push   edi
    9370:	45                   	inc    ebp
    9371:	52                   	push   edx
    9372:	54                   	push   esp
    9373:	59                   	pop    ecx
    9374:	55                   	push   ebp
    9375:	49                   	dec    ecx
    9376:	4f                   	dec    edi
    9377:	50                   	push   eax
    9378:	40                   	inc    eax
    9379:	5b                   	pop    ebx
    937a:	00 00                	add    BYTE PTR [eax],al
    937c:	41                   	inc    ecx
    937d:	53                   	push   ebx
    937e:	44                   	inc    esp
    937f:	46                   	inc    esi
    9380:	47                   	inc    edi
    9381:	48                   	dec    eax
    9382:	4a                   	dec    edx
    9383:	4b                   	dec    ebx
    9384:	4c                   	dec    esp
    9385:	3b 3a                	cmp    edi,DWORD PTR [edx]
    9387:	00 00                	add    BYTE PTR [eax],al
    9389:	5d                   	pop    ebp
    938a:	5a                   	pop    edx
    938b:	58                   	pop    eax
    938c:	43                   	inc    ebx
    938d:	56                   	push   esi
    938e:	42                   	inc    edx
    938f:	4e                   	dec    esi
    9390:	4d                   	dec    ebp
    9391:	2c 2e                	sub    al,0x2e
    9393:	2f                   	das    
    9394:	00 2a                	add    BYTE PTR [edx],ch
    9396:	00 20                	add    BYTE PTR [eax],ah
	...
    93a4:	00 37                	add    BYTE PTR [edi],dh
    93a6:	38 39                	cmp    BYTE PTR [ecx],bh
    93a8:	2d 34 35 36 2b       	sub    eax,0x2b363534
    93ad:	31 32                	xor    DWORD PTR [edx],esi
    93af:	33 30                	xor    esi,DWORD PTR [eax]
    93b1:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    93c0:	31 32                	xor    DWORD PTR [edx],esi
    93c2:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    93c9:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    93cf:	57                   	push   edi
    93d0:	45                   	inc    ebp
    93d1:	52                   	push   edx
    93d2:	54                   	push   esp
    93d3:	59                   	pop    ecx
    93d4:	55                   	push   ebp
    93d5:	49                   	dec    ecx
    93d6:	4f                   	dec    edi
    93d7:	50                   	push   eax
    93d8:	40                   	inc    eax
    93d9:	5b                   	pop    ebx
    93da:	00 00                	add    BYTE PTR [eax],al
    93dc:	41                   	inc    ecx
    93dd:	53                   	push   ebx
    93de:	44                   	inc    esp
    93df:	46                   	inc    esi
    93e0:	47                   	inc    edi
    93e1:	48                   	dec    eax
    93e2:	4a                   	dec    edx
    93e3:	4b                   	dec    ebx
    93e4:	4c                   	dec    esp
    93e5:	3b 3a                	cmp    edi,DWORD PTR [edx]
    93e7:	00 00                	add    BYTE PTR [eax],al
    93e9:	5d                   	pop    ebp
    93ea:	5a                   	pop    edx
    93eb:	58                   	pop    eax
    93ec:	43                   	inc    ebx
    93ed:	56                   	push   esi
    93ee:	42                   	inc    edx
    93ef:	4e                   	dec    esi
    93f0:	4d                   	dec    ebp
    93f1:	2c 2e                	sub    al,0x2e
    93f3:	2f                   	das    
    93f4:	00 2a                	add    BYTE PTR [edx],ch
    93f6:	00 20                	add    BYTE PTR [eax],ah
	...
    9404:	00 37                	add    BYTE PTR [edi],dh
    9406:	38 39                	cmp    BYTE PTR [ecx],bh
    9408:	2d 34 35 36 2b       	sub    eax,0x2b363534
    940d:	31 32                	xor    DWORD PTR [edx],esi
    940f:	33 30                	xor    esi,DWORD PTR [eax]
    9411:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    9420:	31 32                	xor    DWORD PTR [edx],esi
    9422:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    9429:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    942f:	57                   	push   edi
    9430:	45                   	inc    ebp
    9431:	52                   	push   edx
    9432:	54                   	push   esp
    9433:	59                   	pop    ecx
    9434:	55                   	push   ebp
    9435:	49                   	dec    ecx
    9436:	4f                   	dec    edi
    9437:	50                   	push   eax
    9438:	40                   	inc    eax
    9439:	5b                   	pop    ebx
    943a:	00 00                	add    BYTE PTR [eax],al
    943c:	41                   	inc    ecx
    943d:	53                   	push   ebx
    943e:	44                   	inc    esp
    943f:	46                   	inc    esi
    9440:	47                   	inc    edi
    9441:	48                   	dec    eax
    9442:	4a                   	dec    edx
    9443:	4b                   	dec    ebx
    9444:	4c                   	dec    esp
    9445:	3b 3a                	cmp    edi,DWORD PTR [edx]
    9447:	00 00                	add    BYTE PTR [eax],al
    9449:	5d                   	pop    ebp
    944a:	5a                   	pop    edx
    944b:	58                   	pop    eax
    944c:	43                   	inc    ebx
    944d:	56                   	push   esi
    944e:	42                   	inc    edx
    944f:	4e                   	dec    esi
    9450:	4d                   	dec    ebp
    9451:	2c 2e                	sub    al,0x2e
    9453:	2f                   	das    
    9454:	00 2a                	add    BYTE PTR [edx],ch
    9456:	00 20                	add    BYTE PTR [eax],ah
	...
    9464:	00 37                	add    BYTE PTR [edi],dh
    9466:	38 39                	cmp    BYTE PTR [ecx],bh
    9468:	2d 34 35 36 2b       	sub    eax,0x2b363534
    946d:	31 32                	xor    DWORD PTR [edx],esi
    946f:	33 30                	xor    esi,DWORD PTR [eax]
    9471:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    9480:	31 32                	xor    DWORD PTR [edx],esi
    9482:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    9489:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    948f:	57                   	push   edi
    9490:	45                   	inc    ebp
    9491:	52                   	push   edx
    9492:	54                   	push   esp
    9493:	59                   	pop    ecx
    9494:	55                   	push   ebp
    9495:	49                   	dec    ecx
    9496:	4f                   	dec    edi
    9497:	50                   	push   eax
    9498:	40                   	inc    eax
    9499:	5b                   	pop    ebx
    949a:	00 00                	add    BYTE PTR [eax],al
    949c:	41                   	inc    ecx
    949d:	53                   	push   ebx
    949e:	44                   	inc    esp
    949f:	46                   	inc    esi
    94a0:	47                   	inc    edi
    94a1:	48                   	dec    eax
    94a2:	4a                   	dec    edx
    94a3:	4b                   	dec    ebx
    94a4:	4c                   	dec    esp
    94a5:	3b 3a                	cmp    edi,DWORD PTR [edx]
    94a7:	00 00                	add    BYTE PTR [eax],al
    94a9:	5d                   	pop    ebp
    94aa:	5a                   	pop    edx
    94ab:	58                   	pop    eax
    94ac:	43                   	inc    ebx
    94ad:	56                   	push   esi
    94ae:	42                   	inc    edx
    94af:	4e                   	dec    esi
    94b0:	4d                   	dec    ebp
    94b1:	2c 2e                	sub    al,0x2e
    94b3:	2f                   	das    
    94b4:	00 2a                	add    BYTE PTR [edx],ch
    94b6:	00 20                	add    BYTE PTR [eax],ah
	...
    94c4:	00 37                	add    BYTE PTR [edi],dh
    94c6:	38 39                	cmp    BYTE PTR [ecx],bh
    94c8:	2d 34 35 36 2b       	sub    eax,0x2b363534
    94cd:	31 32                	xor    DWORD PTR [edx],esi
    94cf:	33 30                	xor    esi,DWORD PTR [eax]
    94d1:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    94e0:	31 32                	xor    DWORD PTR [edx],esi
    94e2:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    94e9:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    94ef:	57                   	push   edi
    94f0:	45                   	inc    ebp
    94f1:	52                   	push   edx
    94f2:	54                   	push   esp
    94f3:	59                   	pop    ecx
    94f4:	55                   	push   ebp
    94f5:	49                   	dec    ecx
    94f6:	4f                   	dec    edi
    94f7:	50                   	push   eax
    94f8:	40                   	inc    eax
    94f9:	5b                   	pop    ebx
    94fa:	00 00                	add    BYTE PTR [eax],al
    94fc:	41                   	inc    ecx
    94fd:	53                   	push   ebx
    94fe:	44                   	inc    esp
    94ff:	46                   	inc    esi
    9500:	47                   	inc    edi
    9501:	48                   	dec    eax
    9502:	4a                   	dec    edx
    9503:	4b                   	dec    ebx
    9504:	4c                   	dec    esp
    9505:	3b 3a                	cmp    edi,DWORD PTR [edx]
    9507:	00 00                	add    BYTE PTR [eax],al
    9509:	5d                   	pop    ebp
    950a:	5a                   	pop    edx
    950b:	58                   	pop    eax
    950c:	43                   	inc    ebx
    950d:	56                   	push   esi
    950e:	42                   	inc    edx
    950f:	4e                   	dec    esi
    9510:	4d                   	dec    ebp
    9511:	2c 2e                	sub    al,0x2e
    9513:	2f                   	das    
    9514:	00 2a                	add    BYTE PTR [edx],ch
    9516:	00 20                	add    BYTE PTR [eax],ah
	...
    9524:	00 37                	add    BYTE PTR [edi],dh
    9526:	38 39                	cmp    BYTE PTR [ecx],bh
    9528:	2d 34 35 36 2b       	sub    eax,0x2b363534
    952d:	31 32                	xor    DWORD PTR [edx],esi
    952f:	33 30                	xor    esi,DWORD PTR [eax]
    9531:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    9540:	31 32                	xor    DWORD PTR [edx],esi
    9542:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    9549:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    954f:	57                   	push   edi
    9550:	45                   	inc    ebp
    9551:	52                   	push   edx
    9552:	54                   	push   esp
    9553:	59                   	pop    ecx
    9554:	55                   	push   ebp
    9555:	49                   	dec    ecx
    9556:	4f                   	dec    edi
    9557:	50                   	push   eax
    9558:	40                   	inc    eax
    9559:	5b                   	pop    ebx
    955a:	00 00                	add    BYTE PTR [eax],al
    955c:	41                   	inc    ecx
    955d:	53                   	push   ebx
    955e:	44                   	inc    esp
    955f:	46                   	inc    esi
    9560:	47                   	inc    edi
    9561:	48                   	dec    eax
    9562:	4a                   	dec    edx
    9563:	4b                   	dec    ebx
    9564:	4c                   	dec    esp
    9565:	3b 3a                	cmp    edi,DWORD PTR [edx]
    9567:	00 00                	add    BYTE PTR [eax],al
    9569:	5d                   	pop    ebp
    956a:	5a                   	pop    edx
    956b:	58                   	pop    eax
    956c:	43                   	inc    ebx
    956d:	56                   	push   esi
    956e:	42                   	inc    edx
    956f:	4e                   	dec    esi
    9570:	4d                   	dec    ebp
    9571:	2c 2e                	sub    al,0x2e
    9573:	2f                   	das    
    9574:	00 2a                	add    BYTE PTR [edx],ch
    9576:	00 20                	add    BYTE PTR [eax],ah
	...
    9584:	00 37                	add    BYTE PTR [edi],dh
    9586:	38 39                	cmp    BYTE PTR [ecx],bh
    9588:	2d 34 35 36 2b       	sub    eax,0x2b363534
    958d:	31 32                	xor    DWORD PTR [edx],esi
    958f:	33 30                	xor    esi,DWORD PTR [eax]
    9591:	2e 00 00             	add    BYTE PTR cs:[eax],al
	...
    95a0:	31 32                	xor    DWORD PTR [edx],esi
    95a2:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
    95a9:	30 2d 5e 00 00 51    	xor    BYTE PTR ds:0x5100005e,ch
    95af:	57                   	push   edi
    95b0:	45                   	inc    ebp
    95b1:	52                   	push   edx
    95b2:	54                   	push   esp
    95b3:	59                   	pop    ecx
    95b4:	55                   	push   ebp
    95b5:	49                   	dec    ecx
    95b6:	4f                   	dec    edi
    95b7:	50                   	push   eax
    95b8:	40                   	inc    eax
    95b9:	5b                   	pop    ebx
    95ba:	00 00                	add    BYTE PTR [eax],al
    95bc:	41                   	inc    ecx
    95bd:	53                   	push   ebx
    95be:	44                   	inc    esp
    95bf:	46                   	inc    esi
    95c0:	47                   	inc    edi
    95c1:	48                   	dec    eax
    95c2:	4a                   	dec    edx
    95c3:	4b                   	dec    ebx
    95c4:	4c                   	dec    esp
    95c5:	3b 3a                	cmp    edi,DWORD PTR [edx]
    95c7:	00 00                	add    BYTE PTR [eax],al
    95c9:	5d                   	pop    ebp
    95ca:	5a                   	pop    edx
    95cb:	58                   	pop    eax
    95cc:	43                   	inc    ebx
    95cd:	56                   	push   esi
    95ce:	42                   	inc    edx
    95cf:	4e                   	dec    esi
    95d0:	4d                   	dec    ebp
    95d1:	2c 2e                	sub    al,0x2e
    95d3:	2f                   	das    
    95d4:	00 2a                	add    BYTE PTR [edx],ch
    95d6:	00 20                	add    BYTE PTR [eax],ah
	...
    95e4:	00 37                	add    BYTE PTR [edi],dh
    95e6:	38 39                	cmp    BYTE PTR [ecx],bh
    95e8:	2d 34 35 36 2b       	sub    eax,0x2b363534
    95ed:	31 32                	xor    DWORD PTR [edx],esi
    95ef:	33 30                	xor    esi,DWORD PTR [eax]
    95f1:	2e 25 64 00 3e 00    	cs and eax,0x3e0064
    95f7:	20 00                	and    BYTE PTR [eax],al
    95f9:	74 61                	je     0x965c
    95fb:	73 6b                	jae    0x9668
    95fd:	5f                   	pop    edi
    95fe:	61                   	popa   
    95ff:	00 63 6f             	add    BYTE PTR [ebx+0x6f],ah
    9602:	6e                   	outs   dx,BYTE PTR ds:[esi]
    9603:	73 6f                	jae    0x9674
    9605:	6c                   	ins    BYTE PTR es:[edi],dx
    9606:	65 00 28             	add    BYTE PTR gs:[eax],ch
    9609:	25 64 2c 20 25       	and    eax,0x25202c64
    960e:	64 29 00             	sub    DWORD PTR fs:[eax],eax
    9611:	6d                   	ins    DWORD PTR es:[edi],dx
    9612:	65 6d                	gs ins DWORD PTR es:[edi],dx
    9614:	6f                   	outs   dx,DWORD PTR ds:[esi]
    9615:	72 79                	jb     0x9690
    9617:	20 25 64 4d 42 20    	and    BYTE PTR ds:0x20424d64,ah
    961d:	20 20                	and    BYTE PTR [eax],ah
    961f:	66 72 65             	data16 jb 0x9687
    9622:	65 20 3a             	and    BYTE PTR gs:[edx],bh
    9625:	20 25 64 4b 42 00    	and    BYTE PTR ds:0x424b64,ah
    962b:	25 78 00 5b 6c       	and    eax,0x6c5b0078
    9630:	63 72 20             	arpl   WORD PTR [edx+0x20],si
    9633:	25 64 20 25 64       	and    eax,0x64252064
    9638:	5d                   	pop    ebp
	...
