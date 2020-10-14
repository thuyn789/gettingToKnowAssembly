; Lab 5 - Part A - Ex 2
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	

.code
main PROC
	mov al,00001111b
	test al,00000010b ; a. CF=0	 ZF=0	 SF=0	 al=0F

	mov bl,00000110b
	cmp bl,00000101b ; b. CF=0	 ZF=0	 SF=0	 bl=06

	mov cl,00000101b
	cmp cl,00000111b  ; c. CF=1	 ZF=0	 SF=1	 cl=05

	; The value in al register did not change when TEST and CMP was used because they are non-destructive
	
	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
