; Lab 7 - Part B - Ex 1

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	valA REAL8 1.5
	valB REAL8 2.5
	valC REAL8 3.0
	valD REAL8 ?

.code
main PROC
	
	fld valA	;ST(0) = valA
	fchs		;change sign of ST(0)
	fld valB	;load valB into ST(0)
	fmul valC	;ST(0) *= valC
	fadd		;ST(0) += ST(1)	
	fstp valD	;store ST(0) to valD

	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
