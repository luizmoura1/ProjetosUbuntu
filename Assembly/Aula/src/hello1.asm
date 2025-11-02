; nasm	-f	elf32		prog_fnt.asm
; ld	-s	-m elf_i386	prog_obj.o	-o prog_exe
; ./prog_exe
; as linhas acima eram usadas antes de criar o makefile

; [label]	opcode	[operand,]	[; comment]
; Nome: hello1.asm
; Programa: Manipulacao de Texto - Capitulo 1 (Assembly32)
; Ambiente: Ubuntu - nasm
%include 'library32.inc'
	
section	.text
	global	_start
	
_start:					; ssize_t write(int fd=STD_OUT, const void *buf=MSG, size_t count=TMN)
	mov	eax,	SYS_WRITE	; return
	mov	ebx,	STD_OUT		; arg0
	mov	ecx,	MSG		; arg1
	mov	edx,	TMN		; arg2
	int	SYS_CALL
	
exit:					; void exit(int status=RET_EXIT)
	mov	eax, 	SYS_EXIT	
	mov	ebx, 	RET_EXIT	; xor	ebx,	ebx
	int	SYS_CALL
	
section	.data
	MSG	db	'Oi, mundo!', LF
	TMN	equ	$ - MSG

