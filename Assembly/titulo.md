; nasm	-f	elf|32|		elf64	prog_fnt.asm			; montagem
; ld	|-s|	-m elf_i386		prog_obj.o	-o prog_exe	; linkedição
; ./prog_exe

; [label]	opcode	[operand,]		[;comment]

; arg1	arg2	arg3	arg4	arg5
; ecx	edx	esi	edi	ebp


| 	| 	| destination	| 	| source|
 
| mov	| 	| register	| 	| register |
| mov	| 	| register	| 	| immediate |
| mov	| type	| memory	| 	| immediate |

A seguinte instrução não é permitida: 
| mov	| 	| memory	| 	| memory |

Mas pode ser feita das seguintes formas combinadas:
| mov	| 	| register	| (type)| memory |
| mov	| (type)| memory	| 	| register |

