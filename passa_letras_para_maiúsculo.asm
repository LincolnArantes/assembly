;Passa letras para maiúsculo

;Lincoln Cesar dos Reis Arantes

section .text

global _start

_start: 

        mov ecx, msg
        call maisc  ;chama a função
        call tela  ;chma a função
        
        
        ;fim
        mov eax,1
        mov ebx,0
        int 80h

maisc:
        mov al,[ecx]      ; ecx is the pointer, so [ecx] the current char
        cmp al,0x0 
        je pronto
        cmp al,'a'
        jb proximo
        cmp al,'z'
        ja proximo
        sub al,0x20       ; move a al para super upper case
        mov [ecx],al      ; escreve e volta para a msg

proximo:
        inc ecx           ; incrementa
                          
        jmp maisc         ; pula para a função maisc 
pronto:   ret


; função para printar os dados na tela
tela:  mov ecx, msg    ;mensagem
        mov edx, len       ; tamanho
        mov ebx, 1
        mov eax, 4
        int 80h
        ret

section .data
msg: db "lincoln cesar",10,0
len:    equ $-msg