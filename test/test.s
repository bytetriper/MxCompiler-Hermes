	.text
	.file	"test.cpp"
	.globl	_Z1fv                   # -- Begin function _Z1fv
	.p2align	2
	.type	_Z1fv,@function
_Z1fv:                                  # @_Z1fv
# %bb.0:                                # %entry
	ret
.Lfunc_end0:
	.size	_Z1fv, .Lfunc_end0-_Z1fv
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lui	a0, %hi(.Lstr)
	addi	a0, a0, %lo(.Lstr)
	call	puts
	mv	a0, zero
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	k,@object               # @k
	.section	.sbss,"aw",@nobits
	.globl	k
	.p2align	2
k:
	.zero	8
	.size	k, 8

	.type	c,@object               # @c
	.globl	c
	.p2align	2
c:
	.word	0                       # 0x0
	.size	c, 4

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"1"
	.size	.Lstr, 2

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
