;Maria Hito (mh4wt)
;File name: mathlib.s
;03/27/17
;mathlib.s
	
;Parameter 1: int x (in edi)
;Parameter 2: int y (in esi)
; Return value: int result (in eax)
;For-loop iterator: int i (in r10d)

	global product
	
	section .txt

product:
	; Standard prologue: we do not have to create any local
	; variables (those values will be kept in registers), and 
	; we are not using any callee-saved registers.

	;Subroutine body:
	xor eax, eax 		;zero out return register
	xor r10d, r10d 		;zero out iterator i
	mov eax, 0 		;int result = 0
	mov r10d, 0 		;int i = 0
	jmp middle 		;goto middle (to test the loop)
loop:
	add eax, edi 		;result += x 
	inc r10d 		;i++
	jmp middle 		;goto middle to test loop again with incremented i
middle:
	cmp r10d, esi 		;is i < y?
	jge done 		;if not (i >= y), get out of loop and goto done
	jmp loop 		;if it is, then goto loop
done:
	;Standard epilogue:
	ret 			;return result

	
;Parameter 1: int x (in edi) is the base
;Parameter 2: int y (in esi) is the exponent
; Return value: int result (in eax)

	global power

	section .txt

power:
	;Standard prologue: nothing to do in prologue b/c no local variables
	
	
	;Subroutine body:
case1:	
	cmp rsi, 0 		;base case 1: if y == 0, then result = 1
	jne case2
	mov rax, 1
	jmp end 		;once there's a return value, goto end to finish program
case2:	
	cmp rsi, 1 		;base case 2: if y == 1, then result = x
	jne start2
	mov rax, rdi
	jmp end 		;once there's a return value, goto end to finish program
start2:
	;y-1 will be the new exponent 
	dec rsi

	call power 		;recursively call power: power(x, y-1)
	mov rsi, rax 		;the result of power will be the second parameter for the product subroutine, so it has to be in rsi


	
	call product 		;call product subroutine
	jmp end 		;goto end to return the result of product, which is in the return register rax
end:
	;Standard epilogue: nothing to do here either
	ret 			;return the result

