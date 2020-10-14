; Lab 7 - Part A - Ex 1

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	
.code
main PROC
	call example1
	add al, 1

	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
	
example1 PROC
	push 6
	push 5
	call addtwo
	add esp, 8 		;(1) comment this line
	ret				;(add esp,4) and see what happen and report
	
	;After removing line (1), the program crash because
	;the stack was not cleaned properly from caller procedure

	;Exception thrown at 0x00000005 in lab7-partA-ex1.exe: 0xC0000005: Access violation executing location 0x00000005.

	
example1 ENDP

addtwo PROC
	push ebp
	mov ebp,esp
	mov eax, [ebp+12]
	add eax, [ebp+8]
	pop ebp
	ret
addtwo ENDP
	
END main
