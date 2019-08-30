SYS_EXIT  equ 1
RET_EXIT  equ 5
SYS_READ  equ 3
SYS_WRITE equ 4
STD_IN    equ 0
STD_OUT   equ 1
MAX_IN    equ 40 ;default 10 - maximo de digitos no campo

segment .data

  msgc1 db "--------------------------------------------------------", 0xA, 0xD
  lenc1 equ $- msgc1


  msgc2 db "CADASTRO DE DADOS NO SISTEMA", 0xA, 0xD
  lenc2 equ $- msgc2


 msgc3 db "--------------------------------------------------------", 0xA, 0xD
  lenc3 equ $- msgc3


;-------------------------------



  msg db "Entre com seu nome: ", 0xA, 0xD
  len equ $- msg
  
  msg2 db "Entre com sua cidade: ", 0xA, 0xD
  len2 equ $- msg2

  msg3 db "Entre com seu estado: ", 0xA, 0xD
  len3 equ $- msg3



segment .bss
  nome resb 2
   nome2 resb 2
     nome3 resb 2

segment .text

global _start

_start:

 ; display de cadastro no sistema

 ; ax bx cx dx -> e
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgc1
  mov edx, lenc1
  int 0x80

 ; ax bx cx dx -> e
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgc2
  mov edx, lenc2
  int 0x80

 ; ax bx cx dx -> e
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msgc3
  mov edx, lenc3
  int 0x80

 ; ----- fim display de cadastro no sistema
;----------

   ; ----primeiro campo com a pergunta
  
  ; ax bx cx dx -> e
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msg
  mov edx, len
  int 0x80

  ; Entrada Dados
  mov eax, SYS_READ
  mov ebx, STD_IN
  mov ecx, nome
  mov edx, MAX_IN
  int 0x80
  ;--------------------------

      ; ----segundo campo com a pergunta
  

; ax bx cx dx -> e
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msg2
  mov edx, len2
  int 0x80

  ; Entrada Dados
  mov eax, SYS_READ
  mov ebx, STD_IN
  mov ecx, nome2
  mov edx, MAX_IN
  int 0x80

;-----------------------------


    ; ----terceiro campo com a pergunta
  

; ax bx cx dx -> e
  mov eax, SYS_WRITE
  mov ebx, STD_OUT
  mov ecx, msg3
  mov edx, len3
  int 0x80

  ; Entrada Dados
  mov eax, SYS_READ
  mov ebx, STD_IN
  mov ecx, nome3
  mov edx, MAX_IN
  int 0x80


;--------------------------------

exit:
  mov eax, SYS_EXIT
  mov ebx, RET_EXIT ; xor ebx, ebx
  int 0x80
