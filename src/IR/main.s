	.text
	.file	"test.cpp"
	.globl	.init                   # -- Begin function .init
	.p2align	4, 0x90
	.type	.init,@function
.init:                                  # @.init
	.cfi_startproc
# %bb.0:                                # %Entry.1
	subl	$20, %esp
	.cfi_adjust_cfa_offset 20
	pushl	$2
	.cfi_adjust_cfa_offset 4
	pushl	$.L.SizeList.0
	.cfi_adjust_cfa_offset 4
	calll	.func._malloc
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%eax, a.0
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end0:
	.size	.init, .Lfunc_end0-.init
	.cfi_endproc
                                        # -- End function
	.globl	.func.f                 # -- Begin function .func.f
	.p2align	4, 0x90
	.type	.func.f,@function
.func.f:                                # @.func.f
	.cfi_startproc
# %bb.0:                                # %Entry.4
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	calll	.func.g
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end1:
	.size	.func.f, .Lfunc_end1-.func.f
	.cfi_endproc
                                        # -- End function
	.globl	.func.g                 # -- Begin function .func.g
	.p2align	4, 0x90
	.type	.func.g,@function
.func.g:                                # @.func.g
	.cfi_startproc
# %bb.0:                                # %Entry.7
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	calll	.func.f
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end2:
	.size	.func.g, .Lfunc_end2-.func.g
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %Entry.10
	pushl	%eax
	.cfi_def_cfa_offset 8
	movl	a.0, %eax
	movl	12(%eax), %eax
	movl	$1, 8(%eax)
	movl	a.0, %eax
	movl	12(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	movl	(%esp), %eax
	popl	%ecx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	a.0,@object             # @a.0
	.bss
	.globl	a.0
	.p2align	2
a.0:
	.long	0
	.size	a.0, 4

	.type	.L.SizeList.0,@object   # @.SizeList.0
	.section	.rodata,"a",@progbits
	.p2align	2
.L.SizeList.0:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.size	.L.SizeList.0, 8

	.section	".note.GNU-stack","",@progbits
