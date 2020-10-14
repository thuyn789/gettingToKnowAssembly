; Lab 6 - Part A - Ex 2
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	var1 SDWORD -2
	var2 SDWORD 20
	var3 SDWORD 2
	var4 SDWORD ?

.code
main PROC
	mov eax, var2	;begin right side
	neg eax
	cdq				;sign-extend dividend
	idiv var3		;EDX = remainder
	mov ebx,eax		;EBX = right side
	mov eax,-5		;begin left side
	imul var1		;EDX:EAX = left side
	idiv ebx		;final division
	mov var4,eax	;quotient

	
	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
