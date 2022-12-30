	.text
	.file	"test.cpp"
	.globl	_Z13_malloc_toIntPii    # -- Begin function _Z13_malloc_toIntPii
	.p2align	4, 0x90
	.type	_Z13_malloc_toIntPii,@function
_Z13_malloc_toIntPii:                   # @_Z13_malloc_toIntPii
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	$0, 12(%ebp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%ebp)
	jmp	.LBB0_7
.LBB0_2:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shll	$2, %eax
	movl	%eax, (%esp)
	calll	malloc
	movl	%eax, -8(%ebp)
	movl	$0, -12(%ebp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	(%ecx), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	12(%ebp), %ecx
	subl	$1, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	_Z13_malloc_toIntPii
	movl	-8(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB0_3
.LBB0_6:
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
.LBB0_7:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end0:
	.size	_Z13_malloc_toIntPii, .Lfunc_end0-_Z13_malloc_toIntPii
	.cfi_endproc
                                        # -- End function
	.globl	_Z14_malloc_toBoolPii   # -- Begin function _Z14_malloc_toBoolPii
	.p2align	4, 0x90
	.type	_Z14_malloc_toBoolPii,@function
_Z14_malloc_toBoolPii:                  # @_Z14_malloc_toBoolPii
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	$1, 12(%ebp)
	jne	.LBB1_2
# %bb.1:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	calll	malloc
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.LBB1_7
.LBB1_2:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shll	$2, %eax
	movl	%eax, (%esp)
	calll	malloc
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%ebp), %eax
	movl	8(%ebp), %ecx
	cmpl	(%ecx), %eax
	jge	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	12(%ebp), %ecx
	subl	$1, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	calll	_Z14_malloc_toBoolPii
	movl	-12(%ebp), %ecx
	movl	-16(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.LBB1_3
.LBB1_6:
	movl	-12(%ebp), %eax
	movl	%eax, -4(%ebp)
.LBB1_7:
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	.cfi_def_cfa %esp, 4
	retl
.Lfunc_end1:
	.size	_Z14_malloc_toBoolPii, .Lfunc_end1-_Z14_malloc_toBoolPii
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z13_malloc_toIntPii
	.addrsig_sym malloc
	.addrsig_sym _Z14_malloc_toBoolPii
