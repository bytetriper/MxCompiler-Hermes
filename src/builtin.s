    .text
    .file	"builtin.c"
    .globl	printf_no_collision_please # -- Begin function printf_no_collision_please
    .p2align	2
    .type	printf_no_collision_please,@function
printf_no_collision_please:             # @printf_no_collision_please
# %bb.0:                                # %entry
    addi	sp, sp, -32
    sw	ra, 28(sp)
    sw	s0, 24(sp)
    addi	s0, sp, 32
    sw	a0, -12(s0)
    sw	a1, -16(s0)
    lw	a0, -16(s0)
    call	malloc
    sw	a0, -20(s0)
    sw	zero, -24(s0)
    j	.LBB0_1
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
    lw	a0, -24(s0)
    lw	a1, -16(s0)
    bge	a0, a1, .LBB0_4
    j	.LBB0_2
.LBB0_2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
    lw	a0, -12(s0)
    lw	a1, -24(s0)
    slli	a2, a1, 2
    add	a0, a0, a2
    lw	a0, 0(a0)
    lw	a2, -20(s0)
    add	a1, a2, a1
    sb	a0, 0(a1)
    j	.LBB0_3
.LBB0_3:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
    lw	a0, -24(s0)
    addi	a0, a0, 1
    sw	a0, -24(s0)
    j	.LBB0_1
.LBB0_4:                                # %for.end
    lw	a1, -20(s0)
    lui	a0, %hi(.L.str)
    addi	a0, a0, %lo(.L.str)
    call	printf
    lw	s0, 24(sp)
    lw	ra, 28(sp)
    addi	sp, sp, 32
    ret
.Lfunc_end0:
    .size	printf_no_collision_please, .Lfunc_end0-printf_no_collision_please
                                        # -- End function
    .globl	printInt                # -- Begin function printInt
    .p2align	2
    .type	printInt,@function
printInt:                               # @printInt
# %bb.0:                                # %entry
    addi	sp, sp, -16
    sw	ra, 12(sp)
    sw	s0, 8(sp)
    addi	s0, sp, 16
    sw	a0, -12(s0)
    lw	a1, -12(s0)
    lui	a0, %hi(.L.str.1)
    addi	a0, a0, %lo(.L.str.1)
    call	printf
    lw	s0, 8(sp)
    lw	ra, 12(sp)
    addi	sp, sp, 16
    ret
.Lfunc_end1:
    .size	printInt, .Lfunc_end1-printInt
                                        # -- End function
    .globl	getInt                  # -- Begin function getInt
    .p2align	2
    .type	getInt,@function
getInt:                                 # @getInt
# %bb.0:                                # %entry
    addi	sp, sp, -16
    sw	ra, 12(sp)
    sw	s0, 8(sp)
    addi	s0, sp, 16
    lui	a0, %hi(.L.str.1)
    addi	a0, a0, %lo(.L.str.1)
    addi	a1, s0, -12
    call	__isoc99_scanf
    lw	a0, -12(s0)
    lw	s0, 8(sp)
    lw	ra, 12(sp)
    addi	sp, sp, 16
    ret
.Lfunc_end2:
    .size	getInt, .Lfunc_end2-getInt
                                        # -- End function
    .globl	scanf_string            # -- Begin function scanf_string
    .p2align	2
    .type	scanf_string,@function
scanf_string:                           # @scanf_string
# %bb.0:                                # %entry
    addi	sp, sp, -224
    sw	ra, 220(sp)
    sw	s0, 216(sp)
    addi	s0, sp, 224
    lui	a0, %hi(.L.str)
    addi	a0, a0, %lo(.L.str)
    addi	a1, s0, -208
    call	__isoc99_scanf
    addi	a0, zero, 800
    call	malloc
    sw	a0, -212(s0)
    sw	zero, -216(s0)
    j	.LBB3_1
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
    lw	a0, -216(s0)
    addi	a1, s0, -208
    add	a0, a1, a0
    lbu	a0, 0(a0)
    beqz	a0, .LBB3_4
    j	.LBB3_2
.LBB3_2:                                # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
    lw	a0, -216(s0)
    addi	a1, s0, -208
    add	a1, a1, a0
    lb	a1, 0(a1)
    lw	a2, -212(s0)
    slli	a0, a0, 2
    add	a0, a2, a0
    sw	a1, 0(a0)
    j	.LBB3_3
.LBB3_3:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
    lw	a0, -216(s0)
    addi	a0, a0, 1
    sw	a0, -216(s0)
    j	.LBB3_1
.LBB3_4:                                # %for.end
    lw	a0, -212(s0)
    lw	a1, -216(s0)
    slli	a1, a1, 2
    add	a0, a0, a1
    sw	zero, 0(a0)
    lw	a0, -212(s0)
    lw	s0, 216(sp)
    lw	ra, 220(sp)
    addi	sp, sp, 224
    ret
.Lfunc_end3:
    .size	scanf_string, .Lfunc_end3-scanf_string
                                        # -- End function
    .globl	_malloc                 # -- Begin function _malloc
    .p2align	2
    .type	_malloc,@function
_malloc:                                # @_malloc
# %bb.0:                                # %entry
    addi	sp, sp, -16
    sw	ra, 12(sp)
    sw	s0, 8(sp)
    addi	s0, sp, 16
    sw	a0, -12(s0)
    lw	a0, -12(s0)
    slli	a0, a0, 2
    call	malloc
    sw	a0, -16(s0)
    lw	a0, -16(s0)
    lw	s0, 8(sp)
    lw	ra, 12(sp)
    addi	sp, sp, 16
    ret
.Lfunc_end4:
    .size	_malloc, .Lfunc_end4-_malloc
                                        # -- End function
    .globl	_malloc_toInt           # -- Begin function _malloc_toInt
    .p2align	2
    .type	_malloc_toInt,@function
_malloc_toInt:                          # @_malloc_toInt
# %bb.0:                                # %entry
    addi	sp, sp, -32
    sw	ra, 28(sp)
    sw	s0, 24(sp)
    addi	s0, sp, 32
    sw	a0, -16(s0)
    sw	a1, -20(s0)
    lw	a0, -20(s0)
    bnez	a0, .LBB5_2
    j	.LBB5_1
.LBB5_1:                                # %if.then
    sw	zero, -12(s0)
    j	.LBB5_7
.LBB5_2:                                # %if.end
    lw	a0, -16(s0)
    lw	a0, 0(a0)
    slli	a0, a0, 2
    addi	a0, a0, 4
    call	malloc
    sw	a0, -24(s0)
    lw	a0, -16(s0)
    lw	a0, 0(a0)
    lw	a1, -24(s0)
    sw	a0, 0(a1)
    lw	a0, -24(s0)
    addi	a0, a0, 4
    sw	a0, -24(s0)
    sw	zero, -28(s0)
    j	.LBB5_3
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
    lw	a0, -28(s0)
    lw	a1, -16(s0)
    lw	a1, 0(a1)
    bge	a0, a1, .LBB5_6
    j	.LBB5_4
.LBB5_4:                                # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
    lw	a0, -16(s0)
    addi	a0, a0, 4
    lw	a1, -20(s0)
    addi	a1, a1, -1
    call	_malloc_toInt
    lw	a1, -24(s0)
    lw	a2, -28(s0)
    slli	a2, a2, 2
    add	a1, a1, a2
    sw	a0, 0(a1)
    j	.LBB5_5
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
    lw	a0, -28(s0)
    addi	a0, a0, 1
    sw	a0, -28(s0)
    j	.LBB5_3
.LBB5_6:                                # %for.end
    lw	a0, -24(s0)
    sw	a0, -12(s0)
    j	.LBB5_7
.LBB5_7:                                # %return
    lw	a0, -12(s0)
    lw	s0, 24(sp)
    lw	ra, 28(sp)
    addi	sp, sp, 32
    ret
.Lfunc_end5:
    .size	_malloc_toInt, .Lfunc_end5-_malloc_toInt
                                        # -- End function
    .type	.L.str,@object          # @.str
    .section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
    .asciz	"%s"
    .size	.L.str, 3

    .type	.L.str.1,@object        # @.str.1
.L.str.1:
    .asciz	"%d"
    .size	.L.str.1, 3
