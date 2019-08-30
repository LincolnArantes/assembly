; Exemplo de uma comparação de if se menor ou se maior e igual
; Escrito por Lincoln Cesar dos Reis Arantes

section	.text
	global _start       ;must be declared for using gcc
_start:                     ;tell linker entry point


  mov eax, 0x4 ;numero 4 em hexadecimal (nao mexar aqui)
  mov ebx, 0x1 ;numero 1 em hexadecimal (mexa aqui)
 
  cmp ebx, eax
  jl mostra2 ; menor que
  jg mostra1 ; maior e igual a 
  
  
  
  
mostra1:  
	mov	edx, len1    ;message length
	mov	ecx, msg1    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)

	
		int	0x80        ;call kernel
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel
	  
  
  
mostra2:  
	mov	edx, len    ;message length
	mov	ecx, msg    ;message to write
	mov	ebx, 1	    ;file descriptor (stdout)
	mov	eax, 4	    ;system call number (sys_write)

	
		int	0x80        ;call kernel
	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel
	


section	.data
msg1	db	'Maior ou igual que 4!',0xa	;our dear string
len1	equ	$ - msg1			;length of our dear string

msg	db	'Menor que 4!',0xa	;our dear string
len	equ	$ - msg			;length of our dear string
