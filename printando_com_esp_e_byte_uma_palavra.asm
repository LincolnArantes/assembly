; Este código usa o esp e byte como exemplo
;Lincoln Cesar dos Reis Arantes

global _start

_start:
    sub esp, 7
    mov [esp], byte 'L'
    mov [esp+1], byte 'i'
    mov [esp+2], byte 'n'
    mov [esp+3], byte 'c'
    mov [esp+4], byte 'o'
    mov [esp+5], byte 'l'
    mov [esp+6], byte 'n'
    
    
    ;printa na tela o esp
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, esp  ; bytes to write
    mov edx, 7    ; number of bytes to write
    int 0x80      ; perform system call
    
    
    mov eax, 1    ; sys_exit 
    mov ebx, 0    ; exit 
    int 0x80