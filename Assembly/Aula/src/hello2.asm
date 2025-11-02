; Referência: Aula 2 Assembly 32
; Objetivo: ler do teclado e escrever na tela
; Ambiente: Ubuntu - nasm
; make hello2.asm
; [label]	opcode	[operand,]	[; comment]

%include "library32.inc"

section	.data
PROMPT		db	"Informe o nome: ", LF	; se tirar LF, a inserção do nome será na mesma linha
LEN_PROMPT	equ	$ - PROMPT

section	.bss
NOME		resb	32

section	.text
		global	_start
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
		mov	edx, eax	; mov	edx, 32 não precisa porque eax já contém o número de bytes lidos por SYS_READ
		int	SYS_CALL
		
    		mov	eax, SYS_EXIT
    		xor	ebx, ebx
    		int	SYS_CALL
    		
