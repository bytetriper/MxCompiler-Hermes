	.text
	.file	"builtin.cpp"
	.globl	_Z13_malloc_toIntPii    # -- Begin function _Z13_malloc_toIntPii
	.p2align	2
	.type	_Z13_malloc_toIntPii,@function
_Z13_malloc_toIntPii:                   # @_Z13_malloc_toIntPii
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -20(s0)
	bnez	a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:                                # %if.then
	sw	zero, -12(s0)
	j	.LBB0_7
.LBB0_2:                                # %if.end
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	slli	a0, a0, 6
	call	malloc
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	lw	a1, -24(s0)
	sw	a0, 0(a1)
	lw	a0, -24(s0)
	addi	a0, a0, 16
	sw	a0, -24(s0)
	sw	zero, -28(s0)
	j	.LBB0_3
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB0_6
	j	.LBB0_4
.LBB0_4:                                # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 4
	lw	a1, -20(s0)
	addi	a1, a1, -1
	call	_Z13_malloc_toIntPii
	lw	a1, -24(s0)
	lw	a2, -28(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_3
.LBB0_6:                                # %for.end
	lw	a0, -24(s0)
	sw	a0, -12(s0)
	j	.LBB0_7
.LBB0_7:                                # %return
	lw	a0, -12(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z13_malloc_toIntPii, .Lfunc_end0-_Z13_malloc_toIntPii
	.cfi_endproc
                                        # -- End function
	.globl	_Z14_malloc_toBoolPii   # -- Begin function _Z14_malloc_toBoolPii
	.p2align	2
	.type	_Z14_malloc_toBoolPii,@function
_Z14_malloc_toBoolPii:                  # @_Z14_malloc_toBoolPii
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -20(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB1_2
	j	.LBB1_1
.LBB1_1:                                # %if.then
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	addi	a0, a0, 4
	call	malloc
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	lw	a1, -24(s0)
	sw	a0, 0(a1)
	lw	a0, -24(s0)
	addi	a0, a0, 16
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	sw	a0, -12(s0)
	j	.LBB1_7
.LBB1_2:                                # %if.end
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	slli	a0, a0, 6
	call	malloc
	sw	a0, -28(s0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	lw	a1, -28(s0)
	sw	a0, 0(a1)
	lw	a0, -28(s0)
	addi	a0, a0, 16
	sw	a0, -28(s0)
	sw	zero, -32(s0)
	j	.LBB1_3
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB1_6
	j	.LBB1_4
.LBB1_4:                                # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 4
	lw	a1, -20(s0)
	addi	a1, a1, -1
	call	_Z14_malloc_toBoolPii
	lw	a1, -28(s0)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB1_5
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB1_3
.LBB1_6:                                # %for.end
	lw	a0, -28(s0)
	sw	a0, -12(s0)
	j	.LBB1_7
.LBB1_7:                                # %return
	lw	a0, -12(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	_Z14_malloc_toBoolPii, .Lfunc_end1-_Z14_malloc_toBoolPii
	.cfi_endproc
                                        # -- End function
	.globl	_Z26printf_no_collision_pleasei # -- Begin function _Z26printf_no_collision_pleasei
	.p2align	2
	.type	_Z26printf_no_collision_pleasei,@function
_Z26printf_no_collision_pleasei:        # @_Z26printf_no_collision_pleasei
	.cfi_startproc
# %bb.0:                                # %entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	_Z26printf_no_collision_pleasei, .Lfunc_end2-_Z26printf_no_collision_pleasei
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%c"
	.size	.L.str, 3

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
