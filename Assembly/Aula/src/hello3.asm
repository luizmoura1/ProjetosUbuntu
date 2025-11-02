; Referência: Aula 2 Assembly 32
; Objetivo: ler do teclado e escrever na tela justapondo a saudação
; Ambiente: Ubuntu - nasm
; make hello3.asm
; [label]	opcode	[operand,]	[; comment]

%include "library32.inc"

section .data
PROMPT		db	"Digite seu nome: ", LF
LEN_PROMPT	equ	$ - PROMPT
SAUDACAO	db	"Oi, "
LEN_SAUDACAO	equ	$ - SAUDACAO

section .bss
NOME		resb	32

section .text
	global _start
_start:
    					; exibir prompt
    		mov	eax, SYS_WRITE
    		mov	ebx, STD_OUT
    		mov	ecx, PROMPT
    		mov	edx, LEN_PROMPT
    		int	SYS_CALL

    					; ler input do usuário
    		mov	eax, SYS_READ
    		mov	ebx, STD_IN
    		mov	ecx, NOME
    		mov	edx, 32
    		int	SYS_CALL

    					; exibir saudação (constante)
    		mov	eax, SYS_WRITE
    		mov	ebx, STD_OUT
    		mov	ecx, SAUDACAO
    		mov	edx, LEN_SAUDACAO
    		int SYS_CALL

    					; exibir valor lido (justaposição)
    		mov 	eax, SYS_WRITE
    		mov 	ebx, STD_OUT
    		mov 	ecx, NOME
    		mov	edx, 32
    		int SYS_CALL

    					; finalizar programa
    		mov	eax, SYS_EXIT
    		xor	ebx, ebx
    		int	SYS_CALL

