; Lab 5 - Part A - Ex 4
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
	sum DWORD 0
	sample DWORD 50
	array DWORD 10,60,20,33,72,89,45,65,72,18
	ArraySize = ($ - array) / TYPE array

.code
main PROC
	mov eax,0 ;sum
	mov edx,sample
	mov esi,0 ;index
	mov ecx,ArraySize
	
L1: cmp esi, ecx ;if esi < ecx
	jl L2
	jmp L5
	
L2: cmp array[esi*4], edx ;if array[esi] > edx
	jg L3
	jmp L4

L3: add eax, array[esi*4]

L4: inc esi
	jmp L1
	
L5: mov sum,eax ;final value of sum is 00000166h = 358d

	INVOKE ExitProcess, 0
main ENDP
	; additional methods here
END main
