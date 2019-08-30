;comparação cmp
;Lincoln Cesar dos Reis Arantes
;compilador https://www.tutorialspoint.com/compile_assembly_online.php

section	.text
	global _start       ;must be declared for using gcc
_start:   ;tell linker entry point


   ;chamada de escrita
	mov	edx, len    ;message length
	mov	ecx, msg    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	
	mov eax, 0x1
	mov ebx, 0x1
	
	;comparar
	cmp eax, ebx
	jne errada
	call igual
	
	
	
	
	errada:
	
	mov	edx, len3    ;message length
	mov	ecx, msg3    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
		;chamada de saída
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel
	
	
	
	
	igual:
	
	mov	edx, len2    ;message length
	mov	ecx, msg2    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
			;chamada de saída
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel


section	.data

msg	db	'Resultado: ',0xa	;our dear string
len	equ	$ - msg			;length of our dear string


msg2	db	'Igual',0xa	;our dear string
len2	equ	$ - msg2			;length of our dear string

msg3	db	'não Igual',0xa	;our dear string
len3	equ	$ - msg3			;length of our dear string