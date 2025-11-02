; Programa: Manipulacao de Texto - Capitulo 1 (Assembly32)
; Ambiente: Ubuntu - nasm
	
section	.text
	global	_start
	
_start:
	mov	eax,	0x04
	mov	ebx,	0x01
	mov	ecx,	MSG
	mov	edx,	TMN
	int	0x80
	
exit:
	mov	eax, 	0x01	
	xor	ebx,	ebx
	int	0x80
	
section	.data
	MSG	db	'Oi, mundo!', 0x0A
	TMN	equ	$ - MSG

