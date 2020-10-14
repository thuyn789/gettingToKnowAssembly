; Lab 7 - Part B - Ex 2

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	valA REAL8 12.25
	valB REAL8 6.5
	valC REAL8 4.2
	valD REAL8 ?

.code
main PROC
	;(valA - valB) * valC = valA valB - valC *

	fld valA	
	fsub valB
	fmul valC
	fstp valD	;store ST(0) to valD

	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
