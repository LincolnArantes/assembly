;Lincoln Cesar dos Reis Arantes

section	.text
   global _start	 ;must be declared for linker (gcc)
	
_start:	         ;tell linker entry point

	
   mov	edx,6    ;message length
   mov	ecx,s2   ;message to write
   mov	ebx,1    ;file descriptor (stdout)
   mov	eax,4    ;system call number (sys_write)
   int	0x80     ;call kernel
	
   mov	eax,1    ;system call number (sys_exit)
   int	0x80     ;call kernel
	
section	.data

s2 times 6 db '#'