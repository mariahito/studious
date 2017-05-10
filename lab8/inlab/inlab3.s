	.text
	.intel_syntax noprefix
	.file	"inlab3.cpp"
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# BB#0:
	push	rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movabs	rdi, _ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	movabs	rdi, _ZNSt8ios_base4InitD1Ev
	movabs	rsi, _ZStL8__ioinit
	movabs	rdx, __dso_handle
	call	__cxa_atexit
	mov	dword ptr [rsp + 4], eax # 4-byte Spill
	pop	rax
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc

	.text
	.globl	_Z10printArrayPii
	.align	16, 0x90
	.type	_Z10printArrayPii,@function
_Z10printArrayPii:                      # @_Z10printArrayPii
	.cfi_startproc
# BB#0:
	sub	rsp, 24
.Ltmp1:
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	dword ptr [rsp + 12], esi
	mov	dword ptr [rsp + 8], 0
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rsp + 8]
	cmp	eax, dword ptr [rsp + 12]
	jge	.LBB1_4
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movabs	rdi, _ZSt4cout
	movsxd	rax, dword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 16]
	mov	esi, dword ptr [rcx + 4*rax]
	call	_ZNSolsEi
	mov	esi, 32
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movabs	rsi, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E
	mov	qword ptr [rsp], rax    # 8-byte Spill
# BB#3:                                 #   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rsp + 8]
	add	eax, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.LBB1_1
.LBB1_4:
	add	rsp, 24
	ret
.Lfunc_end1:
	.size	_Z10printArrayPii, .Lfunc_end1-_Z10printArrayPii
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	sub	rsp, 24
.Ltmp2:
	.cfi_def_cfa_offset 32
	lea	rdi, [rsp]
	mov	dword ptr [rsp + 20], 5
	mov	rax, qword ptr [.L_ZZ4mainE4nums]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [.L_ZZ4mainE4nums+8]
	mov	qword ptr [rsp + 8], rax
	mov	ecx, dword ptr [.L_ZZ4mainE4nums+16]
	mov	dword ptr [rsp + 16], ecx
	mov	esi, dword ptr [rsp + 20]
	call	_Z10printArrayPii
	xor	eax, eax
	add	rsp, 24
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_inlab3.cpp,@function
_GLOBAL__sub_I_inlab3.cpp:              # @_GLOBAL__sub_I_inlab3.cpp
	.cfi_startproc
# BB#0:
	push	rax
.Ltmp3:
	.cfi_def_cfa_offset 16
	call	__cxx_global_var_init
	pop	rax
	ret
.Lfunc_end3:
	.size	_GLOBAL__sub_I_inlab3.cpp, .Lfunc_end3-_GLOBAL__sub_I_inlab3.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L_ZZ4mainE4nums,@object # @_ZZ4mainE4nums
	.section	.rodata,"a",@progbits
	.align	16
.L_ZZ4mainE4nums:
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	7                       # 0x7
	.size	.L_ZZ4mainE4nums, 20

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_inlab3.cpp

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
