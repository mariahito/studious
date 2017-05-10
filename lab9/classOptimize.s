	.text
	.intel_syntax noprefix
	.file	"classOptimize.cpp"
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
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
	sub	rsp, 16
	movabs	rdi, _ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	movabs	rdi, _ZNSt8ios_base4InitD1Ev
	movabs	rsi, _ZStL8__ioinit
	movabs	rdx, __dso_handle
	call	__cxa_atexit
	mov	dword ptr [rbp - 4], eax # 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc

	.text
	.globl	_ZN7NumbersC2EPiS0_S0_
	.align	16, 0x90
	.type	_ZN7NumbersC2EPiS0_S0_,@function
_ZN7NumbersC2EPiS0_S0_:                 # @_ZN7NumbersC2EPiS0_S0_
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	mov	qword ptr [rcx], rdx
	mov	rdx, qword ptr [rbp - 24]
	mov	qword ptr [rcx + 8], rdx
	mov	rdx, qword ptr [rbp - 32]
	mov	qword ptr [rcx + 16], rdx
	pop	rbp
	ret
.Lfunc_end1:
	.size	_ZN7NumbersC2EPiS0_S0_, .Lfunc_end1-_ZN7NumbersC2EPiS0_S0_
	.cfi_endproc

	.globl	_ZN7NumbersD2Ev
	.align	16, 0x90
	.type	_ZN7NumbersD2Ev,@function
_ZN7NumbersD2Ev:                        # @_ZN7NumbersD2Ev
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp8:
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	cmp	rax, 0
	mov	qword ptr [rbp - 16], rdi # 8-byte Spill
	mov	qword ptr [rbp - 24], rax # 8-byte Spill
	je	.LBB2_2
# BB#1:
	mov	rax, qword ptr [rbp - 24] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
.LBB2_2:
	mov	rax, qword ptr [rbp - 16] # 8-byte Reload
	mov	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	qword ptr [rbp - 32], rcx # 8-byte Spill
	je	.LBB2_4
# BB#3:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
.LBB2_4:
	mov	rax, qword ptr [rbp - 16] # 8-byte Reload
	mov	rcx, qword ptr [rax + 16]
	cmp	rcx, 0
	mov	qword ptr [rbp - 40], rcx # 8-byte Spill
	je	.LBB2_6
# BB#5:
	mov	rax, qword ptr [rbp - 40] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
.LBB2_6:
	add	rsp, 48
	pop	rbp
	ret
.Lfunc_end2:
	.size	_ZN7NumbersD2Ev, .Lfunc_end2-_ZN7NumbersD2Ev
	.cfi_endproc

	.globl	_ZN11MoreNumbersC2EPiS0_S0_S0_
	.align	16, 0x90
	.type	_ZN11MoreNumbersC2EPiS0_S0_S0_,@function
_ZN11MoreNumbersC2EPiS0_S0_S0_:         # @_ZN11MoreNumbersC2EPiS0_S0_S0_
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp11:
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], rcx
	mov	qword ptr [rbp - 40], r8
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 24]
	mov	r8, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 48], rdi # 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 48] # 8-byte Reload
	mov	qword ptr [rbp - 56], rcx # 8-byte Spill
	mov	rcx, r8
	call	_ZN7NumbersC2EPiS0_S0_
	mov	rcx, qword ptr [rbp - 40]
	mov	rdx, qword ptr [rbp - 56] # 8-byte Reload
	mov	qword ptr [rdx + 24], rcx
	add	rsp, 64
	pop	rbp
	ret
.Lfunc_end3:
	.size	_ZN11MoreNumbersC2EPiS0_S0_S0_, .Lfunc_end3-_ZN11MoreNumbersC2EPiS0_S0_S0_
	.cfi_endproc

	.globl	_ZN11MoreNumbersD2Ev
	.align	16, 0x90
	.type	_ZN11MoreNumbersD2Ev,@function
_ZN11MoreNumbersD2Ev:                   # @_ZN11MoreNumbersD2Ev
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp14:
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 24]
	cmp	rax, 0
	mov	qword ptr [rbp - 16], rdi # 8-byte Spill
	mov	qword ptr [rbp - 24], rax # 8-byte Spill
	je	.LBB4_2
# BB#1:
	mov	rax, qword ptr [rbp - 24] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
.LBB4_2:
	mov	rax, qword ptr [rbp - 16] # 8-byte Reload
	mov	rdi, rax
	call	_ZN7NumbersD2Ev
	add	rsp, 32
	pop	rbp
	ret
.Lfunc_end4:
	.size	_ZN11MoreNumbersD2Ev, .Lfunc_end4-_ZN11MoreNumbersD2Ev
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# BB#0:
	push	rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp29:
	.cfi_def_cfa_register rbp
	sub	rsp, 112
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 12], 2
	mov	dword ptr [rbp - 16], 3
	mov	eax, 24
	mov	edi, eax
	call	_Znwm
	mov	rdi, rax
	mov	rcx, rax
.Ltmp15:
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 12]
	lea	r8, [rbp - 16]
	mov	qword ptr [rbp - 56], rdi # 8-byte Spill
	mov	rdi, rax
	mov	qword ptr [rbp - 64], rcx # 8-byte Spill
	mov	rcx, r8
	call	_ZN7NumbersC1EPiS0_S0_
.Ltmp16:
	jmp	.LBB5_1
.LBB5_1:
	mov	rax, qword ptr [rbp - 64] # 8-byte Reload
	mov	qword ptr [rbp - 24], rax
	mov	dword ptr [rbp - 8], 5
	mov	rcx, qword ptr [rbp - 24]
	lea	rdx, [rbp - 8]
	mov	qword ptr [rcx], rdx
	mov	dword ptr [rbp - 8], 9
	mov	dword ptr [rbp - 12], 10
	mov	dword ptr [rbp - 16], 16
	mov	dword ptr [rbp - 40], 15
	mov	esi, 32
	mov	edi, esi
	mov	qword ptr [rbp - 72], rdx # 8-byte Spill
	call	_Znwm
	mov	rcx, rax
	mov	rdx, rax
.Ltmp18:
	lea	rdi, [rbp - 12]
	lea	r8, [rbp - 16]
	lea	r9, [rbp - 40]
	mov	qword ptr [rbp - 80], rdi # 8-byte Spill
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 72] # 8-byte Reload
	mov	rax, qword ptr [rbp - 80] # 8-byte Reload
	mov	qword ptr [rbp - 88], rdx # 8-byte Spill
	mov	rdx, rax
	mov	qword ptr [rbp - 96], rcx # 8-byte Spill
	mov	rcx, r8
	mov	r8, r9
	call	_ZN11MoreNumbersC1EPiS0_S0_S0_
.Ltmp19:
	jmp	.LBB5_2
.LBB5_2:
	mov	rax, qword ptr [rbp - 88] # 8-byte Reload
	mov	qword ptr [rbp - 48], rax
	mov	rcx, qword ptr [rbp - 24]
	cmp	rcx, 0
	mov	qword ptr [rbp - 104], rcx # 8-byte Spill
	je	.LBB5_5
# BB#3:
.Ltmp21:
	mov	rdi, qword ptr [rbp - 104] # 8-byte Reload
	call	_ZN7NumbersD1Ev
.Ltmp22:
	jmp	.LBB5_4
.LBB5_4:
	mov	rax, qword ptr [rbp - 104] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
.LBB5_5:
	mov	rax, qword ptr [rbp - 48]
	cmp	rax, 0
	mov	qword ptr [rbp - 112], rax # 8-byte Spill
	je	.LBB5_8
# BB#6:
.Ltmp24:
	mov	rdi, qword ptr [rbp - 112] # 8-byte Reload
	call	_ZN11MoreNumbersD1Ev
.Ltmp25:
	jmp	.LBB5_7
.LBB5_7:
	mov	rax, qword ptr [rbp - 112] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
.LBB5_8:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 112
	pop	rbp
	ret
.LBB5_9:
.Ltmp17:
	mov	ecx, edx
	mov	qword ptr [rbp - 32], rax
	mov	dword ptr [rbp - 36], ecx
	mov	rdi, qword ptr [rbp - 56] # 8-byte Reload
	call	_ZdlPv
	jmp	.LBB5_13
.LBB5_10:
.Ltmp20:
	mov	ecx, edx
	mov	qword ptr [rbp - 32], rax
	mov	dword ptr [rbp - 36], ecx
	mov	rdi, qword ptr [rbp - 96] # 8-byte Reload
	call	_ZdlPv
	jmp	.LBB5_13
.LBB5_11:
.Ltmp23:
	mov	ecx, edx
	mov	qword ptr [rbp - 32], rax
	mov	dword ptr [rbp - 36], ecx
	mov	rax, qword ptr [rbp - 104] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
	jmp	.LBB5_13
.LBB5_12:
.Ltmp26:
	mov	ecx, edx
	mov	qword ptr [rbp - 32], rax
	mov	dword ptr [rbp - 36], ecx
	mov	rax, qword ptr [rbp - 112] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
.LBB5_13:
	mov	rdi, qword ptr [rbp - 32]
	call	_Unwind_Resume
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table5:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	93                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	91                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp15-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp15
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp15-.Lfunc_begin0   # >> Call Site 2 <<
	.long	.Ltmp16-.Ltmp15         #   Call between .Ltmp15 and .Ltmp16
	.long	.Ltmp17-.Lfunc_begin0   #     jumps to .Ltmp17
	.byte	0                       #   On action: cleanup
	.long	.Ltmp16-.Lfunc_begin0   # >> Call Site 3 <<
	.long	.Ltmp18-.Ltmp16         #   Call between .Ltmp16 and .Ltmp18
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp18-.Lfunc_begin0   # >> Call Site 4 <<
	.long	.Ltmp19-.Ltmp18         #   Call between .Ltmp18 and .Ltmp19
	.long	.Ltmp20-.Lfunc_begin0   #     jumps to .Ltmp20
	.byte	0                       #   On action: cleanup
	.long	.Ltmp21-.Lfunc_begin0   # >> Call Site 5 <<
	.long	.Ltmp22-.Ltmp21         #   Call between .Ltmp21 and .Ltmp22
	.long	.Ltmp23-.Lfunc_begin0   #     jumps to .Ltmp23
	.byte	0                       #   On action: cleanup
	.long	.Ltmp24-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Ltmp25-.Ltmp24         #   Call between .Ltmp24 and .Ltmp25
	.long	.Ltmp26-.Lfunc_begin0   #     jumps to .Ltmp26
	.byte	0                       #   On action: cleanup
	.long	.Ltmp25-.Lfunc_begin0   # >> Call Site 7 <<
	.long	.Lfunc_end5-.Ltmp25     #   Call between .Ltmp25 and .Lfunc_end5
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_classOptimize.cpp,@function
_GLOBAL__sub_I_classOptimize.cpp:       # @_GLOBAL__sub_I_classOptimize.cpp
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp32:
	.cfi_def_cfa_register rbp
	call	__cxx_global_var_init
	pop	rbp
	ret
.Lfunc_end6:
	.size	_GLOBAL__sub_I_classOptimize.cpp, .Lfunc_end6-_GLOBAL__sub_I_classOptimize.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_classOptimize.cpp

	.globl	_ZN7NumbersC1EPiS0_S0_
	.type	_ZN7NumbersC1EPiS0_S0_,@function
_ZN7NumbersC1EPiS0_S0_ = _ZN7NumbersC2EPiS0_S0_
	.globl	_ZN7NumbersD1Ev
	.type	_ZN7NumbersD1Ev,@function
_ZN7NumbersD1Ev = _ZN7NumbersD2Ev
	.globl	_ZN11MoreNumbersC1EPiS0_S0_S0_
	.type	_ZN11MoreNumbersC1EPiS0_S0_S0_,@function
_ZN11MoreNumbersC1EPiS0_S0_S0_ = _ZN11MoreNumbersC2EPiS0_S0_S0_
	.globl	_ZN11MoreNumbersD1Ev
	.type	_ZN11MoreNumbersD1Ev,@function
_ZN11MoreNumbersD1Ev = _ZN11MoreNumbersD2Ev
	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
