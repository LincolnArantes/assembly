; Troca valores e mostra na tela 
; Escrito por Lincoln Cesar dos Reis Arantes
; Compilador 32 bits on line - https://www.tutorialspoint.com/compile_assembly_online.php

section	.text
	global _start       ;must be declared for using gcc
_start:   ;tell linker entry point
	
	


    mov eax, '10' ;numero inicial
    mov ebx, '20' ;numero inicial
    
    ; codigos que fazem a troca
    mov [var], eax
    mov eax, ebx
    mov ebx, [var]
  
    
     mov [var2], eax
     mov [var3], ebx


   ; primeira mensagem
   
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, msg  ; bytes to write
    mov edx, len    ; number of bytes to write
    int 0x80      ; perform system call



  ;printa na tela o resultado da eax
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, var2  ; bytes to write
    mov edx, 7    ; number of bytes to write
    int 0x80      ; perform system call

 
 
  ; primeira mensagem
   
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, msg2  ; bytes to write
    mov edx, len2    ; number of bytes to write
    int 0x80      ; perform system call



  ;printa na tela o resultado da ebx
  
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, var3  ; bytes to write
    mov edx, 7    ; number of bytes to write
    int 0x80      ; perform system call

 


   ;saída

	mov	eax, 1	    ;system call number (sys_exit)
	int	0x80        ;call kernel

section .data

msg db  'O valor trocado da eax agora é: ' ;our dear string
len equ $ - msg         ;length of our dear string
 
msg2    db  0xa,'O valor trocado da ebx agora é: '   ;our dear string
len2    equ $ - msg2            ;length of our dear string


section	.bss

var resb 10
var2 resb 10
var3 resb 10