; Lab 6 - Part A - Ex 1
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	var1 DWORD 40
	var2 DWORD 13
	var4 DWORD ?

.code
main PROC
	mov eax, var1 	;left side
	mov ebx, 5
	mul ebx			;EDX:EAX = product
	sub var2, 3		;right side
	div ebx			;eax = quotient
	mov var4, eax

	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
