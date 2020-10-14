; Lab 5 - Part A - Ex 3
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	
.code
main PROC
	mov bl, 3
	mov cl, 4

	cmp bl,cl
	jg L1			;if bl is greater than cl, jump to GREATER label
	mov dl, 23		;otherwise, do this 
	sub al, dl
	jmp L2			;exit if statement

L1:	mov al, 50 

L2:					;to exit if statement

	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
