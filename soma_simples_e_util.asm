; Escrito por Lincoln Cesar dos Reis Arantes


; soma valores fixados


section .text

global _start

_start:
 
    
  
    mov  eax, '3'; move para o registrador o numero que vai ser somado 
    sub  eax, '0'
    mov  ebx, '2'; move para o registrador o numero que vai ser somando
    sub  ebx, '0' 
    add eax, ebx
    add eax, '0'

    mov     [soma], eax ;pega o resultado e joga na variavel soma

;---------------printa o valor na tela
    mov     ecx, soma
    mov     edx, 2 ;default 1
    mov     ebx, 1
    mov     eax, 4
    int     0x80

    mov     eax, 1
    int     0x80



segment .bss

    soma resb 1 
