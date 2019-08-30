;Loop infinito - escrito por Lincoln César dos Reis Arantes

SYS_EXIT  equ 1
RET_EXIT  equ 5
SYS_READ  equ 3
SYS_WRITE equ 4
STD_IN    equ 0
STD_OUT   equ 1
MAX_IN    equ 10

segment .data

  msg db "Mostrando dados ", 0xA, 0xD
  len equ $- msg


section	.text
   global _start        ;must be declared for using gcc
	
_start:	                ;tell linker entry point
  
	
l1: ;inicio do loop
  

 ; quando o codigo passa aqui ele cria o loop para mostrar a mensagem 
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msg
  mov edx, len
  int 0x80 
   
  
  
   loop l1 ; fim do loop

	
   mov eax,1             ;system call number (sys_exit)
   int 0x80              ;call kernel

