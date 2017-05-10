	.text
	.intel_syntax noprefix
	.file	"fibonacci.cpp"
	.globl	_Z3fibiii
	.align	16, 0x90
	.type	_Z3fibiii,@function
_Z3fibiii:                              # @_Z3fibiii
	.cfi_startproc
# BB#0:
	sub	rsp, 24
.Ltmp0:
	.cfi_def_cfa_offset 32
	mov	dword ptr [rsp + 16], edi
	mov	dword ptr [rsp + 12], esi
	mov	dword ptr [rsp + 8], edx
	cmp	dword ptr [rsp + 16], 1
	jg	.LBB0_2
# BB#1:
	mov	eax, dword ptr [rsp + 8]
	mov	dword ptr [rsp + 20], eax
	jmp	.LBB0_3
.LBB0_2:
	mov	eax, dword ptr [rsp + 16]
	sub	eax, 1
	mov	esi, dword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 12]
	add	ecx, dword ptr [rsp + 8]
	mov	edi, eax
	mov	edx, ecx
	call	_Z3fibiii
	mov	dword ptr [rsp + 20], eax
.LBB0_3:
	mov	eax, dword ptr [rsp + 20]
	add	rsp, 24
	ret
.Lfunc_end0:
	.size	_Z3fibiii, .Lfunc_end0-_Z3fibiii
	.cfi_endproc


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
