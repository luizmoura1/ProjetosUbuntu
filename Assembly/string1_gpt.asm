; string1.asm -- dword variable, print "Olá, " + nome on same line, then LF
bits 32

section .data
    saudacao db "Olá, "      ; sem LF aqui
    tmn      equ $ - saudacao
    LF       db 0x0A         ; LF impresso separadamente

    SYS_EXIT  equ 1
    SYS_WRITE equ 4
    STDOUT    equ 1

section .bss
    nome resd 1              ; 1 dword = 4 bytes (suficiente para "Bela")

section .text
global _start
_start:

    ; -------- Etapa 1: nome vazio --------
    mov dword [nome], 0          ; inicializa nome = 0

    ; imprimir "Olá, "  (sem LF)
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, saudacao
    mov edx, tmn
    int 0x80

    ; imprimir nome (0 bytes)
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, nome
    mov edx, 0
    int 0x80

    ; imprimir LF (encerra a linha)
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, LF
    mov edx, 1
    int 0x80

    ; -------- Etapa 2: "Ana" (atribuir antes de imprimir) --------
    mov dword [nome], 0x00616E41   ; escreve 'A' 'n' 'a' 0x00 (little-endian handled)

    ; imprimir "Olá, "
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, saudacao
    mov edx, tmn
    int 0x80

    ; imprimir nome ("Ana")
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, nome
    mov edx, 3
    int 0x80

    ; imprimir LF
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, LF
    mov edx, 1
    int 0x80

    ; -------- Etapa 3: "Bela" (atribuir antes de imprimir) --------
    mov dword [nome], 0x616C6542   ; escreve 'B' 'e' 'l' 'a'

    ; imprimir "Olá, "
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, saudacao
    mov edx, tmn
    int 0x80

    ; imprimir nome ("Bela")
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, nome
    mov edx, 4
    int 0x80

    ; imprimir LF
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, LF
    mov edx, 1
    int 0x80

    ; -------- exit --------
    mov eax, SYS_EXIT
    xor ebx, ebx
    int 0x80

