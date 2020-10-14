; Lab 6 - Part B - Ex 2

Include Irvine32.inc 	; Irvine32 library

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	

.code
main PROC
	
	mov ebx,1431 	; pass two parameters, in order
	mov ecx,63
	
	call AddTwo		; look for return value in EAX
	call WriteInt 	; display the number
	call Crlf		; output a CR/LF
	
	
	;Before calling procedure, EAX = 0019FFCC
	;After calling procedure, EAX = 00000558
	

	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
	
AddTwo PROC
	Mov eax,0
	add eax,ebx
	sub eax,ecx
	
	ret
	
	AddTwo ENDP
	
END main
