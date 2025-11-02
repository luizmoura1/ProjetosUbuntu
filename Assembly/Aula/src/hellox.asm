; Referência: Aula 2 Assembly 32
; Objetivo: ler do teclado e escrever na tela
; Ambiente: Ubuntu - nasm
; make hellox.asm
; [label] opcode [operand,] [; comment]

%include "library32.inc"
section	.data
PROMPT		db	"Informe o nome: ", LF
LEN_PROMPT	equ 	$ - PROMPT

section .bss
NOME		resb	32 ; ou 128 ?

section .text
	global _start
_start:
	mov	eax, SYS_WRITE
	mov	ebx, STD_OUT
	mov	ecx, PROMPT
	mov	edx, LEN_PROMPT
	int	SYS_CALL

	mov	eax, SYS_READ
	mov	ebx, STD_IN
	mov	ecx, NOME
	mov	edx, 32
	int	SYS_CALL

	mov	eax, SYS_WRITE
	mov	ebx, STD_OUT
	mov	ecx, NOME
	;mov	edx, 32	*
	;mov	edx, eax	*
	int	SYS_CALL

	mov	eax, SYS_EXIT
	xor	ebx, ebx
	int	SYS_CALL

; * número de bytes lidos retornado por SYS_READ e já contido em eax após a leitura???
