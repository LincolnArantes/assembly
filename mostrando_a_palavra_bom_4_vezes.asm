; Mostrando a palavra bom 4 vezes
; Lincoln César dos Reis Arantes

section	.text
   global _start	 ;must be declared for linker (gcc)
	
_start:	         ;tell linker entry point
  
   mov	edx,16    ;message length (tamanho)
   mov	ecx,sempre   ;message to write
   mov	ebx,1    ;file descriptor (stdout)
   mov	eax,4    ;system call number (sys_write)
   int	0x80     ;call kernel
	
	;final
   mov	eax,1    ;(sys_exit)(final)
   int	0x80     ;call kernel
	
section	.data

sempre times 4 db 'Bom-'