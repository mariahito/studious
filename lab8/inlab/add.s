	.text
	.intel_syntax noprefix
	.file	"add.cpp"
	.globl	_Z3addf
	.align	16, 0x90
	.type	_Z3addf,@function
_Z3addf:                                # @_Z3addf
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
	movss	dword ptr [rbp - 4], xmm0
	cvttss2si	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
.Lfunc_end0:
	.size	_Z3addf, .Lfunc_end0-_Z3addf
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
	push	rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp5:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movss	xmm0, dword ptr [.LCPI1_0] # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	movss	xmm0, dword ptr [rbp - 4] # xmm0 = mem[0],zero,zero,zero
	call	_Z3addf
	xor	ecx, ecx
	mov	dword ptr [rbp - 8], eax # 4-byte Spill
	mov	eax, ecx
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
