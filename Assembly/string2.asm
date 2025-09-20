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
    		mov	dword [nome], 0x00000000	; poderia ser	mov dword [nome], '\0' ou	mov dword [nome], '\x00'   	
						; Imprime "Olá, "    
    		mov 	ecx, saudacao		; nome da variável ou da constante	- argumento 1
    		mov 	edx, tmn		; número de bytes			- argumento 2
    		call	print
						; imprime ""
    		mov	edx, 0			; número de bytes			- argumento 2
    		mov	ecx, nome		; nome da variável ou da constante	- argumento 1
    		call	print
						; imprime "!"
    		mov	ecx, excl
    		mov	edx, 1
    		call	print
						; imprime LF
    		mov	ecx, LF
    		mov	edx, 1
    		call	print
						; Etapa 2: Inicializa; nome="Ana"
    		mov	dword [nome], 0x00616E41	; poderia ser	mov dword [nome], 'Ana\0' ou	mov dword [nome], 'Ana\x00'
						; Imprime "Olá, "    		
    		mov	ecx, saudacao		; nome da variável ou da constante	- argumento 1
    		mov	edx, tmn		; número de bytes			- argumento 2
    		call	print
						; imprime "Ana"
    		mov	edx, 3			; número de bytes 			- argumento 2
    		mov	ecx, nome		; nome da variável ou da constante	- argumento 1
    		call	print
						; imprime "!"
    		mov	ecx, excl
    		mov	edx, 1
    		call	print
						; imprime LF
    		mov	ecx, LF
    		mov	edx, 1
    		call	print
						; Etapa 3: Atribui; nome="Bela"
    		mov	dword [nome], 0x616C6542	; poderia ser	mov dword [nome], 'Bela'
						; Imprime "Olá, "    
    		mov	ecx, saudacao		; nome da variável ou da constante	- argumento 1
    		mov	edx, tmn		; número de bytes			- argumento 2
    		call	print
						; imprime "Bela"    		
    		mov	edx, 4			; número de bytes			- argumento 2
    		mov	ecx, nome		; nome da variável ou da constante	- argumento 1
    		call	print
						; imprime "!"
    		mov	ecx, excl
    		mov	edx, 1
    		call	print
						; imprime LF
    		mov	ecx, LF
    		mov	edx, 1
    		call	print
    						; Sai
    		mov	eax, SYS_EXIT 		; 0x01 ou 1
    		xor	ebx, ebx		; opcional para zerar argumento 0
    		int	SYS_CALL		; 0x80
    		
print:
    		mov	eax, SYS_WRITE		; 0x04 ou 4
    		mov	ebx, STDOUT		; 0x01 ou 1				- argumento 0
    		int	SYS_CALL		; 0x80
    		ret

