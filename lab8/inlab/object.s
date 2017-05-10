	.text
	.intel_syntax noprefix
	.file	"object.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1073741824              # float 2
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp2:
	.cfi_def_cfa_register rbp
	xor	eax, eax
	lea	rcx, [rbp - 57]
	lea	rdx, [rbp - 56]
	lea	rsi, [rbp - 52]
	movss	xmm0, dword ptr [.LCPI0_0] # xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 52], 8
	movss	dword ptr [rbp - 56], xmm0
	mov	byte ptr [rbp - 57], 97
	mov	edi, dword ptr [rbp - 52]
	mov	dword ptr [rbp - 48], edi
	movss	xmm0, dword ptr [rbp - 56] # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 32], xmm0
	mov	r8b, byte ptr [rbp - 57]
	mov	byte ptr [rbp - 16], r8b
	mov	qword ptr [rbp - 40], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 8], rcx
	pop	rbp
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
