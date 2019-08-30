;Lincoln Cesar dos Reis Arantes
;Compilado no site: https://www.tutorialspoint.com/compile_assembly_online.php

section	.text
	global _start       ;must be declared for using gcc
_start:                     ;tell linker entry point
	mov	edx, len    ;message length
	mov	ecx, msg    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	
	mov	edx, len2    ;message length
	mov	ecx, msg2    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	;exit
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel


section	.data

msg	db	'Hello, world!',0xa	;our dear string
len	equ	$ - msg			;length of our dear string

msg2	db	'Hello, dia!',0xa	;our dear string
len2	equ	$ - msg2			;length of our dear string