    .globl .L@.init
    .type   .L@.init,@function
.L@.init:

@.init.Entry:
	addi s10,sp,0
	addi s11,sp,4
	subi sp,sp,4
	j .L0
	.L0:
	li t0 1
	sb t0,x.0,t0
	j @.init.Exit
	@.init.Exit:
	ret
	    .globl .L@main
    .type   .L@main,@function
.L@main:

@main.Entry:
	addi s10,sp,0
	addi s11,sp,20
	subi sp,sp,20
	j .L1
	.L1:
	call .init
	li t0 0
	sb t0,4(s10)
	j @main.Exit
	@main.Exit:
	lb t1 s10(4)
	lb t0 s10(4)
	sb t0,12(s10)
	ret
	    .type   x.0,@object
    .global x.0
x.0:
    .zero 8
    .size x.0,8
