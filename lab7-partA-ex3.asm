; Lab 7 - Part A - Ex 3
;Calculating a Factorial (fact.asm)

INCLUDE Irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data

.code
main PROC
	push 6				;calc 6
	call Factorial		;calculate factorial (eax)
	call WriteDec		;display it
	call Crlf
	exit
	
	; Factorial of 13 resulting in out of range multiplication
	; because OF and CF are set

	; 12 stands for 3 spaces (value n, return address, ebp value), each space is 4 byte

main ENDP
	; additional methods here
	
;---------------------------------------------------------
Factorial PROC
;Calculates a factorial
;Receives: [ebp+8] = n, the number to calculate
;Returns: eax = the factorial of n
;---------------------------------------------------------
	push ebp
	mov ebp, esp
	mov eax,[ebp+8]	;get n
	cmp eax,0		;n > 0 ?
	ja L1			;yes: continue
	mov eax,1		;no: return 1 as the value of 0!
	jmp L2			;and return to the caller
	
L1:	dec eax
	push eax		;Factorial(n-1)
	call Factorial
	
	;Instructions from this point on execute when each
	;recursive call returns

ReturnFact:
	mov ebx, [ebp+8]	;get n
	mul ebx		;EDX:EAX = EAX * EBX
	
L2:	pop ebp		;return EAX
	ret 4			;clean up stack
Factorial ENDP	
	
END main
