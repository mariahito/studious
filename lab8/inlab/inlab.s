	.text
	.file	"inlab.cpp"
	.globl	_Z5swap1ii
	.align	16, 0x90
	.type	_Z5swap1ii,@function
_Z5swap1ii:                             # @_Z5swap1ii
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end0:
	.size	_Z5swap1ii, .Lfunc_end0-_Z5swap1ii
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movl	$_ZSt4cout, %edi
	movl	$5, %esi
	callq	_ZNSolsEi
	movq	%rax, %rbx
	movl	$.L.str, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	_ZNSolsEi
	movq	%rax, %r14
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_5
# BB#1:                                 # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit
	cmpb	$0, 56(%rbx)
	je	.LBB1_3
# BB#2:
	movb	67(%rbx), %al
	jmp	.LBB1_4
.LBB1_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB1_4:                                # %_ZNKSt5ctypeIcE5widenEc.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB1_5:
	callq	_ZSt16__throw_bad_castv
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_inlab.cpp,@function
_GLOBAL__sub_I_inlab.cpp:               # @_GLOBAL__sub_I_inlab.cpp
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end2:
	.size	_GLOBAL__sub_I_inlab.cpp, .Lfunc_end2-_GLOBAL__sub_I_inlab.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
	.size	.L.str, 2

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_inlab.cpp

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
