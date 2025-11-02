; library32.inc - Biblioteca com constantes
LF		equ	0x0A	; line feed
NULL		equ	0x00	; terminador nulo estilo C
CR		equ	0x0D	; carriage return (só para Windows, antes de LF)
; eax (return)
SYS_EXIT    	equ	0x01	; chamada para finalizar
SYS_READ	equ	0x03	; operação de leitura
SYS_WRITE	equ	0x04	; operação de escrita

SYS_CALL	equ	0x80	; envia informação ao SO
; ebx (arg0)
STD_IN		equ	0x00	; entrada padrão
STD_OUT		equ	0x01	; saída padrão
RET_EXIT	equ	0x00	; operação com sucesso

