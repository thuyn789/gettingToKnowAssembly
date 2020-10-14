; Lab 7 - Part A - Ex 2

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
	ret
example1 ENDP

addtwo PROC
	push ebp
	mov ebp,esp
	mov eax, [ebp+12]
	add eax, [ebp+8]
	pop ebp
	ret 8	;(2) remove 8 and see what happens and report
addtwo ENDP
	
	;After removing 8 in line (2), the program crash because
	;the stack was not cleaned properly from the procedure being called

	;Exception thrown at 0x00000005 in lab7-partA-ex2.exe: 0xC0000005: Access violation executing location 0x00000005.


END main
