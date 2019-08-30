; Escrito por Lincoln Cesar dos Reis Arantes


; incrementa valores - funciona bem se o incremento for ate 9


section .text

global _start

_start:
 
    
  
    mov  eax, '3'; move o valor que vai ser incrementado para o registrador eax 
    
    inc  eax  ; incrementa 1 no valor acima

    mov     [incrementa], eax ;pega o resultado do incremento e joga na variavel incrementa


;---------------printa o valor na tela
    mov     ecx, incrementa
    mov     edx, 2 ;default 1
    mov     ebx, 1
    mov     eax, 4
    int     0x80

    mov     eax, 1
    int     0x80



segment .bss

    incrementa resb 1 
