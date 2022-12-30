	.text
	.file	"test.cpp"
	.globl	.init                   # -- Begin function .init
	.p2align	2
	.type	.init,@function
.init:                                  # @.init
	.cfi_startproc
# %bb.0:                                # %Entry.1
	ret
.Lfunc_end0:
	.size	.init, .Lfunc_end0-.init
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %Entry.4
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	.cfi_offset ra, -4
	addi	a0, zero, 1
	sw	a0, 4(sp)
	addi	a0, sp, 4
	addi	a1, zero, 1
	call	_malloc_toInt
	lw	a2, 0(a0)
	addi	a1, zero, 3
	sw	a1, 0(a2)
	sw	a1, 4(a2)
	sw	a2, 0(a0)
	addi	a1, zero, 2
	mv	a0, a2
	call	_malloc_toInt
	lui	a1, %hi(a.0)
	sw	a0, %lo(a.0)(a1)
	addi	a0, a1, %lo(a.0)
	lw	a0, -4(a0)
	call	.func.printf_no_collision_please
	sw	zero, 8(sp)
	mv	a0, zero
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	a.0,@object             # @a.0
	.section	.sbss,"aw",@nobits
	.globl	a.0
	.p2align	2
a.0:
	.word	0
	.size	a.0, 4

	.section	".note.GNU-stack","",@progbits
