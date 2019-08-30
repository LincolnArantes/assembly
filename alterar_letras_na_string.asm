;Este código permite alterar as letras em determinados locais
;Lincoln Cesar dos Reis Arantes

global _start

section .data
    addr db "carros"

section .text
_start:
    mov [addr], byte 'B' ; altera a primeira letra
    mov [addr+5], byte 'o' ; alterar o numero de acordo com o numero de letras
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, addr ; bytes to write
    mov edx, 8    ; number of bytes to write
    int 0x80      ; perform system call
    
    
    mov eax, 1    ; sys_exit
    mov ebx, 0    ; exit 
    int 0x80