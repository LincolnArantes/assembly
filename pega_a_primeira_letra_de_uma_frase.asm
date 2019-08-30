;pegar a primeira letra de uma frase
;Lincoln Cesar dos Reis Arantes
;https://www.tutorialspoint.com/compile_assembly_online.php
	
section .text
global _start     ;must be declared for linker (gcc)
   
_start:          ;tell linker entry point
   
   mov eax, [var1]
   mov ebx, [var2]
   or eax, ebx
   
   
   mov [result], eax ;pegar a 1 letra da eax
    mov [result2], ebx ;pegar a 1 letra da ebx
   
   
	
    ; mostrando o resultado na tela
   mov eax, 4      
   mov ebx, 1
   mov ecx, result       
   mov edx, 1        
   int 0x80
   
   
   
   	
    ; mostrando o resultado na tela
   mov eax, 4      
   mov ebx, 1
   mov ecx, result2       
   mov edx, 1        
   int 0x80
   
   
   
     mov  eax,1    ;system call number (sys_exit)
   int  0x80     ;call kernel
   
   section .data
   var1 db  'Minha uva linda'
   var2 db  'Ideia na cuca'
   
   section .bss
   
   result resb 4
    result2 resb 4