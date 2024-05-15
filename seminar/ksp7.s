	.file	"ksp7.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB1918:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L4
	movq	-16(%rbp), %rax
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1918:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.rodata
	.align 8
	.type	_ZL3mod, @object
	.size	_ZL3mod, 8
_ZL3mod:
	.quad	1000000007
	.text
	.globl	_Z3cmpSt4pairIibES0_
	.type	_Z3cmpSt4pairIibES0_, @function
_Z3cmpSt4pairIibES0_:
.LFB9764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L7
	movzbl	-4(%rbp), %eax
	movzbl	-12(%rbp), %edx
	cmpb	%al, %dl
	setb	%al
	jmp	.L8
.L7:
	movl	-8(%rbp), %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	setl	%al
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9764:
	.size	_Z3cmpSt4pairIibES0_, .-_Z3cmpSt4pairIibES0_
	.globl	_Z6binpowyyi
	.type	_Z6binpowyyi, @function
_Z6binpowyyi:
.LFB9765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L10
	movl	$1, %eax
	jmp	.L11
.L10:
	movq	-32(%rbp), %rax
	shrq	%rax
	movq	%rax, %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z6binpowyyi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	%rax, %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L12
	movq	-8(%rbp), %rax
	imulq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9765:
	.size	_Z6binpowyyi, .-_Z6binpowyyi
	.globl	_Z7inverseii
	.type	_Z7inverseii, @function
_Z7inverseii:
.LFB9766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z6binpowyyi
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9766:
	.size	_Z7inverseii, .-_Z7inverseii
	.globl	_Z20binomial_coefficientjjPx
	.type	_Z20binomial_coefficientjjPx, @function
_Z20binomial_coefficientjjPx:
.LFB9767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-24(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
	movq	%rax, %rcx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movl	$1000000007, %esi
	movl	%eax, %edi
	call	_Z7inverseii
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9767:
	.size	_Z20binomial_coefficientjjPx, .-_Z20binomial_coefficientjjPx
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD2Ev:
.LFB9773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt4pairIibEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9773:
	.size	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC2Ev, @function
_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC2Ev:
.LFB9775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9775:
	.size	_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC2Ev, .-_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC1Ev,_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC2Ev
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EEC2Ev
	.type	_ZNSt6vectorISt4pairIibESaIS1_EEC2Ev, @function
_ZNSt6vectorISt4pairIibESaIS1_EEC2Ev:
.LFB9777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9777:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EEC2Ev, .-_ZNSt6vectorISt4pairIibESaIS1_EEC2Ev
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EEC1Ev
	.set	_ZNSt6vectorISt4pairIibESaIS1_EEC1Ev,_ZNSt6vectorISt4pairIibESaIS1_EEC2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB9768:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA9768
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rsp, %rax
	movq	%rax, %r12
	movl	$0, %edi
.LEHB0:
	call	_ZNSt8ios_base15sync_with_stdioEb
	movl	$0, %esi
	movl	$_ZSt3cin+16, %edi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
	leaq	-108(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERj
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSirsERj
.LEHE0:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EEC1Ev
	movl	$0, -20(%rbp)
	jmp	.L21
.L22:
	leaq	-148(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
.LEHB1:
	call	_ZNSirsERi
	movq	%rax, %rdx
	leaq	-152(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSirsERi
	movb	$1, -93(%rbp)
	leaq	-93(%rbp), %rdx
	leaq	-148(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_
	movb	$0, -81(%rbp)
	leaq	-81(%rbp), %rdx
	leaq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_
	movq	%rax, -92(%rbp)
	leaq	-92(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_
	addl	$1, -20(%rbp)
.L21:
	movl	-20(%rbp), %edx
	movl	-108(%rbp), %eax
	cmpl	%eax, %edx
	jb	.L22
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE3endEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE5beginEv
	movl	$_Z3cmpSt4pairIibES0_, %edx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEPFbS3_S3_EEvT_SB_T0_
	movl	-108(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movl	%edx, %eax
	leaq	0(,%rax,8), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	$1, (%rax)
	movq	$1, -32(%rbp)
	jmp	.L23
.L24:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	imulq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rcx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -32(%rbp)
.L23:
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	cmpq	%rax, -32(%rbp)
	jl	.L24
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L25
.L29:
	movl	-44(%rbp), %edx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EEixEm
	movzbl	4(%rax), %eax
	testb	%al, %al
	je	.L26
	movl	-112(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -40(%rbp)
	jb	.L27
	movl	-112(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-64(%rbp), %rdx
	movl	-40(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	_Z20binomial_coefficientjjPx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	addl	%eax, -36(%rbp)
	movl	-36(%rbp), %ecx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movl	%eax, -36(%rbp)
.L27:
	addl	$1, -40(%rbp)
	jmp	.L28
.L26:
	subl	$1, -40(%rbp)
.L28:
	addl	$1, -44(%rbp)
.L25:
	movl	-44(%rbp), %ebx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L29
	movl	-36(%rbp), %ecx
	movabsq	$-8543223828751151131, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$29, %rax
	imulq	$1000000007, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, %rsi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEy
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.LEHE1:
	movl	$0, %ebx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EED1Ev
	movq	%r12, %rsp
	movl	%ebx, %eax
	jmp	.L33
.L32:
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L33:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9768:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA9768:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9768-.LLSDACSB9768
.LLSDACSB9768:
	.uleb128 .LEHB0-.LFB9768
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9768
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L32-.LFB9768
	.uleb128 0
	.uleb128 .LEHB2-.LFB9768
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9768:
	.text
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB10028:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L35
	movq	-16(%rbp), %rax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
.L36:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10028:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt4swapIbENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIbENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.weak	_ZSt4swapIbENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIbENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIbENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB10175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	leaq	-1(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10175:
	.size	_ZSt4swapIbENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIbENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC2Ev:
.LFB10468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	nop
	nop
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10468:
	.size	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev:
.LFB10474:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA10474
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10474:
	.section	.gcc_except_table
.LLSDA10474:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10474-.LLSDACSB10474
.LLSDACSB10474:
.LLSDACSE10474:
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev, .-_ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseISt4pairIibESaIS1_EED1Ev,_ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EED2Ev
	.type	_ZNSt6vectorISt4pairIibESaIS1_EED2Ev, @function
_ZNSt6vectorISt4pairIibESaIS1_EED2Ev:
.LFB10477:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA10477
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIibEEvT_S3_
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10477:
	.section	.gcc_except_table
.LLSDA10477:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE10477-.LLSDACSB10477
.LLSDACSB10477:
.LLSDACSE10477:
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorISt4pairIibESaIS1_EED2Ev, .-_ZNSt6vectorISt4pairIibESaIS1_EED2Ev
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EED1Ev
	.set	_ZNSt6vectorISt4pairIibESaIS1_EED1Ev,_ZNSt6vectorISt4pairIibESaIS1_EED2Ev
	.section	.text._ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_,"axG",@progbits,_ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_,comdat
	.weak	_ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_
	.type	_ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_, @function
_ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_:
.LFB10479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movq	%rax, %rcx
	leaq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEC1IRibLb1EEEOT_OT0_
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10479:
	.size	_ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_, .-_ZSt9make_pairIRibESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_
	.type	_ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_, @function
_ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_:
.LFB10484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10484:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_, .-_ZNSt6vectorISt4pairIibESaIS1_EE9push_backEOS1_
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EE5beginEv,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EE5beginEv
	.type	_ZNSt6vectorISt4pairIibESaIS1_EE5beginEv, @function
_ZNSt6vectorISt4pairIibESaIS1_EE5beginEv:
.LFB10485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10485:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EE5beginEv, .-_ZNSt6vectorISt4pairIibESaIS1_EE5beginEv
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EE3endEv,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EE3endEv
	.type	_ZNSt6vectorISt4pairIibESaIS1_EE3endEv, @function
_ZNSt6vectorISt4pairIibESaIS1_EE3endEv:
.LFB10486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10486:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EE3endEv, .-_ZNSt6vectorISt4pairIibESaIS1_EE3endEv
	.section	.text._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEPFbS3_S3_EEvT_SB_T0_,"axG",@progbits,_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEPFbS3_S3_EEvT_SB_T0_,comdat
	.weak	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEPFbS3_S3_EEvT_SB_T0_
	.type	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEPFbS3_S3_EEvT_SB_T0_, @function
_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEPFbS3_S3_EEvT_SB_T0_:
.LFB10487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbSt4pairIibES3_EEENS0_15_Iter_comp_iterIT_EES7_
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10487:
	.size	_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEPFbS3_S3_EEvT_SB_T0_, .-_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEPFbS3_S3_EEvT_SB_T0_
	.section	.text._ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv, @function
_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv:
.LFB10488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10488:
	.size	_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv, .-_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EEixEm
	.type	_ZNSt6vectorISt4pairIibESaIS1_EEixEm, @function
_ZNSt6vectorISt4pairIibESaIS1_EEixEm:
.LFB10489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10489:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EEixEm, .-_ZNSt6vectorISt4pairIibESaIS1_EEixEm
	.section	.text._ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB10588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10588:
	.size	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB10590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10590:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_:
.LFB10658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10658:
	.size	_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRbEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC2Ev:
.LFB10923:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10923:
	.size	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorISt4pairIibEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIibEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIibEED2Ev
	.type	_ZNSt15__new_allocatorISt4pairIibEED2Ev, @function
_ZNSt15__new_allocatorISt4pairIibEED2Ev:
.LFB10926:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10926:
	.size	_ZNSt15__new_allocatorISt4pairIibEED2Ev, .-_ZNSt15__new_allocatorISt4pairIibEED2Ev
	.weak	_ZNSt15__new_allocatorISt4pairIibEED1Ev
	.set	_ZNSt15__new_allocatorISt4pairIibEED1Ev,_ZNSt15__new_allocatorISt4pairIibEED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m:
.LFB10928:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L63
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt4pairIibEE10deallocateEPS1_m
	nop
.L63:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10928:
	.size	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB10929:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10929:
	.size	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB10931:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10931:
	.size	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZNSt4pairIibEC2IRibLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIibEC5IRibLb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIibEC2IRibLb1EEEOT_OT0_
	.type	_ZNSt4pairIibEC2IRibLb1EEEOT_OT0_, @function
_ZNSt4pairIibEC2IRibLb1EEEOT_OT0_:
.LFB10933:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, 4(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10933:
	.size	_ZNSt4pairIibEC2IRibLb1EEEOT_OT0_, .-_ZNSt4pairIibEC2IRibLb1EEEOT_OT0_
	.weak	_ZNSt4pairIibEC1IRibLb1EEEOT_OT0_
	.set	_ZNSt4pairIibEC1IRibLb1EEEOT_OT0_,_ZNSt4pairIibEC2IRibLb1EEEOT_OT0_
	.section	.text._ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB10935:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10935:
	.size	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_
	.type	_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_, @function
_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_:
.LFB10936:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L72
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L73
.L72:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE3endEv
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
.L73:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10936:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_, .-_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC2ERKS3_, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC2ERKS3_:
.LFB10939:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10939:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC2ERKS3_, .-_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC1ERKS3_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC1ERKS3_,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC2ERKS3_
	.section	.text._ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbSt4pairIibES3_EEENS0_15_Iter_comp_iterIT_EES7_,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbSt4pairIibES3_EEENS0_15_Iter_comp_iterIT_EES7_,comdat
	.weak	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbSt4pairIibES3_EEENS0_15_Iter_comp_iterIT_EES7_
	.type	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbSt4pairIibES3_EEENS0_15_Iter_comp_iterIT_EES7_, @function
_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbSt4pairIibES3_EEENS0_15_Iter_comp_iterIT_EES7_:
.LFB10941:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC1ES5_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10941:
	.size	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbSt4pairIibES3_EEENS0_15_Iter_comp_iterIT_EES7_, .-_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFbSt4pairIibES3_EEENS0_15_Iter_comp_iterIT_EES7_
	.section	.text._ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_,"axG",@progbits,_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_,comdat
	.weak	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	.type	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_, @function
_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_:
.LFB10942:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	je	.L80
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rdi
	call	_ZSt4__lgIlET_S0_
	leaq	(%rax,%rax), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
.L80:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10942:
	.size	_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_, .-_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	.section	.text._ZSt11__bit_widthImEiT_,"axG",@progbits,_ZSt11__bit_widthImEiT_,comdat
	.weak	_ZSt11__bit_widthImEiT_
	.type	_ZSt11__bit_widthImEiT_, @function
_ZSt11__bit_widthImEiT_:
.LFB11113:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$64, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt13__countl_zeroImEiT_
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11113:
	.size	_ZSt11__bit_widthImEiT_, .-_ZSt11__bit_widthImEiT_
	.section	.text._ZSt8_DestroyIPSt4pairIibEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPSt4pairIibEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPSt4pairIibEEvT_S3_
	.type	_ZSt8_DestroyIPSt4pairIibEEvT_S3_, @function
_ZSt8_DestroyIPSt4pairIibEEvT_S3_:
.LFB11160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIibEEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11160:
	.size	_ZSt8_DestroyIPSt4pairIibEEvT_S3_, .-_ZSt8_DestroyIPSt4pairIibEEvT_S3_
	.section	.text._ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB11161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11161:
	.size	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.rodata
.LC0:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.type	_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, @function
_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:
.LFB11163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-136(%rbp), %rax
	movl	$.LC0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc
	movq	%rax, -24(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE5beginEv
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-48(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-136(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-72(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, -104(%rbp)
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	$0, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rsi
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	movq	%rax, -64(%rbp)
	addq	$8, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-32(%rbp), %rdx
	sarq	$3, %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m
	movq	-136(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11163:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, .-_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EE4backEv,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EE4backEv,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EE4backEv
	.type	_ZNSt6vectorISt4pairIibESaIS1_EE4backEv, @function
_ZNSt6vectorISt4pairIibESaIS1_EE4backEv:
.LFB11167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE3endEv
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11167:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EE4backEv, .-_ZNSt6vectorISt4pairIibESaIS1_EE4backEv
	.section	.text._ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_:
.LFB11168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11168:
	.size	_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC2ES5_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC5ES5_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC2ES5_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC2ES5_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC2ES5_:
.LFB11170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11170:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC2ES5_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC2ES5_
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC1ES5_
	.set	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC1ES5_,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEC2ES5_
	.section	.text._ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.type	_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, @function
_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB11172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11172:
	.size	_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .-_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.section	.text._ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,"axG",@progbits,_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_,comdat
	.weak	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.type	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, @function
_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_:
.LFB11173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11173:
	.size	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, .-_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	.section	.text._ZSt4__lgIlET_S0_,"axG",@progbits,_ZSt4__lgIlET_S0_,comdat
	.weak	_ZSt4__lgIlET_S0_
	.type	_ZSt4__lgIlET_S0_, @function
_ZSt4__lgIlET_S0_:
.LFB11174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__bit_widthImEiT_
	subl	$1, %eax
	cltq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11174:
	.size	_ZSt4__lgIlET_S0_, .-_ZSt4__lgIlET_S0_
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_, @function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_:
.LFB11175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	jmp	.L99
.L102:
	cmpq	$0, -40(%rbp)
	jne	.L100
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_
	jmp	.L98
.L100:
	subq	$1, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_T0_
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L99:
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	cmpq	$16, %rax
	setg	%al
	testb	%al, %al
	jne	.L102
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11175:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_, .-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_T1_
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_, @function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_:
.LFB11176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	cmpq	$16, %rax
	setg	%al
	testb	%al, %al
	je	.L104
	leaq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	leaq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	jmp	.L106
.L104:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
.L106:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11176:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_, .-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	.section	.text._ZSt13__countl_zeroImEiT_,"axG",@progbits,_ZSt13__countl_zeroImEiT_,comdat
	.weak	_ZSt13__countl_zeroImEiT_
	.type	_ZSt13__countl_zeroImEiT_, @function
_ZSt13__countl_zeroImEiT_:
.LFB11293:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	$64, -4(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L108
	movl	$64, %eax
	jmp	.L109
.L108:
	movl	$64, -8(%rbp)
	movl	$64, -12(%rbp)
	movl	$32, -16(%rbp)
	movl	$0, -20(%rbp)
	bsrq	-40(%rbp), %rax
	xorq	$63, %rax
	nop
.L109:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11293:
	.size	_ZSt13__countl_zeroImEiT_, .-_ZSt13__countl_zeroImEiT_
	.section	.text._ZNSt15__new_allocatorISt4pairIibEE10deallocateEPS1_m,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIibEE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIibEE10deallocateEPS1_m
	.type	_ZNSt15__new_allocatorISt4pairIibEE10deallocateEPS1_m, @function
_ZNSt15__new_allocatorISt4pairIibEE10deallocateEPS1_m:
.LFB11323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11323:
	.size	_ZNSt15__new_allocatorISt4pairIibEE10deallocateEPS1_m, .-_ZNSt15__new_allocatorISt4pairIibEE10deallocateEPS1_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIibEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIibEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIibEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIibEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIibEEEvT_S5_:
.LFB11324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11324:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIibEEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIibEEEvT_S5_
	.section	.text._ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc:
.LFB11326:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L114
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc
.L114:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE4sizeEv
	cmpq	%rax, -24(%rbp)
	jb	.L115
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv
	cmpq	-24(%rbp), %rax
	jnb	.L116
.L115:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv
	jmp	.L117
.L116:
	movq	-24(%rbp), %rax
.L117:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11326:
	.size	_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm:
.LFB11327:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L120
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt4pairIibEE8allocateEmPKv
	nop
	jmp	.L122
.L120:
	movl	$0, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11327:
	.size	_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_,comdat
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.type	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, @function
_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_:
.LFB11328:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11328:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, .-_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB11329:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11329:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl:
.LFB11331:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11331:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv:
.LFB11332:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11332:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_,"axG",@progbits,_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_,comdat
	.weak	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_
	.type	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_, @function
_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_:
.LFB11333:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11333:
	.size	_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_, .-_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_
	.section	.text._ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_T0_,comdat
	.weak	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_T0_
	.type	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_T0_, @function
_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_T0_:
.LFB11334:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmiEl
	movq	%rax, %rbx
	leaq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, %rsi
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_SE_T0_
	leaq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_SE_T0_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11334:
	.size	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_T0_, .-_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_T0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl:
.LFB11335:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEC1ERKS3_
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11335:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	.section	.text._ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_,"axG",@progbits,_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_,comdat
	.weak	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	.type	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_, @function
_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_:
.LFB11336:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxeqIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L144
	leaq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -24(%rbp)
	jmp	.L140
.L143:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	je	.L141
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	jmp	.L142
.L141:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_
.L142:
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv
.L140:
	leaq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L143
	jmp	.L137
.L144:
	nop
.L137:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11336:
	.size	_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_, .-_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	.section	.text._ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_,"axG",@progbits,_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_,comdat
	.weak	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	.type	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_, @function
_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_:
.LFB11337:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L146
.L147:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv
.L146:
	leaq	-32(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L147
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11337:
	.size	_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_, .-_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_T0_
	.section	.text._ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv
	.type	_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv, @function
_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv:
.LFB11439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_max_sizeERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11439:
	.size	_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv, .-_ZNKSt6vectorISt4pairIibESaIS1_EE8max_sizeEv
	.section	.text._ZSt12__relocate_aIPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt12__relocate_aIPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt12__relocate_aIPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt12__relocate_aIPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt12__relocate_aIPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB11441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIibEET_S3_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIibEET_S3_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIibEET_S3_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11441:
	.size	_ZSt12__relocate_aIPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt12__relocate_aIPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_, @function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_:
.LFB11443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L153
.L155:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	je	.L154
	leaq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_
.L154:
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv
.L153:
	leaq	-40(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	testb	%al, %al
	jne	.L155
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11443:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_, .-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_T0_
	.section	.text._ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_,"axG",@progbits,_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_,comdat
	.weak	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_
	.type	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_, @function
_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_:
.LFB11444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L157
.L158:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_
.L157:
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	cmpq	$1, %rax
	setg	%al
	testb	%al, %al
	jne	.L158
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11444:
	.size	_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_, .-_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_
	.section	.text._ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_SE_T0_,"axG",@progbits,_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_SE_T0_,comdat
	.weak	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_SE_T0_
	.type	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_SE_T0_, @function
_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_SE_T0_:
.LFB11445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	je	.L160
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	je	.L161
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L166
.L161:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	je	.L163
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L166
.L163:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L166
.L160:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	je	.L164
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L166
.L164:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	je	.L165
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	jmp	.L166
.L165:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
.L166:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11445:
	.size	_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_SE_T0_, .-_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_SE_T0_
	.section	.text._ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_SE_T0_,"axG",@progbits,_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_SE_T0_,comdat
	.weak	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_SE_T0_
	.type	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_SE_T0_, @function
_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_SE_T0_:
.LFB11446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	jmp	.L168
.L169:
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv
.L168:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	jne	.L169
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv
	jmp	.L170
.L171:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv
.L170:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	jne	.L171
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	xorl	$1, %eax
	testb	%al, %al
	je	.L172
	movq	-8(%rbp), %rax
	jmp	.L175
.L172:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv
	jmp	.L168
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11446:
	.size	_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_SE_T0_, .-_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEET_SE_SE_SE_T0_
	.section	.text._ZN9__gnu_cxxeqIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxeqIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxeqIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.type	_ZN9__gnu_cxxeqIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, @function
_ZN9__gnu_cxxeqIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB11447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11447:
	.size	_ZN9__gnu_cxxeqIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .-_ZN9__gnu_cxxeqIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv:
.LFB11448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11448:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEppEv
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_, @function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_:
.LFB11449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %r12
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rbx), %rdx
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%r12
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11449:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_, .-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	.section	.text._ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,"axG",@progbits,_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_,comdat
	.weak	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.type	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_, @function
_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_:
.LFB11454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11454:
	.size	_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_, .-_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_
	.section	.text._ZNSt4pairIibEaSEOS0_,"axG",@progbits,_ZNSt4pairIibEaSEOS0_,comdat
	.align 2
	.weak	_ZNSt4pairIibEaSEOS0_
	.type	_ZNSt4pairIibEaSEOS0_, @function
_ZNSt4pairIibEaSEOS0_:
.LFB11455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIbEOT_RNSt16remove_referenceIS0_E4typeE
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, 4(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11455:
	.size	_ZNSt4pairIibEaSEOS0_, .-_ZNSt4pairIibEaSEOS0_
	.section	.text._ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE,comdat
	.weak	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE, @function
_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE:
.LFB11456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_
	movq	%rax, %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC1EONS0_15_Iter_comp_iterIS5_EE
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11456:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE, .-_ZN9__gnu_cxx5__ops15__val_comp_iterIPFbSt4pairIibES3_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS7_EE
	.section	.text._ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_,comdat
	.weak	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_
	.type	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_, @function
_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_:
.LFB11457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv
	jmp	.L189
.L190:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv
.L189:
	movq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_
	testb	%al, %al
	jne	.L190
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11457:
	.size	_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_, .-_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbS3_S3_EEEEvT_T0_
	.section	.text._ZNSt6vectorISt4pairIibESaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorISt4pairIibESaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorISt4pairIibESaIS1_EE11_S_max_sizeERKS2_:
.LFB11542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movabsq	$1152921504606846975, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$1152921504606846975, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11542:
	.size	_ZNSt6vectorISt4pairIibESaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorISt4pairIibESaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNKSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB11543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11543:
	.size	_ZNKSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseISt4pairIibESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorISt4pairIibEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIibEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIibEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorISt4pairIibEE8allocateEmPKv, @function
_ZNSt15__new_allocatorISt4pairIibEE8allocateEmPKv:
.LFB11544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L200
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L201
	call	_ZSt28__throw_bad_array_new_lengthv
.L201:
	call	_ZSt17__throw_bad_allocv
.L200:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11544:
	.size	_ZNSt15__new_allocatorISt4pairIibEE8allocateEmPKv, .-_ZNSt15__new_allocatorISt4pairIibEE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIPSt4pairIibEET_S3_,"axG",@progbits,_ZSt12__niter_baseIPSt4pairIibEET_S3_,comdat
	.weak	_ZSt12__niter_baseIPSt4pairIibEET_S3_
	.type	_ZSt12__niter_baseIPSt4pairIibEET_S3_, @function
_ZSt12__niter_baseIPSt4pairIibEET_S3_:
.LFB11545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11545:
	.size	_ZSt12__niter_baseIPSt4pairIibEET_S3_, .-_ZSt12__niter_baseIPSt4pairIibEET_S3_
	.section	.text._ZSt14__relocate_a_1IPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_,comdat
	.weak	_ZSt14__relocate_a_1IPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_
	.type	_ZSt14__relocate_a_1IPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_, @function
_ZSt14__relocate_a_1IPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_:
.LFB11546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L206
.L207:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIibEEPT_RS2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIibEEPT_RS2_
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt19__relocate_object_aISt4pairIibES1_SaIS1_EEvPT_PT0_RT1_
	addq	$8, -40(%rbp)
	addq	$8, -24(%rbp)
.L206:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L207
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11546:
	.size	_ZSt14__relocate_a_1IPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_, .-_ZSt14__relocate_a_1IPSt4pairIibES2_SaIS1_EET0_T_S5_S4_RT1_
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_,comdat
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_, @function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_:
.LFB11547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	cmpq	$1, %rax
	setle	%al
	testb	%al, %al
	jne	.L214
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$2, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
.L213:
	movq	-8(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_
	cmpq	$0, -8(%rbp)
	je	.L215
	subq	$1, -8(%rbp)
	jmp	.L213
.L214:
	nop
	jmp	.L209
.L215:
	nop
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11547:
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_, .-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_RT0_
	.section	.text._ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,"axG",@progbits,_ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_,comdat
	.weak	_ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.type	_ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, @function
_ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_:
.LFB11548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setb	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11548:
	.size	_ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, .-_ZN9__gnu_cxxltIPSt4pairIibESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_
	.section	.text._ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_,"axG",@progbits,_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_,comdat
	.weak	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_
	.type	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_, @function
_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_:
.LFB11549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPSt4pairIibESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_
	movq	%rax, %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	(%rbx), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11549:
	.size	_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_, .-_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SE_SE_RT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv:
.LFB11550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11550:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEmmEv
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_,comdat
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_, @function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_:
.LFB11551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rbx
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIibENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11551:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_EvT_T0_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_:
.LFB11552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11552:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEET_S9_
	.section	.text._ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_,comdat
	.weak	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_
	.type	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_, @function
_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_:
.LFB11553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt23__copy_move_backward_a1ILb1EPSt4pairIibES2_ET1_T0_S4_S3_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11553:
	.size	_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_, .-_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES8_ET1_T0_SA_S9_
	.section	.text._ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_,"axG",@progbits,_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_,comdat
	.weak	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_, @function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_:
.LFB11554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11554:
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_, .-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC5EONS0_15_Iter_comp_iterIS5_EE,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE:
.LFB11556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11556:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC1EONS0_15_Iter_comp_iterIS5_EE
	.set	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC1EONS0_15_Iter_comp_iterIS5_EE,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_, @function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_:
.LFB11558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11558:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_, .-_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbSt4pairIibES3_EEclIS3_NS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEEbRT_T0_
	.section	.text._ZSt11__addressofISt4pairIibEEPT_RS2_,"axG",@progbits,_ZSt11__addressofISt4pairIibEEPT_RS2_,comdat
	.weak	_ZSt11__addressofISt4pairIibEEPT_RS2_
	.type	_ZSt11__addressofISt4pairIibEEPT_RS2_, @function
_ZSt11__addressofISt4pairIibEEPT_RS2_:
.LFB11599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11599:
	.size	_ZSt11__addressofISt4pairIibEEPT_RS2_, .-_ZSt11__addressofISt4pairIibEEPT_RS2_
	.section	.text._ZSt19__relocate_object_aISt4pairIibES1_SaIS1_EEvPT_PT0_RT1_,"axG",@progbits,_ZSt19__relocate_object_aISt4pairIibES1_SaIS1_EEvPT_PT0_RT1_,comdat
	.weak	_ZSt19__relocate_object_aISt4pairIibES1_SaIS1_EEvPT_PT0_RT1_
	.type	_ZSt19__relocate_object_aISt4pairIibES1_SaIS1_EEvPT_PT0_RT1_, @function
_ZSt19__relocate_object_aISt4pairIibES1_SaIS1_EEvPT_PT0_RT1_:
.LFB11600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	-120(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-104(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-56(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIibEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIibEEPT_RS2_
	movq	-120(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	nop
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11600:
	.size	_ZSt19__relocate_object_aISt4pairIibES1_SaIS1_EEvPT_PT0_RT1_, .-_ZSt19__relocate_object_aISt4pairIibES1_SaIS1_EEvPT_PT0_RT1_
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_,comdat
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_:
.LFB11601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L235
.L237:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, %rbx
	movq	-24(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, %rcx
	leaq	-120(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEESD_EEbT_T0_
	testb	%al, %al
	je	.L236
	subq	$1, -24(%rbp)
.L236:
	movq	-24(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	movq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
.L235:
	movq	-104(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	cmpq	%rax, -24(%rbp)
	jl	.L237
	movq	-104(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L238
	movq	-104(%rbp), %rax
	subq	$2, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	cmpq	%rax, -24(%rbp)
	jne	.L238
	movq	-24(%rbp), %rax
	addq	$1, %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	movq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
.L238:
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFbSt4pairIibES4_EEEEONSt16remove_referenceIT_E4typeEOSA_
	movq	%rax, %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC1EONS0_15_Iter_comp_iterIS5_EE
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	leaq	-72(%rbp), %rdi
	movq	(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbS3_S3_EEEEvT_T0_SF_T1_RT2_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11601:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_T0_SF_T1_T2_
	.section	.text._ZSt4swapIibENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_,"axG",@progbits,_ZSt4swapIibENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_,comdat
	.weak	_ZSt4swapIibENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_
	.type	_ZSt4swapIibENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_, @function
_ZSt4swapIibENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_:
.LFB11602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibE4swapERS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11602:
	.size	_ZSt4swapIibENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_, .-_ZSt4swapIibENSt9enable_ifIXsrSt6__and_IJSt14__is_swappableIT_ES2_IT0_EEE5valueEvE4typeERSt4pairIS3_S5_ESC_
	.section	.text._ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	.type	_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, @function
_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE:
.LFB11603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11603:
	.size	_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE, .-_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	.section	.text._ZSt23__copy_move_backward_a1ILb1EPSt4pairIibES2_ET1_T0_S4_S3_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb1EPSt4pairIibES2_ET1_T0_S4_S3_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb1EPSt4pairIibES2_ET1_T0_S4_S3_
	.type	_ZSt23__copy_move_backward_a1ILb1EPSt4pairIibES2_ET1_T0_S4_S3_, @function
_ZSt23__copy_move_backward_a1ILb1EPSt4pairIibES2_ET1_T0_S4_S3_:
.LFB11604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt23__copy_move_backward_a2ILb1EPSt4pairIibES2_ET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11604:
	.size	_ZSt23__copy_move_backward_a1ILb1EPSt4pairIibES2_ET1_T0_S4_S3_, .-_ZSt23__copy_move_backward_a1ILb1EPSt4pairIibES2_ET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_,"axG",@progbits,_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_,comdat
	.weak	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_
	.type	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_, @function
_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_:
.LFB11605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPSt4pairIibESt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS6_T0_EE
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11605:
	.size	_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_, .-_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEES4_ET_S9_T0_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC5EONS0_15_Iter_comp_iterIS5_EE,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE:
.LFB11613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPFbSt4pairIibES1_EEONSt16remove_referenceIT_E4typeEOS6_
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11613:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC1EONS0_15_Iter_comp_iterIS5_EE
	.set	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC1EONS0_15_Iter_comp_iterIS5_EE,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEC2EONS0_15_Iter_comp_iterIS5_EE
	.section	.text._ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbS3_S3_EEEEvT_T0_SF_T1_RT2_,"axG",@progbits,_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbS3_S3_EEEEvT_T0_SF_T1_RT2_,comdat
	.weak	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbS3_S3_EEEEvT_T0_SF_T1_RT2_
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbS3_S3_EEEEvT_T0_SF_T1_RT2_, @function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbS3_S3_EEEEvT_T0_SF_T1_RT2_:
.LFB11615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -24(%rbp)
	jmp	.L248
.L251:
	movq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	movq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -24(%rbp)
.L248:
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.L249
	movq	-24(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, %rcx
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_
	testb	%al, %al
	je	.L249
	movl	$1, %eax
	jmp	.L250
.L249:
	movl	$0, %eax
.L250:
	testb	%al, %al
	jne	.L251
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rbx
	movq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEplEl
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11615:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbS3_S3_EEEEvT_T0_SF_T1_RT2_, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIPFbS3_S3_EEEEvT_T0_SF_T1_RT2_
	.section	.text._ZNSt4pairIibE4swapERS0_,"axG",@progbits,_ZNSt4pairIibE4swapERS0_,comdat
	.align 2
	.weak	_ZNSt4pairIibE4swapERS0_
	.type	_ZNSt4pairIibE4swapERS0_, @function
_ZNSt4pairIibE4swapERS0_:
.LFB11616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	movq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIbENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11616:
	.size	_ZNSt4pairIibE4swapERS0_, .-_ZNSt4pairIibE4swapERS0_
	.section	.text._ZSt23__copy_move_backward_a2ILb1EPSt4pairIibES2_ET1_T0_S4_S3_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EPSt4pairIibES2_ET1_T0_S4_S3_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb1EPSt4pairIibES2_ET1_T0_S4_S3_
	.type	_ZSt23__copy_move_backward_a2ILb1EPSt4pairIibES2_ET1_T0_S4_S3_, @function
_ZSt23__copy_move_backward_a2ILb1EPSt4pairIibES2_ET1_T0_S4_S3_:
.LFB11617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIibES5_EET0_T_S7_S6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11617:
	.size	_ZSt23__copy_move_backward_a2ILb1EPSt4pairIibES2_ET1_T0_S4_S3_, .-_ZSt23__copy_move_backward_a2ILb1EPSt4pairIibES2_ET1_T0_S4_S3_
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_, @function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_:
.LFB11621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS2_SaIS2_EEEdeEv
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11621:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_, .-_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFbSt4pairIibES3_EEclINS_17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEES3_EEbT_RT0_
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB11622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11622:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIibES5_EET0_T_S7_S6_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIibES5_EET0_T_S7_S6_,comdat
	.weak	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIibES5_EET0_T_S7_S6_
	.type	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIibES5_EET0_T_S7_S6_, @function
_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIibES5_EET0_T_S7_S6_:
.LFB11623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	jmp	.L259
.L260:
	subq	$8, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt4pairIibEEONSt16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rdx
	subq	$8, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIibEaSEOS0_
	subq	$1, -8(%rbp)
.L259:
	cmpq	$0, -8(%rbp)
	jg	.L260
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11623:
	.size	_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIibES5_EET0_T_S7_S6_, .-_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIibES5_EET0_T_S7_S6_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB11635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11635:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIoEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIoEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIoEE:
	.byte	1
	.ident	"GCC: (GNU) 13.2.1 20231205 (Red Hat 13.2.1-6)"
	.section	.note.GNU-stack,"",@progbits
