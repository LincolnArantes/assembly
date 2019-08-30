; Conhecendo variáveis e Mostrando na tela
; Escrito por Lincoln Cesar dos Reis Arantes
; Compilador 32 bits - https://www.tutorialspoint.com/compile_asm_online.php
;escolha		DB	'y'
;numero		DW	12345
;neg_numero	DW	-12345
;grande_numero	DQ	123456789
;dinheiro_num	DD	1.234
;dinheiro2_num	DQ	123.456




section .text
   global _start          ;must be declared for linker (gcc)
	
_start:    ;tell linker entry point

 
   ;printando mensagem na tela
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, msg  ; bytes to write
    mov edx, len    ; number of bytes to write
    int 0x80      ; perform system call



  ;printando o escolha
   mov	edx,1		  ;message length
   mov	ecx,escolha        ;message to write
   mov	ebx,1		  ;file descriptor (stdout)
   mov	eax,4		  ;system call number (sys_write)
   int	0x80		  ;call kernel



   ;printando mensagem na tela
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, msg2  ; bytes to write
    mov edx, len2    ; number of bytes to write
    int 0x80      ; perform system call


;printando o numero
   mov	edx,5		  ;message length
   mov	ecx,numero        ;message to write
   mov	ebx,1		  ;file descriptor (stdout)
   mov	eax,4		  ;system call number (sys_write)
   int	0x80		  ;call kernel
   
   
   
      ;printando mensagem na tela
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, msg3  ; bytes to write
    mov edx, len3    ; number of bytes to write
    int 0x80      ; perform system call
   
   
 ;printando numero negativo  
   mov edx,6		  ;message length
   mov	ecx,neg_numero        ;message to write
   mov	ebx,1		  ;file descriptor (stdout)
   mov	eax,4		  ;system call number (sys_write)
   int	0x80		  ;call kernel
   
   
   
      ;printando mensagem na tela
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, msg4  ; bytes to write
    mov edx, len4    ; number of bytes to write
    int 0x80      ; perform system call
    
   
 ;printando grande numero  
   mov edx,9		  ;message length
   mov	ecx,grande_numero        ;message to write
   mov	ebx,1		  ;file descriptor (stdout)
   mov	eax,4		  ;system call number (sys_write)
   int	0x80		  ;call kernel
   
   
      ;printando mensagem na tela
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, msg5  ; bytes to write
    mov edx, len5    ; number of bytes to write
    int 0x80      ; perform system call
   
   
 ;printando dinheiro_num  
   mov edx,9		  ;message length
   mov	ecx,dinheiro_num        ;message to write
   mov	ebx,1		  ;file descriptor (stdout)
   mov	eax,4		  ;system call number (sys_write)
   int	0x80		  ;call kernel
   
   
      ;printando mensagem na tela
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, msg6  ; bytes to write
    mov edx, len6    ; number of bytes to write
    int 0x80      ; perform system call
    
   
  ;printando dinheiro2_num 
   mov edx,9		  ;message length
   mov	ecx,dinheiro2_num        ;message to write
   mov	ebx,1		  ;file descriptor (stdout)
   mov	eax,4		  ;system call number (sys_write)
   int	0x80		  ;call kernel
   


   mov	eax,1		  ;system call number (sys_exit)
   int	0x80		  ;call kernel

section .data

msg db  '1 byte: ' ;our dear string
len equ $ - msg         ;length of our dear string
escolha DB 'y'

msg2 db  0xa,'Numero: ' ;our dear string
len2 equ $ - msg2         ;length of our dear string
numero DW '12345'


msg3 db  0xa,'Numero Negativo: ' ;our dear string
len3 equ $ - msg3         ;length of our dear string
neg_numero DW '-12345'


msg4 db  0xa,'Grande numero: ' ;our dear string
len4 equ $ - msg4         ;length of our dear string
grande_numero DQ '123456789'


msg5 db  0xa,'Dinheiro: ' ;our dear string
len5 equ $ - msg5         ;length of our dear string
dinheiro_num DD '3.245'


msg6 db  0xa,'Dinheiro 2: ' ;our dear string
len6 equ $ - msg6         ;length of our dear string
dinheiro2_num DQ '121.845'