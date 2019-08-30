section	.text


	global _start       ;must be declared for using gcc


_start:                     ;tell linker entry point



mov	edx, len    ;message length
mov	ecx, msg    ;message to write
mov	ebx, 1	    ;file descriptor (stdout)
mov	eax, 4	    ;system call number (sys_write)
 int 0x80


  ; Entrada Dados
 mov eax, 3
 mov ebx, 0
 mov ecx, senha
 mov edx, 40
  int 0x80
  ;--------------------------





mov eax, [senha]
mov ebx, 'abcd'
cmp eax, ebx
je certa
jne errada



certa:

mov edx, lenc    ;message length
mov ecx, msgc    ;message to write
mov ebx, 1	    ;file descriptor (stdout)
mov eax, 4	    ;system call number (sys_write)
 int 0x80
call exit




errada:

mov edx, lene    ;message length
mov ecx, msge    ;message to write
mov ebx, 1	    ;file descriptor (stdout)
mov eax, 4	    ;system call number (sys_write)
 int 0x80
call exit
	

exit:


mov eax, 1	    ;system call number (sys_exit)
int 0x80        ;call kernel


section	.data


msgc db	'VOCÊ ACERTOU A SENHA!',0xa	;our dear string
lenc equ $ - msgc			;length of our dear string

msge db	'VOCÊ ERROU A SENHA! BYE',0xa	;our dear string
lene equ $ - msge			;length of our dear string

msg db 'Entre com a senha',0xa	;our dear string
len equ	$ - msg			;length of our dear string


segment .bss

senha resb 16




