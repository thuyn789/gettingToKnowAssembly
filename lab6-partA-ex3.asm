; Lab 6 - Part A - Ex 3
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	var1 SDWORD -2
	var2 SDWORD 20
	var3 SDWORD 2

.code
main PROC
	mov eax,var1
	mov edx,var2
	neg edx
	imul edx		;left side: EDX:EAX
	mov ecx,var3
	sub ecx,ebx
	idiv ecx		;EAX = quotient
	mov var3,eax

	
	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
