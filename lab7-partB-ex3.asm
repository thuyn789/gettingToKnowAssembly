; Lab 7 - Part B - Ex 3
;32-bit Floating-Point I/O Test (floatTest32.asm)

INCLUDE Irvine32.inc
INCLUDE macros.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	first REAL8 123.456
	second REAL8 10.0
	third REAL8 ?

.code
main PROC
	finit		;initialize FPU
	
	;Push two floats and display the FPU stack
	fld first
	fld second
	call ShowFPUStack
	
	;Input two floats and display their product
	mWrite "Please enter a real number: "
	call ReadFloat
	
	mWrite "Please enter a real number: "
	call ReadFloat
	
	fmul ST(0), ST(1) 	;multiply
	
	mWrite "Their product is: "
	call WriteFloat
	call Crlf

	exit
main ENDP
	; additional methods here
	
AddTwo PROC
	Mov eax,0
	add eax,ebx
	sub eax,ecx
	
	ret
	
	AddTwo ENDP
	
END main
