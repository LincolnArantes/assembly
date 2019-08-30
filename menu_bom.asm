;escrito por Lincoln Cesar dos Reis Arantes

SYS_EXIT  equ 1
RET_EXIT  equ 5
SYS_READ  equ 3
SYS_WRITE equ 4
STD_IN    equ 0
STD_OUT   equ 1
MAX_IN    equ 40 ;default 10 - maximo de digitos no campo
 
segment .data

;------menu display



 msgsel db "SELECIONE UMA OPÇÃO:", 0xA, 0xD
  lensel equ $- msgsel



 msgc1 db "[1]OPÇÃO 1", 0xA
  lenc1 equ $- msgc1
 
 
  msgc2 db "[2]OPÇAO 2", 0xA
  lenc2 equ $- msgc2
 
 
 msgc3 db "[3]OPÇÃO 3", 0xA
  lenc3 equ $- msgc3






;-----fim menu display

 
  msgc11 db "ENTRE COM UM NUMERO DE 1 A 3:", 0xA, 0xD
  lenc11 equ $- msgc11
  
  
 ;------------saidas das opçoes
  
  msgcerto db "opcao certa 1", 0xA, 0xD
  lencerto equ $- msgcerto
  
 
     msgcerto2 db "opcao certa 2", 0xA, 0xD
  lencerto2 equ $- msgcerto2
  

     msgcerto3 db "opcao certa 3", 0xA, 0xD
  lencerto3 equ $- msgcerto3
  

segment .bss
  
  
  valor resb 2


segment .text
 
global _start
 
_start:

;-------mensagem do menu


; display de menu

;------mensagem SELECIONE

  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgsel
  mov edx, lensel
  int 0x80



 
;------mensagem 1

  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgc1
  mov edx, lenc1
  int 0x80
 
;------mensagem 2
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgc2
  mov edx, lenc2
  int 0x80
 
;------mensagem 3
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgc3
  mov edx, lenc3
  int 0x80
 
 ; ----- fim display de menu





;-------------------------
 
 ; display de MENU
 
 ; ax bx cx dx -> e
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgc11
  mov edx, lenc11
  int 0x80

;------------------
;imput

  ; Entrada Dados
  mov eax, SYS_READ
  mov ebx, STD_IN
  mov ecx, valor
  mov edx, MAX_IN
  int 0x80


;-------------------

; comparando valores que deu certo


mov ah, [valor]
sub ah, '0'

cmp ah, 1; compara os dois registradores
je se_igual1 ; se for igual chama o se_igual abaixo(chamada)

;---------------------------------------------------
cmp ah, 2; compara os dois registradores
je se_igual2 ; se for igual chama o se_igual abaixo(chamada)

;---------------------------------------------------
cmp ah, 3; compara os dois registradores
je se_igual3 ; se for igual chama o se_igual abaixo(chamada)






se_igual1:

;mostra mensagem opcao 1 

  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgcerto
  mov edx, lencerto
  int 0x80
  jmp exit

se_igual2:

;mostra mensagem opcao 2

  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgcerto2
  mov edx, lencerto2
  int 0x80
  jmp exit

se_igual3:

;mostra mensagem opcao 3

  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgcerto3
  mov edx, lencerto3
  int 0x80
  jmp exit


se_maior:







; abaixo dados para a saida

exit:  
mov eax,1
mov ebx, 0
int 0x80
 



