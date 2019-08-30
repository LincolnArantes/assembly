; Código escrito por Lincoln Cesar dos Reis Arantes
; neste tipo de soma o resultado não pode passar de 9 


section .text

global _start

_start:
 
  ;-------mensagem na tela pedindo a entrada dos dados 1- mensagem antes do imput
  
    mov     ecx, msg
    mov     edx, len
    mov     ebx, 1
    mov     eax, 4
    int     0x80


;----------

; Entrada Dados (imput)
  mov eax, 3
  mov ebx, 0
  mov ecx, var1
  mov edx, 40  ; maximo de entrada de dados
  int 0x80
;---------------------------------------------------------------------------


  ;-------mensagem na tela pedindo a entrada dos dados 2 - mensagem antes do imput
  
    mov     ecx, msg2
    mov     edx, len2
    mov     ebx, 1
    mov     eax, 4
    int     0x80


;----------

; Entrada Dados (imput)
  mov eax, 3
  mov ebx, 0
  mov ecx, var2
  mov edx, 40  ; maximo de entrada de dados
  int 0x80
;---------------------------------------------------------------------------



    mov     eax, [var1]
    sub     eax, '0'
    mov     ebx, [var2]
    sub     ebx, '0'
    add     eax, ebx
    add     eax, '0'

    mov     [sum], eax



  ;-------mensagem na tela antes de printar o resultado
  
    mov     ecx, msgresult
    mov     edx, lenresult
    mov     ebx, 1
    mov     eax, 4
    int     0x80


;---------------printa o valor somado na tela
    mov     ecx, sum
    mov     edx, 1
    mov     ebx, 1
    mov     eax, 4
    int     0x80

    mov     eax, 1
    int     0x80

section .data
    
    msg db  "Entre com o primeiro número (inteiro) "
    len equ $ - msg

    msg2 db  "Entre com o segundo número (inteiro) "
    len2 equ $ - msg2


       msgresult db  "O resultado é:   "
    lenresult equ $ - msgresult
    

segment .bss

    sum resb 10
    
    var1 resb 5

    var2 resb 5
