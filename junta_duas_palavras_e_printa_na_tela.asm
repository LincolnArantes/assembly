;Este código junta duas palavras e printa na tela
;Escrito por Lincoln Cesar dos Reis Arantes
 
global _start
 
_start:
    call funcao ;chama a função
    
    ;final
    mov eax, 1
    mov ebx, 0
    int 0x80
 
funcao:
    push ebp
    mov ebp, esp
    sub esp, 4
    mov [esp], dword'Bala' ;só 4 bytes
    mov [esp+4], dword'-boa' ;só 4 bytes
   
 
       ; printa os dados na tela corretamente
   
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, esp  ; bytes to write
    mov edx, 8    ; number of bytes to write  4 default
    int 0x80      ; perform system call
 
    mov esp, ebp
    pop ebp
    ret ;retorno