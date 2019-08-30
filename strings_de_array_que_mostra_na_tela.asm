;Strings de array que mostra na tela
;Lincoln Cesar dos Reis Arantes
;https://www.tutorialspoint.com/compile_assembly_online.php

section	.text
	global _start       ;must be declared for using gcc
_start:          

;tell linker entry point
	mov	edx, len    ;message length
	mov	ecx, msg    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)
	int	0x80        ;call kernel
	
	
	; mostrando o resultado da na tela
   mov eax, 4      
   mov ebx, 1
   mov ecx, string5 ;string-configurar de acordo com necessidade  
   mov edx, 6        
   int 0x80
	
	
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel

section	.data


;array de strings
string1 db 'valor1'
string2 db 'valor2'
string3 db 'valor3'
string4 db 'valor4'
string5 db 'valor5'
string6 db 'valor6'
string7 db 'valor7'
string8 db 'valor8'
string9 db 'valor9'


msg	db	'String de array acessada:',0xa	;our dear string
len	equ	$ - msg			;length of our dear string