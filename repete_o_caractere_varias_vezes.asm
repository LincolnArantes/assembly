;Este programa repete um numero de vezes um caractere
;Lincoln Cesar dos Reis Arantes

section	.text
   global _start	 ;must be declared for linker (gcc)
	
_start:	   ;tell linker entry point


; Printa a primeira mensagem 
   mov	edx,len  ;message length
   mov	ecx,msg  ;message to write
   mov	ebx,1    ;file descriptor (stdout)
   mov	eax,4    ;system call number (sys_write)
   int	0x80     ;call kernel
	
; printa na tela o resultado
   mov	edx,10    ;message length (tamanho)
   mov	ecx,s2   ;message to write (variavel)
   mov	ebx,1    ;file descriptor (stdout)
   mov	eax,4    ;system call number (sys_write)
   int	0x80     ;call kernel
	
;exit	
	
   mov	eax,1    ; sys_exit
   int	0x80     ;call kernel
	
section	.data
msg db 'Repetindo 10 vezes o caractere abaixo',0xa ;a message
len equ $ - msg  ;length of message
s2 times 10 db '@'