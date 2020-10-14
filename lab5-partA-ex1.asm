; Lab 5 - Part A - Ex 1
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data


.code
main PROC
	mov al,01101111b
	and al,00101101b	; a. Al=2D		ZF=0	SF=0
	mov al,6Dh			
	and al,4Ah 			; b. Al=48		ZF=0	SF=0

	mov al,00001111b
	or al,61h 			; c. Al=6F		ZF=0	SF=0

	mov al,94h
	xor al,37h			; d. Al= A3		ZF=0	SF=1	PF=1
	
	; The value in al register changed when AND, OR, XOR was used because they will do boolean operation and change the destination

	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
