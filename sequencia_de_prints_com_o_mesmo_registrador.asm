;Utilizando o mesmo registrador para uma sequencia de prints
;Lincoln Cesar dos Reis Arantes
;https://www.tutorialspoint.com/compile_assembly_online.php

section	.text
	global _start       ;must be declared for using gcc
_start:                     ;tell linker entry point
	mov	edx, len    ;message length
	mov	ecx, msg    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	
	mov eax, 'a' 
	mov [var], eax 
	
	
	mov	edx, 1    ;message length
	mov	ecx, var    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel

	
	mov eax, 'b' 
	mov [var], eax 

   mov	edx, 1    ;message length
	mov	ecx, var    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	mov eax, 'c' 
	mov [var], eax 

   mov	edx, 1    ;message length
	mov	ecx, var    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	
	mov eax, 'd' 
	mov [var], eax 

   mov	edx, 1    ;message length
	mov	ecx, var    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	mov eax, 'e' 
	mov [var], eax 

   mov	edx, 1    ;message length
	mov	ecx, var    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	
	
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel






section	.data

msg	db	'Sequencia de prints',0xa	;our dear string
len	equ	$ - msg			;length of our dear string

section .bss

var resb 1