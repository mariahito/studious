	.text
	.file	"object.cpp"
	.globl	_ZN3obj9doubleIntEv
	.align	16, 0x90
	.type	_ZN3obj9doubleIntEv,@function
_ZN3obj9doubleIntEv:                    # @_ZN3obj9doubleIntEv
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	shll	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_ZN3obj9doubleIntEv, .Lfunc_end0-_ZN3obj9doubleIntEv
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1073741824              # float 2
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-48(%rbp), %rdi
	leaq	-57(%rbp), %rax
	leaq	-56(%rbp), %rcx
	leaq	-52(%rbp), %rdx
	movss	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$8, -52(%rbp)
	movss	%xmm0, -56(%rbp)
	movb	$97, -57(%rbp)
	movl	-52(%rbp), %esi
	movl	%esi, -48(%rbp)
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -32(%rbp)
	movb	-57(%rbp), %r8b
	movb	%r8b, -16(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, -8(%rbp)
	movl	-48(%rbp), %esi
	addl	$3, %esi
	movl	%esi, -64(%rbp)
	callq	_ZN3obj9doubleIntEv
	xorl	%esi, %esi
	movl	%eax, -68(%rbp)
	movl	%esi, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
