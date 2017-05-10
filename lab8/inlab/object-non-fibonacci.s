	.text
	.file	"fibonacci.cpp"
	.globl	_Z3fibiii
	.align	16, 0x90
	.type	_Z3fibiii,@function
_Z3fibiii:                              # @_Z3fibiii
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$1, -8(%rbp)
	jg	.LBB0_2
# BB#1:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movl	%eax, %edi
	movl	%ecx, %edx
	callq	_Z3fibiii
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z3fibiii, .Lfunc_end0-_Z3fibiii
	.cfi_endproc


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
