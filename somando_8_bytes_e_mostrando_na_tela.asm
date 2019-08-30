;Soma de 8 bytes
;Lincoln Cesar dos Reis Arantes
;https://www.tutorialspoint.com/compile_asm_online.php

section	.text
   global _start        ;must be declared for using gcc

_start:	                ;tell linker entry point

   mov     esi, 8       ;pointing to the rightmost digit
   mov     ecx, 8       ;num of digits
   clc
add_loop:  
   mov 	al, [numero1 + esi]
   adc 	al, [numero2 + esi]
   aaa
   pushf
   or 	al, 30h
   popf
	
   mov	[soma + esi], al
   dec	esi
   loop	add_loop
	
   mov	edx,len	        ;message length
   mov	ecx,msg	        ;message to write
   mov	ebx,1	        ;file descriptor (stdout)
   mov	eax,4	        ;system call number (sys_write)
   int	0x80	        ;call kernel
	
   mov	edx,9	        ;message length
   mov	ecx,soma	        ;message to write
   mov	ebx,1	        ;file descriptor (stdout)
   mov	eax,4	        ;system call number (sys_write)
   int	0x80	        ;call kernel
	
   mov	eax,1	        ;system call number (sys_exit)
   int	0x80	        ;call kernel

section	.data
msg db 'A soma é:',0xa	
len equ $ - msg			
numero1 db '22389001'
numero2 db '23456211'
soma db  '        '