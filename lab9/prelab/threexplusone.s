;Maria Hito (mh4wt)
;File name: threexplusone.s
;4/5/17
	
;threexplusone.s

;OPTIMIZATIONS: shift instruction (shr) used instead of idiv instruction;shifting uses less registers(rax for quotient and rdx for remainder) and is computationally easier
;test instruction is bitwise AND to check even/odd; again, don't have to use idiv and waste registers (the rdx register for the remainder, which would have to be compared with 0 to check if even)

	global threexplusone
	section .txt
threexplusone:			
	
	cmp rdi, 1 		;if x<=1 goto end
	jle end
	test rdi, 1 		;even/odd check, test uses bitwise AND
	jne odd 		;if rdi != 0 from test then goto odd
	shr rdi, 1 		;if rdi == 0 from test, x is even so now x = x/2
				;shr command by 1 will divide rdi by 2. This is an optimization that is used instead of idiv;
	call threexplusone 	;recursively call on new x (which is x/2)
	add rax , 1 		;update "counter" by adding 1 to recursive return value in rax to keep track of number of steps taken
	ret
odd:
	imul rdi, 3 		;x = (3*x)+1
	add rdi, 1
	call threexplusone 	;recursively call on new x (which is (3*x)+1)
	add rax, 1		;again, update "counter"
	ret
end:
	mov rax, 0
	ret
