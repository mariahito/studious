	.text
	.intel_syntax noprefix
	.file	"base2.cpp"
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
	.globl	_Z8dispatchRK4base
	.align	16, 0x90
	.type	_Z8dispatchRK4base,@function
_Z8dispatchRK4base:                     # @_Z8dispatchRK4base
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
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	call	qword ptr [rax]
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end1:
	.size	_Z8dispatchRK4base, .Lfunc_end1-_Z8dispatchRK4base
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
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp21:
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	lea	rax, [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 40], rax # 8-byte Spill
	call	_ZN1AC2Ev
	lea	rdi, [rbp - 16]
	call	_ZN1BC2Ev
.Ltmp6:
	mov	rdi, qword ptr [rbp - 40] # 8-byte Reload
	call	_Z8dispatchRK4base
.Ltmp7:
	jmp	.LBB2_1
.LBB2_1:
.Ltmp8:
	lea	rdi, [rbp - 16]
	call	_Z8dispatchRK4base
.Ltmp9:
	jmp	.LBB2_2
.LBB2_2:
.Ltmp13:
	lea	rdi, [rbp - 16]
	call	_ZN1BD2Ev
.Ltmp14:
	jmp	.LBB2_3
.LBB2_3:
	lea	rdi, [rbp - 8]
	call	_ZN1AD2Ev
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
.LBB2_4:
.Ltmp10:
	mov	ecx, edx
	mov	qword ptr [rbp - 24], rax
	mov	dword ptr [rbp - 28], ecx
.Ltmp11:
	lea	rdi, [rbp - 16]
	call	_ZN1BD2Ev
.Ltmp12:
	jmp	.LBB2_6
.LBB2_5:
.Ltmp15:
	mov	ecx, edx
	mov	qword ptr [rbp - 24], rax
	mov	dword ptr [rbp - 28], ecx
	jmp	.LBB2_7
.LBB2_6:
	jmp	.LBB2_7
.LBB2_7:
.Ltmp16:
	lea	rdi, [rbp - 8]
	call	_ZN1AD2Ev
.Ltmp17:
	jmp	.LBB2_8
.LBB2_8:
	jmp	.LBB2_9
.LBB2_9:
	mov	rdi, qword ptr [rbp - 24]
	call	_Unwind_Resume
.LBB2_10:
.Ltmp18:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rbp - 44], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table2:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\274"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp9-.Ltmp6           #   Call between .Ltmp6 and .Ltmp9
	.long	.Ltmp10-.Lfunc_begin0   #     jumps to .Ltmp10
	.byte	0                       #   On action: cleanup
	.long	.Ltmp13-.Lfunc_begin0   # >> Call Site 2 <<
	.long	.Ltmp14-.Ltmp13         #   Call between .Ltmp13 and .Ltmp14
	.long	.Ltmp15-.Lfunc_begin0   #     jumps to .Ltmp15
	.byte	0                       #   On action: cleanup
	.long	.Ltmp11-.Lfunc_begin0   # >> Call Site 3 <<
	.long	.Ltmp17-.Ltmp11         #   Call between .Ltmp11 and .Ltmp17
	.long	.Ltmp18-.Lfunc_begin0   #     jumps to .Ltmp18
	.byte	1                       #   On action: 1
	.long	.Ltmp17-.Lfunc_begin0   # >> Call Site 4 <<
	.long	.Lfunc_end2-.Ltmp17     #   Call between .Ltmp17 and .Lfunc_end2
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.align	4

	.section	.text._ZN1AC2Ev,"axG",@progbits,_ZN1AC2Ev,comdat
	.weak	_ZN1AC2Ev
	.align	16, 0x90
	.type	_ZN1AC2Ev,@function
_ZN1AC2Ev:                              # @_ZN1AC2Ev
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp24:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, rdi
	mov	qword ptr [rbp - 16], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZN4baseC2Ev
	movabs	rax, _ZTV1A
	add	rax, 16
	mov	rdi, qword ptr [rbp - 16] # 8-byte Reload
	mov	qword ptr [rdi], rax
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end3:
	.size	_ZN1AC2Ev, .Lfunc_end3-_ZN1AC2Ev
	.cfi_endproc

	.section	.text._ZN1BC2Ev,"axG",@progbits,_ZN1BC2Ev,comdat
	.weak	_ZN1BC2Ev
	.align	16, 0x90
	.type	_ZN1BC2Ev,@function
_ZN1BC2Ev:                              # @_ZN1BC2Ev
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp27:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, rdi
	mov	qword ptr [rbp - 16], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZN4baseC2Ev
	movabs	rax, _ZTV1B
	add	rax, 16
	mov	rdi, qword ptr [rbp - 16] # 8-byte Reload
	mov	qword ptr [rdi], rax
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end4:
	.size	_ZN1BC2Ev, .Lfunc_end4-_ZN1BC2Ev
	.cfi_endproc

	.section	.text._ZN1BD2Ev,"axG",@progbits,_ZN1BD2Ev,comdat
	.weak	_ZN1BD2Ev
	.align	16, 0x90
	.type	_ZN1BD2Ev,@function
_ZN1BD2Ev:                              # @_ZN1BD2Ev
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp30:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZN4baseD2Ev
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end5:
	.size	_ZN1BD2Ev, .Lfunc_end5-_ZN1BD2Ev
	.cfi_endproc

	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate
	.weak	__clang_call_terminate
	.align	16, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# BB#0:
	push	rax
	call	__cxa_begin_catch
	mov	qword ptr [rsp], rax    # 8-byte Spill
	call	_ZSt9terminatev
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate

	.section	.text._ZN1AD2Ev,"axG",@progbits,_ZN1AD2Ev,comdat
	.weak	_ZN1AD2Ev
	.align	16, 0x90
	.type	_ZN1AD2Ev,@function
_ZN1AD2Ev:                              # @_ZN1AD2Ev
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp33:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZN4baseD2Ev
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end7:
	.size	_ZN1AD2Ev, .Lfunc_end7-_ZN1AD2Ev
	.cfi_endproc

	.section	.text._ZN4baseC2Ev,"axG",@progbits,_ZN4baseC2Ev,comdat
	.weak	_ZN4baseC2Ev
	.align	16, 0x90
	.type	_ZN4baseC2Ev,@function
_ZN4baseC2Ev:                           # @_ZN4baseC2Ev
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp36:
	.cfi_def_cfa_register rbp
	movabs	rax, _ZTV4base
	add	rax, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rax
	pop	rbp
	ret
.Lfunc_end8:
	.size	_ZN4baseC2Ev, .Lfunc_end8-_ZN4baseC2Ev
	.cfi_endproc

	.section	.text._ZNK1A1fEv,"axG",@progbits,_ZNK1A1fEv,comdat
	.weak	_ZNK1A1fEv
	.align	16, 0x90
	.type	_ZNK1A1fEv,@function
_ZNK1A1fEv:                             # @_ZNK1A1fEv
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp39:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movabs	rax, _ZSt4cout
	movabs	rsi, .L.str
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movabs	rsi, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E
	mov	qword ptr [rbp - 16], rax # 8-byte Spill
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end9:
	.size	_ZNK1A1fEv, .Lfunc_end9-_ZNK1A1fEv
	.cfi_endproc

	.section	.text._ZN1AD0Ev,"axG",@progbits,_ZN1AD0Ev,comdat
	.weak	_ZN1AD0Ev
	.align	16, 0x90
	.type	_ZN1AD0Ev,@function
_ZN1AD0Ev:                              # @_ZN1AD0Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# BB#0:
	push	rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp45:
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rax, rdi
.Ltmp40:
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	call	_ZN1AD2Ev
.Ltmp41:
	jmp	.LBB10_1
.LBB10_1:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
	add	rsp, 32
	pop	rbp
	ret
.LBB10_2:
.Ltmp42:
	mov	ecx, edx
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], ecx
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
# BB#3:
	mov	rdi, qword ptr [rbp - 16]
	call	_Unwind_Resume
.Lfunc_end10:
	.size	_ZN1AD0Ev, .Lfunc_end10-_ZN1AD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table10:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp40-.Lfunc_begin1   # >> Call Site 1 <<
	.long	.Ltmp41-.Ltmp40         #   Call between .Ltmp40 and .Ltmp41
	.long	.Ltmp42-.Lfunc_begin1   #     jumps to .Ltmp42
	.byte	0                       #   On action: cleanup
	.long	.Ltmp41-.Lfunc_begin1   # >> Call Site 2 <<
	.long	.Lfunc_end10-.Ltmp41    #   Call between .Ltmp41 and .Lfunc_end10
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZN4baseD2Ev,"axG",@progbits,_ZN4baseD2Ev,comdat
	.weak	_ZN4baseD2Ev
	.align	16, 0x90
	.type	_ZN4baseD2Ev,@function
_ZN4baseD2Ev:                           # @_ZN4baseD2Ev
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp48:
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret
.Lfunc_end11:
	.size	_ZN4baseD2Ev, .Lfunc_end11-_ZN4baseD2Ev
	.cfi_endproc

	.section	.text._ZN4baseD0Ev,"axG",@progbits,_ZN4baseD0Ev,comdat
	.weak	_ZN4baseD0Ev
	.align	16, 0x90
	.type	_ZN4baseD0Ev,@function
_ZN4baseD0Ev:                           # @_ZN4baseD0Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# BB#0:
	push	rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp54:
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rax, rdi
.Ltmp49:
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	call	_ZN4baseD2Ev
.Ltmp50:
	jmp	.LBB12_1
.LBB12_1:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
	add	rsp, 32
	pop	rbp
	ret
.LBB12_2:
.Ltmp51:
	mov	ecx, edx
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], ecx
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
# BB#3:
	mov	rdi, qword ptr [rbp - 16]
	call	_Unwind_Resume
.Lfunc_end12:
	.size	_ZN4baseD0Ev, .Lfunc_end12-_ZN4baseD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table12:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp49-.Lfunc_begin2   # >> Call Site 1 <<
	.long	.Ltmp50-.Ltmp49         #   Call between .Ltmp49 and .Ltmp50
	.long	.Ltmp51-.Lfunc_begin2   #     jumps to .Ltmp51
	.byte	0                       #   On action: cleanup
	.long	.Ltmp50-.Lfunc_begin2   # >> Call Site 2 <<
	.long	.Lfunc_end12-.Ltmp50    #   Call between .Ltmp50 and .Lfunc_end12
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text._ZNK1B1fEv,"axG",@progbits,_ZNK1B1fEv,comdat
	.weak	_ZNK1B1fEv
	.align	16, 0x90
	.type	_ZNK1B1fEv,@function
_ZNK1B1fEv:                             # @_ZNK1B1fEv
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp57:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movabs	rax, _ZSt4cout
	movabs	rsi, .L.str.1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movabs	rsi, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E
	mov	qword ptr [rbp - 16], rax # 8-byte Spill
	add	rsp, 16
	pop	rbp
	ret
.Lfunc_end13:
	.size	_ZNK1B1fEv, .Lfunc_end13-_ZNK1B1fEv
	.cfi_endproc

	.section	.text._ZN1BD0Ev,"axG",@progbits,_ZN1BD0Ev,comdat
	.weak	_ZN1BD0Ev
	.align	16, 0x90
	.type	_ZN1BD0Ev,@function
_ZN1BD0Ev:                              # @_ZN1BD0Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# BB#0:
	push	rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp63:
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rax, rdi
.Ltmp58:
	mov	qword ptr [rbp - 32], rax # 8-byte Spill
	call	_ZN1BD2Ev
.Ltmp59:
	jmp	.LBB14_1
.LBB14_1:
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
	add	rsp, 32
	pop	rbp
	ret
.LBB14_2:
.Ltmp60:
	mov	ecx, edx
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], ecx
	mov	rax, qword ptr [rbp - 32] # 8-byte Reload
	mov	rdi, rax
	call	_ZdlPv
# BB#3:
	mov	rdi, qword ptr [rbp - 16]
	call	_Unwind_Resume
.Lfunc_end14:
	.size	_ZN1BD0Ev, .Lfunc_end14-_ZN1BD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.align	4
GCC_except_table14:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp58-.Lfunc_begin3   # >> Call Site 1 <<
	.long	.Ltmp59-.Ltmp58         #   Call between .Ltmp58 and .Ltmp59
	.long	.Ltmp60-.Lfunc_begin3   #     jumps to .Ltmp60
	.byte	0                       #   On action: cleanup
	.long	.Ltmp59-.Lfunc_begin3   # >> Call Site 2 <<
	.long	.Lfunc_end14-.Ltmp59    #   Call between .Ltmp59 and .Lfunc_end14
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.align	4

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__sub_I_base2.cpp,@function
_GLOBAL__sub_I_base2.cpp:               # @_GLOBAL__sub_I_base2.cpp
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp66:
	.cfi_def_cfa_register rbp
	call	__cxx_global_var_init
	pop	rbp
	ret
.Lfunc_end15:
	.size	_GLOBAL__sub_I_base2.cpp, .Lfunc_end15-_GLOBAL__sub_I_base2.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	_ZTV1A,@object          # @_ZTV1A
	.section	.rodata._ZTV1A,"aG",@progbits,_ZTV1A,comdat
	.weak	_ZTV1A
	.align	8
_ZTV1A:
	.quad	0
	.quad	_ZTI1A
	.quad	_ZNK1A1fEv
	.quad	_ZN1AD2Ev
	.quad	_ZN1AD0Ev
	.size	_ZTV1A, 40

	.type	_ZTS1A,@object          # @_ZTS1A
	.section	.rodata._ZTS1A,"aG",@progbits,_ZTS1A,comdat
	.weak	_ZTS1A
_ZTS1A:
	.asciz	"1A"
	.size	_ZTS1A, 3

	.type	_ZTS4base,@object       # @_ZTS4base
	.section	.rodata._ZTS4base,"aG",@progbits,_ZTS4base,comdat
	.weak	_ZTS4base
_ZTS4base:
	.asciz	"4base"
	.size	_ZTS4base, 6

	.type	_ZTI4base,@object       # @_ZTI4base
	.section	.rodata._ZTI4base,"aG",@progbits,_ZTI4base,comdat
	.weak	_ZTI4base
	.align	8
_ZTI4base:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS4base
	.size	_ZTI4base, 16

	.type	_ZTI1A,@object          # @_ZTI1A
	.section	.rodata._ZTI1A,"aG",@progbits,_ZTI1A,comdat
	.weak	_ZTI1A
	.align	16
_ZTI1A:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS1A
	.quad	_ZTI4base
	.size	_ZTI1A, 24

	.type	_ZTV4base,@object       # @_ZTV4base
	.section	.rodata._ZTV4base,"aG",@progbits,_ZTV4base,comdat
	.weak	_ZTV4base
	.align	8
_ZTV4base:
	.quad	0
	.quad	_ZTI4base
	.quad	__cxa_pure_virtual
	.quad	_ZN4baseD2Ev
	.quad	_ZN4baseD0Ev
	.size	_ZTV4base, 40

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"A::f()"
	.size	.L.str, 7

	.type	_ZTV1B,@object          # @_ZTV1B
	.section	.rodata._ZTV1B,"aG",@progbits,_ZTV1B,comdat
	.weak	_ZTV1B
	.align	8
_ZTV1B:
	.quad	0
	.quad	_ZTI1B
	.quad	_ZNK1B1fEv
	.quad	_ZN1BD2Ev
	.quad	_ZN1BD0Ev
	.size	_ZTV1B, 40

	.type	_ZTS1B,@object          # @_ZTS1B
	.section	.rodata._ZTS1B,"aG",@progbits,_ZTS1B,comdat
	.weak	_ZTS1B
_ZTS1B:
	.asciz	"1B"
	.size	_ZTS1B, 3

	.type	_ZTI1B,@object          # @_ZTI1B
	.section	.rodata._ZTI1B,"aG",@progbits,_ZTI1B,comdat
	.weak	_ZTI1B
	.align	16
_ZTI1B:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS1B
	.quad	_ZTI4base
	.size	_ZTI1B, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"B::f()"
	.size	.L.str.1, 7

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_GLOBAL__sub_I_base2.cpp

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
