; Dividi dois valores e mostra na tela
; Lincoln Cesar dos Reis Arantes
; 32 Bits - https://www.tutorialspoint.com/compile_asm_online.php


section	.text
   global _start	 ;must be declared for linker (gcc)
	
_start:	         ;tell linker entry point


   ;Primeiro valor	
   mov eax, '6'
   sub eax, '0'
  
   ;Segundo valor	
   mov ebx, '2'
   sub ebx, '0'

   ;dividido abaixo
   div ebx
   ;adicione '0' para converter a divisão de decimal para ASCII
   add eax, '0'

   ;gravando o resultado na variavel resultado
   mov [resultado], eax

   ; mostrando o resultado da divisão (printando na tela)
   mov eax, 4       
   mov ebx, 1
   mov ecx, resultado         
   mov edx, 1        
   int 0x80
	
	
   mov	eax,1    ;system call number (sys_exit)
   int	0x80     ;call kernel
	
section .bss

resultado resb 1