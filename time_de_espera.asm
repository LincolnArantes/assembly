section .data

delay dq 5, 500000000 ; tempo de espera de 5 segundos

section .text
          global _start

_start:

 mov rax, 35
 mov rdi, delay
 mov rsi, 0
 syscall


 mov rax,60
 mov rdi,0
 syscall
