;Lincoln Cesar dos Reis Arantes
;https://www.tutorialspoint.com/compile_asm_online.php

section .text
   global _start           
	
_start:                    
   mov   ax, 13h ;aqui alterar numero impar ou par hexadecimal          
   and   ax, 1              
   jz    par
   mov   eax, 4             
   mov   ebx, 1             
   mov   ecx, impar_msg      
   mov   edx, len2          
   int   0x80              
   jmp   saida

par:   
  
   mov   ah,  09h
   mov   eax, 4            
   mov   ebx, 1            
   mov   ecx, par_msg      
   mov   edx, len1         
   int   0x80              

saida:

   mov   eax,1              
   int   0x80               

section   .data
par_msg  db  'Numero par!' 
len1  equ  $ - par_msg 
   
impar_msg db  'Numero impar!'   
len2  equ  $ - impar_msg