	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_base0_7                ## -- Begin function base0_7
	.p2align	4, 0x90
_base0_7:                               ## @base0_7
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_base1_11               ## -- Begin function base1_11
	.p2align	4, 0x90
_base1_11:                              ## @base1_11
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_base2_15               ## -- Begin function base2_15
	.p2align	4, 0x90
_base2_15:                              ## @base2_15
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_base3_19               ## -- Begin function base3_19
	.p2align	4, 0x90
_base3_19:                              ## @base3_19
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_base4_23               ## -- Begin function base4_23
	.p2align	4, 0x90
_base4_23:                              ## @base4_23
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_base5_33               ## -- Begin function base5_33
	.p2align	4, 0x90
_base5_33:                              ## @base5_33
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	$20, %esi
	movl	%esi, %edi
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -8(%rbp)
	movq	%rcx, %r8
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%r8, %rdi
	movl	%edx, %esi
	movq	-80(%rbp), %r8          ## 8-byte Reload
	movl	%edx, -84(%rbp)         ## 4-byte Spill
	movq	%r8, %rdx
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	movl	-84(%rbp), %esi         ## 4-byte Reload
	movq	-80(%rbp), %rdx         ## 8-byte Reload
	callq	_memset
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	movl	$5, %esi
	movl	%esi, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_memcmp
	cmpl	$0, %eax
	je	LBB5_2
## BB#1:
	movl	$0, -68(%rbp)
	jmp	LBB5_3
LBB5_2:
	movl	$1, -68(%rbp)
LBB5_3:
	movl	-68(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	jne	LBB5_5
## BB#4:
	movl	-108(%rbp), %eax        ## 4-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
LBB5_5:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_base6_43               ## -- Begin function base6_43
	.p2align	4, 0x90
_base6_43:                              ## @base6_43
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi20:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movl	$1, %esi
	movl	$20, %edx
	movl	%edx, %edi
	xorl	%edx, %edx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -8(%rbp)
	movq	%rcx, %r8
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -84(%rbp)         ## 4-byte Spill
	movl	%edx, %esi
	movq	-80(%rbp), %rdx         ## 8-byte Reload
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%rcx, -104(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	movl	-84(%rbp), %esi         ## 4-byte Reload
	movq	-80(%rbp), %rdx         ## 8-byte Reload
	callq	_memset
	movq	-104(%rbp), %rax        ## 8-byte Reload
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	movl	$5, %esi
	movl	%esi, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_memcmp
	cmpl	$0, %eax
	je	LBB6_2
## BB#1:
	movl	$0, -68(%rbp)
	jmp	LBB6_3
LBB6_2:
	movl	$1, -68(%rbp)
LBB6_3:
	movl	-68(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	jne	LBB6_5
## BB#4:
	movl	-108(%rbp), %eax        ## 4-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
LBB6_5:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
## BB#1:
	movq	section$start$__DATA$bodek_helpers@GOTPCREL(%rip), %rax
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	%rax, -32(%rbp)
LBB7_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	section$end$__DATA$bodek_helpers@GOTPCREL(%rip), %rax
	cmpq	%rax, -32(%rbp)
	je	LBB7_5
## BB#3:                                ##   in Loop: Header=BB7_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
## BB#4:                                ##   in Loop: Header=BB7_2 Depth=1
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB7_2
LBB7_5:
	movq	section$start$__DATA$bodek_helpers@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
LBB7_6:                                 ## =>This Inner Loop Header: Depth=1
	movq	section$end$__DATA$bodek_helpers@GOTPCREL(%rip), %rax
	cmpq	%rax, -40(%rbp)
	je	LBB7_14
## BB#7:                                ##   in Loop: Header=BB7_6 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$1, 16(%rax)
	je	LBB7_9
## BB#8:                                ##   in Loop: Header=BB7_6 Depth=1
	jmp	LBB7_13
LBB7_9:                                 ##   in Loop: Header=BB7_6 Depth=1
	movq	-40(%rbp), %rax
	callq	*(%rax)
	movl	%eax, -44(%rbp)
	cmpl	$1, -44(%rbp)
	jne	LBB7_11
## BB#10:                               ##   in Loop: Header=BB7_6 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdx
	movl	%eax, %edi
	callq	_bodek_test_passed
	jmp	LBB7_12
LBB7_11:                                ##   in Loop: Header=BB7_6 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdx
	movl	%eax, %edi
	callq	_bodek_test_failed
LBB7_12:                                ##   in Loop: Header=BB7_6 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB7_13:                                ##   in Loop: Header=BB7_6 Depth=1
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB7_6
LBB7_14:
	jmp	LBB7_15
LBB7_15:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function bodek_test_passed
_bodek_test_passed:                     ## @bodek_test_passed
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi24:
	.cfi_def_cfa_offset 16
Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str.7(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function bodek_test_failed
_bodek_test_failed:                     ## @bodek_test_failed
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi27:
	.cfi_def_cfa_offset 16
Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str.8(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Make sure we can evaluate a test"

	.section	__DATA,bodek_helpers
	.p2align	3               ## @ptr_base0_7
_ptr_base0_7:
	.quad	_base0_7
	.quad	L_.str
	.long	1                       ## 0x1
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"Make sure we can handle a failing test"

	.section	__DATA,bodek_helpers
	.p2align	3               ## @ptr_base1_11
_ptr_base1_11:
	.quad	_base1_11
	.quad	L_.str.1
	.long	1                       ## 0x1
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"Make sure ASSERT_EQ evaluates 1 == 1"

	.section	__DATA,bodek_helpers
	.p2align	3               ## @ptr_base2_15
_ptr_base2_15:
	.quad	_base2_15
	.quad	L_.str.2
	.long	1                       ## 0x1
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.3:                               ## @.str.3
	.asciz	"Make sure ASSERT_EQ fails on 1 == 0"

	.section	__DATA,bodek_helpers
	.p2align	3               ## @ptr_base3_19
_ptr_base3_19:
	.quad	_base3_19
	.quad	L_.str.3
	.long	1                       ## 0x1
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.4:                               ## @.str.4
	.asciz	"Make sure ASSERT_NOT_EQ evaluates 1 != 0 correctly"

	.section	__DATA,bodek_helpers
	.p2align	3               ## @ptr_base4_23
_ptr_base4_23:
	.quad	_base4_23
	.quad	L_.str.4
	.long	1                       ## 0x1
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"Successful test"

	.section	__DATA,bodek_helpers
	.p2align	3               ## @ptr_base5_33
_ptr_base5_33:
	.quad	_base5_33
	.quad	L_.str.5
	.long	1                       ## 0x1
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.6:                               ## @.str.6
	.asciz	"Failing test"

	.section	__DATA,bodek_helpers
	.p2align	3               ## @ptr_base6_43
_ptr_base6_43:
	.quad	_base6_43
	.quad	L_.str.6
	.long	1                       ## 0x1
	.space	4

	.section	__TEXT,__cstring,cstring_literals
L_.str.7:                               ## @.str.7
	.asciz	"\033[1m\033[32m\342\234\224\033[0m\033[1m [%d/%d] Test succeeded: \033[0m%s\n"

L_.str.8:                               ## @.str.8
	.asciz	"\033[1m\033[31m\342\234\227\033[0m\033[1m [%d/%d] Test failed: \033[0m%s\n"

	.no_dead_strip	_ptr_base0_7
	.no_dead_strip	_ptr_base1_11
	.no_dead_strip	_ptr_base2_15
	.no_dead_strip	_ptr_base3_19
	.no_dead_strip	_ptr_base4_23
	.no_dead_strip	_ptr_base5_33
	.no_dead_strip	_ptr_base6_43

.subsections_via_symbols
