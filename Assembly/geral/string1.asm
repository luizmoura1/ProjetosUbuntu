; nasm -f elf32 prog.asm
; ld -s -m elf_i386 prog.o -o progr
; ./prog
; [label]	opcode	[operand,]		[;comment]

section .data
    saudacao	db	"Olá, "
    tmn		equ	$ - saudacao	
    LF		db	0x0A
    excl	db	0x21
    SYS_EXIT    equ	0x01		
    SYS_WRITE	equ	0x04		
    SYS_CALL	equ	0x80		
    STDOUT	equ	0x01		

section .bss
    nome	resd	1			; 1 dword = 4 bytes, suficiente para a maior string ("Bela")

section .text
    global _start

_start:
    						; Etapa 1: Não inicializa; nome=""
    		mov	dword [nome], 0x00000000	
						; Imprime "Olá, "    
    		mov 	eax, SYS_WRITE		; 0x04 ou 4
    		mov 	ebx, STDOUT		; 0x01 ou 1				- argumento 0
    		mov 	ecx, saudacao		; nome da variável ou da constante	- argumento 1
    		mov 	edx, tmn		; número de bytes			- argumento 2
    		int	SYS_CALL		; 0x80
						; imprime ""
    		mov	edx, 0			; número de bytes			- argumento 2
    		mov	ecx, nome		; nome da variável ou da constante	- argumento 1
    		mov	ebx, STDOUT		; 0x01 ou 1				- argumento 0
    		mov	eax, SYS_WRITE		; 0x04 ou 4
    		int	SYS_CALL		; 0x80
						; imprime "!"
    		mov	eax, SYS_WRITE
    		mov	ebx, STDOUT
    		mov	ecx, excl
    		mov	edx, 1
    		int	SYS_CALL
						; imprime LF
    		mov	eax, SYS_WRITE
    		mov	ebx, STDOUT
    		mov	ecx, LF
    		mov	edx, 1
    		int	SYS_CALL
						; Etapa 2: Inicializa; nome="Ana"
    		mov	dword [nome], 0x00616E41
						; Imprime "Olá, "    		
    		mov	eax, SYS_WRITE		; 0x04 ou 4
    		mov	ebx, STDOUT		; 0x01 ou 1				- argumento 0
    		mov	ecx, saudacao		; nome da variável ou da constante	- argumento 1
    		mov	edx, tmn		; número de bytes			- argumento 2
    		int	SYS_CALL		; 0x80
						; imprime "Ana"
    		mov	edx, 3			; número de bytes 			- argumento 2
    		mov	ecx, nome		; nome da variável ou da constante	- argumento 1
    		mov	ebx, STDOUT		; 0x01 ou 1				- argumento 0
    		mov	eax, SYS_WRITE		; 0x04 ou 4
    		int	SYS_CALL		; 0x80
						; imprime "!"
    		mov	eax, SYS_WRITE
    		mov	ebx, STDOUT
    		mov	ecx, excl
    		mov	edx, 1
    		int	SYS_CALL
						; imprime LF
    		mov	eax, SYS_WRITE
    		mov	ebx, STDOUT
    		mov	ecx, LF
    		mov	edx, 1
    		int	SYS_CALL
						; Etapa 3: Atribui; nome="Bela"
    		mov	dword [nome], 0x616C6542
						; Imprime "Olá, "    
    		mov	eax, SYS_WRITE		; 0x04 ou 4
    		mov	ebx, STDOUT		; 0x01 ou 1				- argumento 0
    		mov	ecx, saudacao		; nome da variável ou da constante	- argumento 1
    		mov	edx, tmn		; número de bytes			- argumento 2
    		int	SYS_CALL		; 0x80
						; imprime "Bela"    		
    		mov	edx, 4			; número de bytes			- argumento 2
    		mov	ecx, nome		; nome da variável ou da constante	- argumento 1
    		mov	ebx, STDOUT		; 0x01 ou 1				- argumento 0
    		mov	eax, SYS_WRITE		; 0x04 ou 4
    		int	SYS_CALL		; 0x80
						; imprime "!"
    		mov	eax, SYS_WRITE
    		mov	ebx, STDOUT
    		mov	ecx, excl
    		mov	edx, 1
    		int	SYS_CALL
						; imprime LF
    		mov	eax, SYS_WRITE
    		mov	ebx, STDOUT
    		mov	ecx, LF
    		mov	edx, 1
    		int	SYS_CALL
    						; Sai
    		mov	eax, SYS_EXIT 		; 0x01 ou 1
    		xor	ebx, ebx		; opcional para zerar argumento 0
    		int	SYS_CALL		; 0x80

