.text
    .globl .init
.init:


addi sp,sp,-72
	mv t0 s11
	sw t0,68(sp)
	mv t0 s10
	sw t0,64(sp)
	mv t0 s9
	sw t0,60(sp)
	mv t0 s8
	sw t0,56(sp)
	mv t0 s7
	sw t0,52(sp)
	mv t0 s6
	sw t0,48(sp)
	mv t0 s5
	sw t0,44(sp)
	mv t0 s4
	sw t0,40(sp)
	mv t0 s3
	sw t0,36(sp)
	mv t0 s2
	sw t0,32(sp)
	mv t0 s1
	sw t0,28(sp)
	mv t0 s0
	sw t0,24(sp)
	mv t0 ra
	sw t0,20(sp)
	j .L0
	#br label %.block.3
	
.L0:
	mv t0 ra
	sw t0,8(sp)
	mv t0 gp
	sw t0,4(sp)
	mv t0 tp
	sw t0,0(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	li t0 1
	mv a0 t0
	call _malloc
	mv t0 a0
	sw t0,16(sp)
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 0(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 8(sp)
	mv ra t0
	mv a2 s5
	lw t0 4(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#%.SizeList.0 = call i32* @_malloc(i32 1)
	li t0 0
	mv s0 t0
	li t1 2
	sll s0,s0,t1
	lw t0 16(sp)
	add s0,t0,s0
	#%.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0,i32 0
	mv t0 s0
	li t1 20
	sw t1,0(t0)
	#  store i32 20,i32* %.ArrayIdx.0
	mv t0 ra
	sw t0,12(sp)
	mv t0 gp
	sw t0,8(sp)
	mv t0 tp
	sw t0,4(sp)
	mv t0 t3
	sw t0,0(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	lw t0 16(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	call _malloc_toInt
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 4(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 12(sp)
	mv ra t0
	mv a2 s6
	lw t0 8(sp)
	mv gp t0
	lw t0 0(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.0 = call i32* @_malloc_toInt(i32* %.SizeList.0,i32 1)
	mv t0 s0
	sw t0,a_no_collison_plz.0,t2
	mv t0 ra
	sw t0,12(sp)
	mv t0 gp
	sw t0,8(sp)
	mv t0 tp
	sw t0,4(sp)
	mv t0 t3
	sw t0,0(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	li t0 2
	mv a0 t0
	call _malloc
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 4(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 12(sp)
	mv ra t0
	mv a2 s6
	lw t0 8(sp)
	mv gp t0
	lw t0 0(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.2 = call i32* @_malloc(i32 2)
	mv t0 s0
	#%.middle.1 = bitcast i32* %.middle.2 to %struct.string*
	sw t0,12(sp)
	mv t0 ra
	sw t0,8(sp)
	mv t0 gp
	sw t0,4(sp)
	mv t0 tp
	sw t0,0(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 12(sp)
	mv a0 t0
	call .func.string.construct
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 0(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 8(sp)
	mv ra t0
	mv a2 s5
	lw t0 4(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.string.construct(%struct.string* %.middle.1)
	lw t0 12(sp)
	sw t0,tmp_no_collision_plz.0,t2
	li t0 80
	sw t0,N.0,t2
	j .init.Exit
	#br label %Exit.2
	
.init.Exit:
	lw t0 68(sp)
	mv s11 t0
	lw t0 64(sp)
	mv s10 t0
	lw t0 60(sp)
	mv s9 t0
	lw t0 56(sp)
	mv s8 t0
	lw t0 52(sp)
	mv s7 t0
	lw t0 48(sp)
	mv s6 t0
	lw t0 44(sp)
	mv s5 t0
	lw t0 40(sp)
	mv s4 t0
	lw t0 36(sp)
	mv s3 t0
	lw t0 32(sp)
	mv s2 t0
	lw t0 28(sp)
	mv s1 t0
	lw t0 24(sp)
	mv s0 t0
	lw t0 20(sp)
	mv ra t0
	addi sp,sp,72
	ret
	#ret void
	

    .globl .func.string.construct
.func.string.construct:


addi sp,sp,-4
	mv t0 a0
	sw t0,0(sp)
	j .L1
	#br label %.block.6
	
.L1:
	lw t0 0(sp)
	mv s0 t0
	li t1 0
	add s0,s0,t1
	#%This_addr.len.0 = getelementptr %struct.string,%struct.string* %This_addr.0,i32 0,i32 0
	mv t0 s0
	li t1 0
	sw t1,0(t0)
	#  store i32 0,i32* %This_addr.len.0
	j .func.string.construct.Exit
	#br label %Exit.5
	
.func.string.construct.Exit:
	addi sp,sp,4
	ret
	#ret void
	

    .globl .func.string.length
.func.string.length:


addi sp,sp,-8
	mv t0 a0
	sw t0,0(sp)
	j .L2
	#br label %.block.9
	
.L2:
	lw t0 0(sp)
	mv gp t0
	li t1 0
	add s0,gp,t1
	#%This_addr.len.1 = getelementptr %struct.string,%struct.string* %This_addr.1,i32 0,i32 0
	mv t1 s0
	lw t0 0(t1)
	# %.middle.4=load i32,i32* %This_addr.len.1
	mv s0 t0
	mv t0 s0
	sw t0,4(sp)
	j .func.string.length.Exit
	#br label %Exit.8
	
.func.string.length.Exit:
	lw t0 4(sp)
	mv a0 t0
	addi sp,sp,8
	ret
	#ret i32 %.retval
	

    .globl .func.string.parseInt
.func.string.parseInt:


addi sp,sp,-24
	mv t3 s11
	mv tp s10
	mv gp s9
	mv ra s8
	mv s11 s7
	mv s10 s6
	mv s9 s5
	mv s8 s4
	mv s7 s3
	mv s6 s2
	mv s5 s1
	mv s4 s0
	mv s3 ra
	#%This_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	j .L3
	#br label %.block.12
	
.L3:
	li t0 0
	sw t0,8(sp)
	li t0 0
	sw t0,12(sp)
	j .L4
	#br label %For_Cond.13
	
.L4:
	lw t0 0(sp)
	mv a7 t0
	li t1 0
	add a7,a7,t1
	#%This_addr.len.2 = getelementptr %struct.string,%struct.string* %This_addr.2,i32 0,i32 0
	lw t0 12(sp)
	mv a6 t0
	mv t1 a7
	lw t0 0(t1)
	# %.middle.7=load i32,i32* %This_addr.len.2
	mv a5 t0
	slt a5 a6,a5
	#%.middle.5 = icmp slt i32 %.middle.6,%.middle.7
	li t0 0
	sw t0,16(sp)
	bnez a5 .L5
	beqz a5 .L6
	#br i1 %.middle.5,label %binary_and_rv.17,label %binary_end.18
	
.L5:
	lw t0 0(sp)
	mv a5 t0
	li t1 4
	add a5,a5,t1
	#%This_addr.content.0 = getelementptr %struct.string,%struct.string* %This_addr.3,i32 0,i32 1
	mv t1 a5
	lw t0 0(t1)
	# %.middle.8=load i32*,i32** %This_addr.content.0
	mv a5 t0
	lw t0 12(sp)
	mv a4 t0
	li t1 2
	sll a4,a4,t1
	add a4,a5,a4
	#%.middle.9 = getelementptr i32,i32* %.middle.8,i32 %.middle.10
	mv t1 a4
	lw t0 0(t1)
	# %.middle.9.0=load i32,i32* %.middle.9
	mv a3 t0
	mv t1 a4
	lw t0 0(t1)
	# %.middle.12=load i32,i32* %.middle.9
	mv a3 t0
	li t0 47
	sub t5,t0,a3
	li t1 0
	slt t5 t5,t1
	#%.middle.11 = icmp sgt i32 %.middle.12,47
	mv t0 t5
	sw t0,16(sp)
	j .L6
	#br label %binary_end.18
	
.L6:
	lw t0 16(sp)
	mv a3 t0
	li t1 1
	and a3,a3,t1
	#%.middle.14 = trunc i32 %.ToBool.0 to i1
	and a3,t5,a3
	#%.middle.13 = and i1 %.middle.11,%.middle.14
	li t0 0
	sw t0,20(sp)
	bnez a3 .L7
	beqz a3 .L8
	#br i1 %.middle.13,label %binary_and_rv.19,label %binary_end.20
	
.L7:
	lw t0 0(sp)
	mv a3 t0
	li t1 4
	add a3,a3,t1
	#%This_addr.content.1 = getelementptr %struct.string,%struct.string* %This_addr.4,i32 0,i32 1
	mv t1 a3
	lw t0 0(t1)
	# %.middle.15=load i32*,i32** %This_addr.content.1
	mv a3 t0
	lw t0 12(sp)
	mv a2 t0
	li t1 2
	sll a2,a2,t1
	add a2,a3,a2
	#%.middle.16 = getelementptr i32,i32* %.middle.15,i32 %.middle.17
	mv t1 a2
	lw t0 0(t1)
	# %.middle.16.0=load i32,i32* %.middle.16
	mv a1 t0
	mv t1 a2
	lw t0 0(t1)
	# %.middle.19=load i32,i32* %.middle.16
	mv a1 t0
	li t1 58
	slt t4 a1,t1
	#%.middle.18 = icmp slt i32 %.middle.19,58
	mv t0 t4
	sw t0,20(sp)
	j .L8
	#br label %binary_end.20
	
.L8:
	lw t0 20(sp)
	mv a1 t0
	li t1 1
	and a1,a1,t1
	#%.middle.21 = trunc i32 %.ToBool.1 to i1
	and a1,t4,a1
	#%.middle.20 = and i1 %.middle.18,%.middle.21
	bnez a1 .L9
	beqz a1 .L11
	#br i1 %.middle.20,label %For_Body.15,label %For_End.14
	
.L9:
	lw t0 8(sp)
	mv a1 t0
	li t1 10
	mul a1,a1,t1
	#%.middle.22 = mul i32 %.middle.23,10
	lw t0 0(sp)
	mv t6 t0
	li t1 4
	add t6,t6,t1
	#%This_addr.content.2 = getelementptr %struct.string,%struct.string* %This_addr.5,i32 0,i32 1
	mv t1 t6
	lw t0 0(t1)
	# %.middle.24=load i32*,i32** %This_addr.content.2
	mv s2 t0
	lw t0 12(sp)
	mv s1 t0
	li t1 2
	sll s1,s1,t1
	add s1,s2,s1
	#%.middle.25 = getelementptr i32,i32* %.middle.24,i32 %.middle.26
	mv t1 s1
	lw t0 0(t1)
	# %.middle.25.0=load i32,i32* %.middle.25
	mv s0 t0
	mv t1 s1
	lw t0 0(t1)
	# %.middle.28=load i32,i32* %.middle.25
	mv s0 t0
	add s0,a1,s0
	#%.middle.27 = add i32 %.middle.22,%.middle.28
	li t1 48
	sub s0,s0,t1
	#%.middle.29 = sub i32 %.middle.27,48
	mv t0 s0
	sw t0,8(sp)
	j .L10
	#br label %For_Change.16
	
.L10:
	lw t0 12(sp)
	mv s0 t0
	lw t0 12(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.32 = add i32 %.middle.33,1
	mv t0 s0
	sw t0,12(sp)
	j .L4
	#br label %For_Cond.13
	
.L11:
	lw t0 8(sp)
	mv s0 t0
	mv t0 s0
	sw t0,4(sp)
	j .func.string.parseInt.Exit
	#br label %Exit.11
	
.func.string.parseInt.Exit:
	mv s11 t3
	mv s10 tp
	mv s9 gp
	mv s8 ra
	mv s7 s11
	mv s6 s10
	mv s5 s9
	mv s4 s8
	mv s3 s7
	mv s2 s6
	mv s1 s5
	mv s0 s4
	lw t0 4(sp)
	mv a0 t0
	mv ra s3
	addi sp,sp,24
	ret
	#ret i32 %.retval
	

    .globl .func.string.ord
.func.string.ord:


addi sp,sp,-12
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	j .L12
	#br label %.block.23
	
.L12:
	lw t0 0(sp)
	mv tp t0
	li t1 4
	add tp,tp,t1
	#%This_addr.content.3 = getelementptr %struct.string,%struct.string* %This_addr.6,i32 0,i32 1
	mv t1 tp
	lw t0 0(t1)
	# %.middle.35=load i32*,i32** %This_addr.content.3
	mv tp t0
	lw t0 4(sp)
	mv gp t0
	li t1 2
	sll gp,gp,t1
	add gp,tp,gp
	#%.middle.36 = getelementptr i32,i32* %.middle.35,i32 %.middle.37
	mv t1 gp
	lw t0 0(t1)
	# %.middle.36.0=load i32,i32* %.middle.36
	mv s0 t0
	mv t1 gp
	lw t0 0(t1)
	# %.middle.38=load i32,i32* %.middle.36
	mv s0 t0
	mv t0 s0
	sw t0,8(sp)
	j .func.string.ord.Exit
	#br label %Exit.22
	
.func.string.ord.Exit:
	lw t0 8(sp)
	mv a0 t0
	addi sp,sp,12
	ret
	#ret i32 %.retval
	

    .globl .func.string.substring
.func.string.substring:


addi sp,sp,-104
	mv t0 s11
	sw t0,100(sp)
	mv t0 s10
	sw t0,96(sp)
	mv t0 s9
	sw t0,92(sp)
	mv t0 s8
	sw t0,88(sp)
	mv t0 s7
	sw t0,84(sp)
	mv t0 s6
	sw t0,80(sp)
	mv t0 s5
	sw t0,76(sp)
	mv t0 s4
	sw t0,72(sp)
	mv t0 s3
	sw t0,68(sp)
	mv t0 s2
	sw t0,64(sp)
	mv t0 s1
	sw t0,60(sp)
	mv t0 s0
	sw t0,56(sp)
	mv t0 ra
	#%This_addr=alloca %struct.string*
	sw t0,52(sp)
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	mv t0 a2
	sw t0,8(sp)
	j .L13
	#br label %.block.26
	
.L13:
	mv t0 ra
	sw t0,40(sp)
	mv t0 gp
	sw t0,36(sp)
	mv t0 tp
	sw t0,32(sp)
	mv t0 t3
	sw t0,28(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	li t0 2
	mv a0 t0
	call _malloc
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 32(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 40(sp)
	mv ra t0
	mv a2 s6
	lw t0 36(sp)
	mv gp t0
	lw t0 28(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.40 = call i32* @_malloc(i32 2)
	mv t0 s0
	#%.middle.39 = bitcast i32* %.middle.40 to %struct.string*
	sw t0,40(sp)
	mv t0 ra
	sw t0,36(sp)
	mv t0 gp
	sw t0,32(sp)
	mv t0 tp
	sw t0,28(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 40(sp)
	mv a0 t0
	call .func.string.construct
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 28(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 36(sp)
	mv ra t0
	mv a2 s5
	lw t0 32(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.string.construct(%struct.string* %.middle.39)
	lw t0 40(sp)
	sw t0,16(sp)
	lw t0 8(sp)
	mv s1 t0
	lw t0 4(sp)
	mv s0 t0
	sub s0,s1,s0
	#%.middle.41 = sub i32 %.middle.42,%.middle.43
	mv t0 s0
	sw t0,20(sp)
	lw t0 16(sp)
	mv s0 t0
	li t1 4
	add t0,s0,t1
	#%.middle.44 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	sw t0,48(sp)
	lw t0 20(sp)
	sw t0,40(sp)
	mv t0 ra
	sw t0,36(sp)
	mv t0 gp
	sw t0,32(sp)
	mv t0 tp
	sw t0,28(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	li t0 1
	mv a0 t0
	call _malloc
	mv t0 a0
	sw t0,44(sp)
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 28(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 36(sp)
	mv ra t0
	mv a2 s5
	lw t0 32(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#%.SizeList.1 = call i32* @_malloc(i32 1)
	li t0 0
	mv s0 t0
	li t1 2
	sll s0,s0,t1
	lw t0 44(sp)
	add s0,t0,s0
	#%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	mv t0 s0
	lw t1 40(sp)
	sw t1,0(t0)
	#  store i32 %.middle.45,i32* %.ArrayIdx.1
	mv t0 ra
	sw t0,40(sp)
	mv t0 gp
	sw t0,36(sp)
	mv t0 tp
	sw t0,32(sp)
	mv t0 t3
	sw t0,28(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	lw t0 44(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	call _malloc_toInt
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 32(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 40(sp)
	mv ra t0
	mv a2 s6
	lw t0 36(sp)
	mv gp t0
	lw t0 28(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.46 = call i32* @_malloc_toInt(i32* %.SizeList.1,i32 1)
	lw t0 48(sp)
	mv t1 s0
	sw t1,0(t0)
	#  store i32* %.new.1,i32** %.middle.44
	lw t0 16(sp)
	mv s7 t0
	li t1 0
	add s7,s7,t1
	#%.middle.48 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	lw t0 20(sp)
	mv s6 t0
	mv t0 s7
	mv t1 s6
	sw t1,0(t0)
	#  store i32 %.middle.50,i32* %.middle.48
	li t0 0
	sw t0,24(sp)
	j .L14
	#br label %For_Cond.27
	
.L14:
	lw t0 24(sp)
	mv s6 t0
	lw t0 20(sp)
	mv s5 t0
	slt s5 s6,s5
	#%.middle.51 = icmp slt i32 %.middle.52,%.middle.53
	bnez s5 .L15
	beqz s5 .L17
	#br i1 %.middle.51,label %For_Body.29,label %For_End.28
	
.L15:
	lw t0 16(sp)
	mv s5 t0
	li t1 4
	add s5,s5,t1
	#%.middle.54 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	mv t1 s5
	lw t0 0(t1)
	# %.middle.55=load i32*,i32** %.middle.54
	mv s5 t0
	lw t0 24(sp)
	mv s4 t0
	li t1 2
	sll s4,s4,t1
	add s4,s5,s4
	#%.middle.56 = getelementptr i32,i32* %.middle.55,i32 %.middle.57
	mv t1 s4
	lw t0 0(t1)
	# %.middle.56.0=load i32,i32* %.middle.56
	mv s3 t0
	lw t0 0(sp)
	mv s3 t0
	li t1 4
	add s3,s3,t1
	#%This_addr.content.4 = getelementptr %struct.string,%struct.string* %This_addr.7,i32 0,i32 1
	mv t1 s3
	lw t0 0(t1)
	# %.middle.58=load i32*,i32** %This_addr.content.4
	mv s3 t0
	lw t0 4(sp)
	mv s2 t0
	lw t0 24(sp)
	mv s1 t0
	add s1,s2,s1
	#%.middle.59 = add i32 %.middle.60,%.middle.61
	li t1 2
	sll s1,s1,t1
	add s1,s3,s1
	#%.middle.62 = getelementptr i32,i32* %.middle.58,i32 %.middle.59
	mv t1 s1
	lw t0 0(t1)
	# %.middle.62.0=load i32,i32* %.middle.62
	mv s0 t0
	mv t1 s1
	lw t0 0(t1)
	# %.middle.64=load i32,i32* %.middle.62
	mv s0 t0
	mv t0 s4
	mv t1 s0
	sw t1,0(t0)
	#  store i32 %.middle.64,i32* %.middle.56
	j .L16
	#br label %For_Change.30
	
.L16:
	lw t0 24(sp)
	mv s0 t0
	lw t0 24(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.66 = add i32 %.middle.67,1
	mv t0 s0
	sw t0,24(sp)
	j .L14
	#br label %For_Cond.27
	
.L17:
	lw t0 16(sp)
	mv s0 t0
	mv t0 s0
	sw t0,12(sp)
	j .func.string.substring.Exit
	#br label %Exit.25
	
.func.string.substring.Exit:
	lw t0 100(sp)
	mv s11 t0
	lw t0 96(sp)
	mv s10 t0
	lw t0 92(sp)
	mv s9 t0
	lw t0 88(sp)
	mv s8 t0
	lw t0 84(sp)
	mv s7 t0
	lw t0 80(sp)
	mv s6 t0
	lw t0 76(sp)
	mv s5 t0
	lw t0 72(sp)
	mv s4 t0
	lw t0 68(sp)
	mv s3 t0
	lw t0 64(sp)
	mv s2 t0
	lw t0 60(sp)
	mv s1 t0
	lw t0 56(sp)
	mv s0 t0
	lw t0 12(sp)
	mv a0 t0
	lw t0 52(sp)
	mv ra t0
	addi sp,sp,104
	ret
	#ret %struct.string* %.retval
	

    .globl .func.Add_String_Together_No_Collision_Please
.func.Add_String_Together_No_Collision_Please:


addi sp,sp,-112
	mv t0 s11
	sw t0,108(sp)
	mv t0 s10
	sw t0,104(sp)
	mv t0 s9
	sw t0,100(sp)
	mv t0 s8
	sw t0,96(sp)
	mv t0 s7
	sw t0,92(sp)
	mv t0 s6
	sw t0,88(sp)
	mv t0 s5
	sw t0,84(sp)
	mv t0 s4
	sw t0,80(sp)
	mv t0 s3
	sw t0,76(sp)
	mv t0 s2
	sw t0,72(sp)
	mv t0 s1
	sw t0,68(sp)
	mv t0 s0
	sw t0,64(sp)
	mv t0 ra
	#%a_addr=alloca %struct.string*
	sw t0,60(sp)
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	j .L18
	#br label %.block.33
	
.L18:
	mv t0 ra
	sw t0,48(sp)
	mv t0 gp
	sw t0,44(sp)
	mv t0 tp
	sw t0,40(sp)
	mv t0 t3
	sw t0,36(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	li t0 2
	mv a0 t0
	call _malloc
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 40(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 48(sp)
	mv ra t0
	mv a2 s6
	lw t0 44(sp)
	mv gp t0
	lw t0 36(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.70 = call i32* @_malloc(i32 2)
	mv t0 s0
	#%.middle.69 = bitcast i32* %.middle.70 to %struct.string*
	sw t0,48(sp)
	mv t0 ra
	sw t0,44(sp)
	mv t0 gp
	sw t0,40(sp)
	mv t0 tp
	sw t0,36(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 48(sp)
	mv a0 t0
	call .func.string.construct
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 36(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 44(sp)
	mv ra t0
	mv a2 s5
	lw t0 40(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.string.construct(%struct.string* %.middle.69)
	lw t0 48(sp)
	sw t0,12(sp)
	lw t0 0(sp)
	mv s0 t0
	li t1 0
	add s1,s0,t1
	#%.middle.71 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	lw t0 4(sp)
	mv s0 t0
	li t1 0
	add s0,s0,t1
	#%.middle.72 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	mv t1 s1
	lw t0 0(t1)
	# %.middle.74=load i32,i32* %.middle.71
	mv s1 t0
	mv t1 s0
	lw t0 0(t1)
	# %.middle.75=load i32,i32* %.middle.72
	mv s0 t0
	add s0,s1,s0
	#%.middle.73 = add i32 %.middle.74,%.middle.75
	mv t0 s0
	sw t0,16(sp)
	lw t0 0(sp)
	mv s0 t0
	li t1 0
	add s0,s0,t1
	#%.middle.76 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	mv t1 s0
	lw t0 0(t1)
	# %.middle.77=load i32,i32* %.middle.76
	mv s0 t0
	mv t0 s0
	sw t0,20(sp)
	lw t0 4(sp)
	mv s0 t0
	li t1 0
	add s0,s0,t1
	#%.middle.78 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	mv t1 s0
	lw t0 0(t1)
	# %.middle.79=load i32,i32* %.middle.78
	mv s0 t0
	mv t0 s0
	sw t0,24(sp)
	lw t0 12(sp)
	mv s0 t0
	li t1 0
	add s1,s0,t1
	#%.middle.80 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	lw t0 16(sp)
	mv s0 t0
	mv t0 s1
	mv t1 s0
	sw t1,0(t0)
	#  store i32 %.middle.82,i32* %.middle.80
	lw t0 12(sp)
	mv s0 t0
	li t1 4
	add t0,s0,t1
	#%.middle.83 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	sw t0,56(sp)
	lw t0 16(sp)
	sw t0,48(sp)
	mv t0 ra
	sw t0,44(sp)
	mv t0 gp
	sw t0,40(sp)
	mv t0 tp
	sw t0,36(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	li t0 1
	mv a0 t0
	call _malloc
	mv t0 a0
	sw t0,52(sp)
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 36(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 44(sp)
	mv ra t0
	mv a2 s5
	lw t0 40(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#%.SizeList.2 = call i32* @_malloc(i32 1)
	li t0 0
	mv s0 t0
	li t1 2
	sll s0,s0,t1
	lw t0 52(sp)
	add s0,t0,s0
	#%.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	mv t0 s0
	lw t1 48(sp)
	sw t1,0(t0)
	#  store i32 %.middle.84,i32* %.ArrayIdx.2
	mv t0 ra
	sw t0,48(sp)
	mv t0 gp
	sw t0,44(sp)
	mv t0 tp
	sw t0,40(sp)
	mv t0 t3
	sw t0,36(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	lw t0 52(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	call _malloc_toInt
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 40(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 48(sp)
	mv ra t0
	mv a2 s6
	lw t0 44(sp)
	mv gp t0
	lw t0 36(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.85 = call i32* @_malloc_toInt(i32* %.SizeList.2,i32 1)
	lw t0 56(sp)
	mv t1 s0
	sw t1,0(t0)
	#  store i32* %.new.2,i32** %.middle.83
	li t0 0
	sw t0,28(sp)
	j .L19
	#br label %For_Cond.34
	
.L19:
	lw t0 28(sp)
	mv s11 t0
	lw t0 20(sp)
	mv s10 t0
	slt s10 s11,s10
	#%.middle.87 = icmp slt i32 %.middle.88,%.middle.89
	bnez s10 .L20
	beqz s10 .L22
	#br i1 %.middle.87,label %For_Body.36,label %For_End.35
	
.L20:
	lw t0 12(sp)
	mv s10 t0
	li t1 4
	add s10,s10,t1
	#%.middle.90 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	mv t1 s10
	lw t0 0(t1)
	# %.middle.91=load i32*,i32** %.middle.90
	mv s10 t0
	lw t0 28(sp)
	mv s9 t0
	li t1 2
	sll s9,s9,t1
	add s9,s10,s9
	#%.middle.92 = getelementptr i32,i32* %.middle.91,i32 %.middle.93
	mv t1 s9
	lw t0 0(t1)
	# %.middle.92.0=load i32,i32* %.middle.92
	mv s8 t0
	lw t0 0(sp)
	mv s8 t0
	li t1 4
	add s8,s8,t1
	#%.middle.94 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	mv t1 s8
	lw t0 0(t1)
	# %.middle.95=load i32*,i32** %.middle.94
	mv s8 t0
	lw t0 28(sp)
	mv s7 t0
	li t1 2
	sll s7,s7,t1
	add s7,s8,s7
	#%.middle.96 = getelementptr i32,i32* %.middle.95,i32 %.middle.97
	mv t1 s7
	lw t0 0(t1)
	# %.middle.96.0=load i32,i32* %.middle.96
	mv s6 t0
	mv t1 s7
	lw t0 0(t1)
	# %.middle.99=load i32,i32* %.middle.96
	mv s6 t0
	mv t0 s9
	mv t1 s6
	sw t1,0(t0)
	#  store i32 %.middle.99,i32* %.middle.92
	j .L21
	#br label %For_Change.37
	
.L21:
	lw t0 28(sp)
	mv s6 t0
	li t1 1
	add s6,s6,t1
	#%.middle.101 = add i32 %.middle.100,1
	mv t0 s6
	sw t0,28(sp)
	j .L19
	#br label %For_Cond.34
	
.L22:
	li t0 0
	sw t0,32(sp)
	j .L23
	#br label %For_Cond.38
	
.L23:
	lw t0 32(sp)
	mv s6 t0
	lw t0 24(sp)
	mv s5 t0
	slt s5 s6,s5
	#%.middle.102 = icmp slt i32 %.middle.103,%.middle.104
	bnez s5 .L24
	beqz s5 .L26
	#br i1 %.middle.102,label %For_Body.40,label %For_End.39
	
.L24:
	lw t0 12(sp)
	mv s5 t0
	li t1 4
	add s5,s5,t1
	#%.middle.105 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	mv t1 s5
	lw t0 0(t1)
	# %.middle.106=load i32*,i32** %.middle.105
	mv s5 t0
	lw t0 32(sp)
	mv s4 t0
	lw t0 20(sp)
	mv s3 t0
	add s3,s4,s3
	#%.middle.107 = add i32 %.middle.108,%.middle.109
	li t1 2
	sll s3,s3,t1
	add s3,s5,s3
	#%.middle.110 = getelementptr i32,i32* %.middle.106,i32 %.middle.107
	mv t1 s3
	lw t0 0(t1)
	# %.middle.110.0=load i32,i32* %.middle.110
	mv s2 t0
	lw t0 4(sp)
	mv s2 t0
	li t1 4
	add s2,s2,t1
	#%.middle.111 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	mv t1 s2
	lw t0 0(t1)
	# %.middle.112=load i32*,i32** %.middle.111
	mv s2 t0
	lw t0 32(sp)
	mv s1 t0
	li t1 2
	sll s1,s1,t1
	add s1,s2,s1
	#%.middle.113 = getelementptr i32,i32* %.middle.112,i32 %.middle.114
	mv t1 s1
	lw t0 0(t1)
	# %.middle.113.0=load i32,i32* %.middle.113
	mv s0 t0
	mv t1 s1
	lw t0 0(t1)
	# %.middle.116=load i32,i32* %.middle.113
	mv s0 t0
	mv t0 s3
	mv t1 s0
	sw t1,0(t0)
	#  store i32 %.middle.116,i32* %.middle.110
	j .L25
	#br label %For_Change.41
	
.L25:
	lw t0 32(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.118 = add i32 %.middle.117,1
	mv t0 s0
	sw t0,32(sp)
	j .L23
	#br label %For_Cond.38
	
.L26:
	lw t0 12(sp)
	mv s0 t0
	mv t0 s0
	sw t0,8(sp)
	j .func.Add_String_Together_No_Collision_Please.Exit
	#br label %Exit.32
	
.func.Add_String_Together_No_Collision_Please.Exit:
	lw t0 108(sp)
	mv s11 t0
	lw t0 104(sp)
	mv s10 t0
	lw t0 100(sp)
	mv s9 t0
	lw t0 96(sp)
	mv s8 t0
	lw t0 92(sp)
	mv s7 t0
	lw t0 88(sp)
	mv s6 t0
	lw t0 84(sp)
	mv s5 t0
	lw t0 80(sp)
	mv s4 t0
	lw t0 76(sp)
	mv s3 t0
	lw t0 72(sp)
	mv s2 t0
	lw t0 68(sp)
	mv s1 t0
	lw t0 64(sp)
	mv s0 t0
	lw t0 8(sp)
	mv a0 t0
	lw t0 60(sp)
	mv ra t0
	addi sp,sp,112
	ret
	#ret %struct.string* %.retval
	

    .globl .func.Less_Compare_String_Together_No_Collision_Please
.func.Less_Compare_String_Together_No_Collision_Please:


addi sp,sp,-20
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	j .L27
	#br label %.block.44
	
.L27:
	lw t0 4(sp)
	mv t3 t0
	li t1 0
	add t3,t3,t1
	#%.middle.120 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	mv t1 t3
	lw t0 0(t1)
	# %.middle.121=load i32,i32* %.middle.120
	mv t3 t0
	mv t0 t3
	sw t0,12(sp)
	j .L28
	#br label %If_Cond.45
	
.L28:
	lw t0 0(sp)
	mv t3 t0
	li t1 0
	add t3,t3,t1
	#%.middle.122 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	lw t0 4(sp)
	mv tp t0
	li t1 0
	add tp,tp,t1
	#%.middle.123 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	mv t1 t3
	lw t0 0(t1)
	# %.middle.125=load i32,i32* %.middle.122
	mv gp t0
	mv t1 tp
	lw t0 0(t1)
	# %.middle.126=load i32,i32* %.middle.123
	mv a7 t0
	slt a7 gp,a7
	#%.middle.124 = icmp slt i32 %.middle.125,%.middle.126
	bnez a7 .L29
	beqz a7 .L30
	#br i1 %.middle.124,label %If_Then.46,label %If_Else.47
	
.L29:
	lw t0 0(sp)
	mv a7 t0
	li t1 0
	add a7,a7,t1
	#%.middle.127 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	mv t1 a7
	lw t0 0(t1)
	# %.middle.129=load i32,i32* %.middle.127
	mv a7 t0
	mv t0 a7
	sw t0,12(sp)
	j .L31
	#br label %If_End.48
	
.L30:
	j .L31
	#br label %If_End.48
	
.L31:
	li t0 0
	sw t0,16(sp)
	j .L32
	#br label %For_Cond.49
	
.L32:
	lw t0 16(sp)
	mv a7 t0
	lw t0 12(sp)
	mv a6 t0
	slt a6 a7,a6
	#%.middle.130 = icmp slt i32 %.middle.131,%.middle.132
	bnez a6 .L33
	beqz a6 .L43
	#br i1 %.middle.130,label %For_Body.51,label %For_End.50
	
.L33:
	j .L34
	#br label %If_Cond.53
	
.L34:
	lw t0 0(sp)
	mv a6 t0
	li t1 4
	add a6,a6,t1
	#%.middle.133 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	mv t1 a6
	lw t0 0(t1)
	# %.middle.134=load i32*,i32** %.middle.133
	mv a6 t0
	lw t0 16(sp)
	mv a5 t0
	li t1 2
	sll a5,a5,t1
	add a5,a6,a5
	#%.middle.135 = getelementptr i32,i32* %.middle.134,i32 %.middle.136
	mv t1 a5
	lw t0 0(t1)
	# %.middle.135.0=load i32,i32* %.middle.135
	mv a4 t0
	lw t0 4(sp)
	mv a4 t0
	li t1 4
	add a4,a4,t1
	#%.middle.137 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	mv t1 a4
	lw t0 0(t1)
	# %.middle.138=load i32*,i32** %.middle.137
	mv a4 t0
	lw t0 16(sp)
	mv a3 t0
	li t1 2
	sll a3,a3,t1
	add a3,a4,a3
	#%.middle.139 = getelementptr i32,i32* %.middle.138,i32 %.middle.140
	mv t1 a3
	lw t0 0(t1)
	# %.middle.139.0=load i32,i32* %.middle.139
	mv a2 t0
	mv t1 a5
	lw t0 0(t1)
	# %.middle.142=load i32,i32* %.middle.135
	mv a2 t0
	mv t1 a3
	lw t0 0(t1)
	# %.middle.143=load i32,i32* %.middle.139
	mv a1 t0
	slt a1 a2,a1
	#%.middle.141 = icmp slt i32 %.middle.142,%.middle.143
	bnez a1 .L35
	beqz a1 .L36
	#br i1 %.middle.141,label %If_Then.54,label %If_Else.55
	
.L35:
	li t0 1
	mv a1 t0
	#%.FromBool.2 = zext i1 1 to i32
	mv t0 a1
	sw t0,8(sp)
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.L36:
	j .L37
	#br label %If_End.56
	
.L37:
	j .L38
	#br label %If_Cond.57
	
.L38:
	lw t0 0(sp)
	mv a1 t0
	li t1 4
	add a1,a1,t1
	#%.middle.144 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	mv t1 a1
	lw t0 0(t1)
	# %.middle.145=load i32*,i32** %.middle.144
	mv a1 t0
	lw t0 16(sp)
	mv a0 t0
	li t1 2
	sll a0,a0,t1
	add a0,a1,a0
	#%.middle.146 = getelementptr i32,i32* %.middle.145,i32 %.middle.147
	mv t1 a0
	lw t0 0(t1)
	# %.middle.146.0=load i32,i32* %.middle.146
	mv t6 t0
	lw t0 4(sp)
	mv t6 t0
	li t1 4
	add t6,t6,t1
	#%.middle.148 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	mv t1 t6
	lw t0 0(t1)
	# %.middle.149=load i32*,i32** %.middle.148
	mv t6 t0
	lw t0 16(sp)
	mv t5 t0
	li t1 2
	sll t5,t5,t1
	add t5,t6,t5
	#%.middle.150 = getelementptr i32,i32* %.middle.149,i32 %.middle.151
	mv t1 t5
	lw t0 0(t1)
	# %.middle.150.0=load i32,i32* %.middle.150
	mv t4 t0
	mv t1 a0
	lw t0 0(t1)
	# %.middle.153=load i32,i32* %.middle.146
	mv t4 t0
	mv t1 t5
	lw t0 0(t1)
	# %.middle.154=load i32,i32* %.middle.150
	mv t3 t0
	sub t3,t3,t4
	li t1 0
	slt t3 t3,t1
	#%.middle.152 = icmp sgt i32 %.middle.153,%.middle.154
	bnez t3 .L39
	beqz t3 .L40
	#br i1 %.middle.152,label %If_Then.58,label %If_Else.59
	
.L39:
	li t0 0
	mv t3 t0
	#%.FromBool.3 = zext i1 0 to i32
	mv t0 t3
	sw t0,8(sp)
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.L40:
	j .L41
	#br label %If_End.60
	
.L41:
	j .L42
	#br label %For_Change.52
	
.L42:
	lw t0 16(sp)
	mv t3 t0
	li t1 1
	add t3,t3,t1
	#%.middle.156 = add i32 %.middle.155,1
	mv t0 t3
	sw t0,16(sp)
	j .L32
	#br label %For_Cond.49
	
.L43:
	j .L44
	#br label %If_Cond.61
	
.L44:
	lw t0 0(sp)
	mv t3 t0
	li t1 0
	add t3,t3,t1
	#%.middle.157 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	lw t0 4(sp)
	mv tp t0
	li t1 0
	add tp,tp,t1
	#%.middle.158 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	mv t1 t3
	lw t0 0(t1)
	# %.middle.160=load i32,i32* %.middle.157
	mv gp t0
	mv t1 tp
	lw t0 0(t1)
	# %.middle.161=load i32,i32* %.middle.158
	mv s0 t0
	sub s0,s0,gp
	li t1 0
	slt s0 s0,t1
	#%.middle.159 = icmp sgt i32 %.middle.160,%.middle.161
	bnez s0 .L45
	beqz s0 .L46
	#br i1 %.middle.159,label %If_Then.62,label %If_Else.63
	
.L45:
	li t0 1
	mv s0 t0
	#%.FromBool.4 = zext i1 1 to i32
	mv t0 s0
	sw t0,8(sp)
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.L46:
	j .L47
	#br label %If_End.64
	
.L47:
	li t0 0
	mv s0 t0
	#%.FromBool.5 = zext i1 0 to i32
	mv t0 s0
	sw t0,8(sp)
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.func.Less_Compare_String_Together_No_Collision_Please.Exit:
	lw t0 8(sp)
	mv s0 t0
	li t1 1
	and a0,s0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	addi sp,sp,20
	ret
	#ret i1 %.retval
	

    .globl .func.Equal_String_Together_No_Collision_Please
.func.Equal_String_Together_No_Collision_Please:


addi sp,sp,-20
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	j .L48
	#br label %.block.67
	
.L48:
	j .L49
	#br label %If_Cond.68
	
.L49:
	lw t0 0(sp)
	mv a3 t0
	li t1 0
	add a3,a3,t1
	#%.middle.162 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	lw t0 4(sp)
	mv a2 t0
	li t1 0
	add a2,a2,t1
	#%.middle.163 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	mv t1 a3
	lw t0 0(t1)
	# %.middle.165=load i32,i32* %.middle.162
	mv a1 t0
	mv t1 a2
	lw t0 0(t1)
	# %.middle.166=load i32,i32* %.middle.163
	mv a0 t0
	sub a0,a1,a0
	snez a0 a0
	#%.middle.164 = icmp ne i32 %.middle.165,%.middle.166
	bnez a0 .L50
	beqz a0 .L51
	#br i1 %.middle.164,label %If_Then.69,label %If_Else.70
	
.L50:
	li t0 0
	mv a0 t0
	#%.FromBool.6 = zext i1 0 to i32
	mv t0 a0
	sw t0,8(sp)
	j .func.Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.66
	
.L51:
	j .L52
	#br label %If_End.71
	
.L52:
	lw t0 0(sp)
	mv a0 t0
	li t1 0
	add a0,a0,t1
	#%.middle.167 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	mv t1 a0
	lw t0 0(t1)
	# %.middle.168=load i32,i32* %.middle.167
	mv a0 t0
	mv t0 a0
	sw t0,12(sp)
	li t0 0
	sw t0,16(sp)
	j .L53
	#br label %For_Cond.72
	
.L53:
	lw t0 16(sp)
	mv a0 t0
	lw t0 12(sp)
	mv t6 t0
	slt t6 a0,t6
	#%.middle.169 = icmp slt i32 %.middle.170,%.middle.171
	bnez t6 .L54
	beqz t6 .L60
	#br i1 %.middle.169,label %For_Body.74,label %For_End.73
	
.L54:
	j .L55
	#br label %If_Cond.76
	
.L55:
	lw t0 0(sp)
	mv t6 t0
	li t1 4
	add t6,t6,t1
	#%.middle.172 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	mv t1 t6
	lw t0 0(t1)
	# %.middle.173=load i32*,i32** %.middle.172
	mv t6 t0
	lw t0 16(sp)
	mv t5 t0
	li t1 2
	sll t5,t5,t1
	add t5,t6,t5
	#%.middle.174 = getelementptr i32,i32* %.middle.173,i32 %.middle.175
	mv t1 t5
	lw t0 0(t1)
	# %.middle.174.0=load i32,i32* %.middle.174
	mv t4 t0
	lw t0 4(sp)
	mv t4 t0
	li t1 4
	add t4,t4,t1
	#%.middle.176 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	mv t1 t4
	lw t0 0(t1)
	# %.middle.177=load i32*,i32** %.middle.176
	mv t4 t0
	lw t0 16(sp)
	mv t3 t0
	li t1 2
	sll t3,t3,t1
	add t3,t4,t3
	#%.middle.178 = getelementptr i32,i32* %.middle.177,i32 %.middle.179
	mv t1 t3
	lw t0 0(t1)
	# %.middle.178.0=load i32,i32* %.middle.178
	mv tp t0
	mv t1 t5
	lw t0 0(t1)
	# %.middle.181=load i32,i32* %.middle.174
	mv tp t0
	mv t1 t3
	lw t0 0(t1)
	# %.middle.182=load i32,i32* %.middle.178
	mv gp t0
	sub gp,tp,gp
	snez gp gp
	#%.middle.180 = icmp ne i32 %.middle.181,%.middle.182
	bnez gp .L56
	beqz gp .L57
	#br i1 %.middle.180,label %If_Then.77,label %If_Else.78
	
.L56:
	li t0 0
	mv s0 t0
	#%.FromBool.7 = zext i1 0 to i32
	mv t0 s0
	sw t0,8(sp)
	j .func.Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.66
	
.L57:
	j .L58
	#br label %If_End.79
	
.L58:
	j .L59
	#br label %For_Change.75
	
.L59:
	lw t0 16(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.184 = add i32 %.middle.183,1
	mv t0 s0
	sw t0,16(sp)
	j .L53
	#br label %For_Cond.72
	
.L60:
	li t0 1
	mv s0 t0
	#%.FromBool.8 = zext i1 1 to i32
	mv t0 s0
	sw t0,8(sp)
	j .func.Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.66
	
.func.Equal_String_Together_No_Collision_Please.Exit:
	lw t0 8(sp)
	mv s0 t0
	li t1 1
	and a0,s0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	addi sp,sp,20
	ret
	#ret i1 %.retval
	

    .globl .func.Not_Equal_String_Together_No_Collision_Please
.func.Not_Equal_String_Together_No_Collision_Please:


addi sp,sp,-20
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	j .L61
	#br label %.block.82
	
.L61:
	j .L62
	#br label %If_Cond.83
	
.L62:
	lw t0 0(sp)
	mv a3 t0
	li t1 0
	add a3,a3,t1
	#%.middle.185 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	lw t0 4(sp)
	mv a2 t0
	li t1 0
	add a2,a2,t1
	#%.middle.186 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	mv t1 a3
	lw t0 0(t1)
	# %.middle.188=load i32,i32* %.middle.185
	mv a1 t0
	mv t1 a2
	lw t0 0(t1)
	# %.middle.189=load i32,i32* %.middle.186
	mv a0 t0
	sub a0,a1,a0
	snez a0 a0
	#%.middle.187 = icmp ne i32 %.middle.188,%.middle.189
	bnez a0 .L63
	beqz a0 .L64
	#br i1 %.middle.187,label %If_Then.84,label %If_Else.85
	
.L63:
	li t0 1
	mv a0 t0
	#%.FromBool.9 = zext i1 1 to i32
	mv t0 a0
	sw t0,8(sp)
	j .func.Not_Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.81
	
.L64:
	j .L65
	#br label %If_End.86
	
.L65:
	lw t0 0(sp)
	mv a0 t0
	li t1 0
	add a0,a0,t1
	#%.middle.190 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	mv t1 a0
	lw t0 0(t1)
	# %.middle.191=load i32,i32* %.middle.190
	mv a0 t0
	mv t0 a0
	sw t0,12(sp)
	li t0 0
	sw t0,16(sp)
	j .L66
	#br label %For_Cond.87
	
.L66:
	lw t0 16(sp)
	mv a0 t0
	lw t0 12(sp)
	mv t6 t0
	slt t6 a0,t6
	#%.middle.192 = icmp slt i32 %.middle.193,%.middle.194
	bnez t6 .L67
	beqz t6 .L73
	#br i1 %.middle.192,label %For_Body.89,label %For_End.88
	
.L67:
	j .L68
	#br label %If_Cond.91
	
.L68:
	lw t0 0(sp)
	mv t6 t0
	li t1 4
	add t6,t6,t1
	#%.middle.195 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	mv t1 t6
	lw t0 0(t1)
	# %.middle.196=load i32*,i32** %.middle.195
	mv t6 t0
	lw t0 16(sp)
	mv t5 t0
	li t1 2
	sll t5,t5,t1
	add t5,t6,t5
	#%.middle.197 = getelementptr i32,i32* %.middle.196,i32 %.middle.198
	mv t1 t5
	lw t0 0(t1)
	# %.middle.197.0=load i32,i32* %.middle.197
	mv t4 t0
	lw t0 4(sp)
	mv t4 t0
	li t1 4
	add t4,t4,t1
	#%.middle.199 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	mv t1 t4
	lw t0 0(t1)
	# %.middle.200=load i32*,i32** %.middle.199
	mv t4 t0
	lw t0 16(sp)
	mv t3 t0
	li t1 2
	sll t3,t3,t1
	add t3,t4,t3
	#%.middle.201 = getelementptr i32,i32* %.middle.200,i32 %.middle.202
	mv t1 t3
	lw t0 0(t1)
	# %.middle.201.0=load i32,i32* %.middle.201
	mv tp t0
	mv t1 t5
	lw t0 0(t1)
	# %.middle.204=load i32,i32* %.middle.197
	mv tp t0
	mv t1 t3
	lw t0 0(t1)
	# %.middle.205=load i32,i32* %.middle.201
	mv gp t0
	sub gp,tp,gp
	snez gp gp
	#%.middle.203 = icmp ne i32 %.middle.204,%.middle.205
	bnez gp .L69
	beqz gp .L70
	#br i1 %.middle.203,label %If_Then.92,label %If_Else.93
	
.L69:
	li t0 1
	mv s0 t0
	#%.FromBool.10 = zext i1 1 to i32
	mv t0 s0
	sw t0,8(sp)
	j .func.Not_Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.81
	
.L70:
	j .L71
	#br label %If_End.94
	
.L71:
	j .L72
	#br label %For_Change.90
	
.L72:
	lw t0 16(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.207 = add i32 %.middle.206,1
	mv t0 s0
	sw t0,16(sp)
	j .L66
	#br label %For_Cond.87
	
.L73:
	li t0 0
	mv s0 t0
	#%.FromBool.11 = zext i1 0 to i32
	mv t0 s0
	sw t0,8(sp)
	j .func.Not_Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.81
	
.func.Not_Equal_String_Together_No_Collision_Please.Exit:
	lw t0 8(sp)
	mv s0 t0
	li t1 1
	and a0,s0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	addi sp,sp,20
	ret
	#ret i1 %.retval
	

    .globl .func.LE_Compare_String_Together_No_Collision_Please
.func.LE_Compare_String_Together_No_Collision_Please:


addi sp,sp,-92
	mv t0 s11
	sw t0,88(sp)
	mv t0 s10
	sw t0,84(sp)
	mv t0 s9
	sw t0,80(sp)
	mv t0 s8
	sw t0,76(sp)
	mv t0 s7
	sw t0,72(sp)
	mv t0 s6
	sw t0,68(sp)
	mv t0 s5
	sw t0,64(sp)
	mv t0 s4
	sw t0,60(sp)
	mv t0 s3
	sw t0,56(sp)
	mv t0 s2
	sw t0,52(sp)
	mv t0 s1
	sw t0,48(sp)
	mv t0 s0
	sw t0,44(sp)
	mv t0 ra
	#%a_addr=alloca %struct.string*
	sw t0,40(sp)
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	j .L74
	#br label %.block.97
	
.L74:
	lw t0 0(sp)
	sw t0,36(sp)
	lw t0 4(sp)
	mv s0 t0
	mv t0 ra
	sw t0,32(sp)
	mv t0 gp
	sw t0,28(sp)
	mv t0 tp
	sw t0,24(sp)
	mv t0 t3
	sw t0,20(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	lw t0 36(sp)
	mv a0 t0
	mv a1 s0
	call .func.Less_Compare_String_Together_No_Collision_Please
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 24(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 32(sp)
	mv ra t0
	mv a2 s6
	lw t0 28(sp)
	mv gp t0
	lw t0 20(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.Func_Return.0 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.208,%struct.string* %.middle.209)
	mv t0 s0
	sw t0,12(sp)
	lw t0 0(sp)
	sw t0,36(sp)
	lw t0 4(sp)
	mv s0 t0
	mv t0 ra
	sw t0,32(sp)
	mv t0 gp
	sw t0,28(sp)
	mv t0 tp
	sw t0,24(sp)
	mv t0 t3
	sw t0,20(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	lw t0 36(sp)
	mv a0 t0
	mv a1 s0
	call .func.Equal_String_Together_No_Collision_Please
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 24(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 32(sp)
	mv ra t0
	mv a2 s6
	lw t0 28(sp)
	mv gp t0
	lw t0 20(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.Func_Return.1 = call i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %.middle.210,%struct.string* %.middle.211)
	mv t0 s0
	sw t0,16(sp)
	lw t0 12(sp)
	mv s1 t0
	li t1 1
	and s1,s1,t1
	#%.middle.213 = trunc i32 %.ToBool.2 to i1
	lw t0 16(sp)
	mv s0 t0
	li t1 1
	and s0,s0,t1
	#%.middle.214 = trunc i32 %.ToBool.3 to i1
	or s0,s1,s0
	#%.middle.212 = or i1 %.middle.213,%.middle.214
	mv t0 s0
	sw t0,8(sp)
	j .func.LE_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.96
	
.func.LE_Compare_String_Together_No_Collision_Please.Exit:
	lw t0 88(sp)
	mv s11 t0
	lw t0 84(sp)
	mv s10 t0
	lw t0 80(sp)
	mv s9 t0
	lw t0 76(sp)
	mv s8 t0
	lw t0 72(sp)
	mv s7 t0
	lw t0 68(sp)
	mv s6 t0
	lw t0 64(sp)
	mv s5 t0
	lw t0 60(sp)
	mv s4 t0
	lw t0 56(sp)
	mv s3 t0
	lw t0 52(sp)
	mv s2 t0
	lw t0 48(sp)
	mv s1 t0
	lw t0 44(sp)
	mv s0 t0
	lw t0 8(sp)
	mv s0 t0
	li t1 1
	and a0,s0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw t0 40(sp)
	mv ra t0
	addi sp,sp,92
	ret
	#ret i1 %.retval
	

    .globl .func.Greater_Compare_String_Together_No_Collision_Please
.func.Greater_Compare_String_Together_No_Collision_Please:


addi sp,sp,-88
	mv t0 s11
	sw t0,84(sp)
	mv t0 s10
	sw t0,80(sp)
	mv t0 s9
	sw t0,76(sp)
	mv t0 s8
	sw t0,72(sp)
	mv t0 s7
	sw t0,68(sp)
	mv t0 s6
	sw t0,64(sp)
	mv t0 s5
	sw t0,60(sp)
	mv t0 s4
	sw t0,56(sp)
	mv t0 s3
	sw t0,52(sp)
	mv t0 s2
	sw t0,48(sp)
	mv t0 s1
	sw t0,44(sp)
	mv t0 s0
	sw t0,40(sp)
	mv t0 ra
	#%a_addr=alloca %struct.string*
	sw t0,36(sp)
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	j .L75
	#br label %.block.100
	
.L75:
	lw t0 0(sp)
	sw t0,32(sp)
	lw t0 4(sp)
	mv s0 t0
	mv t0 ra
	sw t0,28(sp)
	mv t0 gp
	sw t0,24(sp)
	mv t0 tp
	sw t0,20(sp)
	mv t0 t3
	sw t0,16(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	lw t0 32(sp)
	mv a0 t0
	mv a1 s0
	call .func.LE_Compare_String_Together_No_Collision_Please
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 20(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 28(sp)
	mv ra t0
	mv a2 s6
	lw t0 24(sp)
	mv gp t0
	lw t0 16(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.Func_Return.2 = call i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.215,%struct.string* %.middle.216)
	mv t0 s0
	sw t0,12(sp)
	lw t0 12(sp)
	mv s0 t0
	li t1 1
	and s0,s0,t1
	#%.middle.218 = trunc i32 %.ToBool.4 to i1
	li t1 1
	xor s0,s0,t1
	#%.middle.217 = xor i1 %.middle.218,1
	mv t0 s0
	sw t0,8(sp)
	j .func.Greater_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.99
	
.func.Greater_Compare_String_Together_No_Collision_Please.Exit:
	lw t0 84(sp)
	mv s11 t0
	lw t0 80(sp)
	mv s10 t0
	lw t0 76(sp)
	mv s9 t0
	lw t0 72(sp)
	mv s8 t0
	lw t0 68(sp)
	mv s7 t0
	lw t0 64(sp)
	mv s6 t0
	lw t0 60(sp)
	mv s5 t0
	lw t0 56(sp)
	mv s4 t0
	lw t0 52(sp)
	mv s3 t0
	lw t0 48(sp)
	mv s2 t0
	lw t0 44(sp)
	mv s1 t0
	lw t0 40(sp)
	mv s0 t0
	lw t0 8(sp)
	mv s0 t0
	li t1 1
	and a0,s0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw t0 36(sp)
	mv ra t0
	addi sp,sp,88
	ret
	#ret i1 %.retval
	

    .globl .func.GE_Compare_String_Together_No_Collision_Please
.func.GE_Compare_String_Together_No_Collision_Please:


addi sp,sp,-88
	mv t0 s11
	sw t0,84(sp)
	mv t0 s10
	sw t0,80(sp)
	mv t0 s9
	sw t0,76(sp)
	mv t0 s8
	sw t0,72(sp)
	mv t0 s7
	sw t0,68(sp)
	mv t0 s6
	sw t0,64(sp)
	mv t0 s5
	sw t0,60(sp)
	mv t0 s4
	sw t0,56(sp)
	mv t0 s3
	sw t0,52(sp)
	mv t0 s2
	sw t0,48(sp)
	mv t0 s1
	sw t0,44(sp)
	mv t0 s0
	sw t0,40(sp)
	mv t0 ra
	#%a_addr=alloca %struct.string*
	sw t0,36(sp)
	mv t0 a0
	sw t0,0(sp)
	mv t0 a1
	sw t0,4(sp)
	j .L76
	#br label %.block.103
	
.L76:
	lw t0 0(sp)
	sw t0,32(sp)
	lw t0 4(sp)
	mv s0 t0
	mv t0 ra
	sw t0,28(sp)
	mv t0 gp
	sw t0,24(sp)
	mv t0 tp
	sw t0,20(sp)
	mv t0 t3
	sw t0,16(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	lw t0 32(sp)
	mv a0 t0
	mv a1 s0
	call .func.Less_Compare_String_Together_No_Collision_Please
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 20(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 28(sp)
	mv ra t0
	mv a2 s6
	lw t0 24(sp)
	mv gp t0
	lw t0 16(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.Func_Return.3 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.219,%struct.string* %.middle.220)
	mv t0 s0
	sw t0,12(sp)
	lw t0 12(sp)
	mv s0 t0
	li t1 1
	and s0,s0,t1
	#%.middle.222 = trunc i32 %.ToBool.5 to i1
	li t1 1
	xor s0,s0,t1
	#%.middle.221 = xor i1 %.middle.222,1
	mv t0 s0
	sw t0,8(sp)
	j .func.GE_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.102
	
.func.GE_Compare_String_Together_No_Collision_Please.Exit:
	lw t0 84(sp)
	mv s11 t0
	lw t0 80(sp)
	mv s10 t0
	lw t0 76(sp)
	mv s9 t0
	lw t0 72(sp)
	mv s8 t0
	lw t0 68(sp)
	mv s7 t0
	lw t0 64(sp)
	mv s6 t0
	lw t0 60(sp)
	mv s5 t0
	lw t0 56(sp)
	mv s4 t0
	lw t0 52(sp)
	mv s3 t0
	lw t0 48(sp)
	mv s2 t0
	lw t0 44(sp)
	mv s1 t0
	lw t0 40(sp)
	mv s0 t0
	lw t0 8(sp)
	mv s0 t0
	li t1 1
	and a0,s0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw t0 36(sp)
	mv ra t0
	addi sp,sp,88
	ret
	#ret i1 %.retval
	

    .globl .func.print
.func.print:


addi sp,sp,-76
	mv t0 s11
	sw t0,72(sp)
	mv t0 s10
	sw t0,68(sp)
	mv t0 s9
	sw t0,64(sp)
	mv t0 s8
	sw t0,60(sp)
	mv t0 s7
	sw t0,56(sp)
	mv t0 s6
	sw t0,52(sp)
	mv t0 s5
	sw t0,48(sp)
	mv t0 s4
	sw t0,44(sp)
	mv t0 s3
	sw t0,40(sp)
	mv t0 s2
	sw t0,36(sp)
	mv t0 s1
	sw t0,32(sp)
	mv t0 s0
	sw t0,28(sp)
	mv t0 ra
	#%str_addr=alloca %struct.string*
	sw t0,24(sp)
	mv t0 a0
	sw t0,0(sp)
	j .L77
	#br label %.block.106
	
.L77:
	lw t0 0(sp)
	mv s0 t0
	li t1 4
	add s0,s0,t1
	#%.middle.223 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 1
	mv t1 s0
	lw t0 0(t1)
	# %.middle.224=load i32*,i32** %.middle.223
	sw t0,20(sp)
	lw t0 0(sp)
	mv s0 t0
	li t1 0
	add s0,s0,t1
	#%.middle.225 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 0
	mv t1 s0
	lw t0 0(t1)
	# %.middle.226=load i32,i32* %.middle.225
	sw t0,16(sp)
	mv t0 ra
	sw t0,12(sp)
	mv t0 gp
	sw t0,8(sp)
	mv t0 tp
	sw t0,4(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 20(sp)
	mv a0 t0
	lw t0 16(sp)
	mv a1 t0
	call printf_no_collision_please
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 4(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 12(sp)
	mv ra t0
	mv a2 s5
	lw t0 8(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @printf_no_collision_please(i32* %.middle.224,i32 %.middle.226)
	j .func.print.Exit
	#br label %Exit.105
	
.func.print.Exit:
	lw t0 72(sp)
	mv s11 t0
	lw t0 68(sp)
	mv s10 t0
	lw t0 64(sp)
	mv s9 t0
	lw t0 60(sp)
	mv s8 t0
	lw t0 56(sp)
	mv s7 t0
	lw t0 52(sp)
	mv s6 t0
	lw t0 48(sp)
	mv s5 t0
	lw t0 44(sp)
	mv s4 t0
	lw t0 40(sp)
	mv s3 t0
	lw t0 36(sp)
	mv s2 t0
	lw t0 32(sp)
	mv s1 t0
	lw t0 28(sp)
	mv s0 t0
	lw t0 24(sp)
	mv ra t0
	addi sp,sp,76
	ret
	#ret void
	

    .globl .func.println
.func.println:


addi sp,sp,-80
	mv t0 s11
	sw t0,76(sp)
	mv t0 s10
	sw t0,72(sp)
	mv t0 s9
	sw t0,68(sp)
	mv t0 s8
	sw t0,64(sp)
	mv t0 s7
	sw t0,60(sp)
	mv t0 s6
	sw t0,56(sp)
	mv t0 s5
	sw t0,52(sp)
	mv t0 s4
	sw t0,48(sp)
	mv t0 s3
	sw t0,44(sp)
	mv t0 s2
	sw t0,40(sp)
	mv t0 s1
	sw t0,36(sp)
	mv t0 s0
	sw t0,32(sp)
	mv t0 ra
	#%str_addr=alloca %struct.string*
	sw t0,28(sp)
	mv t0 a0
	sw t0,0(sp)
	mv t0 ra
	sw t0,20(sp)
	mv t0 gp
	sw t0,16(sp)
	mv t0 tp
	sw t0,12(sp)
	mv t0 t3
	sw t0,8(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	li t0 8
	mv a0 t0
	call _malloc
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 12(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 20(sp)
	mv ra t0
	mv a2 s6
	lw t0 16(sp)
	mv gp t0
	lw t0 8(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.229 = call i32* @_malloc(i32 8)
	mv t0 s0
	#%.middle.228 = bitcast i32* %.middle.229 to %struct.string*
	sw t0,24(sp)
	j .L78
	#br label %.block.109
	
.L78:
	lw t0 0(sp)
	sw t0,20(sp)
	mv t0 ra
	sw t0,16(sp)
	mv t0 gp
	sw t0,12(sp)
	mv t0 tp
	sw t0,8(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 20(sp)
	mv a0 t0
	call .func.print
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 8(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 16(sp)
	mv ra t0
	mv a2 s5
	lw t0 12(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.print(%struct.string* %.middle.227)
	mv t0 ra
	sw t0,16(sp)
	mv t0 gp
	sw t0,12(sp)
	mv t0 tp
	sw t0,8(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 24(sp)
	mv a0 t0
	call .func.string.construct
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 8(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 16(sp)
	mv ra t0
	mv a2 s5
	lw t0 12(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.string.construct(%struct.string* %.middle.228)
	lw t0 24(sp)
	li t1 0
	add s0,t0,t1
	#%.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.228,i32 0,i32 0
	mv t0 s0
	li t1 1
	sw t1,0(t0)
	#  store i32 1,i32* %.TmpLen.0
	lw t0 24(sp)
	li t1 4
	add s1,t0,t1
	#%.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.228,i32 0,i32 1
	la s0 .ConstantString.0
	li t1 0
	add s0,s0,t1
	#%.TmpConstRef.0 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.0,i32 0,i32 0
	mv t0 s1
	mv t1 s0
	sw t1,0(t0)
	#  store i32* %.TmpConstRef.0,i32** %.TmpContent.0
	lw t0 24(sp)
	sw t0,4(sp)
	lw t0 4(sp)
	sw t0,20(sp)
	mv t0 ra
	sw t0,16(sp)
	mv t0 gp
	sw t0,12(sp)
	mv t0 tp
	sw t0,8(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 20(sp)
	mv a0 t0
	call .func.print
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 8(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 16(sp)
	mv ra t0
	mv a2 s5
	lw t0 12(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.print(%struct.string* %.middle.230)
	j .func.println.Exit
	#br label %Exit.108
	
.func.println.Exit:
	lw t0 76(sp)
	mv s11 t0
	lw t0 72(sp)
	mv s10 t0
	lw t0 68(sp)
	mv s9 t0
	lw t0 64(sp)
	mv s8 t0
	lw t0 60(sp)
	mv s7 t0
	lw t0 56(sp)
	mv s6 t0
	lw t0 52(sp)
	mv s5 t0
	lw t0 48(sp)
	mv s4 t0
	lw t0 44(sp)
	mv s3 t0
	lw t0 40(sp)
	mv s2 t0
	lw t0 36(sp)
	mv s1 t0
	lw t0 32(sp)
	mv s0 t0
	lw t0 28(sp)
	mv ra t0
	addi sp,sp,80
	ret
	#ret void
	

    .globl .func.printlnInt
.func.printlnInt:


addi sp,sp,-80
	mv t0 s11
	sw t0,76(sp)
	mv t0 s10
	sw t0,72(sp)
	mv t0 s9
	sw t0,68(sp)
	mv t0 s8
	sw t0,64(sp)
	mv t0 s7
	sw t0,60(sp)
	mv t0 s6
	sw t0,56(sp)
	mv t0 s5
	sw t0,52(sp)
	mv t0 s4
	sw t0,48(sp)
	mv t0 s3
	sw t0,44(sp)
	mv t0 s2
	sw t0,40(sp)
	mv t0 s1
	sw t0,36(sp)
	mv t0 s0
	sw t0,32(sp)
	mv t0 ra
	#%num_addr=alloca i32
	sw t0,28(sp)
	mv t0 a0
	sw t0,0(sp)
	mv t0 ra
	sw t0,20(sp)
	mv t0 gp
	sw t0,16(sp)
	mv t0 tp
	sw t0,12(sp)
	mv t0 t3
	sw t0,8(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	li t0 8
	mv a0 t0
	call _malloc
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 12(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 20(sp)
	mv ra t0
	mv a2 s6
	lw t0 16(sp)
	mv gp t0
	lw t0 8(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.233 = call i32* @_malloc(i32 8)
	mv t0 s0
	#%.middle.232 = bitcast i32* %.middle.233 to %struct.string*
	sw t0,24(sp)
	j .L79
	#br label %.block.112
	
.L79:
	lw t0 0(sp)
	sw t0,20(sp)
	mv t0 ra
	sw t0,16(sp)
	mv t0 gp
	sw t0,12(sp)
	mv t0 tp
	sw t0,8(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 20(sp)
	mv a0 t0
	call printInt
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 8(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 16(sp)
	mv ra t0
	mv a2 s5
	lw t0 12(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @printInt(i32 %.middle.231)
	mv t0 ra
	sw t0,16(sp)
	mv t0 gp
	sw t0,12(sp)
	mv t0 tp
	sw t0,8(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 24(sp)
	mv a0 t0
	call .func.string.construct
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 8(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 16(sp)
	mv ra t0
	mv a2 s5
	lw t0 12(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.string.construct(%struct.string* %.middle.232)
	lw t0 24(sp)
	li t1 0
	add s0,t0,t1
	#%.TmpLen.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 0
	mv t0 s0
	li t1 1
	sw t1,0(t0)
	#  store i32 1,i32* %.TmpLen.1
	lw t0 24(sp)
	li t1 4
	add s1,t0,t1
	#%.TmpContent.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 1
	la s0 .ConstantString.1
	li t1 0
	add s0,s0,t1
	#%.TmpConstRef.1 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.1,i32 0,i32 0
	mv t0 s1
	mv t1 s0
	sw t1,0(t0)
	#  store i32* %.TmpConstRef.1,i32** %.TmpContent.1
	lw t0 24(sp)
	sw t0,4(sp)
	lw t0 4(sp)
	sw t0,20(sp)
	mv t0 ra
	sw t0,16(sp)
	mv t0 gp
	sw t0,12(sp)
	mv t0 tp
	sw t0,8(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 20(sp)
	mv a0 t0
	call .func.print
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 8(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 16(sp)
	mv ra t0
	mv a2 s5
	lw t0 12(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.print(%struct.string* %.middle.234)
	j .func.printlnInt.Exit
	#br label %Exit.111
	
.func.printlnInt.Exit:
	lw t0 76(sp)
	mv s11 t0
	lw t0 72(sp)
	mv s10 t0
	lw t0 68(sp)
	mv s9 t0
	lw t0 64(sp)
	mv s8 t0
	lw t0 60(sp)
	mv s7 t0
	lw t0 56(sp)
	mv s6 t0
	lw t0 52(sp)
	mv s5 t0
	lw t0 48(sp)
	mv s4 t0
	lw t0 44(sp)
	mv s3 t0
	lw t0 40(sp)
	mv s2 t0
	lw t0 36(sp)
	mv s1 t0
	lw t0 32(sp)
	mv s0 t0
	lw t0 28(sp)
	mv ra t0
	addi sp,sp,80
	ret
	#ret void
	

    .globl .func.toString
.func.toString:


addi sp,sp,-96
	mv t0 s11
	sw t0,92(sp)
	mv t0 s10
	sw t0,88(sp)
	mv t0 s9
	sw t0,84(sp)
	mv t0 s8
	sw t0,80(sp)
	mv t0 s7
	sw t0,76(sp)
	mv t0 s6
	sw t0,72(sp)
	mv t0 s5
	sw t0,68(sp)
	mv t0 s4
	sw t0,64(sp)
	mv t0 s3
	sw t0,60(sp)
	mv t0 s2
	sw t0,56(sp)
	mv t0 s1
	sw t0,52(sp)
	mv t0 s0
	sw t0,48(sp)
	mv t0 ra
	#%i_addr=alloca i32
	sw t0,44(sp)
	mv t0 a0
	sw t0,0(sp)
	j .L80
	#br label %.block.115
	
.L80:
	j .L81
	#br label %If_Cond.116
	
.L81:
	lw t0 tmp_no_collision_plz.0
	mv s0 t0
	li t1 0
	add s0,s0,t1
	#%.middle.235 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.0,i32 0,i32 0
	mv t1 s0
	lw t0 0(t1)
	# %.middle.237=load i32,i32* %.middle.235
	mv s0 t0
	li t1 0
	sub s0,s0,t1
	seqz s0 s0
	#%.middle.236 = icmp eq i32 %.middle.237,0
	bnez s0 .L82
	beqz s0 .L83
	#br i1 %.middle.236,label %If_Then.117,label %If_Else.118
	
.L82:
	lw t0 tmp_no_collision_plz.0
	mv s0 t0
	li t1 4
	add t0,s0,t1
	#%.middle.238 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.1,i32 0,i32 1
	sw t0,40(sp)
	mv t0 ra
	sw t0,28(sp)
	mv t0 gp
	sw t0,24(sp)
	mv t0 tp
	sw t0,20(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	li t0 1
	mv a0 t0
	call _malloc
	mv t0 a0
	sw t0,36(sp)
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 20(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 28(sp)
	mv ra t0
	mv a2 s5
	lw t0 24(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#%.SizeList.3 = call i32* @_malloc(i32 1)
	li t0 0
	mv s0 t0
	li t1 2
	sll s0,s0,t1
	lw t0 36(sp)
	add s0,t0,s0
	#%.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	mv t0 s0
	li t1 20
	sw t1,0(t0)
	#  store i32 20,i32* %.ArrayIdx.3
	mv t0 ra
	sw t0,32(sp)
	mv t0 gp
	sw t0,28(sp)
	mv t0 tp
	sw t0,24(sp)
	mv t0 t3
	sw t0,20(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	lw t0 36(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	call _malloc_toInt
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 24(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 32(sp)
	mv ra t0
	mv a2 s6
	lw t0 28(sp)
	mv gp t0
	lw t0 20(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.239 = call i32* @_malloc_toInt(i32* %.SizeList.3,i32 1)
	lw t0 40(sp)
	mv t1 s0
	sw t1,0(t0)
	#  store i32* %.new.3,i32** %.middle.238
	j .L84
	#br label %If_End.119
	
.L83:
	j .L84
	#br label %If_End.119
	
.L84:
	li t0 0
	sw t0,8(sp)
	li t0 0
	mv gp t0
	#%.FromBool.19 = zext i1 0 to i32
	mv t0 gp
	sw t0,12(sp)
	j .L85
	#br label %If_Cond.120
	
.L85:
	lw t0 0(sp)
	mv gp t0
	li t1 0
	sub gp,gp,t1
	seqz gp gp
	#%.middle.241 = icmp eq i32 %.middle.242,0
	bnez gp .L86
	beqz gp .L87
	#br i1 %.middle.241,label %If_Then.121,label %If_Else.122
	
.L86:
	li t0 1
	sw t0,8(sp)
	lw t0 a_no_collison_plz.0
	mv gp t0
	li t0 0
	mv ra t0
	li t1 2
	sll ra,ra,t1
	add ra,gp,ra
	#%.middle.245 = getelementptr i32,i32* %.middle.244,i32 0
	mv t1 ra
	lw t0 0(t1)
	# %.middle.245.0=load i32,i32* %.middle.245
	mv s11 t0
	mv t0 ra
	li t1 0
	sw t1,0(t0)
	#  store i32 0,i32* %.middle.245
	j .L88
	#br label %If_End.123
	
.L87:
	j .L88
	#br label %If_End.123
	
.L88:
	j .L89
	#br label %If_Cond.124
	
.L89:
	lw t0 0(sp)
	mv s11 t0
	li t1 0
	slt s11 s11,t1
	#%.middle.247 = icmp slt i32 %.middle.248,0
	bnez s11 .L90
	beqz s11 .L91
	#br i1 %.middle.247,label %If_Then.125,label %If_Else.126
	
.L90:
	li t0 1
	mv s11 t0
	#%.FromBool.20 = zext i1 1 to i32
	mv t0 s11
	sw t0,12(sp)
	lw t0 0(sp)
	mv s11 t0
	li t0 0
	sub s11,t0,s11
	#%.middle.250 = sub i32 0,%.middle.251
	mv t0 s11
	sw t0,0(sp)
	j .L92
	#br label %If_End.127
	
.L91:
	j .L92
	#br label %If_End.127
	
.L92:
	j .L93
	#br label %While_Cond.128
	
.L93:
	lw t0 0(sp)
	mv s11 t0
	li t1 0
	sub s11,s11,t1
	snez s11 s11
	#%.middle.253 = icmp ne i32 %.middle.254,0
	bnez s11 .L94
	beqz s11 .L95
	#br i1 %.middle.253,label %While_Body.129,label %While_End.130
	
.L94:
	lw t0 a_no_collison_plz.0
	mv s11 t0
	lw t0 8(sp)
	mv s10 t0
	li t1 2
	sll s10,s10,t1
	add s10,s11,s10
	#%.middle.256 = getelementptr i32,i32* %.middle.255,i32 %.middle.257
	mv t1 s10
	lw t0 0(t1)
	# %.middle.256.0=load i32,i32* %.middle.256
	mv s9 t0
	lw t0 0(sp)
	mv s9 t0
	li t1 10
	rem s9,s9,t1
	#%.middle.258 = srem i32 %.middle.259,10
	mv t0 s10
	mv t1 s9
	sw t1,0(t0)
	#  store i32 %.middle.258,i32* %.middle.256
	lw t0 0(sp)
	mv s9 t0
	li t1 10
	div s9,s9,t1
	#%.middle.261 = sdiv i32 %.middle.262,10
	mv t0 s9
	sw t0,0(sp)
	lw t0 8(sp)
	mv s9 t0
	li t1 1
	add s9,s9,t1
	#%.middle.265 = add i32 %.middle.264,1
	mv t0 s9
	sw t0,8(sp)
	j .L93
	#br label %While_Cond.128
	
.L95:
	j .L96
	#br label %If_Cond.131
	
.L96:
	lw t0 12(sp)
	mv s9 t0
	li t1 1
	and s9,s9,t1
	#%.middle.266 = trunc i32 %.ToBool.6 to i1
	bnez s9 .L97
	beqz s9 .L98
	#br i1 %.middle.266,label %If_Then.132,label %If_Else.133
	
.L97:
	lw t0 a_no_collison_plz.0
	mv s9 t0
	lw t0 8(sp)
	mv s8 t0
	li t1 2
	sll s8,s8,t1
	add s8,s9,s8
	#%.middle.268 = getelementptr i32,i32* %.middle.267,i32 %.middle.269
	mv t1 s8
	lw t0 0(t1)
	# %.middle.268.0=load i32,i32* %.middle.268
	mv s7 t0
	li t0 0
	li t1 3
	sub s7,t0,t1
	#%.middle.270 = sub i32 0,3
	mv t0 s8
	mv t1 s7
	sw t1,0(t0)
	#  store i32 %.middle.270,i32* %.middle.268
	lw t0 8(sp)
	mv s7 t0
	li t1 1
	add s7,s7,t1
	#%.middle.273 = add i32 %.middle.272,1
	mv t0 s7
	sw t0,8(sp)
	j .L99
	#br label %If_End.134
	
.L98:
	j .L99
	#br label %If_End.134
	
.L99:
	lw t0 tmp_no_collision_plz.0
	mv s7 t0
	li t1 0
	add s7,s7,t1
	#%.middle.274 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.2,i32 0,i32 0
	lw t0 8(sp)
	mv s6 t0
	mv t0 s7
	mv t1 s6
	sw t1,0(t0)
	#  store i32 %.middle.276,i32* %.middle.274
	li t0 0
	sw t0,16(sp)
	j .L100
	#br label %For_Cond.135
	
.L100:
	lw t0 16(sp)
	mv s6 t0
	lw t0 8(sp)
	mv s5 t0
	slt s5 s6,s5
	#%.middle.277 = icmp slt i32 %.middle.278,%.middle.279
	bnez s5 .L101
	beqz s5 .L103
	#br i1 %.middle.277,label %For_Body.137,label %For_End.136
	
.L101:
	lw t0 tmp_no_collision_plz.0
	mv s5 t0
	li t1 4
	add s5,s5,t1
	#%.middle.280 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.3,i32 0,i32 1
	mv t1 s5
	lw t0 0(t1)
	# %.middle.281=load i32*,i32** %.middle.280
	mv s5 t0
	lw t0 16(sp)
	mv s4 t0
	li t1 2
	sll s4,s4,t1
	add s4,s5,s4
	#%.middle.282 = getelementptr i32,i32* %.middle.281,i32 %.middle.283
	mv t1 s4
	lw t0 0(t1)
	# %.middle.282.0=load i32,i32* %.middle.282
	mv s3 t0
	lw t0 a_no_collison_plz.0
	mv s3 t0
	lw t0 8(sp)
	mv s2 t0
	lw t0 16(sp)
	mv s1 t0
	sub s1,s2,s1
	#%.middle.285 = sub i32 %.middle.286,%.middle.287
	li t1 1
	sub s1,s1,t1
	#%.middle.288 = sub i32 %.middle.285,1
	li t1 2
	sll s1,s1,t1
	add s1,s3,s1
	#%.middle.289 = getelementptr i32,i32* %.middle.284,i32 %.middle.288
	mv t1 s1
	lw t0 0(t1)
	# %.middle.289.0=load i32,i32* %.middle.289
	mv s0 t0
	mv t1 s1
	lw t0 0(t1)
	# %.middle.291=load i32,i32* %.middle.289
	mv s0 t0
	li t1 48
	add s0,s0,t1
	#%.middle.290 = add i32 %.middle.291,48
	mv t0 s4
	mv t1 s0
	sw t1,0(t0)
	#  store i32 %.middle.290,i32* %.middle.282
	j .L102
	#br label %For_Change.138
	
.L102:
	lw t0 16(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.294 = add i32 %.middle.293,1
	mv t0 s0
	sw t0,16(sp)
	j .L100
	#br label %For_Cond.135
	
.L103:
	lw t0 tmp_no_collision_plz.0
	mv s0 t0
	mv t0 s0
	sw t0,4(sp)
	j .func.toString.Exit
	#br label %Exit.114
	
.func.toString.Exit:
	lw t0 92(sp)
	mv s11 t0
	lw t0 88(sp)
	mv s10 t0
	lw t0 84(sp)
	mv s9 t0
	lw t0 80(sp)
	mv s8 t0
	lw t0 76(sp)
	mv s7 t0
	lw t0 72(sp)
	mv s6 t0
	lw t0 68(sp)
	mv s5 t0
	lw t0 64(sp)
	mv s4 t0
	lw t0 60(sp)
	mv s3 t0
	lw t0 56(sp)
	mv s2 t0
	lw t0 52(sp)
	mv s1 t0
	lw t0 48(sp)
	mv s0 t0
	lw t0 4(sp)
	mv a0 t0
	lw t0 44(sp)
	mv ra t0
	addi sp,sp,96
	ret
	#ret %struct.string* %.retval
	

    .globl .func.getString
.func.getString:


addi sp,sp,-88
	mv t0 s11
	sw t0,84(sp)
	mv t0 s10
	sw t0,80(sp)
	mv t0 s9
	sw t0,76(sp)
	mv t0 s8
	sw t0,72(sp)
	mv t0 s7
	sw t0,68(sp)
	mv t0 s6
	sw t0,64(sp)
	mv t0 s5
	sw t0,60(sp)
	mv t0 s4
	sw t0,56(sp)
	mv t0 s3
	sw t0,52(sp)
	mv t0 s2
	sw t0,48(sp)
	mv t0 s1
	sw t0,44(sp)
	mv t0 s0
	sw t0,40(sp)
	mv t0 ra
	#%cnt.1=alloca i32
	sw t0,36(sp)
	j .L104
	#br label %.block.141
	
.L104:
	mv t0 ra
	sw t0,28(sp)
	mv t0 gp
	sw t0,24(sp)
	mv t0 tp
	sw t0,20(sp)
	mv t0 t3
	sw t0,16(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	li t0 2
	mv a0 t0
	call _malloc
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 20(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 28(sp)
	mv ra t0
	mv a2 s6
	lw t0 24(sp)
	mv gp t0
	lw t0 16(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.middle.297 = call i32* @_malloc(i32 2)
	mv t0 s0
	#%.middle.296 = bitcast i32* %.middle.297 to %struct.string*
	sw t0,28(sp)
	mv t0 ra
	sw t0,24(sp)
	mv t0 gp
	sw t0,20(sp)
	mv t0 tp
	sw t0,16(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	lw t0 28(sp)
	mv a0 t0
	call .func.string.construct
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 16(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 24(sp)
	mv ra t0
	mv a2 s5
	lw t0 20(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.func.string.construct(%struct.string* %.middle.296)
	lw t0 28(sp)
	sw t0,4(sp)
	lw t0 4(sp)
	mv s0 t0
	li t1 4
	add t0,s0,t1
	#%.middle.298 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 1
	sw t0,32(sp)
	mv t0 ra
	sw t0,28(sp)
	mv t0 gp
	sw t0,24(sp)
	mv t0 tp
	sw t0,20(sp)
	mv t0 t3
	sw t0,16(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	call scanf_string
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 20(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 28(sp)
	mv ra t0
	mv a2 s6
	lw t0 24(sp)
	mv gp t0
	lw t0 16(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.Func_Return.4 = call i32* @scanf_string()
	mv t0 s0
	sw t0,8(sp)
	lw t0 8(sp)
	mv s3 t0
	lw t0 32(sp)
	mv t1 s3
	sw t1,0(t0)
	#  store i32* %.middle.300,i32** %.middle.298
	li t0 0
	sw t0,12(sp)
	j .L105
	#br label %For_Cond.142
	
.L105:
	lw t0 4(sp)
	mv s3 t0
	li t1 4
	add s3,s3,t1
	#%.middle.302 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	mv t1 s3
	lw t0 0(t1)
	# %.middle.303=load i32*,i32** %.middle.302
	mv s3 t0
	lw t0 12(sp)
	mv s2 t0
	li t1 2
	sll s2,s2,t1
	add s2,s3,s2
	#%.middle.304 = getelementptr i32,i32* %.middle.303,i32 %.middle.305
	mv t1 s2
	lw t0 0(t1)
	# %.middle.304.0=load i32,i32* %.middle.304
	mv s1 t0
	mv t1 s2
	lw t0 0(t1)
	# %.middle.307=load i32,i32* %.middle.304
	mv s1 t0
	li t1 0
	sub s1,s1,t1
	snez s1 s1
	#%.middle.306 = icmp ne i32 %.middle.307,0
	bnez s1 .L106
	beqz s1 .L108
	#br i1 %.middle.306,label %For_Body.144,label %For_End.143
	
.L106:
	j .L107
	#br label %For_Change.145
	
.L107:
	lw t0 12(sp)
	mv s1 t0
	li t1 1
	add s1,s1,t1
	#%.middle.309 = add i32 %.middle.308,1
	mv t0 s1
	sw t0,12(sp)
	j .L105
	#br label %For_Cond.142
	
.L108:
	lw t0 4(sp)
	mv s1 t0
	li t1 0
	add s1,s1,t1
	#%.middle.310 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 0
	lw t0 12(sp)
	mv s0 t0
	mv t0 s1
	mv t1 s0
	sw t1,0(t0)
	#  store i32 %.middle.312,i32* %.middle.310
	lw t0 4(sp)
	mv s0 t0
	mv t0 s0
	sw t0,0(sp)
	j .func.getString.Exit
	#br label %Exit.140
	
.func.getString.Exit:
	lw t0 84(sp)
	mv s11 t0
	lw t0 80(sp)
	mv s10 t0
	lw t0 76(sp)
	mv s9 t0
	lw t0 72(sp)
	mv s8 t0
	lw t0 68(sp)
	mv s7 t0
	lw t0 64(sp)
	mv s6 t0
	lw t0 60(sp)
	mv s5 t0
	lw t0 56(sp)
	mv s4 t0
	lw t0 52(sp)
	mv s3 t0
	lw t0 48(sp)
	mv s2 t0
	lw t0 44(sp)
	mv s1 t0
	lw t0 40(sp)
	mv s0 t0
	lw t0 0(sp)
	mv a0 t0
	lw t0 36(sp)
	mv ra t0
	addi sp,sp,88
	ret
	#ret %struct.string* %.retval
	

    .globl .func.test
.func.test:


addi sp,sp,-40
	mv t3 s11
	mv tp s10
	mv gp s9
	mv ra s8
	mv s11 s7
	mv s10 s6
	mv s9 s5
	mv s8 s4
	mv s7 s3
	mv s6 s2
	mv s5 s1
	mv s4 s0
	mv s3 ra
	#%z.0=alloca i32
	j .L109
	#br label %.block.148
	
.L109:
	li t0 0
	sw t0,8(sp)
	li t0 1
	sw t0,12(sp)
	li t0 2
	sw t0,16(sp)
	li t0 0
	sw t0,4(sp)
	j .L110
	#br label %For_Cond.149
	
.L110:
	lw t0 4(sp)
	mv a5 t0
	li t1 200
	slt a5 a5,t1
	#%.middle.315 = icmp slt i32 %.middle.316,200
	bnez a5 .L111
	beqz a5 .L129
	#br i1 %.middle.315,label %For_Body.151,label %For_End.150
	
.L111:
	j .L112
	#br label %If_Cond.153
	
.L112:
	li t0 1
	li t1 2
	xor a5,t0,t1
	#%.middle.317 = xor i32 1,2
	li t1 3
	sub a5,a5,t1
	seqz a5 a5
	#%.middle.318 = icmp eq i32 %.middle.317,3
	li t0 0
	sw t0,20(sp)
	bnez a5 .L113
	beqz a5 .L114
	#br i1 %.middle.318,label %binary_and_rv.157,label %binary_end.158
	
.L113:
	li t0 1
	li t1 1
	and a5,t0,t1
	#%.middle.319 = and i32 1,1
	li t0 5
	li t1 3
	div a3,t0,t1
	#%.middle.320 = sdiv i32 5,3
	sub t4,a5,a3
	seqz t4 t4
	#%.middle.321 = icmp eq i32 %.middle.319,%.middle.320
	mv t0 t4
	sw t0,20(sp)
	j .L114
	#br label %binary_end.158
	
.L114:
	lw t0 20(sp)
	mv a3 t0
	li t1 1
	and a3,a3,t1
	#%.middle.323 = trunc i32 %.ToBool.7 to i1
	and a3,t4,a3
	#%.middle.322 = and i1 %.middle.321,%.middle.323
	li t0 0
	sw t0,24(sp)
	bnez a3 .L115
	beqz a3 .L116
	#br i1 %.middle.322,label %binary_and_rv.159,label %binary_end.160
	
.L115:
	li t0 1
	li t1 2
	add a3,t0,t1
	#%.middle.324 = add i32 1,2
	li t1 3
	add a3,a3,t1
	#%.middle.325 = add i32 %.middle.324,3
	li t1 4
	add a3,a3,t1
	#%.middle.326 = add i32 %.middle.325,4
	li t1 5
	add a3,a3,t1
	#%.middle.327 = add i32 %.middle.326,5
	li t1 6
	add a3,a3,t1
	#%.middle.328 = add i32 %.middle.327,6
	li t1 7
	add a3,a3,t1
	#%.middle.329 = add i32 %.middle.328,7
	li t1 8
	add a3,a3,t1
	#%.middle.330 = add i32 %.middle.329,8
	li t1 9
	add a3,a3,t1
	#%.middle.331 = add i32 %.middle.330,9
	li t1 10
	add a3,a3,t1
	#%.middle.332 = add i32 %.middle.331,10
	li t1 11
	add a3,a3,t1
	#%.middle.333 = add i32 %.middle.332,11
	li t1 12
	add a3,a3,t1
	#%.middle.334 = add i32 %.middle.333,12
	li t1 13
	add a3,a3,t1
	#%.middle.335 = add i32 %.middle.334,13
	li t1 14
	add a3,a3,t1
	#%.middle.336 = add i32 %.middle.335,14
	li t1 15
	add a3,a3,t1
	#%.middle.337 = add i32 %.middle.336,15
	li t1 16
	add a3,a3,t1
	#%.middle.338 = add i32 %.middle.337,16
	li t1 17
	add a3,a3,t1
	#%.middle.339 = add i32 %.middle.338,17
	li t1 18
	add a3,a3,t1
	#%.middle.340 = add i32 %.middle.339,18
	li t1 19
	add a3,a3,t1
	#%.middle.341 = add i32 %.middle.340,19
	li t1 20
	add a3,a3,t1
	#%.middle.342 = add i32 %.middle.341,20
	li t1 21
	add a3,a3,t1
	#%.middle.343 = add i32 %.middle.342,21
	li t1 22
	add a3,a3,t1
	#%.middle.344 = add i32 %.middle.343,22
	li t1 23
	add a3,a3,t1
	#%.middle.345 = add i32 %.middle.344,23
	li t1 24
	add a3,a3,t1
	#%.middle.346 = add i32 %.middle.345,24
	li t1 25
	add a3,a3,t1
	#%.middle.347 = add i32 %.middle.346,25
	li t1 26
	add a3,a3,t1
	#%.middle.348 = add i32 %.middle.347,26
	li t1 27
	add a3,a3,t1
	#%.middle.349 = add i32 %.middle.348,27
	li t1 28
	add a3,a3,t1
	#%.middle.350 = add i32 %.middle.349,28
	li t1 29
	add a3,a3,t1
	#%.middle.351 = add i32 %.middle.350,29
	li t1 30
	add a3,a3,t1
	#%.middle.352 = add i32 %.middle.351,30
	li t1 31
	add a3,a3,t1
	#%.middle.353 = add i32 %.middle.352,31
	li t1 32
	add a3,a3,t1
	#%.middle.354 = add i32 %.middle.353,32
	li t1 33
	add a3,a3,t1
	#%.middle.355 = add i32 %.middle.354,33
	li t1 34
	add a3,a3,t1
	#%.middle.356 = add i32 %.middle.355,34
	li t1 35
	add a3,a3,t1
	#%.middle.357 = add i32 %.middle.356,35
	li t1 36
	add a3,a3,t1
	#%.middle.358 = add i32 %.middle.357,36
	li t1 37
	add a3,a3,t1
	#%.middle.359 = add i32 %.middle.358,37
	li t1 38
	add a3,a3,t1
	#%.middle.360 = add i32 %.middle.359,38
	li t1 39
	add a3,a3,t1
	#%.middle.361 = add i32 %.middle.360,39
	li t1 40
	add a3,a3,t1
	#%.middle.362 = add i32 %.middle.361,40
	li t1 41
	add a3,a3,t1
	#%.middle.363 = add i32 %.middle.362,41
	li t1 42
	add a3,a3,t1
	#%.middle.364 = add i32 %.middle.363,42
	li t1 43
	add a3,a3,t1
	#%.middle.365 = add i32 %.middle.364,43
	li t1 44
	add a3,a3,t1
	#%.middle.366 = add i32 %.middle.365,44
	li t1 45
	add a3,a3,t1
	#%.middle.367 = add i32 %.middle.366,45
	li t1 46
	add a3,a3,t1
	#%.middle.368 = add i32 %.middle.367,46
	li t1 47
	add a3,a3,t1
	#%.middle.369 = add i32 %.middle.368,47
	li t1 48
	add a3,a3,t1
	#%.middle.370 = add i32 %.middle.369,48
	li t1 49
	add a3,a3,t1
	#%.middle.371 = add i32 %.middle.370,49
	li t1 50
	add a3,a3,t1
	#%.middle.372 = add i32 %.middle.371,50
	li t1 51
	add a3,a3,t1
	#%.middle.373 = add i32 %.middle.372,51
	li t1 52
	add a3,a3,t1
	#%.middle.374 = add i32 %.middle.373,52
	li t1 53
	add a3,a3,t1
	#%.middle.375 = add i32 %.middle.374,53
	li t1 54
	add a3,a3,t1
	#%.middle.376 = add i32 %.middle.375,54
	li t1 55
	add a3,a3,t1
	#%.middle.377 = add i32 %.middle.376,55
	li t1 56
	add a3,a3,t1
	#%.middle.378 = add i32 %.middle.377,56
	li t1 57
	add a3,a3,t1
	#%.middle.379 = add i32 %.middle.378,57
	li t1 58
	add a3,a3,t1
	#%.middle.380 = add i32 %.middle.379,58
	li t1 59
	add a3,a3,t1
	#%.middle.381 = add i32 %.middle.380,59
	li t1 60
	add a3,a3,t1
	#%.middle.382 = add i32 %.middle.381,60
	li t1 61
	add a3,a3,t1
	#%.middle.383 = add i32 %.middle.382,61
	li t1 62
	add a3,a3,t1
	#%.middle.384 = add i32 %.middle.383,62
	li t1 63
	add a3,a3,t1
	#%.middle.385 = add i32 %.middle.384,63
	li t1 64
	add a3,a3,t1
	#%.middle.386 = add i32 %.middle.385,64
	li t1 65
	add a3,a3,t1
	#%.middle.387 = add i32 %.middle.386,65
	li t1 66
	add a3,a3,t1
	#%.middle.388 = add i32 %.middle.387,66
	li t1 67
	add a3,a3,t1
	#%.middle.389 = add i32 %.middle.388,67
	li t1 68
	add a3,a3,t1
	#%.middle.390 = add i32 %.middle.389,68
	li t1 69
	add a3,a3,t1
	#%.middle.391 = add i32 %.middle.390,69
	li t1 70
	add a3,a3,t1
	#%.middle.392 = add i32 %.middle.391,70
	li t1 71
	add a3,a3,t1
	#%.middle.393 = add i32 %.middle.392,71
	li t1 72
	add a3,a3,t1
	#%.middle.394 = add i32 %.middle.393,72
	li t1 73
	add a3,a3,t1
	#%.middle.395 = add i32 %.middle.394,73
	li t1 74
	add a3,a3,t1
	#%.middle.396 = add i32 %.middle.395,74
	li t1 75
	add a3,a3,t1
	#%.middle.397 = add i32 %.middle.396,75
	li t1 76
	add a3,a3,t1
	#%.middle.398 = add i32 %.middle.397,76
	li t1 77
	add a3,a3,t1
	#%.middle.399 = add i32 %.middle.398,77
	li t1 78
	add a3,a3,t1
	#%.middle.400 = add i32 %.middle.399,78
	li t1 79
	add a3,a3,t1
	#%.middle.401 = add i32 %.middle.400,79
	li t1 80
	add a3,a3,t1
	#%.middle.402 = add i32 %.middle.401,80
	li t1 81
	add a3,a3,t1
	#%.middle.403 = add i32 %.middle.402,81
	li t1 82
	add a3,a3,t1
	#%.middle.404 = add i32 %.middle.403,82
	li t1 83
	add a3,a3,t1
	#%.middle.405 = add i32 %.middle.404,83
	li t1 84
	add a3,a3,t1
	#%.middle.406 = add i32 %.middle.405,84
	li t1 85
	add a3,a3,t1
	#%.middle.407 = add i32 %.middle.406,85
	li t1 86
	add a3,a3,t1
	#%.middle.408 = add i32 %.middle.407,86
	li t1 87
	add a3,a3,t1
	#%.middle.409 = add i32 %.middle.408,87
	li t1 88
	add a3,a3,t1
	#%.middle.410 = add i32 %.middle.409,88
	li t1 89
	add a3,a3,t1
	#%.middle.411 = add i32 %.middle.410,89
	li t1 90
	add a3,a3,t1
	#%.middle.412 = add i32 %.middle.411,90
	li t1 91
	add a3,a3,t1
	#%.middle.413 = add i32 %.middle.412,91
	li t1 92
	add a3,a3,t1
	#%.middle.414 = add i32 %.middle.413,92
	li t1 93
	add a3,a3,t1
	#%.middle.415 = add i32 %.middle.414,93
	li t1 94
	add a3,a3,t1
	#%.middle.416 = add i32 %.middle.415,94
	li t1 95
	add a3,a3,t1
	#%.middle.417 = add i32 %.middle.416,95
	li t1 96
	add a3,a3,t1
	#%.middle.418 = add i32 %.middle.417,96
	li t1 97
	add a3,a3,t1
	#%.middle.419 = add i32 %.middle.418,97
	li t1 98
	add a3,a3,t1
	#%.middle.420 = add i32 %.middle.419,98
	li t1 99
	add a3,a3,t1
	#%.middle.421 = add i32 %.middle.420,99
	li t1 100
	add a3,a3,t1
	#%.middle.422 = add i32 %.middle.421,100
	li t0 100
	li t1 1
	add a2,t0,t1
	#%.middle.423 = add i32 100,1
	li t1 100
	mul a2,a2,t1
	#%.middle.424 = mul i32 %.middle.423,100
	li t1 2
	div a2,a2,t1
	#%.middle.425 = sdiv i32 %.middle.424,2
	sub s2,a3,a2
	seqz s2 s2
	#%.middle.426 = icmp eq i32 %.middle.422,%.middle.425
	mv t0 s2
	sw t0,24(sp)
	j .L116
	#br label %binary_end.160
	
.L116:
	lw t0 24(sp)
	mv a2 t0
	li t1 1
	and a2,a2,t1
	#%.middle.428 = trunc i32 %.ToBool.8 to i1
	and a2,s2,a2
	#%.middle.427 = and i1 %.middle.426,%.middle.428
	bnez a2 .L117
	beqz a2 .L126
	#br i1 %.middle.427,label %If_Then.154,label %If_Else.155
	
.L117:
	lw t0 12(sp)
	mv a2 t0
	mv t0 a2
	sw t0,28(sp)
	lw t0 16(sp)
	mv a2 t0
	mv t0 a2
	sw t0,32(sp)
	lw t0 28(sp)
	mv a2 t0
	lw t0 32(sp)
	mv a4 t0
	add a4,a2,a4
	#%.middle.431 = add i32 %.middle.432,%.middle.433
	mv t0 a4
	sw t0,36(sp)
	j .L118
	#br label %If_Cond.161
	
.L118:
	lw t0 28(sp)
	mv a4 t0
	lw t0 32(sp)
	mv a1 t0
	add a1,a4,a1
	#%.middle.434 = add i32 %.middle.435,%.middle.436
	lw t0 36(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.437 = icmp eq i32 %.middle.434,%.middle.438
	bnez t6 .L119
	beqz t6 .L124
	#br i1 %.middle.437,label %If_Then.162,label %If_Else.163
	
.L119:
	j .L120
	#br label %If_Cond.165
	
.L120:
	lw t0 32(sp)
	mv t6 t0
	lw t0 32(sp)
	mv t5 t0
	mul t5,t6,t5
	#%.middle.439 = mul i32 %.middle.440,%.middle.441
	lw t0 32(sp)
	mv s1 t0
	mul s1,t5,s1
	#%.middle.442 = mul i32 %.middle.439,%.middle.443
	lw t0 32(sp)
	mv s0 t0
	mul s0,s1,s0
	#%.middle.444 = mul i32 %.middle.442,%.middle.445
	lw t0 32(sp)
	mv a7 t0
	mul a7,s0,a7
	#%.middle.446 = mul i32 %.middle.444,%.middle.447
	lw t0 32(sp)
	mv a6 t0
	mul a6,a7,a6
	#%.middle.448 = mul i32 %.middle.446,%.middle.449
	lw t0 32(sp)
	mv a0 t0
	mul a0,a6,a0
	#%.middle.450 = mul i32 %.middle.448,%.middle.451
	lw t0 32(sp)
	mv a5 t0
	mul a5,a0,a5
	#%.middle.452 = mul i32 %.middle.450,%.middle.453
	lw t0 32(sp)
	mv a3 t0
	mul a3,a5,a3
	#%.middle.454 = mul i32 %.middle.452,%.middle.455
	lw t0 32(sp)
	mv a2 t0
	mul a4,a3,a2
	#%.middle.456 = mul i32 %.middle.454,%.middle.457
	lw t0 28(sp)
	mv a2 t0
	lw t0 28(sp)
	mv a1 t0
	add a1,a2,a1
	#%.middle.458 = add i32 %.middle.459,%.middle.460
	lw t0 32(sp)
	mv t6 t0
	add t6,a1,t6
	#%.middle.461 = add i32 %.middle.458,%.middle.462
	lw t0 28(sp)
	mv t5 t0
	lw t0 28(sp)
	mv s1 t0
	add s1,t5,s1
	#%.middle.463 = add i32 %.middle.464,%.middle.465
	lw t0 32(sp)
	mv s0 t0
	add s0,s1,s0
	#%.middle.466 = add i32 %.middle.463,%.middle.467
	mul s0,t6,s0
	#%.middle.468 = mul i32 %.middle.461,%.middle.466
	lw t0 28(sp)
	mv a0 t0
	lw t0 28(sp)
	mv a7 t0
	add a7,a0,a7
	#%.middle.469 = add i32 %.middle.470,%.middle.471
	lw t0 32(sp)
	mv a6 t0
	add a6,a7,a6
	#%.middle.472 = add i32 %.middle.469,%.middle.473
	mul a6,s0,a6
	#%.middle.474 = mul i32 %.middle.468,%.middle.472
	lw t0 28(sp)
	mv a5 t0
	lw t0 28(sp)
	mv a3 t0
	add a3,a5,a3
	#%.middle.475 = add i32 %.middle.476,%.middle.477
	lw t0 32(sp)
	mv a2 t0
	add a2,a3,a2
	#%.middle.478 = add i32 %.middle.475,%.middle.479
	mul a2,a6,a2
	#%.middle.480 = mul i32 %.middle.474,%.middle.478
	lw t0 28(sp)
	mv a1 t0
	lw t0 28(sp)
	mv t6 t0
	add t6,a1,t6
	#%.middle.481 = add i32 %.middle.482,%.middle.483
	lw t0 32(sp)
	mv t5 t0
	add t5,t6,t5
	#%.middle.484 = add i32 %.middle.481,%.middle.485
	mul t5,a2,t5
	#%.middle.486 = mul i32 %.middle.480,%.middle.484
	sub t5,a4,t5
	seqz t5 t5
	#%.middle.487 = icmp eq i32 %.middle.456,%.middle.486
	bnez t5 .L121
	beqz t5 .L122
	#br i1 %.middle.487,label %If_Then.166,label %If_Else.167
	
.L121:
	lw t0 4(sp)
	mv s1 t0
	lw t0 4(sp)
	mv s1 t0
	li t1 1
	add s1,s1,t1
	#%.middle.489 = add i32 %.middle.490,1
	mv t0 s1
	sw t0,4(sp)
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s1 t0
	li t1 1
	add s1,s1,t1
	#%.middle.492 = add i32 %.middle.493,1
	mv t0 s1
	sw t0,8(sp)
	j .L123
	#br label %If_End.168
	
.L122:
	j .L123
	#br label %If_End.168
	
.L123:
	j .L125
	#br label %If_End.164
	
.L124:
	j .L125
	#br label %If_End.164
	
.L125:
	j .L127
	#br label %If_End.156
	
.L126:
	li t0 1
	li t1 1
	add s1,t0,t1
	#%.middle.494 = add i32 1,1
	li t0 1
	li t1 1
	sub s0,t0,t1
	#%.middle.495 = sub i32 1,1
	div s0,s1,s0
	#%.middle.496 = sdiv i32 %.middle.494,%.middle.495
	mv t0 s0
	sw t0,8(sp)
	j .L127
	#br label %If_End.156
	
.L127:
	j .L128
	#br label %For_Change.152
	
.L128:
	lw t0 4(sp)
	mv s0 t0
	lw t0 4(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.499 = add i32 %.middle.500,1
	mv t0 s0
	sw t0,4(sp)
	j .L110
	#br label %For_Cond.149
	
.L129:
	lw t0 8(sp)
	mv s0 t0
	mv t0 s0
	sw t0,0(sp)
	j .func.test.Exit
	#br label %Exit.147
	
.func.test.Exit:
	mv s11 t3
	mv s10 tp
	mv s9 gp
	mv s8 ra
	mv s7 s11
	mv s6 s10
	mv s5 s9
	mv s4 s8
	mv s3 s7
	mv s2 s6
	mv s1 s5
	mv s0 s4
	lw t0 0(sp)
	mv a0 t0
	mv ra s3
	addi sp,sp,40
	ret
	#ret i32 %.retval
	

    .globl .func.naivedce
.func.naivedce:


addi sp,sp,-36
	mv t3 s11
	mv tp s10
	mv gp s9
	mv ra s8
	mv s11 s7
	mv s10 s6
	mv s9 s5
	mv s8 s4
	mv s7 s3
	mv s6 s2
	mv s5 s1
	mv s4 s0
	mv s3 ra
	#%prod.0=alloca i32
	j .L130
	#br label %.block.171
	
.L130:
	li t0 114514
	sw t0,4(sp)
	j .L131
	#br label %If_Cond.172
	
.L131:
	li t0 0
	bnez t0 .L132
	li t0 0
	beqz t0 .L133
	#br i1 0,label %If_Then.173,label %If_Else.174
	
.L132:
	lw t0 4(sp)
	mv s1 t0
	li t1 234
	mul s1,s1,t1
	#%.middle.502 = mul i32 %.middle.503,234
	li t1 111
	add s1,s1,t1
	#%.middle.504 = add i32 %.middle.502,111
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.505 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.506 = mul i32 %.middle.505,6
	add a1,s1,a1
	#%.middle.507 = add i32 %.middle.504,%.middle.506
	li t1 7
	add a1,a1,t1
	#%.middle.508 = add i32 %.middle.507,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.509 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.510 = mul i32 %.middle.509,10111
	add t6,a1,t6
	#%.middle.511 = add i32 %.middle.508,%.middle.510
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.512 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.513 = mul i32 %.middle.512,6
	add t5,t6,t5
	#%.middle.514 = add i32 %.middle.511,%.middle.513
	li t1 7
	add t5,t5,t1
	#%.middle.515 = add i32 %.middle.514,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.516 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.517 = mul i32 %.middle.516,10111
	add a5,t5,a5
	#%.middle.518 = add i32 %.middle.515,%.middle.517
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.519 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.520 = mul i32 %.middle.519,6
	add t4,a5,t4
	#%.middle.521 = add i32 %.middle.518,%.middle.520
	li t1 7
	add t4,t4,t1
	#%.middle.522 = add i32 %.middle.521,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.523 = sdiv i32 8,9
	li t1 10
	mul a3,a3,t1
	#%.middle.524 = mul i32 %.middle.523,10
	add a0,t4,a3
	#%.middle.525 = add i32 %.middle.522,%.middle.524
	li t0 42342
	li t1 12
	mul a3,t0,t1
	#%.middle.526 = mul i32 42342,12
	li t0 12211342
	add a3,t0,a3
	#%.middle.527 = add i32 12211342,%.middle.526
	li t1 111
	add a3,a3,t1
	#%.middle.528 = add i32 %.middle.527,111
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.529 = sdiv i32 4,5
	li t1 6
	mul s2,s2,t1
	#%.middle.530 = mul i32 %.middle.529,6
	add s2,a3,s2
	#%.middle.531 = add i32 %.middle.528,%.middle.530
	li t1 7
	add s2,s2,t1
	#%.middle.532 = add i32 %.middle.531,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.533 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.534 = mul i32 %.middle.533,10111
	add s0,s2,s0
	#%.middle.535 = add i32 %.middle.532,%.middle.534
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.536 = sdiv i32 4,5
	li t1 6
	mul a4,a6,t1
	#%.middle.537 = mul i32 %.middle.536,6
	add a4,s0,a4
	#%.middle.538 = add i32 %.middle.535,%.middle.537
	li t1 7
	add a4,a4,t1
	#%.middle.539 = add i32 %.middle.538,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.540 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.541 = mul i32 %.middle.540,10111
	add s1,a4,s1
	#%.middle.542 = add i32 %.middle.539,%.middle.541
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.543 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.544 = mul i32 %.middle.543,6
	add a2,s1,a2
	#%.middle.545 = add i32 %.middle.542,%.middle.544
	li t1 7
	add a2,a2,t1
	#%.middle.546 = add i32 %.middle.545,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.547 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.548 = mul i32 %.middle.547,10
	add a7,a2,a7
	#%.middle.549 = add i32 %.middle.546,%.middle.548
	xor a1,a0,a7
	#%.middle.550 = xor i32 %.middle.525,%.middle.549
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.551 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.552 = add i32 12211342,%.middle.551
	li t1 111
	add a7,a7,t1
	#%.middle.553 = add i32 %.middle.552,111
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.554 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.555 = mul i32 %.middle.554,6
	add t6,a7,t6
	#%.middle.556 = add i32 %.middle.553,%.middle.555
	li t1 7
	add t6,t6,t1
	#%.middle.557 = add i32 %.middle.556,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.558 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.559 = mul i32 %.middle.558,10111
	add t5,t6,t5
	#%.middle.560 = add i32 %.middle.557,%.middle.559
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.561 = sdiv i32 4,5
	li t1 6
	mul a5,t4,t1
	#%.middle.562 = mul i32 %.middle.561,6
	add a5,t5,a5
	#%.middle.563 = add i32 %.middle.560,%.middle.562
	li t1 7
	add a5,a5,t1
	#%.middle.564 = add i32 %.middle.563,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.565 = sdiv i32 8,9
	li t1 10111
	mul s2,s2,t1
	#%.middle.566 = mul i32 %.middle.565,10111
	add s2,a5,s2
	#%.middle.567 = add i32 %.middle.564,%.middle.566
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.568 = sdiv i32 4,5
	li t1 6
	mul a3,a3,t1
	#%.middle.569 = mul i32 %.middle.568,6
	add a3,s2,a3
	#%.middle.570 = add i32 %.middle.567,%.middle.569
	li t1 7
	add a3,a3,t1
	#%.middle.571 = add i32 %.middle.570,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.572 = sdiv i32 8,9
	li t1 10
	mul s0,s0,t1
	#%.middle.573 = mul i32 %.middle.572,10
	add s0,a3,s0
	#%.middle.574 = add i32 %.middle.571,%.middle.573
	xor a0,a1,s0
	#%.middle.575 = xor i32 %.middle.550,%.middle.574
	li t0 42342
	li t1 12
	mul s0,t0,t1
	#%.middle.576 = mul i32 42342,12
	lw t0 N.0
	mv a6 t0
	add a6,a6,s0
	#%.middle.577 = add i32 %.middle.578,%.middle.576
	li t1 111
	add a6,a6,t1
	#%.middle.579 = add i32 %.middle.577,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.580 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.581 = mul i32 %.middle.580,6
	add a4,a6,a4
	#%.middle.582 = add i32 %.middle.579,%.middle.581
	li t1 7
	add a4,a4,t1
	#%.middle.583 = add i32 %.middle.582,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.584 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.585 = mul i32 %.middle.584,10111
	add s1,a4,s1
	#%.middle.586 = add i32 %.middle.583,%.middle.585
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.587 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.588 = mul i32 %.middle.587,6
	add t5,s1,a2
	#%.middle.589 = add i32 %.middle.586,%.middle.588
	li t1 7
	add t5,t5,t1
	#%.middle.590 = add i32 %.middle.589,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.591 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.592 = mul i32 %.middle.591,10111
	add t6,t5,t6
	#%.middle.593 = add i32 %.middle.590,%.middle.592
	lw t0 4(sp)
	mv t4 t0
	li t1 5
	div t4,t4,t1
	#%.middle.594 = sdiv i32 %.middle.595,5
	li t1 6
	mul t4,t4,t1
	#%.middle.596 = mul i32 %.middle.594,6
	add t4,t6,t4
	#%.middle.597 = add i32 %.middle.593,%.middle.596
	li t1 7
	add t4,t4,t1
	#%.middle.598 = add i32 %.middle.597,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.599 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.600 = mul i32 %.middle.599,10
	add a7,t4,a7
	#%.middle.601 = add i32 %.middle.598,%.middle.600
	xor a1,a0,a7
	#%.middle.602 = xor i32 %.middle.575,%.middle.601
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.603 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.604 = add i32 12211342,%.middle.603
	li t1 111
	add a7,a7,t1
	#%.middle.605 = add i32 %.middle.604,111
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.606 = sdiv i32 4,5
	li t1 6
	mul a5,a5,t1
	#%.middle.607 = mul i32 %.middle.606,6
	add a5,a7,a5
	#%.middle.608 = add i32 %.middle.605,%.middle.607
	li t1 7
	add a5,a5,t1
	#%.middle.609 = add i32 %.middle.608,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.610 = sdiv i32 8,9
	li t1 10111
	mul s2,s2,t1
	#%.middle.611 = mul i32 %.middle.610,10111
	add s2,a5,s2
	#%.middle.612 = add i32 %.middle.609,%.middle.611
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.613 = sdiv i32 4,5
	li t1 6
	mul s0,a3,t1
	#%.middle.614 = mul i32 %.middle.613,6
	add s0,s2,s0
	#%.middle.615 = add i32 %.middle.612,%.middle.614
	li t1 7
	add s0,s0,t1
	#%.middle.616 = add i32 %.middle.615,7
	li t0 8
	li t1 9
	div a4,t0,t1
	#%.middle.617 = sdiv i32 8,9
	li t1 10111
	mul a4,a4,t1
	#%.middle.618 = mul i32 %.middle.617,10111
	add a4,s0,a4
	#%.middle.619 = add i32 %.middle.616,%.middle.618
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.620 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.621 = mul i32 %.middle.620,6
	add s1,a4,s1
	#%.middle.622 = add i32 %.middle.619,%.middle.621
	li t1 7
	add s1,s1,t1
	#%.middle.623 = add i32 %.middle.622,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.624 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.625 = mul i32 %.middle.624,10
	add a6,s1,a6
	#%.middle.626 = add i32 %.middle.623,%.middle.625
	xor a2,a1,a6
	#%.middle.627 = xor i32 %.middle.602,%.middle.626
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.628 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.629 = add i32 12211342,%.middle.628
	li t1 111
	add a6,a6,t1
	#%.middle.630 = add i32 %.middle.629,111
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.631 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.632 = mul i32 %.middle.631,6
	add a0,a6,a0
	#%.middle.633 = add i32 %.middle.630,%.middle.632
	li t1 7
	add a0,a0,t1
	#%.middle.634 = add i32 %.middle.633,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.635 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.636 = mul i32 %.middle.635,10111
	add t5,a0,t5
	#%.middle.637 = add i32 %.middle.634,%.middle.636
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.638 = sdiv i32 4,5
	li t1 6
	mul t4,t6,t1
	#%.middle.639 = mul i32 %.middle.638,6
	add t4,t5,t4
	#%.middle.640 = add i32 %.middle.637,%.middle.639
	li t1 7
	add t4,t4,t1
	#%.middle.641 = add i32 %.middle.640,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.642 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.643 = mul i32 %.middle.642,10111
	add a5,t4,a5
	#%.middle.644 = add i32 %.middle.641,%.middle.643
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.645 = sdiv i32 4,5
	li t1 6
	mul s2,s2,t1
	#%.middle.646 = mul i32 %.middle.645,6
	add s2,a5,s2
	#%.middle.647 = add i32 %.middle.644,%.middle.646
	li t1 7
	add s2,s2,t1
	#%.middle.648 = add i32 %.middle.647,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.649 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.650 = mul i32 %.middle.649,10
	add a7,s2,a7
	#%.middle.651 = add i32 %.middle.648,%.middle.650
	xor a3,a2,a7
	#%.middle.652 = xor i32 %.middle.627,%.middle.651
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.653 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.654 = add i32 12211342,%.middle.653
	li t1 111
	add a7,a7,t1
	#%.middle.655 = add i32 %.middle.654,111
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.656 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.657 = mul i32 %.middle.656,6
	add a1,a7,a1
	#%.middle.658 = add i32 %.middle.655,%.middle.657
	li t1 7
	add a1,a1,t1
	#%.middle.659 = add i32 %.middle.658,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.660 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.661 = mul i32 %.middle.660,10111
	add s0,a1,s0
	#%.middle.662 = add i32 %.middle.659,%.middle.661
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.663 = sdiv i32 4,5
	li t1 6
	mul s1,a4,t1
	#%.middle.664 = mul i32 %.middle.663,6
	add s1,s0,s1
	#%.middle.665 = add i32 %.middle.662,%.middle.664
	li t1 7
	add s1,s1,t1
	#%.middle.666 = add i32 %.middle.665,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.667 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.668 = mul i32 %.middle.667,10111
	add a0,s1,a0
	#%.middle.669 = add i32 %.middle.666,%.middle.668
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.670 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.671 = mul i32 %.middle.670,6
	add t5,a0,t5
	#%.middle.672 = add i32 %.middle.669,%.middle.671
	li t1 7
	add t5,t5,t1
	#%.middle.673 = add i32 %.middle.672,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.674 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.675 = mul i32 %.middle.674,10
	add a6,t5,a6
	#%.middle.676 = add i32 %.middle.673,%.middle.675
	xor t6,a3,a6
	#%.middle.677 = xor i32 %.middle.652,%.middle.676
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.678 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.679 = add i32 12211342,%.middle.678
	li t1 111
	add a6,a6,t1
	#%.middle.680 = add i32 %.middle.679,111
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.681 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.682 = mul i32 %.middle.681,6
	add a2,a6,a2
	#%.middle.683 = add i32 %.middle.680,%.middle.682
	li t1 7
	add a2,a2,t1
	#%.middle.684 = add i32 %.middle.683,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.685 = sdiv i32 8,9
	li t1 10111
	mul t4,t4,t1
	#%.middle.686 = mul i32 %.middle.685,10111
	add t4,a2,t4
	#%.middle.687 = add i32 %.middle.684,%.middle.686
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.688 = sdiv i32 4,5
	li t1 6
	mul s2,a5,t1
	#%.middle.689 = mul i32 %.middle.688,6
	add s2,t4,s2
	#%.middle.690 = add i32 %.middle.687,%.middle.689
	li t1 7
	add s2,s2,t1
	#%.middle.691 = add i32 %.middle.690,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.692 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.693 = mul i32 %.middle.692,10111
	add a1,s2,a1
	#%.middle.694 = add i32 %.middle.691,%.middle.693
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.695 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.696 = mul i32 %.middle.695,6
	add s0,a1,s0
	#%.middle.697 = add i32 %.middle.694,%.middle.696
	li t1 7
	add s0,s0,t1
	#%.middle.698 = add i32 %.middle.697,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.699 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.700 = mul i32 %.middle.699,10
	add a7,s0,a7
	#%.middle.701 = add i32 %.middle.698,%.middle.700
	xor a4,t6,a7
	#%.middle.702 = xor i32 %.middle.677,%.middle.701
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.703 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.704 = add i32 12211342,%.middle.703
	li t1 111
	add a7,a7,t1
	#%.middle.705 = add i32 %.middle.704,111
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.706 = sdiv i32 4,5
	li t1 6
	mul a3,a3,t1
	#%.middle.707 = mul i32 %.middle.706,6
	add a3,a7,a3
	#%.middle.708 = add i32 %.middle.705,%.middle.707
	li t1 7
	add a3,a3,t1
	#%.middle.709 = add i32 %.middle.708,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.710 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.711 = mul i32 %.middle.710,10111
	add s1,a3,s1
	#%.middle.712 = add i32 %.middle.709,%.middle.711
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.713 = sdiv i32 4,5
	li t1 6
	mul a0,t5,t1
	#%.middle.714 = mul i32 %.middle.713,6
	add a0,s1,a0
	#%.middle.715 = add i32 %.middle.712,%.middle.714
	li t1 7
	add a0,a0,t1
	#%.middle.716 = add i32 %.middle.715,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.717 = sdiv i32 8,9
	li t1 10111
	mul a2,a2,t1
	#%.middle.718 = mul i32 %.middle.717,10111
	add a2,a0,a2
	#%.middle.719 = add i32 %.middle.716,%.middle.718
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.720 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.721 = mul i32 %.middle.720,6
	add t4,a2,t4
	#%.middle.722 = add i32 %.middle.719,%.middle.721
	li t1 7
	add t4,t4,t1
	#%.middle.723 = add i32 %.middle.722,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.724 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.725 = mul i32 %.middle.724,10
	add a6,t4,a6
	#%.middle.726 = add i32 %.middle.723,%.middle.725
	xor a5,a4,a6
	#%.middle.727 = xor i32 %.middle.702,%.middle.726
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.728 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.729 = add i32 12211342,%.middle.728
	li t1 111
	add a6,a6,t1
	#%.middle.730 = add i32 %.middle.729,111
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.731 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.732 = mul i32 %.middle.731,6
	add t6,a6,t6
	#%.middle.733 = add i32 %.middle.730,%.middle.732
	li t1 7
	add t6,t6,t1
	#%.middle.734 = add i32 %.middle.733,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.735 = sdiv i32 8,9
	li t1 10111
	mul s2,s2,t1
	#%.middle.736 = mul i32 %.middle.735,10111
	add s2,t6,s2
	#%.middle.737 = add i32 %.middle.734,%.middle.736
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.738 = sdiv i32 4,5
	li t1 6
	mul s0,a1,t1
	#%.middle.739 = mul i32 %.middle.738,6
	add s0,s2,s0
	#%.middle.740 = add i32 %.middle.737,%.middle.739
	li t1 7
	add s0,s0,t1
	#%.middle.741 = add i32 %.middle.740,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.742 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.743 = mul i32 %.middle.742,10111
	add a3,s0,a3
	#%.middle.744 = add i32 %.middle.741,%.middle.743
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.745 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.746 = mul i32 %.middle.745,6
	add s1,a3,s1
	#%.middle.747 = add i32 %.middle.744,%.middle.746
	li t1 7
	add s1,s1,t1
	#%.middle.748 = add i32 %.middle.747,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.749 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.750 = mul i32 %.middle.749,10
	add a7,s1,a7
	#%.middle.751 = add i32 %.middle.748,%.middle.750
	xor t5,a5,a7
	#%.middle.752 = xor i32 %.middle.727,%.middle.751
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.753 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.754 = add i32 12211342,%.middle.753
	li t1 111
	add a7,a7,t1
	#%.middle.755 = add i32 %.middle.754,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.756 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.757 = mul i32 %.middle.756,6
	add a4,a7,a4
	#%.middle.758 = add i32 %.middle.755,%.middle.757
	li t1 7
	add a4,a4,t1
	#%.middle.759 = add i32 %.middle.758,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.760 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.761 = mul i32 %.middle.760,10111
	add a0,a4,a0
	#%.middle.762 = add i32 %.middle.759,%.middle.761
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.763 = sdiv i32 4,5
	li t1 6
	mul t4,a2,t1
	#%.middle.764 = mul i32 %.middle.763,6
	add t4,a0,t4
	#%.middle.765 = add i32 %.middle.762,%.middle.764
	li t1 7
	add t4,t4,t1
	#%.middle.766 = add i32 %.middle.765,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.767 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.768 = mul i32 %.middle.767,10111
	add t6,t4,t6
	#%.middle.769 = add i32 %.middle.766,%.middle.768
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.770 = sdiv i32 4,5
	li t1 6
	mul s2,s2,t1
	#%.middle.771 = mul i32 %.middle.770,6
	add s2,t6,s2
	#%.middle.772 = add i32 %.middle.769,%.middle.771
	li t1 7
	add s2,s2,t1
	#%.middle.773 = add i32 %.middle.772,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.774 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.775 = mul i32 %.middle.774,10
	add a6,s2,a6
	#%.middle.776 = add i32 %.middle.773,%.middle.775
	xor a1,t5,a6
	#%.middle.777 = xor i32 %.middle.752,%.middle.776
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.778 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.779 = add i32 12211342,%.middle.778
	li t1 111
	add a6,a6,t1
	#%.middle.780 = add i32 %.middle.779,111
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.781 = sdiv i32 4,5
	li t1 6
	mul a5,a5,t1
	#%.middle.782 = mul i32 %.middle.781,6
	add a5,a6,a5
	#%.middle.783 = add i32 %.middle.780,%.middle.782
	li t1 7
	add a5,a5,t1
	#%.middle.784 = add i32 %.middle.783,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.785 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.786 = mul i32 %.middle.785,10111
	add s0,a5,s0
	#%.middle.787 = add i32 %.middle.784,%.middle.786
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.788 = sdiv i32 4,5
	li t1 6
	mul s1,a3,t1
	#%.middle.789 = mul i32 %.middle.788,6
	add s1,s0,s1
	#%.middle.790 = add i32 %.middle.787,%.middle.789
	li t1 7
	add s1,s1,t1
	#%.middle.791 = add i32 %.middle.790,7
	li t0 8
	li t1 9
	div a4,t0,t1
	#%.middle.792 = sdiv i32 8,9
	li t1 10111
	mul a4,a4,t1
	#%.middle.793 = mul i32 %.middle.792,10111
	add a4,s1,a4
	#%.middle.794 = add i32 %.middle.791,%.middle.793
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.795 = sdiv i32 4,5
	li t1 1
	mul a0,a0,t1
	#%.middle.796 = mul i32 %.middle.795,1
	add a0,a4,a0
	#%.middle.797 = add i32 %.middle.794,%.middle.796
	li t1 7
	add a0,a0,t1
	#%.middle.798 = add i32 %.middle.797,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.799 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.800 = mul i32 %.middle.799,10
	add a7,a0,a7
	#%.middle.801 = add i32 %.middle.798,%.middle.800
	xor a2,a1,a7
	#%.middle.802 = xor i32 %.middle.777,%.middle.801
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.803 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.804 = add i32 12211342,%.middle.803
	li t1 111
	add a7,a7,t1
	#%.middle.805 = add i32 %.middle.804,111
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.806 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.807 = mul i32 %.middle.806,6
	add t5,a7,t5
	#%.middle.808 = add i32 %.middle.805,%.middle.807
	li t1 7
	add t5,t5,t1
	#%.middle.809 = add i32 %.middle.808,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.810 = sdiv i32 8,9
	li t1 10111
	mul t4,t4,t1
	#%.middle.811 = mul i32 %.middle.810,10111
	add t4,t5,t4
	#%.middle.812 = add i32 %.middle.809,%.middle.811
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.813 = sdiv i32 4,5
	li t1 6
	mul s2,t6,t1
	#%.middle.814 = mul i32 %.middle.813,6
	add s2,t4,s2
	#%.middle.815 = add i32 %.middle.812,%.middle.814
	li t1 7
	add s2,s2,t1
	#%.middle.816 = add i32 %.middle.815,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.817 = sdiv i32 8,9
	li t1 10111
	mul a6,a6,t1
	#%.middle.818 = mul i32 %.middle.817,10111
	add a6,s2,a6
	#%.middle.819 = add i32 %.middle.816,%.middle.818
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.820 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.821 = mul i32 %.middle.820,6
	add s0,a6,s0
	#%.middle.822 = add i32 %.middle.819,%.middle.821
	li t1 7
	add s0,s0,t1
	#%.middle.823 = add i32 %.middle.822,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.824 = sdiv i32 8,9
	li t1 10
	mul a5,a5,t1
	#%.middle.825 = mul i32 %.middle.824,10
	add a5,s0,a5
	#%.middle.826 = add i32 %.middle.823,%.middle.825
	xor a3,a2,a5
	#%.middle.827 = xor i32 %.middle.802,%.middle.826
	li t0 42342
	li t1 12
	mul a5,t0,t1
	#%.middle.828 = mul i32 42342,12
	li t0 12211342
	add a5,t0,a5
	#%.middle.829 = add i32 12211342,%.middle.828
	li t1 111
	add a5,a5,t1
	#%.middle.830 = add i32 %.middle.829,111
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.831 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.832 = mul i32 %.middle.831,6
	add a1,a5,a1
	#%.middle.833 = add i32 %.middle.830,%.middle.832
	li t1 7
	add a1,a1,t1
	#%.middle.834 = add i32 %.middle.833,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.835 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.836 = mul i32 %.middle.835,10111
	sub s1,a1,s1
	#%.middle.837 = sub i32 %.middle.834,%.middle.836
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.838 = sdiv i32 4,5
	li t1 6
	mul a0,a4,t1
	#%.middle.839 = mul i32 %.middle.838,6
	add a0,s1,a0
	#%.middle.840 = add i32 %.middle.837,%.middle.839
	li t1 7
	add a0,a0,t1
	#%.middle.841 = add i32 %.middle.840,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.842 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.843 = mul i32 %.middle.842,10111
	add t5,a0,t5
	#%.middle.844 = add i32 %.middle.841,%.middle.843
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.845 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.846 = mul i32 %.middle.845,6
	add t4,t5,t4
	#%.middle.847 = add i32 %.middle.844,%.middle.846
	li t1 7
	add t4,t4,t1
	#%.middle.848 = add i32 %.middle.847,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.849 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.850 = mul i32 %.middle.849,10
	add a7,t4,a7
	#%.middle.851 = add i32 %.middle.848,%.middle.850
	xor t6,a3,a7
	#%.middle.852 = xor i32 %.middle.827,%.middle.851
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.853 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.854 = add i32 12211342,%.middle.853
	li t1 111
	add a7,a7,t1
	#%.middle.855 = add i32 %.middle.854,111
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.856 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.857 = mul i32 %.middle.856,6
	add a2,a7,a2
	#%.middle.858 = add i32 %.middle.855,%.middle.857
	li t1 7
	add a2,a2,t1
	#%.middle.859 = add i32 %.middle.858,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.860 = sdiv i32 8,9
	li t1 10111
	mul s2,s2,t1
	#%.middle.861 = mul i32 %.middle.860,10111
	add s2,a2,s2
	#%.middle.862 = add i32 %.middle.859,%.middle.861
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.863 = sdiv i32 4,5
	li t1 6
	mul s0,a6,t1
	#%.middle.864 = mul i32 %.middle.863,6
	add s0,s2,s0
	#%.middle.865 = add i32 %.middle.862,%.middle.864
	li t1 7
	add s0,s0,t1
	#%.middle.866 = add i32 %.middle.865,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.867 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.868 = mul i32 %.middle.867,10111
	add a1,s0,a1
	#%.middle.869 = add i32 %.middle.866,%.middle.868
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.870 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.871 = mul i32 %.middle.870,6
	add s1,a1,s1
	#%.middle.872 = add i32 %.middle.869,%.middle.871
	li t1 7
	add s1,s1,t1
	#%.middle.873 = add i32 %.middle.872,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.874 = sdiv i32 8,9
	li t1 10
	mul a5,a5,t1
	#%.middle.875 = mul i32 %.middle.874,10
	add a5,s1,a5
	#%.middle.876 = add i32 %.middle.873,%.middle.875
	xor a4,t6,a5
	#%.middle.877 = xor i32 %.middle.852,%.middle.876
	li t0 42342
	li t1 12
	mul a5,t0,t1
	#%.middle.878 = mul i32 42342,12
	li t0 12211342
	add a5,t0,a5
	#%.middle.879 = add i32 12211342,%.middle.878
	li t1 111
	add a5,a5,t1
	#%.middle.880 = add i32 %.middle.879,111
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.881 = sdiv i32 4,5
	li t1 6
	mul a3,a3,t1
	#%.middle.882 = mul i32 %.middle.881,6
	add a3,a5,a3
	#%.middle.883 = add i32 %.middle.880,%.middle.882
	li t1 7
	add a3,a3,t1
	#%.middle.884 = add i32 %.middle.883,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.885 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.886 = mul i32 %.middle.885,10111
	add a0,a3,a0
	#%.middle.887 = add i32 %.middle.884,%.middle.886
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.888 = sdiv i32 4,5
	li t1 6
	mul t4,t5,t1
	#%.middle.889 = mul i32 %.middle.888,6
	add t4,a0,t4
	#%.middle.890 = add i32 %.middle.887,%.middle.889
	li t1 7
	add t4,t4,t1
	#%.middle.891 = add i32 %.middle.890,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.892 = sdiv i32 8,9
	li t1 10111
	mul a2,a2,t1
	#%.middle.893 = mul i32 %.middle.892,10111
	add a2,t4,a2
	#%.middle.894 = add i32 %.middle.891,%.middle.893
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.895 = sdiv i32 4,5
	li t1 6
	mul s2,s2,t1
	#%.middle.896 = mul i32 %.middle.895,6
	add s2,a2,s2
	#%.middle.897 = add i32 %.middle.894,%.middle.896
	li t1 7
	add s2,s2,t1
	#%.middle.898 = add i32 %.middle.897,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.899 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.900 = mul i32 %.middle.899,10
	add a7,s2,a7
	#%.middle.901 = add i32 %.middle.898,%.middle.900
	xor a6,a4,a7
	#%.middle.902 = xor i32 %.middle.877,%.middle.901
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.903 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.904 = add i32 12211342,%.middle.903
	li t1 111
	add a7,a7,t1
	#%.middle.905 = add i32 %.middle.904,111
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.906 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.907 = mul i32 %.middle.906,6
	add t6,a7,t6
	#%.middle.908 = add i32 %.middle.905,%.middle.907
	li t1 7
	add t6,t6,t1
	#%.middle.909 = add i32 %.middle.908,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.910 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.911 = mul i32 %.middle.910,10111
	add s0,t6,s0
	#%.middle.912 = add i32 %.middle.909,%.middle.911
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.913 = sdiv i32 4,5
	li t1 6
	mul s1,a1,t1
	#%.middle.914 = mul i32 %.middle.913,6
	add s1,s0,s1
	#%.middle.915 = add i32 %.middle.912,%.middle.914
	li t1 7
	add s1,s1,t1
	#%.middle.916 = add i32 %.middle.915,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.917 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.918 = mul i32 %.middle.917,10111
	add a3,s1,a3
	#%.middle.919 = add i32 %.middle.916,%.middle.918
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.920 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.921 = mul i32 %.middle.920,6
	add a0,a3,a0
	#%.middle.922 = add i32 %.middle.919,%.middle.921
	li t1 7
	add a0,a0,t1
	#%.middle.923 = add i32 %.middle.922,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.924 = sdiv i32 8,9
	li t1 10
	mul a5,a5,t1
	#%.middle.925 = mul i32 %.middle.924,10
	add a5,a0,a5
	#%.middle.926 = add i32 %.middle.923,%.middle.925
	xor t5,a6,a5
	#%.middle.927 = xor i32 %.middle.902,%.middle.926
	li t0 42342
	li t1 12
	mul a5,t0,t1
	#%.middle.928 = mul i32 42342,12
	li t0 12211342
	add a5,t0,a5
	#%.middle.929 = add i32 12211342,%.middle.928
	li t1 111
	add a5,a5,t1
	#%.middle.930 = add i32 %.middle.929,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.931 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.932 = mul i32 %.middle.931,6
	add a4,a5,a4
	#%.middle.933 = add i32 %.middle.930,%.middle.932
	li t1 7
	add a4,a4,t1
	#%.middle.934 = add i32 %.middle.933,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.935 = sdiv i32 8,9
	li t1 10111
	mul t4,t4,t1
	#%.middle.936 = mul i32 %.middle.935,10111
	add t4,a4,t4
	#%.middle.937 = add i32 %.middle.934,%.middle.936
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.938 = sdiv i32 4,5
	li t1 6
	mul s2,a2,t1
	#%.middle.939 = mul i32 %.middle.938,6
	add s2,t4,s2
	#%.middle.940 = add i32 %.middle.937,%.middle.939
	li t1 7
	add s2,s2,t1
	#%.middle.941 = add i32 %.middle.940,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.942 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.943 = mul i32 %.middle.942,10111
	add t6,s2,t6
	#%.middle.944 = add i32 %.middle.941,%.middle.943
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.945 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.946 = mul i32 %.middle.945,6
	add s0,t6,s0
	#%.middle.947 = add i32 %.middle.944,%.middle.946
	li t1 7
	add s0,s0,t1
	#%.middle.948 = add i32 %.middle.947,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.949 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.950 = mul i32 %.middle.949,10
	add a7,s0,a7
	#%.middle.951 = add i32 %.middle.948,%.middle.950
	xor a1,t5,a7
	#%.middle.952 = xor i32 %.middle.927,%.middle.951
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.953 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.954 = add i32 12211342,%.middle.953
	li t1 111
	add a7,a7,t1
	#%.middle.955 = add i32 %.middle.954,111
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.956 = sdiv i32 4,5
	li t1 6
	mul a6,a6,t1
	#%.middle.957 = mul i32 %.middle.956,6
	add a6,a7,a6
	#%.middle.958 = add i32 %.middle.955,%.middle.957
	li t1 7
	add a6,a6,t1
	#%.middle.959 = add i32 %.middle.958,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.960 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.961 = mul i32 %.middle.960,10111
	add s1,a6,s1
	#%.middle.962 = add i32 %.middle.959,%.middle.961
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.963 = sdiv i32 4,5
	li t1 6
	mul a0,a3,t1
	#%.middle.964 = mul i32 %.middle.963,6
	add a0,s1,a0
	#%.middle.965 = add i32 %.middle.962,%.middle.964
	li t1 7
	add a0,a0,t1
	#%.middle.966 = add i32 %.middle.965,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.967 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.968 = mul i32 %.middle.967,10111
	add a5,a0,a5
	#%.middle.969 = add i32 %.middle.966,%.middle.968
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.970 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.971 = mul i32 %.middle.970,6
	add t4,a5,t4
	#%.middle.972 = add i32 %.middle.969,%.middle.971
	li t1 7
	add t4,t4,t1
	#%.middle.973 = add i32 %.middle.972,7
	li t0 8
	li t1 9
	div a4,t0,t1
	#%.middle.974 = sdiv i32 8,9
	li t1 10
	mul a4,a4,t1
	#%.middle.975 = mul i32 %.middle.974,10
	add a4,t4,a4
	#%.middle.976 = add i32 %.middle.973,%.middle.975
	xor a2,a1,a4
	#%.middle.977 = xor i32 %.middle.952,%.middle.976
	li t0 42342
	li t1 12
	mul a4,t0,t1
	#%.middle.978 = mul i32 42342,12
	li t0 12211342
	add a4,t0,a4
	#%.middle.979 = add i32 12211342,%.middle.978
	li t1 111
	add a4,a4,t1
	#%.middle.980 = add i32 %.middle.979,111
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.981 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.982 = mul i32 %.middle.981,6
	add t5,a4,t5
	#%.middle.983 = add i32 %.middle.980,%.middle.982
	li t1 7
	add t5,t5,t1
	#%.middle.984 = add i32 %.middle.983,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.985 = sdiv i32 8,9
	li t1 10111
	mul s2,s2,t1
	#%.middle.986 = mul i32 %.middle.985,10111
	add s2,t5,s2
	#%.middle.987 = add i32 %.middle.984,%.middle.986
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.988 = sdiv i32 4,5
	li t1 6
	mul t6,s0,t1
	#%.middle.989 = mul i32 %.middle.988,6
	add t6,s2,t6
	#%.middle.990 = add i32 %.middle.987,%.middle.989
	li t1 7
	add t6,t6,t1
	#%.middle.991 = add i32 %.middle.990,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.992 = sdiv i32 8,9
	li t1 10111
	mul a6,a6,t1
	#%.middle.993 = mul i32 %.middle.992,10111
	add a6,t6,a6
	#%.middle.994 = add i32 %.middle.991,%.middle.993
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.995 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.996 = mul i32 %.middle.995,6
	add s1,a6,s1
	#%.middle.997 = add i32 %.middle.994,%.middle.996
	li t1 7
	add s1,s1,t1
	#%.middle.998 = add i32 %.middle.997,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.999 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1000 = mul i32 %.middle.999,10
	add a7,s1,a7
	#%.middle.1001 = add i32 %.middle.998,%.middle.1000
	xor a3,a2,a7
	#%.middle.1002 = xor i32 %.middle.977,%.middle.1001
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1003 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1004 = add i32 12211342,%.middle.1003
	li t1 111
	add a7,a7,t1
	#%.middle.1005 = add i32 %.middle.1004,111
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.1006 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.1007 = mul i32 %.middle.1006,6
	add a1,a7,a1
	#%.middle.1008 = add i32 %.middle.1005,%.middle.1007
	li t1 7
	add a1,a1,t1
	#%.middle.1009 = add i32 %.middle.1008,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.1010 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.1011 = mul i32 %.middle.1010,10111
	add a0,a1,a0
	#%.middle.1012 = add i32 %.middle.1009,%.middle.1011
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.1013 = sdiv i32 4,5
	li t1 6
	mul a5,t4,t1
	#%.middle.1014 = mul i32 %.middle.1013,6
	add a5,a0,a5
	#%.middle.1015 = add i32 %.middle.1012,%.middle.1014
	li t1 7
	add a5,a5,t1
	#%.middle.1016 = add i32 %.middle.1015,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.1017 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.1018 = mul i32 %.middle.1017,10111
	add t5,a5,t5
	#%.middle.1019 = add i32 %.middle.1016,%.middle.1018
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.1020 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.1021 = mul i32 %.middle.1020,6
	add a4,t5,a4
	#%.middle.1022 = add i32 %.middle.1019,%.middle.1021
	li t1 7
	add a4,a4,t1
	#%.middle.1023 = add i32 %.middle.1022,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.1024 = sdiv i32 8,9
	li t1 10
	mul s2,s2,t1
	#%.middle.1025 = mul i32 %.middle.1024,10
	add s2,a4,s2
	#%.middle.1026 = add i32 %.middle.1023,%.middle.1025
	xor s0,a3,s2
	#%.middle.1027 = xor i32 %.middle.1002,%.middle.1026
	li t0 42342
	li t1 12
	mul s2,t0,t1
	#%.middle.1028 = mul i32 42342,12
	li t0 12211342
	add s2,t0,s2
	#%.middle.1029 = add i32 12211342,%.middle.1028
	li t1 111
	add s2,s2,t1
	#%.middle.1030 = add i32 %.middle.1029,111
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.1031 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.1032 = mul i32 %.middle.1031,6
	add a2,s2,a2
	#%.middle.1033 = add i32 %.middle.1030,%.middle.1032
	li t1 7
	add a2,a2,t1
	#%.middle.1034 = add i32 %.middle.1033,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.1035 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.1036 = mul i32 %.middle.1035,10111
	add t6,a2,t6
	#%.middle.1037 = add i32 %.middle.1034,%.middle.1036
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.1038 = sdiv i32 4,5
	li t1 6
	mul a6,s1,t1
	#%.middle.1039 = mul i32 %.middle.1038,6
	add a6,t6,a6
	#%.middle.1040 = add i32 %.middle.1037,%.middle.1039
	li t1 7
	add a6,a6,t1
	#%.middle.1041 = add i32 %.middle.1040,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.1042 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.1043 = mul i32 %.middle.1042,10111
	add a1,a6,a1
	#%.middle.1044 = add i32 %.middle.1041,%.middle.1043
	li t0 4
	li t1 5
	div a7,t0,t1
	#%.middle.1045 = sdiv i32 4,5
	li t1 6
	mul a7,a7,t1
	#%.middle.1046 = mul i32 %.middle.1045,6
	add a7,a1,a7
	#%.middle.1047 = add i32 %.middle.1044,%.middle.1046
	li t1 7
	add a7,a7,t1
	#%.middle.1048 = add i32 %.middle.1047,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.1049 = sdiv i32 8,9
	li t1 10
	mul a0,a0,t1
	#%.middle.1050 = mul i32 %.middle.1049,10
	add a0,a7,a0
	#%.middle.1051 = add i32 %.middle.1048,%.middle.1050
	xor a0,s0,a0
	#%.middle.1052 = xor i32 %.middle.1027,%.middle.1051
	lw t0 4(sp)
	mv t4 t0
	li t1 12
	mul t4,t4,t1
	#%.middle.1053 = mul i32 %.middle.1054,12
	li t0 12211342
	add t4,t0,t4
	#%.middle.1055 = add i32 12211342,%.middle.1053
	xor t4,a0,t4
	#%.middle.1056 = xor i32 %.middle.1052,%.middle.1055
	mv t0 t4
	sw t0,4(sp)
	lw t0 4(sp)
	mv t4 t0
	li t1 11
	add t4,t4,t1
	#%.middle.1058 = add i32 %.middle.1059,11
	mv t0 t4
	sw t0,4(sp)
	li t0 1
	li t1 5
	div t4,t0,t1
	#%.middle.1061 = sdiv i32 1,5
	li t1 5
	div t4,t4,t1
	#%.middle.1062 = sdiv i32 %.middle.1061,5
	li t1 5
	div t4,t4,t1
	#%.middle.1063 = sdiv i32 %.middle.1062,5
	li t1 5
	div t4,t4,t1
	#%.middle.1064 = sdiv i32 %.middle.1063,5
	li t1 5
	div t4,t4,t1
	#%.middle.1065 = sdiv i32 %.middle.1064,5
	li t1 5
	div t4,t4,t1
	#%.middle.1066 = sdiv i32 %.middle.1065,5
	li t1 5
	div t4,t4,t1
	#%.middle.1067 = sdiv i32 %.middle.1066,5
	li t1 5
	div t4,t4,t1
	#%.middle.1068 = sdiv i32 %.middle.1067,5
	li t1 5
	div t4,t4,t1
	#%.middle.1069 = sdiv i32 %.middle.1068,5
	li t1 5
	div t4,t4,t1
	#%.middle.1070 = sdiv i32 %.middle.1069,5
	li t1 5
	div t4,t4,t1
	#%.middle.1071 = sdiv i32 %.middle.1070,5
	li t1 5
	div t4,t4,t1
	#%.middle.1072 = sdiv i32 %.middle.1071,5
	li t1 5
	div t4,t4,t1
	#%.middle.1073 = sdiv i32 %.middle.1072,5
	li t1 5
	div t4,t4,t1
	#%.middle.1074 = sdiv i32 %.middle.1073,5
	li t1 5
	div t4,t4,t1
	#%.middle.1075 = sdiv i32 %.middle.1074,5
	li t1 5
	div t4,t4,t1
	#%.middle.1076 = sdiv i32 %.middle.1075,5
	li t1 5
	div t4,t4,t1
	#%.middle.1077 = sdiv i32 %.middle.1076,5
	li t1 5
	div t4,t4,t1
	#%.middle.1078 = sdiv i32 %.middle.1077,5
	li t1 5
	div t4,t4,t1
	#%.middle.1079 = sdiv i32 %.middle.1078,5
	mv t0 t4
	sw t0,4(sp)
	lw t0 4(sp)
	mv t4 t0
	li t1 234
	mul t4,t4,t1
	#%.middle.1081 = mul i32 %.middle.1082,234
	li t1 111
	add t4,t4,t1
	#%.middle.1083 = add i32 %.middle.1081,111
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.1084 = sdiv i32 4,5
	li t1 6
	mul a3,a3,t1
	#%.middle.1085 = mul i32 %.middle.1084,6
	add a3,t4,a3
	#%.middle.1086 = add i32 %.middle.1083,%.middle.1085
	li t1 7
	add a3,a3,t1
	#%.middle.1087 = add i32 %.middle.1086,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.1088 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.1089 = mul i32 %.middle.1088,10111
	add a5,a3,a5
	#%.middle.1090 = add i32 %.middle.1087,%.middle.1089
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.1091 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.1092 = mul i32 %.middle.1091,6
	add t5,a5,t5
	#%.middle.1093 = add i32 %.middle.1090,%.middle.1092
	li t1 7
	add t5,t5,t1
	#%.middle.1094 = add i32 %.middle.1093,7
	li t0 8
	li t1 9
	div a4,t0,t1
	#%.middle.1095 = sdiv i32 8,9
	li t1 10111
	mul a4,a4,t1
	#%.middle.1096 = mul i32 %.middle.1095,10111
	add a4,t5,a4
	#%.middle.1097 = add i32 %.middle.1094,%.middle.1096
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.1098 = sdiv i32 4,5
	li t1 6
	mul s2,s2,t1
	#%.middle.1099 = mul i32 %.middle.1098,6
	add s2,a4,s2
	#%.middle.1100 = add i32 %.middle.1097,%.middle.1099
	li t1 7
	add s2,s2,t1
	#%.middle.1101 = add i32 %.middle.1100,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.1102 = sdiv i32 8,9
	li t1 10
	mul a2,a2,t1
	#%.middle.1103 = mul i32 %.middle.1102,10
	add t6,s2,a2
	#%.middle.1104 = add i32 %.middle.1101,%.middle.1103
	li t0 42342
	li t1 12
	mul a2,t0,t1
	#%.middle.1105 = mul i32 42342,12
	li t0 12211342
	add a2,t0,a2
	#%.middle.1106 = add i32 12211342,%.middle.1105
	li t1 111
	add a2,a2,t1
	#%.middle.1107 = add i32 %.middle.1106,111
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.1108 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.1109 = mul i32 %.middle.1108,6
	add s1,a2,s1
	#%.middle.1110 = add i32 %.middle.1107,%.middle.1109
	li t1 7
	add s1,s1,t1
	#%.middle.1111 = add i32 %.middle.1110,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.1112 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.1113 = mul i32 %.middle.1112,10111
	add s0,s1,s0
	#%.middle.1114 = add i32 %.middle.1111,%.middle.1113
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.1115 = sdiv i32 4,5
	li t1 6
	mul a1,a6,t1
	#%.middle.1116 = mul i32 %.middle.1115,6
	add a1,s0,a1
	#%.middle.1117 = add i32 %.middle.1114,%.middle.1116
	li t1 7
	add a1,a1,t1
	#%.middle.1118 = add i32 %.middle.1117,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.1119 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.1120 = mul i32 %.middle.1119,10111
	add a0,a1,a0
	#%.middle.1121 = add i32 %.middle.1118,%.middle.1120
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.1122 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.1123 = mul i32 %.middle.1122,6
	add t4,a0,t4
	#%.middle.1124 = add i32 %.middle.1121,%.middle.1123
	li t1 7
	add t4,t4,t1
	#%.middle.1125 = add i32 %.middle.1124,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1126 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1127 = mul i32 %.middle.1126,10
	add a7,t4,a7
	#%.middle.1128 = add i32 %.middle.1125,%.middle.1127
	xor a3,t6,a7
	#%.middle.1129 = xor i32 %.middle.1104,%.middle.1128
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1130 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1131 = add i32 12211342,%.middle.1130
	li t1 111
	add a7,a7,t1
	#%.middle.1132 = add i32 %.middle.1131,111
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.1133 = sdiv i32 4,5
	li t1 6
	mul a5,a5,t1
	#%.middle.1134 = mul i32 %.middle.1133,6
	add a5,a7,a5
	#%.middle.1135 = add i32 %.middle.1132,%.middle.1134
	li t1 7
	add a5,a5,t1
	#%.middle.1136 = add i32 %.middle.1135,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.1137 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.1138 = mul i32 %.middle.1137,10111
	add t5,a5,t5
	#%.middle.1139 = add i32 %.middle.1136,%.middle.1138
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.1140 = sdiv i32 4,5
	li t1 6
	mul a4,s2,t1
	#%.middle.1141 = mul i32 %.middle.1140,6
	add a4,t5,a4
	#%.middle.1142 = add i32 %.middle.1139,%.middle.1141
	li t1 7
	add a4,a4,t1
	#%.middle.1143 = add i32 %.middle.1142,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.1144 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.1145 = mul i32 %.middle.1144,10111
	add s1,a4,s1
	#%.middle.1146 = add i32 %.middle.1143,%.middle.1145
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.1147 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.1148 = mul i32 %.middle.1147,6
	add a2,s1,a2
	#%.middle.1149 = add i32 %.middle.1146,%.middle.1148
	li t1 7
	add a2,a2,t1
	#%.middle.1150 = add i32 %.middle.1149,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.1151 = sdiv i32 8,9
	li t1 10
	mul s0,s0,t1
	#%.middle.1152 = mul i32 %.middle.1151,10
	add s0,a2,s0
	#%.middle.1153 = add i32 %.middle.1150,%.middle.1152
	xor t6,a3,s0
	#%.middle.1154 = xor i32 %.middle.1129,%.middle.1153
	li t0 42342
	li t1 12
	mul s0,t0,t1
	#%.middle.1155 = mul i32 42342,12
	lw t0 N.0
	mv a6 t0
	add a6,a6,s0
	#%.middle.1156 = add i32 %.middle.1157,%.middle.1155
	li t1 111
	add a6,a6,t1
	#%.middle.1158 = add i32 %.middle.1156,111
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.1159 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.1160 = mul i32 %.middle.1159,6
	add a1,a6,a1
	#%.middle.1161 = add i32 %.middle.1158,%.middle.1160
	li t1 7
	add a1,a1,t1
	#%.middle.1162 = add i32 %.middle.1161,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.1163 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.1164 = mul i32 %.middle.1163,10111
	add a0,a1,a0
	#%.middle.1165 = add i32 %.middle.1162,%.middle.1164
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.1166 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.1167 = mul i32 %.middle.1166,6
	add t5,a0,t4
	#%.middle.1168 = add i32 %.middle.1165,%.middle.1167
	li t1 7
	add t5,t5,t1
	#%.middle.1169 = add i32 %.middle.1168,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.1170 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.1171 = mul i32 %.middle.1170,10111
	add a5,t5,a5
	#%.middle.1172 = add i32 %.middle.1169,%.middle.1171
	lw t0 4(sp)
	mv s2 t0
	li t1 5
	div s2,s2,t1
	#%.middle.1173 = sdiv i32 %.middle.1174,5
	li t1 6
	mul s2,s2,t1
	#%.middle.1175 = mul i32 %.middle.1173,6
	add s2,a5,s2
	#%.middle.1176 = add i32 %.middle.1172,%.middle.1175
	li t1 7
	add s2,s2,t1
	#%.middle.1177 = add i32 %.middle.1176,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1178 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1179 = mul i32 %.middle.1178,10
	add a7,s2,a7
	#%.middle.1180 = add i32 %.middle.1177,%.middle.1179
	xor a3,t6,a7
	#%.middle.1181 = xor i32 %.middle.1154,%.middle.1180
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1182 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1183 = add i32 12211342,%.middle.1182
	li t1 111
	add a7,a7,t1
	#%.middle.1184 = add i32 %.middle.1183,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.1185 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.1186 = mul i32 %.middle.1185,6
	add a4,a7,a4
	#%.middle.1187 = add i32 %.middle.1184,%.middle.1186
	li t1 7
	add a4,a4,t1
	#%.middle.1188 = add i32 %.middle.1187,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.1189 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.1190 = mul i32 %.middle.1189,10111
	add s1,a4,s1
	#%.middle.1191 = add i32 %.middle.1188,%.middle.1190
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.1192 = sdiv i32 4,5
	li t1 6
	mul s0,a2,t1
	#%.middle.1193 = mul i32 %.middle.1192,6
	add s0,s1,s0
	#%.middle.1194 = add i32 %.middle.1191,%.middle.1193
	li t1 7
	add s0,s0,t1
	#%.middle.1195 = add i32 %.middle.1194,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.1196 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.1197 = mul i32 %.middle.1196,10111
	add a1,s0,a1
	#%.middle.1198 = add i32 %.middle.1195,%.middle.1197
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.1199 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.1200 = mul i32 %.middle.1199,6
	add a0,a1,a0
	#%.middle.1201 = add i32 %.middle.1198,%.middle.1200
	li t1 7
	add a0,a0,t1
	#%.middle.1202 = add i32 %.middle.1201,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.1203 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.1204 = mul i32 %.middle.1203,10
	add a6,a0,a6
	#%.middle.1205 = add i32 %.middle.1202,%.middle.1204
	xor t4,a3,a6
	#%.middle.1206 = xor i32 %.middle.1181,%.middle.1205
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.1207 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.1208 = add i32 12211342,%.middle.1207
	li t1 111
	add a6,a6,t1
	#%.middle.1209 = add i32 %.middle.1208,111
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.1210 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.1211 = mul i32 %.middle.1210,6
	add t6,a6,t6
	#%.middle.1212 = add i32 %.middle.1209,%.middle.1211
	li t1 7
	add t6,t6,t1
	#%.middle.1213 = add i32 %.middle.1212,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.1214 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.1215 = mul i32 %.middle.1214,10111
	add t5,t6,t5
	#%.middle.1216 = add i32 %.middle.1213,%.middle.1215
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.1217 = sdiv i32 4,5
	li t1 6
	mul s2,a5,t1
	#%.middle.1218 = mul i32 %.middle.1217,6
	add s2,t5,s2
	#%.middle.1219 = add i32 %.middle.1216,%.middle.1218
	li t1 7
	add s2,s2,t1
	#%.middle.1220 = add i32 %.middle.1219,7
	li t0 8
	li t1 9
	div a4,t0,t1
	#%.middle.1221 = sdiv i32 8,9
	li t1 10111
	mul a4,a4,t1
	#%.middle.1222 = mul i32 %.middle.1221,10111
	add a4,s2,a4
	#%.middle.1223 = add i32 %.middle.1220,%.middle.1222
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.1224 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.1225 = mul i32 %.middle.1224,6
	add s1,a4,s1
	#%.middle.1226 = add i32 %.middle.1223,%.middle.1225
	li t1 7
	add s1,s1,t1
	#%.middle.1227 = add i32 %.middle.1226,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1228 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1229 = mul i32 %.middle.1228,10
	add a7,s1,a7
	#%.middle.1230 = add i32 %.middle.1227,%.middle.1229
	xor a2,t4,a7
	#%.middle.1231 = xor i32 %.middle.1206,%.middle.1230
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1232 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1233 = add i32 12211342,%.middle.1232
	li t1 111
	add a7,a7,t1
	#%.middle.1234 = add i32 %.middle.1233,111
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.1235 = sdiv i32 4,5
	li t1 6
	mul a3,a3,t1
	#%.middle.1236 = mul i32 %.middle.1235,6
	add a3,a7,a3
	#%.middle.1237 = add i32 %.middle.1234,%.middle.1236
	li t1 7
	add a3,a3,t1
	#%.middle.1238 = add i32 %.middle.1237,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.1239 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.1240 = mul i32 %.middle.1239,10111
	add s0,a3,s0
	#%.middle.1241 = add i32 %.middle.1238,%.middle.1240
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.1242 = sdiv i32 4,5
	li t1 6
	mul a0,a1,t1
	#%.middle.1243 = mul i32 %.middle.1242,6
	add a0,s0,a0
	#%.middle.1244 = add i32 %.middle.1241,%.middle.1243
	li t1 7
	add a0,a0,t1
	#%.middle.1245 = add i32 %.middle.1244,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.1246 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.1247 = mul i32 %.middle.1246,10111
	add t6,a0,t6
	#%.middle.1248 = add i32 %.middle.1245,%.middle.1247
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.1249 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.1250 = mul i32 %.middle.1249,6
	add t5,t6,t5
	#%.middle.1251 = add i32 %.middle.1248,%.middle.1250
	li t1 7
	add t5,t5,t1
	#%.middle.1252 = add i32 %.middle.1251,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.1253 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.1254 = mul i32 %.middle.1253,10
	add a6,t5,a6
	#%.middle.1255 = add i32 %.middle.1252,%.middle.1254
	xor a5,a2,a6
	#%.middle.1256 = xor i32 %.middle.1231,%.middle.1255
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.1257 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.1258 = add i32 12211342,%.middle.1257
	li t1 111
	add a6,a6,t1
	#%.middle.1259 = add i32 %.middle.1258,111
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.1260 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.1261 = mul i32 %.middle.1260,6
	add t4,a6,t4
	#%.middle.1262 = add i32 %.middle.1259,%.middle.1261
	li t1 7
	add t4,t4,t1
	#%.middle.1263 = add i32 %.middle.1262,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.1264 = sdiv i32 8,9
	li t1 10111
	mul s2,s2,t1
	#%.middle.1265 = mul i32 %.middle.1264,10111
	add s2,t4,s2
	#%.middle.1266 = add i32 %.middle.1263,%.middle.1265
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.1267 = sdiv i32 4,5
	li t1 6
	mul s1,a4,t1
	#%.middle.1268 = mul i32 %.middle.1267,6
	add s1,s2,s1
	#%.middle.1269 = add i32 %.middle.1266,%.middle.1268
	li t1 7
	add s1,s1,t1
	#%.middle.1270 = add i32 %.middle.1269,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.1271 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.1272 = mul i32 %.middle.1271,10111
	add a3,s1,a3
	#%.middle.1273 = add i32 %.middle.1270,%.middle.1272
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.1274 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.1275 = mul i32 %.middle.1274,6
	add s0,a3,s0
	#%.middle.1276 = add i32 %.middle.1273,%.middle.1275
	li t1 7
	add s0,s0,t1
	#%.middle.1277 = add i32 %.middle.1276,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1278 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1279 = mul i32 %.middle.1278,10
	add a7,s0,a7
	#%.middle.1280 = add i32 %.middle.1277,%.middle.1279
	xor a1,a5,a7
	#%.middle.1281 = xor i32 %.middle.1256,%.middle.1280
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1282 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1283 = add i32 12211342,%.middle.1282
	li t1 111
	add a7,a7,t1
	#%.middle.1284 = add i32 %.middle.1283,111
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.1285 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.1286 = mul i32 %.middle.1285,6
	add a2,a7,a2
	#%.middle.1287 = add i32 %.middle.1284,%.middle.1286
	li t1 7
	add a2,a2,t1
	#%.middle.1288 = add i32 %.middle.1287,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.1289 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.1290 = mul i32 %.middle.1289,10111
	add a0,a2,a0
	#%.middle.1291 = add i32 %.middle.1288,%.middle.1290
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.1292 = sdiv i32 4,5
	li t1 6
	mul t6,t5,t1
	#%.middle.1293 = mul i32 %.middle.1292,6
	add t6,a0,t6
	#%.middle.1294 = add i32 %.middle.1291,%.middle.1293
	li t1 7
	add t6,t6,t1
	#%.middle.1295 = add i32 %.middle.1294,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.1296 = sdiv i32 8,9
	li t1 10111
	mul t4,t4,t1
	#%.middle.1297 = mul i32 %.middle.1296,10111
	add t4,t6,t4
	#%.middle.1298 = add i32 %.middle.1295,%.middle.1297
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.1299 = sdiv i32 4,5
	li t1 6
	mul s2,s2,t1
	#%.middle.1300 = mul i32 %.middle.1299,6
	add s2,t4,s2
	#%.middle.1301 = add i32 %.middle.1298,%.middle.1300
	li t1 7
	add s2,s2,t1
	#%.middle.1302 = add i32 %.middle.1301,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.1303 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.1304 = mul i32 %.middle.1303,10
	add a6,s2,a6
	#%.middle.1305 = add i32 %.middle.1302,%.middle.1304
	xor a4,a1,a6
	#%.middle.1306 = xor i32 %.middle.1281,%.middle.1305
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.1307 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.1308 = add i32 12211342,%.middle.1307
	li t1 111
	add a6,a6,t1
	#%.middle.1309 = add i32 %.middle.1308,111
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.1310 = sdiv i32 4,5
	li t1 6
	mul a5,a5,t1
	#%.middle.1311 = mul i32 %.middle.1310,6
	add a5,a6,a5
	#%.middle.1312 = add i32 %.middle.1309,%.middle.1311
	li t1 7
	add a5,a5,t1
	#%.middle.1313 = add i32 %.middle.1312,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.1314 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.1315 = mul i32 %.middle.1314,10111
	add s1,a5,s1
	#%.middle.1316 = add i32 %.middle.1313,%.middle.1315
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.1317 = sdiv i32 4,5
	li t1 6
	mul s0,a3,t1
	#%.middle.1318 = mul i32 %.middle.1317,6
	add s0,s1,s0
	#%.middle.1319 = add i32 %.middle.1316,%.middle.1318
	li t1 7
	add s0,s0,t1
	#%.middle.1320 = add i32 %.middle.1319,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.1321 = sdiv i32 8,9
	li t1 10111
	mul a2,a2,t1
	#%.middle.1322 = mul i32 %.middle.1321,10111
	add a2,s0,a2
	#%.middle.1323 = add i32 %.middle.1320,%.middle.1322
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.1324 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.1325 = mul i32 %.middle.1324,6
	add a0,a2,a0
	#%.middle.1326 = add i32 %.middle.1323,%.middle.1325
	li t1 7
	add a0,a0,t1
	#%.middle.1327 = add i32 %.middle.1326,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1328 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1329 = mul i32 %.middle.1328,10
	add a7,a0,a7
	#%.middle.1330 = add i32 %.middle.1327,%.middle.1329
	xor t5,a4,a7
	#%.middle.1331 = xor i32 %.middle.1306,%.middle.1330
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1332 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1333 = add i32 12211342,%.middle.1332
	li t1 111
	add a7,a7,t1
	#%.middle.1334 = add i32 %.middle.1333,111
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.1335 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.1336 = mul i32 %.middle.1335,6
	add a1,a7,a1
	#%.middle.1337 = add i32 %.middle.1334,%.middle.1336
	li t1 7
	add a1,a1,t1
	#%.middle.1338 = add i32 %.middle.1337,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.1339 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.1340 = mul i32 %.middle.1339,10111
	add t6,a1,t6
	#%.middle.1341 = add i32 %.middle.1338,%.middle.1340
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.1342 = sdiv i32 4,5
	li t1 6
	mul t4,s2,t1
	#%.middle.1343 = mul i32 %.middle.1342,6
	add t4,t6,t4
	#%.middle.1344 = add i32 %.middle.1341,%.middle.1343
	li t1 7
	add t4,t4,t1
	#%.middle.1345 = add i32 %.middle.1344,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.1346 = sdiv i32 8,9
	li t1 10111
	mul a6,a6,t1
	#%.middle.1347 = mul i32 %.middle.1346,10111
	add a6,t4,a6
	#%.middle.1348 = add i32 %.middle.1345,%.middle.1347
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.1349 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.1350 = mul i32 %.middle.1349,6
	add s1,a6,s1
	#%.middle.1351 = add i32 %.middle.1348,%.middle.1350
	li t1 7
	add s1,s1,t1
	#%.middle.1352 = add i32 %.middle.1351,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.1353 = sdiv i32 8,9
	li t1 10
	mul a5,a5,t1
	#%.middle.1354 = mul i32 %.middle.1353,10
	add a5,s1,a5
	#%.middle.1355 = add i32 %.middle.1352,%.middle.1354
	xor a3,t5,a5
	#%.middle.1356 = xor i32 %.middle.1331,%.middle.1355
	li t0 42342
	li t1 12
	mul a5,t0,t1
	#%.middle.1357 = mul i32 42342,12
	li t0 12211342
	add a5,t0,a5
	#%.middle.1358 = add i32 12211342,%.middle.1357
	li t1 111
	add a5,a5,t1
	#%.middle.1359 = add i32 %.middle.1358,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.1360 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.1361 = mul i32 %.middle.1360,6
	add a4,a5,a4
	#%.middle.1362 = add i32 %.middle.1359,%.middle.1361
	li t1 7
	add a4,a4,t1
	#%.middle.1363 = add i32 %.middle.1362,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.1364 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.1365 = mul i32 %.middle.1364,10111
	add s0,a4,s0
	#%.middle.1366 = add i32 %.middle.1363,%.middle.1365
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.1367 = sdiv i32 4,5
	li t1 6
	mul a0,a2,t1
	#%.middle.1368 = mul i32 %.middle.1367,6
	add a0,s0,a0
	#%.middle.1369 = add i32 %.middle.1366,%.middle.1368
	li t1 7
	add a0,a0,t1
	#%.middle.1370 = add i32 %.middle.1369,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.1371 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.1372 = mul i32 %.middle.1371,10111
	add a1,a0,a1
	#%.middle.1373 = add i32 %.middle.1370,%.middle.1372
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.1374 = sdiv i32 4,5
	li t1 1
	mul t6,t6,t1
	#%.middle.1375 = mul i32 %.middle.1374,1
	add t6,a1,t6
	#%.middle.1376 = add i32 %.middle.1373,%.middle.1375
	li t1 7
	add t6,t6,t1
	#%.middle.1377 = add i32 %.middle.1376,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1378 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1379 = mul i32 %.middle.1378,10
	add a7,t6,a7
	#%.middle.1380 = add i32 %.middle.1377,%.middle.1379
	xor s2,a3,a7
	#%.middle.1381 = xor i32 %.middle.1356,%.middle.1380
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1382 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1383 = add i32 12211342,%.middle.1382
	li t1 111
	add a7,a7,t1
	#%.middle.1384 = add i32 %.middle.1383,111
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.1385 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.1386 = mul i32 %.middle.1385,6
	add t5,a7,t5
	#%.middle.1387 = add i32 %.middle.1384,%.middle.1386
	li t1 7
	add t5,t5,t1
	#%.middle.1388 = add i32 %.middle.1387,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.1389 = sdiv i32 8,9
	li t1 10111
	mul t4,t4,t1
	#%.middle.1390 = mul i32 %.middle.1389,10111
	add t4,t5,t4
	#%.middle.1391 = add i32 %.middle.1388,%.middle.1390
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.1392 = sdiv i32 4,5
	li t1 6
	mul s1,a6,t1
	#%.middle.1393 = mul i32 %.middle.1392,6
	add s1,t4,s1
	#%.middle.1394 = add i32 %.middle.1391,%.middle.1393
	li t1 7
	add s1,s1,t1
	#%.middle.1395 = add i32 %.middle.1394,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.1396 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.1397 = mul i32 %.middle.1396,10111
	add a5,s1,a5
	#%.middle.1398 = add i32 %.middle.1395,%.middle.1397
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.1399 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.1400 = mul i32 %.middle.1399,6
	add s0,a5,s0
	#%.middle.1401 = add i32 %.middle.1398,%.middle.1400
	li t1 7
	add s0,s0,t1
	#%.middle.1402 = add i32 %.middle.1401,7
	li t0 8
	li t1 9
	div a4,t0,t1
	#%.middle.1403 = sdiv i32 8,9
	li t1 10
	mul a4,a4,t1
	#%.middle.1404 = mul i32 %.middle.1403,10
	add a4,s0,a4
	#%.middle.1405 = add i32 %.middle.1402,%.middle.1404
	xor a2,s2,a4
	#%.middle.1406 = xor i32 %.middle.1381,%.middle.1405
	li t0 42342
	li t1 12
	mul a4,t0,t1
	#%.middle.1407 = mul i32 42342,12
	li t0 12211342
	add a4,t0,a4
	#%.middle.1408 = add i32 12211342,%.middle.1407
	li t1 111
	add a4,a4,t1
	#%.middle.1409 = add i32 %.middle.1408,111
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.1410 = sdiv i32 4,5
	li t1 6
	mul a3,a3,t1
	#%.middle.1411 = mul i32 %.middle.1410,6
	add a3,a4,a3
	#%.middle.1412 = add i32 %.middle.1409,%.middle.1411
	li t1 7
	add a3,a3,t1
	#%.middle.1413 = add i32 %.middle.1412,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.1414 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.1415 = mul i32 %.middle.1414,10111
	sub a0,a3,a0
	#%.middle.1416 = sub i32 %.middle.1413,%.middle.1415
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.1417 = sdiv i32 4,5
	li t1 6
	mul a1,t6,t1
	#%.middle.1418 = mul i32 %.middle.1417,6
	add a1,a0,a1
	#%.middle.1419 = add i32 %.middle.1416,%.middle.1418
	li t1 7
	add a1,a1,t1
	#%.middle.1420 = add i32 %.middle.1419,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.1421 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.1422 = mul i32 %.middle.1421,10111
	add t5,a1,t5
	#%.middle.1423 = add i32 %.middle.1420,%.middle.1422
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.1424 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.1425 = mul i32 %.middle.1424,6
	add t4,t5,t4
	#%.middle.1426 = add i32 %.middle.1423,%.middle.1425
	li t1 7
	add t4,t4,t1
	#%.middle.1427 = add i32 %.middle.1426,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1428 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1429 = mul i32 %.middle.1428,10
	add a7,t4,a7
	#%.middle.1430 = add i32 %.middle.1427,%.middle.1429
	xor a6,a2,a7
	#%.middle.1431 = xor i32 %.middle.1406,%.middle.1430
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1432 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1433 = add i32 12211342,%.middle.1432
	li t1 111
	add a7,a7,t1
	#%.middle.1434 = add i32 %.middle.1433,111
	li t0 4
	li t1 5
	div s2,t0,t1
	#%.middle.1435 = sdiv i32 4,5
	li t1 6
	mul s2,s2,t1
	#%.middle.1436 = mul i32 %.middle.1435,6
	add s2,a7,s2
	#%.middle.1437 = add i32 %.middle.1434,%.middle.1436
	li t1 7
	add s2,s2,t1
	#%.middle.1438 = add i32 %.middle.1437,7
	li t0 8
	li t1 9
	div s1,t0,t1
	#%.middle.1439 = sdiv i32 8,9
	li t1 10111
	mul s1,s1,t1
	#%.middle.1440 = mul i32 %.middle.1439,10111
	add s1,s2,s1
	#%.middle.1441 = add i32 %.middle.1438,%.middle.1440
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.1442 = sdiv i32 4,5
	li t1 6
	mul s0,a5,t1
	#%.middle.1443 = mul i32 %.middle.1442,6
	add s0,s1,s0
	#%.middle.1444 = add i32 %.middle.1441,%.middle.1443
	li t1 7
	add s0,s0,t1
	#%.middle.1445 = add i32 %.middle.1444,7
	li t0 8
	li t1 9
	div a4,t0,t1
	#%.middle.1446 = sdiv i32 8,9
	li t1 10111
	mul a4,a4,t1
	#%.middle.1447 = mul i32 %.middle.1446,10111
	add a4,s0,a4
	#%.middle.1448 = add i32 %.middle.1445,%.middle.1447
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.1449 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.1450 = mul i32 %.middle.1449,6
	add a0,a4,a0
	#%.middle.1451 = add i32 %.middle.1448,%.middle.1450
	li t1 7
	add a0,a0,t1
	#%.middle.1452 = add i32 %.middle.1451,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.1453 = sdiv i32 8,9
	li t1 10
	mul a3,a3,t1
	#%.middle.1454 = mul i32 %.middle.1453,10
	add a3,a0,a3
	#%.middle.1455 = add i32 %.middle.1452,%.middle.1454
	xor t6,a6,a3
	#%.middle.1456 = xor i32 %.middle.1431,%.middle.1455
	li t0 42342
	li t1 12
	mul a3,t0,t1
	#%.middle.1457 = mul i32 42342,12
	li t0 12211342
	add a3,t0,a3
	#%.middle.1458 = add i32 12211342,%.middle.1457
	li t1 111
	add a3,a3,t1
	#%.middle.1459 = add i32 %.middle.1458,111
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.1460 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.1461 = mul i32 %.middle.1460,6
	add a2,a3,a2
	#%.middle.1462 = add i32 %.middle.1459,%.middle.1461
	li t1 7
	add a2,a2,t1
	#%.middle.1463 = add i32 %.middle.1462,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.1464 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.1465 = mul i32 %.middle.1464,10111
	add a1,a2,a1
	#%.middle.1466 = add i32 %.middle.1463,%.middle.1465
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.1467 = sdiv i32 4,5
	li t1 6
	mul t5,t4,t1
	#%.middle.1468 = mul i32 %.middle.1467,6
	add t5,a1,t5
	#%.middle.1469 = add i32 %.middle.1466,%.middle.1468
	li t1 7
	add t5,t5,t1
	#%.middle.1470 = add i32 %.middle.1469,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.1471 = sdiv i32 8,9
	li t1 10111
	mul s2,s2,t1
	#%.middle.1472 = mul i32 %.middle.1471,10111
	add s2,t5,s2
	#%.middle.1473 = add i32 %.middle.1470,%.middle.1472
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.1474 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.1475 = mul i32 %.middle.1474,6
	add s1,s2,s1
	#%.middle.1476 = add i32 %.middle.1473,%.middle.1475
	li t1 7
	add s1,s1,t1
	#%.middle.1477 = add i32 %.middle.1476,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1478 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.1479 = mul i32 %.middle.1478,10
	add a7,s1,a7
	#%.middle.1480 = add i32 %.middle.1477,%.middle.1479
	xor a5,t6,a7
	#%.middle.1481 = xor i32 %.middle.1456,%.middle.1480
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.1482 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.1483 = add i32 12211342,%.middle.1482
	li t1 111
	add a7,a7,t1
	#%.middle.1484 = add i32 %.middle.1483,111
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.1485 = sdiv i32 4,5
	li t1 6
	mul a6,a6,t1
	#%.middle.1486 = mul i32 %.middle.1485,6
	add a6,a7,a6
	#%.middle.1487 = add i32 %.middle.1484,%.middle.1486
	li t1 7
	add a6,a6,t1
	#%.middle.1488 = add i32 %.middle.1487,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.1489 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.1490 = mul i32 %.middle.1489,10111
	add s0,a6,s0
	#%.middle.1491 = add i32 %.middle.1488,%.middle.1490
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.1492 = sdiv i32 4,5
	li t1 6
	mul a0,a4,t1
	#%.middle.1493 = mul i32 %.middle.1492,6
	add a0,s0,a0
	#%.middle.1494 = add i32 %.middle.1491,%.middle.1493
	li t1 7
	add a0,a0,t1
	#%.middle.1495 = add i32 %.middle.1494,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.1496 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.1497 = mul i32 %.middle.1496,10111
	add a3,a0,a3
	#%.middle.1498 = add i32 %.middle.1495,%.middle.1497
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.1499 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.1500 = mul i32 %.middle.1499,6
	add a1,a3,a1
	#%.middle.1501 = add i32 %.middle.1498,%.middle.1500
	li t1 7
	add a1,a1,t1
	#%.middle.1502 = add i32 %.middle.1501,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.1503 = sdiv i32 8,9
	li t1 10
	mul a2,a2,t1
	#%.middle.1504 = mul i32 %.middle.1503,10
	add a2,a1,a2
	#%.middle.1505 = add i32 %.middle.1502,%.middle.1504
	xor t4,a5,a2
	#%.middle.1506 = xor i32 %.middle.1481,%.middle.1505
	li t0 42342
	li t1 12
	mul a2,t0,t1
	#%.middle.1507 = mul i32 42342,12
	li t0 12211342
	add a2,t0,a2
	#%.middle.1508 = add i32 12211342,%.middle.1507
	li t1 111
	add a2,a2,t1
	#%.middle.1509 = add i32 %.middle.1508,111
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.1510 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.1511 = mul i32 %.middle.1510,6
	add t6,a2,t6
	#%.middle.1512 = add i32 %.middle.1509,%.middle.1511
	li t1 7
	add t6,t6,t1
	#%.middle.1513 = add i32 %.middle.1512,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.1514 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.1515 = mul i32 %.middle.1514,10111
	add t5,t6,t5
	#%.middle.1516 = add i32 %.middle.1513,%.middle.1515
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.1517 = sdiv i32 4,5
	li t1 6
	mul s2,s1,t1
	#%.middle.1518 = mul i32 %.middle.1517,6
	add s2,t5,s2
	#%.middle.1519 = add i32 %.middle.1516,%.middle.1518
	li t1 7
	add s2,s2,t1
	#%.middle.1520 = add i32 %.middle.1519,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.1521 = sdiv i32 8,9
	li t1 10111
	mul a7,a7,t1
	#%.middle.1522 = mul i32 %.middle.1521,10111
	add a7,s2,a7
	#%.middle.1523 = add i32 %.middle.1520,%.middle.1522
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.1524 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.1525 = mul i32 %.middle.1524,6
	add s0,a7,s0
	#%.middle.1526 = add i32 %.middle.1523,%.middle.1525
	li t1 7
	add s0,s0,t1
	#%.middle.1527 = add i32 %.middle.1526,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.1528 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.1529 = mul i32 %.middle.1528,10
	add a6,s0,a6
	#%.middle.1530 = add i32 %.middle.1527,%.middle.1529
	xor a4,t4,a6
	#%.middle.1531 = xor i32 %.middle.1506,%.middle.1530
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.1532 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.1533 = add i32 12211342,%.middle.1532
	li t1 111
	add a6,a6,t1
	#%.middle.1534 = add i32 %.middle.1533,111
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.1535 = sdiv i32 4,5
	li t1 6
	mul a5,a5,t1
	#%.middle.1536 = mul i32 %.middle.1535,6
	add a5,a6,a5
	#%.middle.1537 = add i32 %.middle.1534,%.middle.1536
	li t1 7
	add a5,a5,t1
	#%.middle.1538 = add i32 %.middle.1537,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.1539 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.1540 = mul i32 %.middle.1539,10111
	add a0,a5,a0
	#%.middle.1541 = add i32 %.middle.1538,%.middle.1540
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.1542 = sdiv i32 4,5
	li t1 6
	mul a3,a1,t1
	#%.middle.1543 = mul i32 %.middle.1542,6
	add a3,a0,a3
	#%.middle.1544 = add i32 %.middle.1541,%.middle.1543
	li t1 7
	add a3,a3,t1
	#%.middle.1545 = add i32 %.middle.1544,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.1546 = sdiv i32 8,9
	li t1 10111
	mul a2,a2,t1
	#%.middle.1547 = mul i32 %.middle.1546,10111
	add a2,a3,a2
	#%.middle.1548 = add i32 %.middle.1545,%.middle.1547
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.1549 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.1550 = mul i32 %.middle.1549,6
	add t6,a2,t6
	#%.middle.1551 = add i32 %.middle.1548,%.middle.1550
	li t1 7
	add t6,t6,t1
	#%.middle.1552 = add i32 %.middle.1551,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.1553 = sdiv i32 8,9
	li t1 10
	mul t5,t5,t1
	#%.middle.1554 = mul i32 %.middle.1553,10
	add t5,t6,t5
	#%.middle.1555 = add i32 %.middle.1552,%.middle.1554
	xor s1,a4,t5
	#%.middle.1556 = xor i32 %.middle.1531,%.middle.1555
	li t0 42342
	li t1 12
	mul t5,t0,t1
	#%.middle.1557 = mul i32 42342,12
	li t0 12211342
	add t5,t0,t5
	#%.middle.1558 = add i32 12211342,%.middle.1557
	li t1 111
	add t5,t5,t1
	#%.middle.1559 = add i32 %.middle.1558,111
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.1560 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.1561 = mul i32 %.middle.1560,6
	add t4,t5,t4
	#%.middle.1562 = add i32 %.middle.1559,%.middle.1561
	li t1 7
	add t4,t4,t1
	#%.middle.1563 = add i32 %.middle.1562,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.1564 = sdiv i32 8,9
	li t1 10111
	mul s2,s2,t1
	#%.middle.1565 = mul i32 %.middle.1564,10111
	add s2,t4,s2
	#%.middle.1566 = add i32 %.middle.1563,%.middle.1565
	li t0 4
	li t1 5
	div a7,t0,t1
	#%.middle.1567 = sdiv i32 4,5
	li t1 6
	mul s0,a7,t1
	#%.middle.1568 = mul i32 %.middle.1567,6
	add s0,s2,s0
	#%.middle.1569 = add i32 %.middle.1566,%.middle.1568
	li t1 7
	add s0,s0,t1
	#%.middle.1570 = add i32 %.middle.1569,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.1571 = sdiv i32 8,9
	li t1 10111
	mul a6,a6,t1
	#%.middle.1572 = mul i32 %.middle.1571,10111
	add a6,s0,a6
	#%.middle.1573 = add i32 %.middle.1570,%.middle.1572
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.1574 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.1575 = mul i32 %.middle.1574,6
	add a0,a6,a0
	#%.middle.1576 = add i32 %.middle.1573,%.middle.1575
	li t1 7
	add a0,a0,t1
	#%.middle.1577 = add i32 %.middle.1576,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.1578 = sdiv i32 8,9
	li t1 10
	mul a5,a5,t1
	#%.middle.1579 = mul i32 %.middle.1578,10
	add a5,a0,a5
	#%.middle.1580 = add i32 %.middle.1577,%.middle.1579
	xor a1,s1,a5
	#%.middle.1581 = xor i32 %.middle.1556,%.middle.1580
	li t0 42342
	li t1 12
	mul a5,t0,t1
	#%.middle.1582 = mul i32 42342,12
	li t0 12211342
	add a5,t0,a5
	#%.middle.1583 = add i32 12211342,%.middle.1582
	li t1 111
	add a5,a5,t1
	#%.middle.1584 = add i32 %.middle.1583,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.1585 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.1586 = mul i32 %.middle.1585,6
	add a4,a5,a4
	#%.middle.1587 = add i32 %.middle.1584,%.middle.1586
	li t1 7
	add a4,a4,t1
	#%.middle.1588 = add i32 %.middle.1587,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.1589 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.1590 = mul i32 %.middle.1589,10111
	add a3,a4,a3
	#%.middle.1591 = add i32 %.middle.1588,%.middle.1590
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.1592 = sdiv i32 4,5
	li t1 6
	mul t6,a2,t1
	#%.middle.1593 = mul i32 %.middle.1592,6
	add t6,a3,t6
	#%.middle.1594 = add i32 %.middle.1591,%.middle.1593
	li t1 7
	add t6,t6,t1
	#%.middle.1595 = add i32 %.middle.1594,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.1596 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.1597 = mul i32 %.middle.1596,10111
	add t5,t6,t5
	#%.middle.1598 = add i32 %.middle.1595,%.middle.1597
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.1599 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.1600 = mul i32 %.middle.1599,6
	add t4,t5,t4
	#%.middle.1601 = add i32 %.middle.1598,%.middle.1600
	li t1 7
	add t4,t4,t1
	#%.middle.1602 = add i32 %.middle.1601,7
	li t0 8
	li t1 9
	div s2,t0,t1
	#%.middle.1603 = sdiv i32 8,9
	li t1 10
	mul s2,s2,t1
	#%.middle.1604 = mul i32 %.middle.1603,10
	add s2,t4,s2
	#%.middle.1605 = add i32 %.middle.1602,%.middle.1604
	xor a7,a1,s2
	#%.middle.1606 = xor i32 %.middle.1581,%.middle.1605
	li t0 42342
	li t1 12
	mul s2,t0,t1
	#%.middle.1607 = mul i32 42342,12
	li t0 12211342
	add s2,t0,s2
	#%.middle.1608 = add i32 12211342,%.middle.1607
	li t1 111
	add s2,s2,t1
	#%.middle.1609 = add i32 %.middle.1608,111
	li t0 4
	li t1 5
	div s1,t0,t1
	#%.middle.1610 = sdiv i32 4,5
	li t1 6
	mul s1,s1,t1
	#%.middle.1611 = mul i32 %.middle.1610,6
	add s1,s2,s1
	#%.middle.1612 = add i32 %.middle.1609,%.middle.1611
	li t1 7
	add s1,s1,t1
	#%.middle.1613 = add i32 %.middle.1612,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.1614 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.1615 = mul i32 %.middle.1614,10111
	add s0,s1,s0
	#%.middle.1616 = add i32 %.middle.1613,%.middle.1615
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.1617 = sdiv i32 4,5
	li t1 6
	mul a6,a0,t1
	#%.middle.1618 = mul i32 %.middle.1617,6
	add a6,s0,a6
	#%.middle.1619 = add i32 %.middle.1616,%.middle.1618
	li t1 7
	add a6,a6,t1
	#%.middle.1620 = add i32 %.middle.1619,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.1621 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.1622 = mul i32 %.middle.1621,10111
	add a5,a6,a5
	#%.middle.1623 = add i32 %.middle.1620,%.middle.1622
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.1624 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.1625 = mul i32 %.middle.1624,6
	add a4,a5,a4
	#%.middle.1626 = add i32 %.middle.1623,%.middle.1625
	li t1 7
	add a4,a4,t1
	#%.middle.1627 = add i32 %.middle.1626,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.1628 = sdiv i32 8,9
	li t1 10
	mul a3,a3,t1
	#%.middle.1629 = mul i32 %.middle.1628,10
	add a3,a4,a3
	#%.middle.1630 = add i32 %.middle.1627,%.middle.1629
	xor a3,a7,a3
	#%.middle.1631 = xor i32 %.middle.1606,%.middle.1630
	lw t0 4(sp)
	mv a2 t0
	li t1 12
	mul a2,a2,t1
	#%.middle.1632 = mul i32 %.middle.1633,12
	li t0 12211342
	add a2,t0,a2
	#%.middle.1634 = add i32 12211342,%.middle.1632
	xor a2,a3,a2
	#%.middle.1635 = xor i32 %.middle.1631,%.middle.1634
	mv t0 a2
	sw t0,4(sp)
	lw t0 4(sp)
	mv a2 t0
	li t1 11
	add a2,a2,t1
	#%.middle.1637 = add i32 %.middle.1638,11
	mv t0 a2
	sw t0,4(sp)
	li t0 1
	li t1 5
	div a2,t0,t1
	#%.middle.1640 = sdiv i32 1,5
	li t1 5
	div a2,a2,t1
	#%.middle.1641 = sdiv i32 %.middle.1640,5
	li t1 5
	div a2,a2,t1
	#%.middle.1642 = sdiv i32 %.middle.1641,5
	li t1 5
	div a2,a2,t1
	#%.middle.1643 = sdiv i32 %.middle.1642,5
	li t1 5
	div a2,a2,t1
	#%.middle.1644 = sdiv i32 %.middle.1643,5
	li t1 5
	div a2,a2,t1
	#%.middle.1645 = sdiv i32 %.middle.1644,5
	li t1 5
	div a2,a2,t1
	#%.middle.1646 = sdiv i32 %.middle.1645,5
	li t1 5
	div a2,a2,t1
	#%.middle.1647 = sdiv i32 %.middle.1646,5
	li t1 5
	div a2,a2,t1
	#%.middle.1648 = sdiv i32 %.middle.1647,5
	li t1 5
	div a2,a2,t1
	#%.middle.1649 = sdiv i32 %.middle.1648,5
	li t1 5
	div a2,a2,t1
	#%.middle.1650 = sdiv i32 %.middle.1649,5
	li t1 5
	div a2,a2,t1
	#%.middle.1651 = sdiv i32 %.middle.1650,5
	li t1 5
	div a2,a2,t1
	#%.middle.1652 = sdiv i32 %.middle.1651,5
	li t1 5
	div a2,a2,t1
	#%.middle.1653 = sdiv i32 %.middle.1652,5
	li t1 5
	div a2,a2,t1
	#%.middle.1654 = sdiv i32 %.middle.1653,5
	li t1 5
	div a2,a2,t1
	#%.middle.1655 = sdiv i32 %.middle.1654,5
	li t1 5
	div a2,a2,t1
	#%.middle.1656 = sdiv i32 %.middle.1655,5
	li t1 5
	div a2,a2,t1
	#%.middle.1657 = sdiv i32 %.middle.1656,5
	li t1 5
	div a2,a2,t1
	#%.middle.1658 = sdiv i32 %.middle.1657,5
	mv t0 a2
	sw t0,4(sp)
	j .L134
	#br label %If_End.175
	
.L133:
	j .L134
	#br label %If_End.175
	
.L134:
	lw t0 4(sp)
	mv a2 t0
	lw t0 4(sp)
	mv a1 t0
	add a1,a2,a1
	#%.middle.1660 = add i32 %.middle.1661,%.middle.1662
	lw t0 4(sp)
	mv t6 t0
	add t6,a1,t6
	#%.middle.1663 = add i32 %.middle.1660,%.middle.1664
	lw t0 4(sp)
	mv t5 t0
	add t5,t6,t5
	#%.middle.1665 = add i32 %.middle.1663,%.middle.1666
	mv t0 t5
	sw t0,4(sp)
	li t0 0
	sw t0,4(sp)
	lw t0 4(sp)
	mv t5 t0
	li t1 1
	add t5,t5,t1
	#%.middle.1669 = add i32 %.middle.1670,1
	mv t0 t5
	sw t0,8(sp)
	lw t0 8(sp)
	mv t5 t0
	li t1 1
	add t5,t5,t1
	#%.middle.1671 = add i32 %.middle.1672,1
	mv t0 t5
	sw t0,12(sp)
	lw t0 12(sp)
	mv t5 t0
	li t1 2
	mul t5,t5,t1
	#%.middle.1673 = mul i32 %.middle.1674,2
	mv t0 t5
	sw t0,16(sp)
	lw t0 16(sp)
	mv t5 t0
	li t1 100000
	sub t5,t5,t1
	#%.middle.1675 = sub i32 %.middle.1676,100000
	mv t0 t5
	sw t0,20(sp)
	li t0 0
	sw t0,28(sp)
	li t0 1
	sw t0,32(sp)
	li t0 1
	sw t0,24(sp)
	j .L135
	#br label %For_Cond.176
	
.L135:
	lw t0 24(sp)
	mv t5 t0
	li t1 100
	sub t5,t5,t1
	li t1 1
	slt t5 t5,t1
	#%.middle.1678 = icmp sle i32 %.middle.1679,100
	bnez t5 .L136
	beqz t5 .L138
	#br i1 %.middle.1678,label %For_Body.178,label %For_End.177
	
.L136:
	lw t0 28(sp)
	mv t5 t0
	lw t0 24(sp)
	mv t4 t0
	add t4,t5,t4
	#%.middle.1680 = add i32 %.middle.1681,%.middle.1682
	mv t0 t4
	sw t0,28(sp)
	j .L137
	#br label %For_Change.179
	
.L137:
	lw t0 24(sp)
	mv t4 t0
	lw t0 24(sp)
	mv t4 t0
	li t1 1
	add t4,t4,t1
	#%.middle.1685 = add i32 %.middle.1686,1
	mv t0 t4
	sw t0,24(sp)
	j .L135
	#br label %For_Cond.176
	
.L138:
	j .L139
	#br label %For_Cond.180
	
.L139:
	lw t0 24(sp)
	mv t4 t0
	li t0 1
	sub t4,t0,t4
	li t1 1
	slt t4 t4,t1
	#%.middle.1687 = icmp sge i32 %.middle.1688,1
	bnez t4 .L140
	beqz t4 .L142
	#br i1 %.middle.1687,label %For_Body.182,label %For_End.181
	
.L140:
	lw t0 28(sp)
	mv t4 t0
	lw t0 24(sp)
	mv s2 t0
	add s2,t4,s2
	#%.middle.1689 = add i32 %.middle.1690,%.middle.1691
	mv t0 s2
	sw t0,28(sp)
	j .L141
	#br label %For_Change.183
	
.L141:
	lw t0 24(sp)
	mv s2 t0
	lw t0 24(sp)
	mv s2 t0
	li t1 1
	sub s2,s2,t1
	#%.middle.1694 = sub i32 %.middle.1695,1
	mv t0 s2
	sw t0,24(sp)
	j .L139
	#br label %For_Cond.180
	
.L142:
	lw t0 24(sp)
	mv s2 t0
	lw t0 24(sp)
	mv s2 t0
	li t1 1
	add s2,s2,t1
	#%.middle.1697 = add i32 %.middle.1698,1
	mv t0 s2
	sw t0,24(sp)
	j .L143
	#br label %For_Cond.184
	
.L143:
	lw t0 24(sp)
	mv s2 t0
	li t1 10
	sub s2,s2,t1
	li t1 1
	slt s2 s2,t1
	#%.middle.1699 = icmp sle i32 %.middle.1700,10
	bnez s2 .L144
	beqz s2 .L146
	#br i1 %.middle.1699,label %For_Body.186,label %For_End.185
	
.L144:
	lw t0 32(sp)
	mv s2 t0
	lw t0 24(sp)
	mv s1 t0
	mul s1,s2,s1
	#%.middle.1701 = mul i32 %.middle.1702,%.middle.1703
	mv t0 s1
	sw t0,32(sp)
	j .L145
	#br label %For_Change.187
	
.L145:
	lw t0 24(sp)
	mv s1 t0
	lw t0 24(sp)
	mv s1 t0
	li t1 1
	add s1,s1,t1
	#%.middle.1706 = add i32 %.middle.1707,1
	mv t0 s1
	sw t0,24(sp)
	j .L143
	#br label %For_Cond.184
	
.L146:
	j .L147
	#br label %If_Cond.188
	
.L147:
	lw t0 8(sp)
	mv s1 t0
	lw t0 16(sp)
	mv s0 t0
	sub s0,s1,s0
	snez s0 s0
	#%.middle.1708 = icmp ne i32 %.middle.1709,%.middle.1710
	bnez s0 .L148
	beqz s0 .L1005
	#br i1 %.middle.1708,label %If_Then.189,label %If_Else.190
	
.L148:
	j .L149
	#br label %If_Cond.192
	
.L149:
	lw t0 8(sp)
	mv s0 t0
	lw t0 20(sp)
	mv a0 t0
	sub a0,s0,a0
	snez a0 a0
	#%.middle.1711 = icmp ne i32 %.middle.1712,%.middle.1713
	bnez a0 .L150
	beqz a0 .L1003
	#br i1 %.middle.1711,label %If_Then.193,label %If_Else.194
	
.L150:
	j .L151
	#br label %If_Cond.196
	
.L151:
	lw t0 8(sp)
	mv a0 t0
	lw t0 16(sp)
	mv a7 t0
	add a7,a0,a7
	#%.middle.1714 = add i32 %.middle.1715,%.middle.1716
	lw t0 16(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	add a5,a6,a5
	#%.middle.1717 = add i32 %.middle.1718,%.middle.1719
	sub a5,a7,a5
	seqz a5 a5
	#%.middle.1720 = icmp eq i32 %.middle.1714,%.middle.1717
	bnez a5 .L152
	beqz a5 .L1001
	#br i1 %.middle.1720,label %If_Then.197,label %If_Else.198
	
.L152:
	j .L153
	#br label %If_Cond.200
	
.L153:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.1721 = icmp eq i32 %.middle.1722,%.middle.1723
	bnez a4 .L154
	beqz a4 .L999
	#br i1 %.middle.1721,label %If_Then.201,label %If_Else.202
	
.L154:
	j .L155
	#br label %If_Cond.204
	
.L155:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.1724 = icmp eq i32 %.middle.1725,%.middle.1726
	bnez a3 .L156
	beqz a3 .L997
	#br i1 %.middle.1724,label %If_Then.205,label %If_Else.206
	
.L156:
	j .L157
	#br label %If_Cond.208
	
.L157:
	lw t0 20(sp)
	mv a3 t0
	lw t0 20(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.1727 = icmp eq i32 %.middle.1728,%.middle.1729
	bnez a2 .L158
	beqz a2 .L995
	#br i1 %.middle.1727,label %If_Then.209,label %If_Else.210
	
.L158:
	j .L159
	#br label %If_Cond.212
	
.L159:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.1730 = icmp eq i32 %.middle.1731,%.middle.1732
	bnez a1 .L160
	beqz a1 .L993
	#br i1 %.middle.1730,label %If_Then.213,label %If_Else.214
	
.L160:
	j .L161
	#br label %If_Cond.216
	
.L161:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.1733 = icmp eq i32 %.middle.1734,%.middle.1735
	bnez t6 .L162
	beqz t6 .L991
	#br i1 %.middle.1733,label %If_Then.217,label %If_Else.218
	
.L162:
	j .L163
	#br label %If_Cond.220
	
.L163:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.1736 = icmp eq i32 %.middle.1737,%.middle.1738
	bnez t5 .L164
	beqz t5 .L989
	#br i1 %.middle.1736,label %If_Then.221,label %If_Else.222
	
.L164:
	j .L165
	#br label %If_Cond.224
	
.L165:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.1739 = icmp eq i32 %.middle.1740,%.middle.1741
	bnez t4 .L166
	beqz t4 .L987
	#br i1 %.middle.1739,label %If_Then.225,label %If_Else.226
	
.L166:
	j .L167
	#br label %If_Cond.228
	
.L167:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.1742 = icmp eq i32 %.middle.1743,%.middle.1744
	bnez s2 .L168
	beqz s2 .L985
	#br i1 %.middle.1742,label %If_Then.229,label %If_Else.230
	
.L168:
	j .L169
	#br label %If_Cond.232
	
.L169:
	lw t0 20(sp)
	mv s2 t0
	lw t0 20(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.1745 = icmp eq i32 %.middle.1746,%.middle.1747
	bnez s1 .L170
	beqz s1 .L983
	#br i1 %.middle.1745,label %If_Then.233,label %If_Else.234
	
.L170:
	j .L171
	#br label %If_Cond.236
	
.L171:
	lw t0 8(sp)
	mv s1 t0
	lw t0 16(sp)
	mv s0 t0
	sub s0,s1,s0
	snez s0 s0
	#%.middle.1748 = icmp ne i32 %.middle.1749,%.middle.1750
	bnez s0 .L172
	beqz s0 .L981
	#br i1 %.middle.1748,label %If_Then.237,label %If_Else.238
	
.L172:
	j .L173
	#br label %If_Cond.240
	
.L173:
	lw t0 8(sp)
	mv s0 t0
	lw t0 20(sp)
	mv a0 t0
	sub a0,s0,a0
	snez a0 a0
	#%.middle.1751 = icmp ne i32 %.middle.1752,%.middle.1753
	bnez a0 .L174
	beqz a0 .L979
	#br i1 %.middle.1751,label %If_Then.241,label %If_Else.242
	
.L174:
	j .L175
	#br label %If_Cond.244
	
.L175:
	lw t0 8(sp)
	mv a0 t0
	lw t0 16(sp)
	mv a7 t0
	add a7,a0,a7
	#%.middle.1754 = add i32 %.middle.1755,%.middle.1756
	lw t0 16(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	add a5,a6,a5
	#%.middle.1757 = add i32 %.middle.1758,%.middle.1759
	sub a5,a7,a5
	seqz a5 a5
	#%.middle.1760 = icmp eq i32 %.middle.1754,%.middle.1757
	bnez a5 .L176
	beqz a5 .L977
	#br i1 %.middle.1760,label %If_Then.245,label %If_Else.246
	
.L176:
	j .L177
	#br label %If_Cond.248
	
.L177:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.1761 = icmp eq i32 %.middle.1762,%.middle.1763
	bnez a4 .L178
	beqz a4 .L975
	#br i1 %.middle.1761,label %If_Then.249,label %If_Else.250
	
.L178:
	j .L179
	#br label %If_Cond.252
	
.L179:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.1764 = icmp eq i32 %.middle.1765,%.middle.1766
	bnez a3 .L180
	beqz a3 .L973
	#br i1 %.middle.1764,label %If_Then.253,label %If_Else.254
	
.L180:
	j .L181
	#br label %If_Cond.256
	
.L181:
	lw t0 20(sp)
	mv a3 t0
	lw t0 20(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.1767 = icmp eq i32 %.middle.1768,%.middle.1769
	bnez a2 .L182
	beqz a2 .L971
	#br i1 %.middle.1767,label %If_Then.257,label %If_Else.258
	
.L182:
	j .L183
	#br label %If_Cond.260
	
.L183:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.1770 = icmp eq i32 %.middle.1771,%.middle.1772
	bnez a1 .L184
	beqz a1 .L969
	#br i1 %.middle.1770,label %If_Then.261,label %If_Else.262
	
.L184:
	j .L185
	#br label %If_Cond.264
	
.L185:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.1773 = icmp eq i32 %.middle.1774,%.middle.1775
	bnez t6 .L186
	beqz t6 .L967
	#br i1 %.middle.1773,label %If_Then.265,label %If_Else.266
	
.L186:
	j .L187
	#br label %If_Cond.268
	
.L187:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.1776 = icmp eq i32 %.middle.1777,%.middle.1778
	bnez t5 .L188
	beqz t5 .L965
	#br i1 %.middle.1776,label %If_Then.269,label %If_Else.270
	
.L188:
	j .L189
	#br label %If_Cond.272
	
.L189:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.1779 = icmp eq i32 %.middle.1780,%.middle.1781
	bnez t4 .L190
	beqz t4 .L963
	#br i1 %.middle.1779,label %If_Then.273,label %If_Else.274
	
.L190:
	j .L191
	#br label %If_Cond.276
	
.L191:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.1782 = icmp eq i32 %.middle.1783,%.middle.1784
	bnez s2 .L192
	beqz s2 .L961
	#br i1 %.middle.1782,label %If_Then.277,label %If_Else.278
	
.L192:
	j .L193
	#br label %If_Cond.280
	
.L193:
	lw t0 20(sp)
	mv s2 t0
	lw t0 20(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.1785 = icmp eq i32 %.middle.1786,%.middle.1787
	bnez s1 .L194
	beqz s1 .L959
	#br i1 %.middle.1785,label %If_Then.281,label %If_Else.282
	
.L194:
	j .L195
	#br label %If_Cond.284
	
.L195:
	lw t0 8(sp)
	mv s1 t0
	lw t0 16(sp)
	mv s0 t0
	sub s0,s1,s0
	snez s0 s0
	#%.middle.1788 = icmp ne i32 %.middle.1789,%.middle.1790
	bnez s0 .L196
	beqz s0 .L957
	#br i1 %.middle.1788,label %If_Then.285,label %If_Else.286
	
.L196:
	j .L197
	#br label %If_Cond.288
	
.L197:
	lw t0 8(sp)
	mv s0 t0
	lw t0 20(sp)
	mv a0 t0
	sub a0,s0,a0
	snez a0 a0
	#%.middle.1791 = icmp ne i32 %.middle.1792,%.middle.1793
	bnez a0 .L198
	beqz a0 .L955
	#br i1 %.middle.1791,label %If_Then.289,label %If_Else.290
	
.L198:
	j .L199
	#br label %If_Cond.292
	
.L199:
	lw t0 8(sp)
	mv a0 t0
	lw t0 16(sp)
	mv a7 t0
	add a7,a0,a7
	#%.middle.1794 = add i32 %.middle.1795,%.middle.1796
	lw t0 16(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	add a5,a6,a5
	#%.middle.1797 = add i32 %.middle.1798,%.middle.1799
	sub a5,a7,a5
	seqz a5 a5
	#%.middle.1800 = icmp eq i32 %.middle.1794,%.middle.1797
	bnez a5 .L200
	beqz a5 .L953
	#br i1 %.middle.1800,label %If_Then.293,label %If_Else.294
	
.L200:
	j .L201
	#br label %If_Cond.296
	
.L201:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.1801 = icmp eq i32 %.middle.1802,%.middle.1803
	bnez a4 .L202
	beqz a4 .L951
	#br i1 %.middle.1801,label %If_Then.297,label %If_Else.298
	
.L202:
	j .L203
	#br label %If_Cond.300
	
.L203:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.1804 = icmp eq i32 %.middle.1805,%.middle.1806
	bnez a3 .L204
	beqz a3 .L949
	#br i1 %.middle.1804,label %If_Then.301,label %If_Else.302
	
.L204:
	j .L205
	#br label %If_Cond.304
	
.L205:
	lw t0 20(sp)
	mv a3 t0
	lw t0 20(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.1807 = icmp eq i32 %.middle.1808,%.middle.1809
	bnez a2 .L206
	beqz a2 .L947
	#br i1 %.middle.1807,label %If_Then.305,label %If_Else.306
	
.L206:
	j .L207
	#br label %If_Cond.308
	
.L207:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.1810 = icmp eq i32 %.middle.1811,%.middle.1812
	bnez a1 .L208
	beqz a1 .L945
	#br i1 %.middle.1810,label %If_Then.309,label %If_Else.310
	
.L208:
	j .L209
	#br label %If_Cond.312
	
.L209:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.1813 = icmp eq i32 %.middle.1814,%.middle.1815
	bnez t6 .L210
	beqz t6 .L943
	#br i1 %.middle.1813,label %If_Then.313,label %If_Else.314
	
.L210:
	j .L211
	#br label %If_Cond.316
	
.L211:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.1816 = icmp eq i32 %.middle.1817,%.middle.1818
	bnez t5 .L212
	beqz t5 .L941
	#br i1 %.middle.1816,label %If_Then.317,label %If_Else.318
	
.L212:
	j .L213
	#br label %If_Cond.320
	
.L213:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.1819 = icmp eq i32 %.middle.1820,%.middle.1821
	bnez t4 .L214
	beqz t4 .L939
	#br i1 %.middle.1819,label %If_Then.321,label %If_Else.322
	
.L214:
	j .L215
	#br label %If_Cond.324
	
.L215:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.1822 = icmp eq i32 %.middle.1823,%.middle.1824
	bnez s2 .L216
	beqz s2 .L937
	#br i1 %.middle.1822,label %If_Then.325,label %If_Else.326
	
.L216:
	j .L217
	#br label %If_Cond.328
	
.L217:
	lw t0 20(sp)
	mv s2 t0
	lw t0 20(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.1825 = icmp eq i32 %.middle.1826,%.middle.1827
	bnez s1 .L218
	beqz s1 .L935
	#br i1 %.middle.1825,label %If_Then.329,label %If_Else.330
	
.L218:
	j .L219
	#br label %If_Cond.332
	
.L219:
	lw t0 8(sp)
	mv s1 t0
	lw t0 16(sp)
	mv s0 t0
	sub s0,s1,s0
	snez s0 s0
	#%.middle.1828 = icmp ne i32 %.middle.1829,%.middle.1830
	bnez s0 .L220
	beqz s0 .L933
	#br i1 %.middle.1828,label %If_Then.333,label %If_Else.334
	
.L220:
	j .L221
	#br label %If_Cond.336
	
.L221:
	lw t0 8(sp)
	mv s0 t0
	lw t0 20(sp)
	mv a0 t0
	sub a0,s0,a0
	snez a0 a0
	#%.middle.1831 = icmp ne i32 %.middle.1832,%.middle.1833
	bnez a0 .L222
	beqz a0 .L931
	#br i1 %.middle.1831,label %If_Then.337,label %If_Else.338
	
.L222:
	j .L223
	#br label %If_Cond.340
	
.L223:
	lw t0 8(sp)
	mv a0 t0
	lw t0 16(sp)
	mv a7 t0
	add a7,a0,a7
	#%.middle.1834 = add i32 %.middle.1835,%.middle.1836
	lw t0 16(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	add a5,a6,a5
	#%.middle.1837 = add i32 %.middle.1838,%.middle.1839
	sub a5,a7,a5
	seqz a5 a5
	#%.middle.1840 = icmp eq i32 %.middle.1834,%.middle.1837
	bnez a5 .L224
	beqz a5 .L929
	#br i1 %.middle.1840,label %If_Then.341,label %If_Else.342
	
.L224:
	j .L225
	#br label %If_Cond.344
	
.L225:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.1841 = icmp eq i32 %.middle.1842,%.middle.1843
	bnez a4 .L226
	beqz a4 .L927
	#br i1 %.middle.1841,label %If_Then.345,label %If_Else.346
	
.L226:
	j .L227
	#br label %If_Cond.348
	
.L227:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.1844 = icmp eq i32 %.middle.1845,%.middle.1846
	bnez a3 .L228
	beqz a3 .L925
	#br i1 %.middle.1844,label %If_Then.349,label %If_Else.350
	
.L228:
	j .L229
	#br label %If_Cond.352
	
.L229:
	lw t0 20(sp)
	mv a3 t0
	lw t0 20(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.1847 = icmp eq i32 %.middle.1848,%.middle.1849
	bnez a2 .L230
	beqz a2 .L923
	#br i1 %.middle.1847,label %If_Then.353,label %If_Else.354
	
.L230:
	j .L231
	#br label %If_Cond.356
	
.L231:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.1850 = icmp eq i32 %.middle.1851,%.middle.1852
	bnez a1 .L232
	beqz a1 .L921
	#br i1 %.middle.1850,label %If_Then.357,label %If_Else.358
	
.L232:
	j .L233
	#br label %If_Cond.360
	
.L233:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.1853 = icmp eq i32 %.middle.1854,%.middle.1855
	bnez t6 .L234
	beqz t6 .L919
	#br i1 %.middle.1853,label %If_Then.361,label %If_Else.362
	
.L234:
	j .L235
	#br label %If_Cond.364
	
.L235:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.1856 = icmp eq i32 %.middle.1857,%.middle.1858
	bnez t5 .L236
	beqz t5 .L917
	#br i1 %.middle.1856,label %If_Then.365,label %If_Else.366
	
.L236:
	j .L237
	#br label %If_Cond.368
	
.L237:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.1859 = icmp eq i32 %.middle.1860,%.middle.1861
	bnez t4 .L238
	beqz t4 .L915
	#br i1 %.middle.1859,label %If_Then.369,label %If_Else.370
	
.L238:
	j .L239
	#br label %If_Cond.372
	
.L239:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.1862 = icmp eq i32 %.middle.1863,%.middle.1864
	bnez s2 .L240
	beqz s2 .L913
	#br i1 %.middle.1862,label %If_Then.373,label %If_Else.374
	
.L240:
	j .L241
	#br label %If_Cond.376
	
.L241:
	lw t0 20(sp)
	mv s2 t0
	lw t0 20(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.1865 = icmp eq i32 %.middle.1866,%.middle.1867
	bnez s1 .L242
	beqz s1 .L911
	#br i1 %.middle.1865,label %If_Then.377,label %If_Else.378
	
.L242:
	j .L243
	#br label %If_Cond.380
	
.L243:
	li t0 5050
	li t1 2
	mul s1,t0,t1
	#%.middle.1868 = mul i32 5050,2
	lw t0 28(sp)
	mv s0 t0
	sub s0,s0,s1
	seqz s0 s0
	#%.middle.1869 = icmp eq i32 %.middle.1870,%.middle.1868
	bnez s0 .L244
	beqz s0 .L909
	#br i1 %.middle.1869,label %If_Then.381,label %If_Else.382
	
.L244:
	j .L245
	#br label %If_Cond.384
	
.L245:
	li t0 5050
	li t1 2
	mul s0,t0,t1
	#%.middle.1871 = mul i32 5050,2
	lw t0 28(sp)
	mv a0 t0
	sub a0,a0,s0
	seqz a0 a0
	#%.middle.1872 = icmp eq i32 %.middle.1873,%.middle.1871
	bnez a0 .L246
	beqz a0 .L907
	#br i1 %.middle.1872,label %If_Then.385,label %If_Else.386
	
.L246:
	j .L247
	#br label %If_Cond.388
	
.L247:
	li t0 5050
	li t1 2
	mul a0,t0,t1
	#%.middle.1874 = mul i32 5050,2
	lw t0 28(sp)
	mv a7 t0
	sub a7,a7,a0
	seqz a7 a7
	#%.middle.1875 = icmp eq i32 %.middle.1876,%.middle.1874
	bnez a7 .L248
	beqz a7 .L905
	#br i1 %.middle.1875,label %If_Then.389,label %If_Else.390
	
.L248:
	j .L249
	#br label %If_Cond.392
	
.L249:
	li t0 5050
	li t1 2
	mul a7,t0,t1
	#%.middle.1877 = mul i32 5050,2
	lw t0 28(sp)
	mv a6 t0
	sub a6,a6,a7
	seqz a6 a6
	#%.middle.1878 = icmp eq i32 %.middle.1879,%.middle.1877
	bnez a6 .L250
	beqz a6 .L903
	#br i1 %.middle.1878,label %If_Then.393,label %If_Else.394
	
.L250:
	j .L251
	#br label %If_Cond.396
	
.L251:
	li t0 5050
	li t1 2
	mul a6,t0,t1
	#%.middle.1880 = mul i32 5050,2
	lw t0 28(sp)
	mv a5 t0
	sub a5,a5,a6
	seqz a5 a5
	#%.middle.1881 = icmp eq i32 %.middle.1882,%.middle.1880
	bnez a5 .L252
	beqz a5 .L901
	#br i1 %.middle.1881,label %If_Then.397,label %If_Else.398
	
.L252:
	j .L253
	#br label %If_Cond.400
	
.L253:
	li t0 5050
	li t1 2
	mul a5,t0,t1
	#%.middle.1883 = mul i32 5050,2
	lw t0 28(sp)
	mv a4 t0
	sub a4,a4,a5
	seqz a4 a4
	#%.middle.1884 = icmp eq i32 %.middle.1885,%.middle.1883
	bnez a4 .L254
	beqz a4 .L899
	#br i1 %.middle.1884,label %If_Then.401,label %If_Else.402
	
.L254:
	j .L255
	#br label %If_Cond.404
	
.L255:
	li t0 5050
	li t1 2
	mul a4,t0,t1
	#%.middle.1886 = mul i32 5050,2
	lw t0 28(sp)
	mv a3 t0
	sub a3,a3,a4
	seqz a3 a3
	#%.middle.1887 = icmp eq i32 %.middle.1888,%.middle.1886
	bnez a3 .L256
	beqz a3 .L897
	#br i1 %.middle.1887,label %If_Then.405,label %If_Else.406
	
.L256:
	j .L257
	#br label %If_Cond.408
	
.L257:
	li t0 5050
	li t1 2
	mul a3,t0,t1
	#%.middle.1889 = mul i32 5050,2
	lw t0 28(sp)
	mv a2 t0
	sub a2,a2,a3
	seqz a2 a2
	#%.middle.1890 = icmp eq i32 %.middle.1891,%.middle.1889
	bnez a2 .L258
	beqz a2 .L895
	#br i1 %.middle.1890,label %If_Then.409,label %If_Else.410
	
.L258:
	j .L259
	#br label %If_Cond.412
	
.L259:
	lw t0 8(sp)
	mv a2 t0
	lw t0 16(sp)
	mv a1 t0
	sub a1,a2,a1
	snez a1 a1
	#%.middle.1892 = icmp ne i32 %.middle.1893,%.middle.1894
	bnez a1 .L260
	beqz a1 .L893
	#br i1 %.middle.1892,label %If_Then.413,label %If_Else.414
	
.L260:
	j .L261
	#br label %If_Cond.416
	
.L261:
	lw t0 8(sp)
	mv a1 t0
	lw t0 20(sp)
	mv t6 t0
	sub t6,a1,t6
	snez t6 t6
	#%.middle.1895 = icmp ne i32 %.middle.1896,%.middle.1897
	bnez t6 .L262
	beqz t6 .L891
	#br i1 %.middle.1895,label %If_Then.417,label %If_Else.418
	
.L262:
	j .L263
	#br label %If_Cond.420
	
.L263:
	lw t0 8(sp)
	mv t6 t0
	lw t0 16(sp)
	mv t5 t0
	add t5,t6,t5
	#%.middle.1898 = add i32 %.middle.1899,%.middle.1900
	lw t0 16(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	add s2,t4,s2
	#%.middle.1901 = add i32 %.middle.1902,%.middle.1903
	sub s2,t5,s2
	seqz s2 s2
	#%.middle.1904 = icmp eq i32 %.middle.1898,%.middle.1901
	bnez s2 .L264
	beqz s2 .L889
	#br i1 %.middle.1904,label %If_Then.421,label %If_Else.422
	
.L264:
	j .L265
	#br label %If_Cond.424
	
.L265:
	lw t0 8(sp)
	mv s2 t0
	lw t0 8(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.1905 = icmp eq i32 %.middle.1906,%.middle.1907
	bnez s1 .L266
	beqz s1 .L887
	#br i1 %.middle.1905,label %If_Then.425,label %If_Else.426
	
.L266:
	j .L267
	#br label %If_Cond.428
	
.L267:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.1908 = icmp eq i32 %.middle.1909,%.middle.1910
	bnez s0 .L268
	beqz s0 .L885
	#br i1 %.middle.1908,label %If_Then.429,label %If_Else.430
	
.L268:
	j .L269
	#br label %If_Cond.432
	
.L269:
	lw t0 20(sp)
	mv s0 t0
	lw t0 20(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.1911 = icmp eq i32 %.middle.1912,%.middle.1913
	bnez a0 .L270
	beqz a0 .L883
	#br i1 %.middle.1911,label %If_Then.433,label %If_Else.434
	
.L270:
	j .L271
	#br label %If_Cond.436
	
.L271:
	lw t0 8(sp)
	mv a0 t0
	lw t0 8(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.1914 = icmp eq i32 %.middle.1915,%.middle.1916
	bnez a7 .L272
	beqz a7 .L881
	#br i1 %.middle.1914,label %If_Then.437,label %If_Else.438
	
.L272:
	j .L273
	#br label %If_Cond.440
	
.L273:
	lw t0 8(sp)
	mv a7 t0
	lw t0 8(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.1917 = icmp eq i32 %.middle.1918,%.middle.1919
	bnez a6 .L274
	beqz a6 .L879
	#br i1 %.middle.1917,label %If_Then.441,label %If_Else.442
	
.L274:
	j .L275
	#br label %If_Cond.444
	
.L275:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.1920 = icmp eq i32 %.middle.1921,%.middle.1922
	bnez a5 .L276
	beqz a5 .L877
	#br i1 %.middle.1920,label %If_Then.445,label %If_Else.446
	
.L276:
	j .L277
	#br label %If_Cond.448
	
.L277:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.1923 = icmp eq i32 %.middle.1924,%.middle.1925
	bnez a4 .L278
	beqz a4 .L875
	#br i1 %.middle.1923,label %If_Then.449,label %If_Else.450
	
.L278:
	j .L279
	#br label %If_Cond.452
	
.L279:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.1926 = icmp eq i32 %.middle.1927,%.middle.1928
	bnez a3 .L280
	beqz a3 .L873
	#br i1 %.middle.1926,label %If_Then.453,label %If_Else.454
	
.L280:
	j .L281
	#br label %If_Cond.456
	
.L281:
	lw t0 20(sp)
	mv a3 t0
	lw t0 20(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.1929 = icmp eq i32 %.middle.1930,%.middle.1931
	bnez a2 .L282
	beqz a2 .L871
	#br i1 %.middle.1929,label %If_Then.457,label %If_Else.458
	
.L282:
	j .L283
	#br label %If_Cond.460
	
.L283:
	lw t0 8(sp)
	mv a2 t0
	lw t0 16(sp)
	mv a1 t0
	sub a1,a2,a1
	snez a1 a1
	#%.middle.1932 = icmp ne i32 %.middle.1933,%.middle.1934
	bnez a1 .L284
	beqz a1 .L869
	#br i1 %.middle.1932,label %If_Then.461,label %If_Else.462
	
.L284:
	j .L285
	#br label %If_Cond.464
	
.L285:
	lw t0 8(sp)
	mv a1 t0
	lw t0 20(sp)
	mv t6 t0
	sub t6,a1,t6
	snez t6 t6
	#%.middle.1935 = icmp ne i32 %.middle.1936,%.middle.1937
	bnez t6 .L286
	beqz t6 .L867
	#br i1 %.middle.1935,label %If_Then.465,label %If_Else.466
	
.L286:
	j .L287
	#br label %If_Cond.468
	
.L287:
	lw t0 8(sp)
	mv t6 t0
	lw t0 16(sp)
	mv t5 t0
	add t5,t6,t5
	#%.middle.1938 = add i32 %.middle.1939,%.middle.1940
	lw t0 16(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	add s2,t4,s2
	#%.middle.1941 = add i32 %.middle.1942,%.middle.1943
	sub s2,t5,s2
	seqz s2 s2
	#%.middle.1944 = icmp eq i32 %.middle.1938,%.middle.1941
	bnez s2 .L288
	beqz s2 .L865
	#br i1 %.middle.1944,label %If_Then.469,label %If_Else.470
	
.L288:
	j .L289
	#br label %If_Cond.472
	
.L289:
	lw t0 8(sp)
	mv s2 t0
	lw t0 8(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.1945 = icmp eq i32 %.middle.1946,%.middle.1947
	bnez s1 .L290
	beqz s1 .L863
	#br i1 %.middle.1945,label %If_Then.473,label %If_Else.474
	
.L290:
	j .L291
	#br label %If_Cond.476
	
.L291:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.1948 = icmp eq i32 %.middle.1949,%.middle.1950
	bnez s0 .L292
	beqz s0 .L861
	#br i1 %.middle.1948,label %If_Then.477,label %If_Else.478
	
.L292:
	j .L293
	#br label %If_Cond.480
	
.L293:
	lw t0 20(sp)
	mv s0 t0
	lw t0 20(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.1951 = icmp eq i32 %.middle.1952,%.middle.1953
	bnez a0 .L294
	beqz a0 .L859
	#br i1 %.middle.1951,label %If_Then.481,label %If_Else.482
	
.L294:
	j .L295
	#br label %If_Cond.484
	
.L295:
	lw t0 8(sp)
	mv a0 t0
	lw t0 8(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.1954 = icmp eq i32 %.middle.1955,%.middle.1956
	bnez a7 .L296
	beqz a7 .L857
	#br i1 %.middle.1954,label %If_Then.485,label %If_Else.486
	
.L296:
	j .L297
	#br label %If_Cond.488
	
.L297:
	lw t0 8(sp)
	mv a7 t0
	lw t0 8(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.1957 = icmp eq i32 %.middle.1958,%.middle.1959
	bnez a6 .L298
	beqz a6 .L855
	#br i1 %.middle.1957,label %If_Then.489,label %If_Else.490
	
.L298:
	j .L299
	#br label %If_Cond.492
	
.L299:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.1960 = icmp eq i32 %.middle.1961,%.middle.1962
	bnez a5 .L300
	beqz a5 .L853
	#br i1 %.middle.1960,label %If_Then.493,label %If_Else.494
	
.L300:
	j .L301
	#br label %If_Cond.496
	
.L301:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.1963 = icmp eq i32 %.middle.1964,%.middle.1965
	bnez a4 .L302
	beqz a4 .L851
	#br i1 %.middle.1963,label %If_Then.497,label %If_Else.498
	
.L302:
	j .L303
	#br label %If_Cond.500
	
.L303:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.1966 = icmp eq i32 %.middle.1967,%.middle.1968
	bnez a3 .L304
	beqz a3 .L849
	#br i1 %.middle.1966,label %If_Then.501,label %If_Else.502
	
.L304:
	j .L305
	#br label %If_Cond.504
	
.L305:
	lw t0 20(sp)
	mv a3 t0
	lw t0 20(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.1969 = icmp eq i32 %.middle.1970,%.middle.1971
	bnez a2 .L306
	beqz a2 .L847
	#br i1 %.middle.1969,label %If_Then.505,label %If_Else.506
	
.L306:
	j .L307
	#br label %If_Cond.508
	
.L307:
	li t0 5050
	li t1 2
	mul a2,t0,t1
	#%.middle.1972 = mul i32 5050,2
	lw t0 28(sp)
	mv a1 t0
	sub a1,a1,a2
	seqz a1 a1
	#%.middle.1973 = icmp eq i32 %.middle.1974,%.middle.1972
	bnez a1 .L308
	beqz a1 .L845
	#br i1 %.middle.1973,label %If_Then.509,label %If_Else.510
	
.L308:
	j .L309
	#br label %If_Cond.512
	
.L309:
	li t0 5050
	li t1 2
	mul a1,t0,t1
	#%.middle.1975 = mul i32 5050,2
	lw t0 28(sp)
	mv t6 t0
	sub t6,t6,a1
	seqz t6 t6
	#%.middle.1976 = icmp eq i32 %.middle.1977,%.middle.1975
	bnez t6 .L310
	beqz t6 .L843
	#br i1 %.middle.1976,label %If_Then.513,label %If_Else.514
	
.L310:
	j .L311
	#br label %If_Cond.516
	
.L311:
	li t0 5050
	li t1 2
	mul t6,t0,t1
	#%.middle.1978 = mul i32 5050,2
	lw t0 28(sp)
	mv t5 t0
	sub t5,t5,t6
	seqz t5 t5
	#%.middle.1979 = icmp eq i32 %.middle.1980,%.middle.1978
	bnez t5 .L312
	beqz t5 .L841
	#br i1 %.middle.1979,label %If_Then.517,label %If_Else.518
	
.L312:
	j .L313
	#br label %If_Cond.520
	
.L313:
	li t0 5050
	li t1 2
	mul t5,t0,t1
	#%.middle.1981 = mul i32 5050,2
	lw t0 28(sp)
	mv t4 t0
	sub t4,t4,t5
	seqz t4 t4
	#%.middle.1982 = icmp eq i32 %.middle.1983,%.middle.1981
	bnez t4 .L314
	beqz t4 .L839
	#br i1 %.middle.1982,label %If_Then.521,label %If_Else.522
	
.L314:
	j .L315
	#br label %If_Cond.524
	
.L315:
	li t0 5050
	li t1 2
	mul t4,t0,t1
	#%.middle.1984 = mul i32 5050,2
	lw t0 28(sp)
	mv s2 t0
	sub s2,s2,t4
	seqz s2 s2
	#%.middle.1985 = icmp eq i32 %.middle.1986,%.middle.1984
	bnez s2 .L316
	beqz s2 .L837
	#br i1 %.middle.1985,label %If_Then.525,label %If_Else.526
	
.L316:
	j .L317
	#br label %If_Cond.528
	
.L317:
	li t0 5050
	li t1 2
	mul s2,t0,t1
	#%.middle.1987 = mul i32 5050,2
	lw t0 28(sp)
	mv s1 t0
	sub s1,s1,s2
	seqz s1 s1
	#%.middle.1988 = icmp eq i32 %.middle.1989,%.middle.1987
	bnez s1 .L318
	beqz s1 .L835
	#br i1 %.middle.1988,label %If_Then.529,label %If_Else.530
	
.L318:
	j .L319
	#br label %If_Cond.532
	
.L319:
	li t0 5050
	li t1 2
	mul s1,t0,t1
	#%.middle.1990 = mul i32 5050,2
	lw t0 28(sp)
	mv s0 t0
	sub s0,s0,s1
	seqz s0 s0
	#%.middle.1991 = icmp eq i32 %.middle.1992,%.middle.1990
	bnez s0 .L320
	beqz s0 .L833
	#br i1 %.middle.1991,label %If_Then.533,label %If_Else.534
	
.L320:
	j .L321
	#br label %If_Cond.536
	
.L321:
	li t0 5050
	li t1 2
	mul s0,t0,t1
	#%.middle.1993 = mul i32 5050,2
	lw t0 28(sp)
	mv a0 t0
	sub a0,a0,s0
	seqz a0 a0
	#%.middle.1994 = icmp eq i32 %.middle.1995,%.middle.1993
	bnez a0 .L322
	beqz a0 .L831
	#br i1 %.middle.1994,label %If_Then.537,label %If_Else.538
	
.L322:
	j .L323
	#br label %If_Cond.540
	
.L323:
	li t0 5050
	li t1 2
	mul a0,t0,t1
	#%.middle.1996 = mul i32 5050,2
	lw t0 28(sp)
	mv a7 t0
	sub a7,a7,a0
	seqz a7 a7
	#%.middle.1997 = icmp eq i32 %.middle.1998,%.middle.1996
	bnez a7 .L324
	beqz a7 .L829
	#br i1 %.middle.1997,label %If_Then.541,label %If_Else.542
	
.L324:
	j .L325
	#br label %If_Cond.544
	
.L325:
	li t0 5050
	li t1 2
	mul a7,t0,t1
	#%.middle.1999 = mul i32 5050,2
	lw t0 28(sp)
	mv a6 t0
	sub a6,a6,a7
	seqz a6 a6
	#%.middle.2000 = icmp eq i32 %.middle.2001,%.middle.1999
	bnez a6 .L326
	beqz a6 .L827
	#br i1 %.middle.2000,label %If_Then.545,label %If_Else.546
	
.L326:
	j .L327
	#br label %If_Cond.548
	
.L327:
	li t0 5050
	li t1 2
	mul a6,t0,t1
	#%.middle.2002 = mul i32 5050,2
	lw t0 28(sp)
	mv a5 t0
	sub a5,a5,a6
	seqz a5 a5
	#%.middle.2003 = icmp eq i32 %.middle.2004,%.middle.2002
	bnez a5 .L328
	beqz a5 .L825
	#br i1 %.middle.2003,label %If_Then.549,label %If_Else.550
	
.L328:
	j .L329
	#br label %If_Cond.552
	
.L329:
	li t0 5050
	li t1 2
	mul a5,t0,t1
	#%.middle.2005 = mul i32 5050,2
	lw t0 28(sp)
	mv a4 t0
	sub a4,a4,a5
	seqz a4 a4
	#%.middle.2006 = icmp eq i32 %.middle.2007,%.middle.2005
	bnez a4 .L330
	beqz a4 .L823
	#br i1 %.middle.2006,label %If_Then.553,label %If_Else.554
	
.L330:
	j .L331
	#br label %If_Cond.556
	
.L331:
	li t0 5050
	li t1 2
	mul a4,t0,t1
	#%.middle.2008 = mul i32 5050,2
	lw t0 28(sp)
	mv a3 t0
	sub a3,a3,a4
	seqz a3 a3
	#%.middle.2009 = icmp eq i32 %.middle.2010,%.middle.2008
	bnez a3 .L332
	beqz a3 .L821
	#br i1 %.middle.2009,label %If_Then.557,label %If_Else.558
	
.L332:
	j .L333
	#br label %If_Cond.560
	
.L333:
	li t0 5050
	li t1 2
	mul a3,t0,t1
	#%.middle.2011 = mul i32 5050,2
	lw t0 28(sp)
	mv a2 t0
	sub a2,a2,a3
	seqz a2 a2
	#%.middle.2012 = icmp eq i32 %.middle.2013,%.middle.2011
	bnez a2 .L334
	beqz a2 .L819
	#br i1 %.middle.2012,label %If_Then.561,label %If_Else.562
	
.L334:
	j .L335
	#br label %If_Cond.564
	
.L335:
	li t0 5050
	li t1 2
	mul a2,t0,t1
	#%.middle.2014 = mul i32 5050,2
	lw t0 28(sp)
	mv a1 t0
	sub a1,a1,a2
	seqz a1 a1
	#%.middle.2015 = icmp eq i32 %.middle.2016,%.middle.2014
	bnez a1 .L336
	beqz a1 .L817
	#br i1 %.middle.2015,label %If_Then.565,label %If_Else.566
	
.L336:
	j .L337
	#br label %If_Cond.568
	
.L337:
	li t0 5050
	li t1 2
	mul a1,t0,t1
	#%.middle.2017 = mul i32 5050,2
	lw t0 28(sp)
	mv t6 t0
	sub t6,t6,a1
	seqz t6 t6
	#%.middle.2018 = icmp eq i32 %.middle.2019,%.middle.2017
	bnez t6 .L338
	beqz t6 .L815
	#br i1 %.middle.2018,label %If_Then.569,label %If_Else.570
	
.L338:
	j .L339
	#br label %If_Cond.572
	
.L339:
	li t0 5050
	li t1 2
	mul t6,t0,t1
	#%.middle.2020 = mul i32 5050,2
	lw t0 28(sp)
	mv t5 t0
	sub t5,t5,t6
	seqz t5 t5
	#%.middle.2021 = icmp eq i32 %.middle.2022,%.middle.2020
	bnez t5 .L340
	beqz t5 .L813
	#br i1 %.middle.2021,label %If_Then.573,label %If_Else.574
	
.L340:
	j .L341
	#br label %If_Cond.576
	
.L341:
	li t0 5050
	li t1 2
	mul t5,t0,t1
	#%.middle.2023 = mul i32 5050,2
	lw t0 28(sp)
	mv t4 t0
	sub t4,t4,t5
	seqz t4 t4
	#%.middle.2024 = icmp eq i32 %.middle.2025,%.middle.2023
	bnez t4 .L342
	beqz t4 .L811
	#br i1 %.middle.2024,label %If_Then.577,label %If_Else.578
	
.L342:
	j .L343
	#br label %If_Cond.580
	
.L343:
	li t0 5050
	li t1 2
	mul t4,t0,t1
	#%.middle.2026 = mul i32 5050,2
	lw t0 28(sp)
	mv s2 t0
	sub s2,s2,t4
	seqz s2 s2
	#%.middle.2027 = icmp eq i32 %.middle.2028,%.middle.2026
	bnez s2 .L344
	beqz s2 .L809
	#br i1 %.middle.2027,label %If_Then.581,label %If_Else.582
	
.L344:
	j .L345
	#br label %If_Cond.584
	
.L345:
	li t0 5050
	li t1 2
	mul s2,t0,t1
	#%.middle.2029 = mul i32 5050,2
	lw t0 28(sp)
	mv s1 t0
	sub s1,s1,s2
	seqz s1 s1
	#%.middle.2030 = icmp eq i32 %.middle.2031,%.middle.2029
	bnez s1 .L346
	beqz s1 .L807
	#br i1 %.middle.2030,label %If_Then.585,label %If_Else.586
	
.L346:
	j .L347
	#br label %If_Cond.588
	
.L347:
	li t0 5050
	li t1 2
	mul s1,t0,t1
	#%.middle.2032 = mul i32 5050,2
	lw t0 28(sp)
	mv s0 t0
	sub s0,s0,s1
	seqz s0 s0
	#%.middle.2033 = icmp eq i32 %.middle.2034,%.middle.2032
	bnez s0 .L348
	beqz s0 .L805
	#br i1 %.middle.2033,label %If_Then.589,label %If_Else.590
	
.L348:
	j .L349
	#br label %If_Cond.592
	
.L349:
	li t0 5050
	li t1 2
	mul s0,t0,t1
	#%.middle.2035 = mul i32 5050,2
	lw t0 28(sp)
	mv a0 t0
	sub a0,a0,s0
	seqz a0 a0
	#%.middle.2036 = icmp eq i32 %.middle.2037,%.middle.2035
	bnez a0 .L350
	beqz a0 .L803
	#br i1 %.middle.2036,label %If_Then.593,label %If_Else.594
	
.L350:
	j .L351
	#br label %If_Cond.596
	
.L351:
	li t0 5050
	li t1 2
	mul a0,t0,t1
	#%.middle.2038 = mul i32 5050,2
	lw t0 28(sp)
	mv a7 t0
	sub a7,a7,a0
	seqz a7 a7
	#%.middle.2039 = icmp eq i32 %.middle.2040,%.middle.2038
	bnez a7 .L352
	beqz a7 .L801
	#br i1 %.middle.2039,label %If_Then.597,label %If_Else.598
	
.L352:
	j .L353
	#br label %If_Cond.600
	
.L353:
	li t0 5050
	li t1 2
	mul a7,t0,t1
	#%.middle.2041 = mul i32 5050,2
	lw t0 28(sp)
	mv a6 t0
	sub a6,a6,a7
	seqz a6 a6
	#%.middle.2042 = icmp eq i32 %.middle.2043,%.middle.2041
	bnez a6 .L354
	beqz a6 .L799
	#br i1 %.middle.2042,label %If_Then.601,label %If_Else.602
	
.L354:
	j .L355
	#br label %If_Cond.604
	
.L355:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.2044 = icmp eq i32 %.middle.2045,%.middle.2046
	bnez a5 .L356
	beqz a5 .L797
	#br i1 %.middle.2044,label %If_Then.605,label %If_Else.606
	
.L356:
	j .L357
	#br label %If_Cond.608
	
.L357:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.2047 = icmp eq i32 %.middle.2048,%.middle.2049
	bnez a4 .L358
	beqz a4 .L795
	#br i1 %.middle.2047,label %If_Then.609,label %If_Else.610
	
.L358:
	j .L359
	#br label %If_Cond.612
	
.L359:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.2050 = icmp eq i32 %.middle.2051,%.middle.2052
	bnez a3 .L360
	beqz a3 .L793
	#br i1 %.middle.2050,label %If_Then.613,label %If_Else.614
	
.L360:
	j .L361
	#br label %If_Cond.616
	
.L361:
	lw t0 8(sp)
	mv a3 t0
	lw t0 8(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.2053 = icmp eq i32 %.middle.2054,%.middle.2055
	bnez a2 .L362
	beqz a2 .L791
	#br i1 %.middle.2053,label %If_Then.617,label %If_Else.618
	
.L362:
	j .L363
	#br label %If_Cond.620
	
.L363:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.2056 = icmp eq i32 %.middle.2057,%.middle.2058
	bnez a1 .L364
	beqz a1 .L789
	#br i1 %.middle.2056,label %If_Then.621,label %If_Else.622
	
.L364:
	j .L365
	#br label %If_Cond.624
	
.L365:
	lw t0 20(sp)
	mv a1 t0
	lw t0 20(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.2059 = icmp eq i32 %.middle.2060,%.middle.2061
	bnez t6 .L366
	beqz t6 .L787
	#br i1 %.middle.2059,label %If_Then.625,label %If_Else.626
	
.L366:
	j .L367
	#br label %If_Cond.628
	
.L367:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.2062 = icmp eq i32 %.middle.2063,%.middle.2064
	bnez t5 .L368
	beqz t5 .L785
	#br i1 %.middle.2062,label %If_Then.629,label %If_Else.630
	
.L368:
	j .L369
	#br label %If_Cond.632
	
.L369:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.2065 = icmp eq i32 %.middle.2066,%.middle.2067
	bnez t4 .L370
	beqz t4 .L783
	#br i1 %.middle.2065,label %If_Then.633,label %If_Else.634
	
.L370:
	j .L371
	#br label %If_Cond.636
	
.L371:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.2068 = icmp eq i32 %.middle.2069,%.middle.2070
	bnez s2 .L372
	beqz s2 .L781
	#br i1 %.middle.2068,label %If_Then.637,label %If_Else.638
	
.L372:
	j .L373
	#br label %If_Cond.640
	
.L373:
	lw t0 8(sp)
	mv s2 t0
	lw t0 8(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.2071 = icmp eq i32 %.middle.2072,%.middle.2073
	bnez s1 .L374
	beqz s1 .L779
	#br i1 %.middle.2071,label %If_Then.641,label %If_Else.642
	
.L374:
	j .L375
	#br label %If_Cond.644
	
.L375:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.2074 = icmp eq i32 %.middle.2075,%.middle.2076
	bnez s0 .L376
	beqz s0 .L777
	#br i1 %.middle.2074,label %If_Then.645,label %If_Else.646
	
.L376:
	j .L377
	#br label %If_Cond.648
	
.L377:
	lw t0 20(sp)
	mv s0 t0
	lw t0 20(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.2077 = icmp eq i32 %.middle.2078,%.middle.2079
	bnez a0 .L378
	beqz a0 .L775
	#br i1 %.middle.2077,label %If_Then.649,label %If_Else.650
	
.L378:
	j .L379
	#br label %If_Cond.652
	
.L379:
	lw t0 8(sp)
	mv a0 t0
	lw t0 8(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.2080 = icmp eq i32 %.middle.2081,%.middle.2082
	bnez a7 .L380
	beqz a7 .L773
	#br i1 %.middle.2080,label %If_Then.653,label %If_Else.654
	
.L380:
	j .L381
	#br label %If_Cond.656
	
.L381:
	lw t0 8(sp)
	mv a7 t0
	lw t0 8(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.2083 = icmp eq i32 %.middle.2084,%.middle.2085
	bnez a6 .L382
	beqz a6 .L771
	#br i1 %.middle.2083,label %If_Then.657,label %If_Else.658
	
.L382:
	j .L383
	#br label %If_Cond.660
	
.L383:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.2086 = icmp eq i32 %.middle.2087,%.middle.2088
	bnez a5 .L384
	beqz a5 .L769
	#br i1 %.middle.2086,label %If_Then.661,label %If_Else.662
	
.L384:
	j .L385
	#br label %If_Cond.664
	
.L385:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.2089 = icmp eq i32 %.middle.2090,%.middle.2091
	bnez a4 .L386
	beqz a4 .L767
	#br i1 %.middle.2089,label %If_Then.665,label %If_Else.666
	
.L386:
	j .L387
	#br label %If_Cond.668
	
.L387:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.2092 = icmp eq i32 %.middle.2093,%.middle.2094
	bnez a3 .L388
	beqz a3 .L765
	#br i1 %.middle.2092,label %If_Then.669,label %If_Else.670
	
.L388:
	j .L389
	#br label %If_Cond.672
	
.L389:
	lw t0 20(sp)
	mv a3 t0
	lw t0 20(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.2095 = icmp eq i32 %.middle.2096,%.middle.2097
	bnez a2 .L390
	beqz a2 .L763
	#br i1 %.middle.2095,label %If_Then.673,label %If_Else.674
	
.L390:
	j .L391
	#br label %If_Cond.676
	
.L391:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.2098 = icmp eq i32 %.middle.2099,%.middle.2100
	bnez a1 .L392
	beqz a1 .L761
	#br i1 %.middle.2098,label %If_Then.677,label %If_Else.678
	
.L392:
	j .L393
	#br label %If_Cond.680
	
.L393:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.2101 = icmp eq i32 %.middle.2102,%.middle.2103
	bnez t6 .L394
	beqz t6 .L759
	#br i1 %.middle.2101,label %If_Then.681,label %If_Else.682
	
.L394:
	j .L395
	#br label %If_Cond.684
	
.L395:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.2104 = icmp eq i32 %.middle.2105,%.middle.2106
	bnez t5 .L396
	beqz t5 .L757
	#br i1 %.middle.2104,label %If_Then.685,label %If_Else.686
	
.L396:
	j .L397
	#br label %If_Cond.688
	
.L397:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.2107 = icmp eq i32 %.middle.2108,%.middle.2109
	bnez t4 .L398
	beqz t4 .L755
	#br i1 %.middle.2107,label %If_Then.689,label %If_Else.690
	
.L398:
	j .L399
	#br label %If_Cond.692
	
.L399:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.2110 = icmp eq i32 %.middle.2111,%.middle.2112
	bnez s2 .L400
	beqz s2 .L753
	#br i1 %.middle.2110,label %If_Then.693,label %If_Else.694
	
.L400:
	j .L401
	#br label %If_Cond.696
	
.L401:
	lw t0 20(sp)
	mv s2 t0
	lw t0 20(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.2113 = icmp eq i32 %.middle.2114,%.middle.2115
	bnez s1 .L402
	beqz s1 .L751
	#br i1 %.middle.2113,label %If_Then.697,label %If_Else.698
	
.L402:
	j .L403
	#br label %If_Cond.700
	
.L403:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.2116 = icmp eq i32 %.middle.2117,%.middle.2118
	bnez s0 .L404
	beqz s0 .L749
	#br i1 %.middle.2116,label %If_Then.701,label %If_Else.702
	
.L404:
	j .L405
	#br label %If_Cond.704
	
.L405:
	lw t0 8(sp)
	mv s0 t0
	lw t0 8(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.2119 = icmp eq i32 %.middle.2120,%.middle.2121
	bnez a0 .L406
	beqz a0 .L747
	#br i1 %.middle.2119,label %If_Then.705,label %If_Else.706
	
.L406:
	j .L407
	#br label %If_Cond.708
	
.L407:
	lw t0 8(sp)
	mv a0 t0
	lw t0 8(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.2122 = icmp eq i32 %.middle.2123,%.middle.2124
	bnez a7 .L408
	beqz a7 .L745
	#br i1 %.middle.2122,label %If_Then.709,label %If_Else.710
	
.L408:
	j .L409
	#br label %If_Cond.712
	
.L409:
	lw t0 8(sp)
	mv a7 t0
	lw t0 8(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.2125 = icmp eq i32 %.middle.2126,%.middle.2127
	bnez a6 .L410
	beqz a6 .L743
	#br i1 %.middle.2125,label %If_Then.713,label %If_Else.714
	
.L410:
	j .L411
	#br label %If_Cond.716
	
.L411:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.2128 = icmp eq i32 %.middle.2129,%.middle.2130
	bnez a5 .L412
	beqz a5 .L741
	#br i1 %.middle.2128,label %If_Then.717,label %If_Else.718
	
.L412:
	j .L413
	#br label %If_Cond.720
	
.L413:
	lw t0 20(sp)
	mv a5 t0
	lw t0 20(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.2131 = icmp eq i32 %.middle.2132,%.middle.2133
	bnez a4 .L414
	beqz a4 .L739
	#br i1 %.middle.2131,label %If_Then.721,label %If_Else.722
	
.L414:
	j .L415
	#br label %If_Cond.724
	
.L415:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.2134 = icmp eq i32 %.middle.2135,%.middle.2136
	bnez a3 .L416
	beqz a3 .L737
	#br i1 %.middle.2134,label %If_Then.725,label %If_Else.726
	
.L416:
	j .L417
	#br label %If_Cond.728
	
.L417:
	lw t0 8(sp)
	mv a3 t0
	lw t0 8(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.2137 = icmp eq i32 %.middle.2138,%.middle.2139
	bnez a2 .L418
	beqz a2 .L735
	#br i1 %.middle.2137,label %If_Then.729,label %If_Else.730
	
.L418:
	j .L419
	#br label %If_Cond.732
	
.L419:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.2140 = icmp eq i32 %.middle.2141,%.middle.2142
	bnez a1 .L420
	beqz a1 .L733
	#br i1 %.middle.2140,label %If_Then.733,label %If_Else.734
	
.L420:
	j .L421
	#br label %If_Cond.736
	
.L421:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.2143 = icmp eq i32 %.middle.2144,%.middle.2145
	bnez t6 .L422
	beqz t6 .L731
	#br i1 %.middle.2143,label %If_Then.737,label %If_Else.738
	
.L422:
	j .L423
	#br label %If_Cond.740
	
.L423:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.2146 = icmp eq i32 %.middle.2147,%.middle.2148
	bnez t5 .L424
	beqz t5 .L729
	#br i1 %.middle.2146,label %If_Then.741,label %If_Else.742
	
.L424:
	j .L425
	#br label %If_Cond.744
	
.L425:
	lw t0 20(sp)
	mv t5 t0
	lw t0 20(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.2149 = icmp eq i32 %.middle.2150,%.middle.2151
	bnez t4 .L426
	beqz t4 .L727
	#br i1 %.middle.2149,label %If_Then.745,label %If_Else.746
	
.L426:
	j .L427
	#br label %If_Cond.748
	
.L427:
	lw t0 32(sp)
	mv t4 t0
	li t1 3628800
	sub t4,t4,t1
	seqz t4 t4
	#%.middle.2152 = icmp eq i32 %.middle.2153,3628800
	bnez t4 .L428
	beqz t4 .L725
	#br i1 %.middle.2152,label %If_Then.749,label %If_Else.750
	
.L428:
	j .L429
	#br label %If_Cond.752
	
.L429:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.2154 = icmp eq i32 %.middle.2155,%.middle.2156
	bnez s2 .L430
	beqz s2 .L723
	#br i1 %.middle.2154,label %If_Then.753,label %If_Else.754
	
.L430:
	j .L431
	#br label %If_Cond.756
	
.L431:
	lw t0 8(sp)
	mv s2 t0
	lw t0 8(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.2157 = icmp eq i32 %.middle.2158,%.middle.2159
	bnez s1 .L432
	beqz s1 .L721
	#br i1 %.middle.2157,label %If_Then.757,label %If_Else.758
	
.L432:
	j .L433
	#br label %If_Cond.760
	
.L433:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.2160 = icmp eq i32 %.middle.2161,%.middle.2162
	bnez s0 .L434
	beqz s0 .L719
	#br i1 %.middle.2160,label %If_Then.761,label %If_Else.762
	
.L434:
	j .L435
	#br label %If_Cond.764
	
.L435:
	lw t0 8(sp)
	mv s0 t0
	lw t0 8(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.2163 = icmp eq i32 %.middle.2164,%.middle.2165
	bnez a0 .L436
	beqz a0 .L717
	#br i1 %.middle.2163,label %If_Then.765,label %If_Else.766
	
.L436:
	j .L437
	#br label %If_Cond.768
	
.L437:
	lw t0 8(sp)
	mv a0 t0
	lw t0 8(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.2166 = icmp eq i32 %.middle.2167,%.middle.2168
	bnez a7 .L438
	beqz a7 .L715
	#br i1 %.middle.2166,label %If_Then.769,label %If_Else.770
	
.L438:
	j .L439
	#br label %If_Cond.772
	
.L439:
	lw t0 20(sp)
	mv a7 t0
	lw t0 20(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.2169 = icmp eq i32 %.middle.2170,%.middle.2171
	bnez a6 .L440
	beqz a6 .L713
	#br i1 %.middle.2169,label %If_Then.773,label %If_Else.774
	
.L440:
	j .L441
	#br label %If_Cond.776
	
.L441:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.2172 = icmp eq i32 %.middle.2173,%.middle.2174
	bnez a5 .L442
	beqz a5 .L711
	#br i1 %.middle.2172,label %If_Then.777,label %If_Else.778
	
.L442:
	j .L443
	#br label %If_Cond.780
	
.L443:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.2175 = icmp eq i32 %.middle.2176,%.middle.2177
	bnez a4 .L444
	beqz a4 .L709
	#br i1 %.middle.2175,label %If_Then.781,label %If_Else.782
	
.L444:
	j .L445
	#br label %If_Cond.784
	
.L445:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.2178 = icmp eq i32 %.middle.2179,%.middle.2180
	bnez a3 .L446
	beqz a3 .L707
	#br i1 %.middle.2178,label %If_Then.785,label %If_Else.786
	
.L446:
	j .L447
	#br label %If_Cond.788
	
.L447:
	lw t0 8(sp)
	mv a3 t0
	lw t0 8(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.2181 = icmp eq i32 %.middle.2182,%.middle.2183
	bnez a2 .L448
	beqz a2 .L705
	#br i1 %.middle.2181,label %If_Then.789,label %If_Else.790
	
.L448:
	j .L449
	#br label %If_Cond.792
	
.L449:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.2184 = icmp eq i32 %.middle.2185,%.middle.2186
	bnez a1 .L450
	beqz a1 .L703
	#br i1 %.middle.2184,label %If_Then.793,label %If_Else.794
	
.L450:
	j .L451
	#br label %If_Cond.796
	
.L451:
	lw t0 20(sp)
	mv a1 t0
	lw t0 20(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.2187 = icmp eq i32 %.middle.2188,%.middle.2189
	bnez t6 .L452
	beqz t6 .L701
	#br i1 %.middle.2187,label %If_Then.797,label %If_Else.798
	
.L452:
	j .L453
	#br label %If_Cond.800
	
.L453:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.2190 = icmp eq i32 %.middle.2191,%.middle.2192
	bnez t5 .L454
	beqz t5 .L699
	#br i1 %.middle.2190,label %If_Then.801,label %If_Else.802
	
.L454:
	j .L455
	#br label %If_Cond.804
	
.L455:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.2193 = icmp eq i32 %.middle.2194,%.middle.2195
	bnez t4 .L456
	beqz t4 .L697
	#br i1 %.middle.2193,label %If_Then.805,label %If_Else.806
	
.L456:
	j .L457
	#br label %If_Cond.808
	
.L457:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.2196 = icmp eq i32 %.middle.2197,%.middle.2198
	bnez s2 .L458
	beqz s2 .L695
	#br i1 %.middle.2196,label %If_Then.809,label %If_Else.810
	
.L458:
	j .L459
	#br label %If_Cond.812
	
.L459:
	lw t0 8(sp)
	mv s2 t0
	lw t0 8(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.2199 = icmp eq i32 %.middle.2200,%.middle.2201
	bnez s1 .L460
	beqz s1 .L693
	#br i1 %.middle.2199,label %If_Then.813,label %If_Else.814
	
.L460:
	j .L461
	#br label %If_Cond.816
	
.L461:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.2202 = icmp eq i32 %.middle.2203,%.middle.2204
	bnez s0 .L462
	beqz s0 .L691
	#br i1 %.middle.2202,label %If_Then.817,label %If_Else.818
	
.L462:
	j .L463
	#br label %If_Cond.820
	
.L463:
	lw t0 20(sp)
	mv s0 t0
	lw t0 20(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.2205 = icmp eq i32 %.middle.2206,%.middle.2207
	bnez a0 .L464
	beqz a0 .L689
	#br i1 %.middle.2205,label %If_Then.821,label %If_Else.822
	
.L464:
	j .L465
	#br label %If_Cond.824
	
.L465:
	lw t0 8(sp)
	mv a0 t0
	lw t0 8(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.2208 = icmp eq i32 %.middle.2209,%.middle.2210
	bnez a7 .L466
	beqz a7 .L687
	#br i1 %.middle.2208,label %If_Then.825,label %If_Else.826
	
.L466:
	j .L467
	#br label %If_Cond.828
	
.L467:
	lw t0 8(sp)
	mv a7 t0
	lw t0 8(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.2211 = icmp eq i32 %.middle.2212,%.middle.2213
	bnez a6 .L468
	beqz a6 .L685
	#br i1 %.middle.2211,label %If_Then.829,label %If_Else.830
	
.L468:
	j .L469
	#br label %If_Cond.832
	
.L469:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.2214 = icmp eq i32 %.middle.2215,%.middle.2216
	bnez a5 .L470
	beqz a5 .L683
	#br i1 %.middle.2214,label %If_Then.833,label %If_Else.834
	
.L470:
	j .L471
	#br label %If_Cond.836
	
.L471:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.2217 = icmp eq i32 %.middle.2218,%.middle.2219
	bnez a4 .L472
	beqz a4 .L681
	#br i1 %.middle.2217,label %If_Then.837,label %If_Else.838
	
.L472:
	j .L473
	#br label %If_Cond.840
	
.L473:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.2220 = icmp eq i32 %.middle.2221,%.middle.2222
	bnez a3 .L474
	beqz a3 .L679
	#br i1 %.middle.2220,label %If_Then.841,label %If_Else.842
	
.L474:
	j .L475
	#br label %If_Cond.844
	
.L475:
	lw t0 20(sp)
	mv a3 t0
	lw t0 20(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.2223 = icmp eq i32 %.middle.2224,%.middle.2225
	bnez a2 .L476
	beqz a2 .L677
	#br i1 %.middle.2223,label %If_Then.845,label %If_Else.846
	
.L476:
	j .L477
	#br label %If_Cond.848
	
.L477:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.2226 = icmp eq i32 %.middle.2227,%.middle.2228
	bnez a1 .L478
	beqz a1 .L675
	#br i1 %.middle.2226,label %If_Then.849,label %If_Else.850
	
.L478:
	j .L479
	#br label %If_Cond.852
	
.L479:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.2229 = icmp eq i32 %.middle.2230,%.middle.2231
	bnez t6 .L480
	beqz t6 .L673
	#br i1 %.middle.2229,label %If_Then.853,label %If_Else.854
	
.L480:
	j .L481
	#br label %If_Cond.856
	
.L481:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.2232 = icmp eq i32 %.middle.2233,%.middle.2234
	bnez t5 .L482
	beqz t5 .L671
	#br i1 %.middle.2232,label %If_Then.857,label %If_Else.858
	
.L482:
	j .L483
	#br label %If_Cond.860
	
.L483:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.2235 = icmp eq i32 %.middle.2236,%.middle.2237
	bnez t4 .L484
	beqz t4 .L669
	#br i1 %.middle.2235,label %If_Then.861,label %If_Else.862
	
.L484:
	j .L485
	#br label %If_Cond.864
	
.L485:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.2238 = icmp eq i32 %.middle.2239,%.middle.2240
	bnez s2 .L486
	beqz s2 .L667
	#br i1 %.middle.2238,label %If_Then.865,label %If_Else.866
	
.L486:
	j .L487
	#br label %If_Cond.868
	
.L487:
	lw t0 20(sp)
	mv s2 t0
	lw t0 20(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.2241 = icmp eq i32 %.middle.2242,%.middle.2243
	bnez s1 .L488
	beqz s1 .L665
	#br i1 %.middle.2241,label %If_Then.869,label %If_Else.870
	
.L488:
	j .L489
	#br label %If_Cond.872
	
.L489:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.2244 = icmp eq i32 %.middle.2245,%.middle.2246
	bnez s0 .L490
	beqz s0 .L663
	#br i1 %.middle.2244,label %If_Then.873,label %If_Else.874
	
.L490:
	j .L491
	#br label %If_Cond.876
	
.L491:
	lw t0 8(sp)
	mv s0 t0
	lw t0 8(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.2247 = icmp eq i32 %.middle.2248,%.middle.2249
	bnez a0 .L492
	beqz a0 .L661
	#br i1 %.middle.2247,label %If_Then.877,label %If_Else.878
	
.L492:
	j .L493
	#br label %If_Cond.880
	
.L493:
	lw t0 8(sp)
	mv a0 t0
	lw t0 8(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.2250 = icmp eq i32 %.middle.2251,%.middle.2252
	bnez a7 .L494
	beqz a7 .L659
	#br i1 %.middle.2250,label %If_Then.881,label %If_Else.882
	
.L494:
	j .L495
	#br label %If_Cond.884
	
.L495:
	lw t0 8(sp)
	mv a7 t0
	lw t0 8(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.2253 = icmp eq i32 %.middle.2254,%.middle.2255
	bnez a6 .L496
	beqz a6 .L657
	#br i1 %.middle.2253,label %If_Then.885,label %If_Else.886
	
.L496:
	j .L497
	#br label %If_Cond.888
	
.L497:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.2256 = icmp eq i32 %.middle.2257,%.middle.2258
	bnez a5 .L498
	beqz a5 .L655
	#br i1 %.middle.2256,label %If_Then.889,label %If_Else.890
	
.L498:
	j .L499
	#br label %If_Cond.892
	
.L499:
	lw t0 20(sp)
	mv a5 t0
	lw t0 20(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.2259 = icmp eq i32 %.middle.2260,%.middle.2261
	bnez a4 .L500
	beqz a4 .L653
	#br i1 %.middle.2259,label %If_Then.893,label %If_Else.894
	
.L500:
	j .L501
	#br label %If_Cond.896
	
.L501:
	li t0 5050
	li t1 2
	mul a4,t0,t1
	#%.middle.2262 = mul i32 5050,2
	lw t0 28(sp)
	mv a3 t0
	sub a3,a3,a4
	seqz a3 a3
	#%.middle.2263 = icmp eq i32 %.middle.2264,%.middle.2262
	bnez a3 .L502
	beqz a3 .L651
	#br i1 %.middle.2263,label %If_Then.897,label %If_Else.898
	
.L502:
	j .L503
	#br label %If_Cond.900
	
.L503:
	lw t0 8(sp)
	mv a3 t0
	lw t0 8(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.2265 = icmp eq i32 %.middle.2266,%.middle.2267
	bnez a2 .L504
	beqz a2 .L649
	#br i1 %.middle.2265,label %If_Then.901,label %If_Else.902
	
.L504:
	j .L505
	#br label %If_Cond.904
	
.L505:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.2268 = icmp eq i32 %.middle.2269,%.middle.2270
	bnez a1 .L506
	beqz a1 .L647
	#br i1 %.middle.2268,label %If_Then.905,label %If_Else.906
	
.L506:
	j .L507
	#br label %If_Cond.908
	
.L507:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.2271 = icmp eq i32 %.middle.2272,%.middle.2273
	bnez t6 .L508
	beqz t6 .L645
	#br i1 %.middle.2271,label %If_Then.909,label %If_Else.910
	
.L508:
	j .L509
	#br label %If_Cond.912
	
.L509:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.2274 = icmp eq i32 %.middle.2275,%.middle.2276
	bnez t5 .L510
	beqz t5 .L643
	#br i1 %.middle.2274,label %If_Then.913,label %If_Else.914
	
.L510:
	j .L511
	#br label %If_Cond.916
	
.L511:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.2277 = icmp eq i32 %.middle.2278,%.middle.2279
	bnez t4 .L512
	beqz t4 .L641
	#br i1 %.middle.2277,label %If_Then.917,label %If_Else.918
	
.L512:
	j .L513
	#br label %If_Cond.920
	
.L513:
	lw t0 20(sp)
	mv t4 t0
	lw t0 20(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.2280 = icmp eq i32 %.middle.2281,%.middle.2282
	bnez s2 .L514
	beqz s2 .L639
	#br i1 %.middle.2280,label %If_Then.921,label %If_Else.922
	
.L514:
	j .L515
	#br label %If_Cond.924
	
.L515:
	lw t0 8(sp)
	mv s2 t0
	lw t0 8(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.2283 = icmp eq i32 %.middle.2284,%.middle.2285
	bnez s1 .L516
	beqz s1 .L637
	#br i1 %.middle.2283,label %If_Then.925,label %If_Else.926
	
.L516:
	j .L517
	#br label %If_Cond.928
	
.L517:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.2286 = icmp eq i32 %.middle.2287,%.middle.2288
	bnez s0 .L518
	beqz s0 .L635
	#br i1 %.middle.2286,label %If_Then.929,label %If_Else.930
	
.L518:
	j .L519
	#br label %If_Cond.932
	
.L519:
	lw t0 8(sp)
	mv s0 t0
	lw t0 8(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.2289 = icmp eq i32 %.middle.2290,%.middle.2291
	bnez a0 .L520
	beqz a0 .L633
	#br i1 %.middle.2289,label %If_Then.933,label %If_Else.934
	
.L520:
	j .L521
	#br label %If_Cond.936
	
.L521:
	lw t0 8(sp)
	mv a0 t0
	lw t0 8(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.2292 = icmp eq i32 %.middle.2293,%.middle.2294
	bnez a7 .L522
	beqz a7 .L631
	#br i1 %.middle.2292,label %If_Then.937,label %If_Else.938
	
.L522:
	j .L523
	#br label %If_Cond.940
	
.L523:
	lw t0 8(sp)
	mv a7 t0
	lw t0 8(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.2295 = icmp eq i32 %.middle.2296,%.middle.2297
	bnez a6 .L524
	beqz a6 .L629
	#br i1 %.middle.2295,label %If_Then.941,label %If_Else.942
	
.L524:
	j .L525
	#br label %If_Cond.944
	
.L525:
	lw t0 20(sp)
	mv a6 t0
	lw t0 20(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.2298 = icmp eq i32 %.middle.2299,%.middle.2300
	bnez a5 .L526
	beqz a5 .L627
	#br i1 %.middle.2298,label %If_Then.945,label %If_Else.946
	
.L526:
	j .L527
	#br label %If_Cond.948
	
.L527:
	lw t0 32(sp)
	mv a5 t0
	li t1 3628800
	sub a5,a5,t1
	seqz a5 a5
	#%.middle.2301 = icmp eq i32 %.middle.2302,3628800
	bnez a5 .L528
	beqz a5 .L625
	#br i1 %.middle.2301,label %If_Then.949,label %If_Else.950
	
.L528:
	j .L529
	#br label %If_Cond.952
	
.L529:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.2303 = icmp eq i32 %.middle.2304,%.middle.2305
	bnez a4 .L530
	beqz a4 .L623
	#br i1 %.middle.2303,label %If_Then.953,label %If_Else.954
	
.L530:
	j .L531
	#br label %If_Cond.956
	
.L531:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.2306 = icmp eq i32 %.middle.2307,%.middle.2308
	bnez a3 .L532
	beqz a3 .L621
	#br i1 %.middle.2306,label %If_Then.957,label %If_Else.958
	
.L532:
	j .L533
	#br label %If_Cond.960
	
.L533:
	lw t0 8(sp)
	mv a3 t0
	lw t0 8(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.2309 = icmp eq i32 %.middle.2310,%.middle.2311
	bnez a2 .L534
	beqz a2 .L619
	#br i1 %.middle.2309,label %If_Then.961,label %If_Else.962
	
.L534:
	j .L535
	#br label %If_Cond.964
	
.L535:
	lw t0 8(sp)
	mv a2 t0
	lw t0 8(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.2312 = icmp eq i32 %.middle.2313,%.middle.2314
	bnez a1 .L536
	beqz a1 .L617
	#br i1 %.middle.2312,label %If_Then.965,label %If_Else.966
	
.L536:
	j .L537
	#br label %If_Cond.968
	
.L537:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.2315 = icmp eq i32 %.middle.2316,%.middle.2317
	bnez t6 .L538
	beqz t6 .L615
	#br i1 %.middle.2315,label %If_Then.969,label %If_Else.970
	
.L538:
	j .L539
	#br label %If_Cond.972
	
.L539:
	lw t0 20(sp)
	mv t6 t0
	lw t0 20(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.2318 = icmp eq i32 %.middle.2319,%.middle.2320
	bnez t5 .L540
	beqz t5 .L613
	#br i1 %.middle.2318,label %If_Then.973,label %If_Else.974
	
.L540:
	j .L541
	#br label %If_Cond.976
	
.L541:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.2321 = icmp eq i32 %.middle.2322,%.middle.2323
	bnez t4 .L542
	beqz t4 .L611
	#br i1 %.middle.2321,label %If_Then.977,label %If_Else.978
	
.L542:
	j .L543
	#br label %If_Cond.980
	
.L543:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.2324 = icmp eq i32 %.middle.2325,%.middle.2326
	bnez s2 .L544
	beqz s2 .L609
	#br i1 %.middle.2324,label %If_Then.981,label %If_Else.982
	
.L544:
	j .L545
	#br label %If_Cond.984
	
.L545:
	lw t0 8(sp)
	mv s2 t0
	lw t0 8(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.2327 = icmp eq i32 %.middle.2328,%.middle.2329
	bnez s1 .L546
	beqz s1 .L607
	#br i1 %.middle.2327,label %If_Then.985,label %If_Else.986
	
.L546:
	j .L547
	#br label %If_Cond.988
	
.L547:
	lw t0 8(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.2330 = icmp eq i32 %.middle.2331,%.middle.2332
	bnez s0 .L548
	beqz s0 .L605
	#br i1 %.middle.2330,label %If_Then.989,label %If_Else.990
	
.L548:
	j .L549
	#br label %If_Cond.992
	
.L549:
	lw t0 8(sp)
	mv s0 t0
	lw t0 8(sp)
	mv a0 t0
	sub a0,s0,a0
	seqz a0 a0
	#%.middle.2333 = icmp eq i32 %.middle.2334,%.middle.2335
	bnez a0 .L550
	beqz a0 .L603
	#br i1 %.middle.2333,label %If_Then.993,label %If_Else.994
	
.L550:
	j .L551
	#br label %If_Cond.996
	
.L551:
	lw t0 20(sp)
	mv a0 t0
	lw t0 20(sp)
	mv a7 t0
	sub a7,a0,a7
	seqz a7 a7
	#%.middle.2336 = icmp eq i32 %.middle.2337,%.middle.2338
	bnez a7 .L552
	beqz a7 .L601
	#br i1 %.middle.2336,label %If_Then.997,label %If_Else.998
	
.L552:
	j .L553
	#br label %If_Cond.1000
	
.L553:
	lw t0 8(sp)
	mv a7 t0
	lw t0 8(sp)
	mv a6 t0
	sub a6,a7,a6
	seqz a6 a6
	#%.middle.2339 = icmp eq i32 %.middle.2340,%.middle.2341
	bnez a6 .L554
	beqz a6 .L599
	#br i1 %.middle.2339,label %If_Then.1001,label %If_Else.1002
	
.L554:
	j .L555
	#br label %If_Cond.1004
	
.L555:
	lw t0 8(sp)
	mv a6 t0
	lw t0 8(sp)
	mv a5 t0
	sub a5,a6,a5
	seqz a5 a5
	#%.middle.2342 = icmp eq i32 %.middle.2343,%.middle.2344
	bnez a5 .L556
	beqz a5 .L597
	#br i1 %.middle.2342,label %If_Then.1005,label %If_Else.1006
	
.L556:
	j .L557
	#br label %If_Cond.1008
	
.L557:
	lw t0 8(sp)
	mv a5 t0
	lw t0 8(sp)
	mv a4 t0
	sub a4,a5,a4
	seqz a4 a4
	#%.middle.2345 = icmp eq i32 %.middle.2346,%.middle.2347
	bnez a4 .L558
	beqz a4 .L595
	#br i1 %.middle.2345,label %If_Then.1009,label %If_Else.1010
	
.L558:
	j .L559
	#br label %If_Cond.1012
	
.L559:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a3 t0
	sub a3,a4,a3
	seqz a3 a3
	#%.middle.2348 = icmp eq i32 %.middle.2349,%.middle.2350
	bnez a3 .L560
	beqz a3 .L593
	#br i1 %.middle.2348,label %If_Then.1013,label %If_Else.1014
	
.L560:
	j .L561
	#br label %If_Cond.1016
	
.L561:
	lw t0 8(sp)
	mv a3 t0
	lw t0 8(sp)
	mv a2 t0
	sub a2,a3,a2
	seqz a2 a2
	#%.middle.2351 = icmp eq i32 %.middle.2352,%.middle.2353
	bnez a2 .L562
	beqz a2 .L591
	#br i1 %.middle.2351,label %If_Then.1017,label %If_Else.1018
	
.L562:
	j .L563
	#br label %If_Cond.1020
	
.L563:
	lw t0 20(sp)
	mv a2 t0
	lw t0 20(sp)
	mv a1 t0
	sub a1,a2,a1
	seqz a1 a1
	#%.middle.2354 = icmp eq i32 %.middle.2355,%.middle.2356
	bnez a1 .L564
	beqz a1 .L589
	#br i1 %.middle.2354,label %If_Then.1021,label %If_Else.1022
	
.L564:
	j .L565
	#br label %If_Cond.1024
	
.L565:
	lw t0 8(sp)
	mv a1 t0
	lw t0 8(sp)
	mv t6 t0
	sub t6,a1,t6
	seqz t6 t6
	#%.middle.2357 = icmp eq i32 %.middle.2358,%.middle.2359
	bnez t6 .L566
	beqz t6 .L587
	#br i1 %.middle.2357,label %If_Then.1025,label %If_Else.1026
	
.L566:
	j .L567
	#br label %If_Cond.1028
	
.L567:
	lw t0 8(sp)
	mv t6 t0
	lw t0 8(sp)
	mv t5 t0
	sub t5,t6,t5
	seqz t5 t5
	#%.middle.2360 = icmp eq i32 %.middle.2361,%.middle.2362
	bnez t5 .L568
	beqz t5 .L585
	#br i1 %.middle.2360,label %If_Then.1029,label %If_Else.1030
	
.L568:
	j .L569
	#br label %If_Cond.1032
	
.L569:
	lw t0 8(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	seqz t4 t4
	#%.middle.2363 = icmp eq i32 %.middle.2364,%.middle.2365
	bnez t4 .L570
	beqz t4 .L583
	#br i1 %.middle.2363,label %If_Then.1033,label %If_Else.1034
	
.L570:
	j .L571
	#br label %If_Cond.1036
	
.L571:
	lw t0 8(sp)
	mv t4 t0
	lw t0 8(sp)
	mv s2 t0
	sub s2,t4,s2
	seqz s2 s2
	#%.middle.2366 = icmp eq i32 %.middle.2367,%.middle.2368
	bnez s2 .L572
	beqz s2 .L581
	#br i1 %.middle.2366,label %If_Then.1037,label %If_Else.1038
	
.L572:
	j .L573
	#br label %If_Cond.1040
	
.L573:
	lw t0 8(sp)
	mv s2 t0
	lw t0 8(sp)
	mv s1 t0
	sub s1,s2,s1
	seqz s1 s1
	#%.middle.2369 = icmp eq i32 %.middle.2370,%.middle.2371
	bnez s1 .L574
	beqz s1 .L579
	#br i1 %.middle.2369,label %If_Then.1041,label %If_Else.1042
	
.L574:
	j .L575
	#br label %If_Cond.1044
	
.L575:
	lw t0 20(sp)
	mv s1 t0
	lw t0 20(sp)
	mv s0 t0
	sub s0,s1,s0
	seqz s0 s0
	#%.middle.2372 = icmp eq i32 %.middle.2373,%.middle.2374
	bnez s0 .L576
	beqz s0 .L577
	#br i1 %.middle.2372,label %If_Then.1045,label %If_Else.1046
	
.L576:
	lw t0 20(sp)
	mv s0 t0
	lw t0 20(sp)
	mv s0 t0
	li t1 1
	sub s0,s0,t1
	#%.middle.2376 = sub i32 %.middle.2377,1
	mv t0 s0
	sw t0,20(sp)
	j .L578
	#br label %If_End.1047
	
.L577:
	j .L578
	#br label %If_End.1047
	
.L578:
	j .L580
	#br label %If_End.1043
	
.L579:
	j .L580
	#br label %If_End.1043
	
.L580:
	j .L582
	#br label %If_End.1039
	
.L581:
	j .L582
	#br label %If_End.1039
	
.L582:
	j .L584
	#br label %If_End.1035
	
.L583:
	j .L584
	#br label %If_End.1035
	
.L584:
	j .L586
	#br label %If_End.1031
	
.L585:
	j .L586
	#br label %If_End.1031
	
.L586:
	j .L588
	#br label %If_End.1027
	
.L587:
	j .L588
	#br label %If_End.1027
	
.L588:
	j .L590
	#br label %If_End.1023
	
.L589:
	j .L590
	#br label %If_End.1023
	
.L590:
	j .L592
	#br label %If_End.1019
	
.L591:
	j .L592
	#br label %If_End.1019
	
.L592:
	j .L594
	#br label %If_End.1015
	
.L593:
	j .L594
	#br label %If_End.1015
	
.L594:
	j .L596
	#br label %If_End.1011
	
.L595:
	j .L596
	#br label %If_End.1011
	
.L596:
	j .L598
	#br label %If_End.1007
	
.L597:
	j .L598
	#br label %If_End.1007
	
.L598:
	j .L600
	#br label %If_End.1003
	
.L599:
	j .L600
	#br label %If_End.1003
	
.L600:
	j .L602
	#br label %If_End.999
	
.L601:
	j .L602
	#br label %If_End.999
	
.L602:
	j .L604
	#br label %If_End.995
	
.L603:
	j .L604
	#br label %If_End.995
	
.L604:
	j .L606
	#br label %If_End.991
	
.L605:
	j .L606
	#br label %If_End.991
	
.L606:
	j .L608
	#br label %If_End.987
	
.L607:
	j .L608
	#br label %If_End.987
	
.L608:
	j .L610
	#br label %If_End.983
	
.L609:
	j .L610
	#br label %If_End.983
	
.L610:
	j .L612
	#br label %If_End.979
	
.L611:
	j .L612
	#br label %If_End.979
	
.L612:
	j .L614
	#br label %If_End.975
	
.L613:
	j .L614
	#br label %If_End.975
	
.L614:
	j .L616
	#br label %If_End.971
	
.L615:
	j .L616
	#br label %If_End.971
	
.L616:
	j .L618
	#br label %If_End.967
	
.L617:
	j .L618
	#br label %If_End.967
	
.L618:
	j .L620
	#br label %If_End.963
	
.L619:
	j .L620
	#br label %If_End.963
	
.L620:
	j .L622
	#br label %If_End.959
	
.L621:
	j .L622
	#br label %If_End.959
	
.L622:
	j .L624
	#br label %If_End.955
	
.L623:
	j .L624
	#br label %If_End.955
	
.L624:
	lw t0 32(sp)
	mv s0 t0
	lw t0 32(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.2379 = add i32 %.middle.2380,1
	mv t0 s0
	sw t0,32(sp)
	j .L626
	#br label %If_End.951
	
.L625:
	j .L626
	#br label %If_End.951
	
.L626:
	j .L628
	#br label %If_End.947
	
.L627:
	j .L628
	#br label %If_End.947
	
.L628:
	j .L630
	#br label %If_End.943
	
.L629:
	j .L630
	#br label %If_End.943
	
.L630:
	j .L632
	#br label %If_End.939
	
.L631:
	j .L632
	#br label %If_End.939
	
.L632:
	j .L634
	#br label %If_End.935
	
.L633:
	j .L634
	#br label %If_End.935
	
.L634:
	j .L636
	#br label %If_End.931
	
.L635:
	j .L636
	#br label %If_End.931
	
.L636:
	j .L638
	#br label %If_End.927
	
.L637:
	j .L638
	#br label %If_End.927
	
.L638:
	j .L640
	#br label %If_End.923
	
.L639:
	j .L640
	#br label %If_End.923
	
.L640:
	j .L642
	#br label %If_End.919
	
.L641:
	j .L642
	#br label %If_End.919
	
.L642:
	j .L644
	#br label %If_End.915
	
.L643:
	j .L644
	#br label %If_End.915
	
.L644:
	j .L646
	#br label %If_End.911
	
.L645:
	j .L646
	#br label %If_End.911
	
.L646:
	j .L648
	#br label %If_End.907
	
.L647:
	j .L648
	#br label %If_End.907
	
.L648:
	j .L650
	#br label %If_End.903
	
.L649:
	j .L650
	#br label %If_End.903
	
.L650:
	j .L652
	#br label %If_End.899
	
.L651:
	j .L652
	#br label %If_End.899
	
.L652:
	j .L654
	#br label %If_End.895
	
.L653:
	j .L654
	#br label %If_End.895
	
.L654:
	j .L656
	#br label %If_End.891
	
.L655:
	j .L656
	#br label %If_End.891
	
.L656:
	j .L658
	#br label %If_End.887
	
.L657:
	j .L658
	#br label %If_End.887
	
.L658:
	j .L660
	#br label %If_End.883
	
.L659:
	j .L660
	#br label %If_End.883
	
.L660:
	j .L662
	#br label %If_End.879
	
.L661:
	j .L662
	#br label %If_End.879
	
.L662:
	j .L664
	#br label %If_End.875
	
.L663:
	j .L664
	#br label %If_End.875
	
.L664:
	j .L666
	#br label %If_End.871
	
.L665:
	j .L666
	#br label %If_End.871
	
.L666:
	j .L668
	#br label %If_End.867
	
.L667:
	j .L668
	#br label %If_End.867
	
.L668:
	j .L670
	#br label %If_End.863
	
.L669:
	j .L670
	#br label %If_End.863
	
.L670:
	j .L672
	#br label %If_End.859
	
.L671:
	j .L672
	#br label %If_End.859
	
.L672:
	j .L674
	#br label %If_End.855
	
.L673:
	j .L674
	#br label %If_End.855
	
.L674:
	j .L676
	#br label %If_End.851
	
.L675:
	j .L676
	#br label %If_End.851
	
.L676:
	j .L678
	#br label %If_End.847
	
.L677:
	j .L678
	#br label %If_End.847
	
.L678:
	j .L680
	#br label %If_End.843
	
.L679:
	j .L680
	#br label %If_End.843
	
.L680:
	j .L682
	#br label %If_End.839
	
.L681:
	j .L682
	#br label %If_End.839
	
.L682:
	j .L684
	#br label %If_End.835
	
.L683:
	j .L684
	#br label %If_End.835
	
.L684:
	j .L686
	#br label %If_End.831
	
.L685:
	j .L686
	#br label %If_End.831
	
.L686:
	j .L688
	#br label %If_End.827
	
.L687:
	j .L688
	#br label %If_End.827
	
.L688:
	j .L690
	#br label %If_End.823
	
.L689:
	j .L690
	#br label %If_End.823
	
.L690:
	j .L692
	#br label %If_End.819
	
.L691:
	j .L692
	#br label %If_End.819
	
.L692:
	j .L694
	#br label %If_End.815
	
.L693:
	j .L694
	#br label %If_End.815
	
.L694:
	j .L696
	#br label %If_End.811
	
.L695:
	j .L696
	#br label %If_End.811
	
.L696:
	j .L698
	#br label %If_End.807
	
.L697:
	j .L698
	#br label %If_End.807
	
.L698:
	j .L700
	#br label %If_End.803
	
.L699:
	j .L700
	#br label %If_End.803
	
.L700:
	j .L702
	#br label %If_End.799
	
.L701:
	j .L702
	#br label %If_End.799
	
.L702:
	j .L704
	#br label %If_End.795
	
.L703:
	j .L704
	#br label %If_End.795
	
.L704:
	j .L706
	#br label %If_End.791
	
.L705:
	j .L706
	#br label %If_End.791
	
.L706:
	j .L708
	#br label %If_End.787
	
.L707:
	j .L708
	#br label %If_End.787
	
.L708:
	j .L710
	#br label %If_End.783
	
.L709:
	j .L710
	#br label %If_End.783
	
.L710:
	j .L712
	#br label %If_End.779
	
.L711:
	j .L712
	#br label %If_End.779
	
.L712:
	j .L714
	#br label %If_End.775
	
.L713:
	j .L714
	#br label %If_End.775
	
.L714:
	j .L716
	#br label %If_End.771
	
.L715:
	j .L716
	#br label %If_End.771
	
.L716:
	j .L718
	#br label %If_End.767
	
.L717:
	j .L718
	#br label %If_End.767
	
.L718:
	j .L720
	#br label %If_End.763
	
.L719:
	j .L720
	#br label %If_End.763
	
.L720:
	j .L722
	#br label %If_End.759
	
.L721:
	j .L722
	#br label %If_End.759
	
.L722:
	j .L724
	#br label %If_End.755
	
.L723:
	j .L724
	#br label %If_End.755
	
.L724:
	j .L726
	#br label %If_End.751
	
.L725:
	j .L726
	#br label %If_End.751
	
.L726:
	j .L728
	#br label %If_End.747
	
.L727:
	j .L728
	#br label %If_End.747
	
.L728:
	j .L730
	#br label %If_End.743
	
.L729:
	j .L730
	#br label %If_End.743
	
.L730:
	j .L732
	#br label %If_End.739
	
.L731:
	j .L732
	#br label %If_End.739
	
.L732:
	j .L734
	#br label %If_End.735
	
.L733:
	j .L734
	#br label %If_End.735
	
.L734:
	j .L736
	#br label %If_End.731
	
.L735:
	j .L736
	#br label %If_End.731
	
.L736:
	j .L738
	#br label %If_End.727
	
.L737:
	j .L738
	#br label %If_End.727
	
.L738:
	j .L740
	#br label %If_End.723
	
.L739:
	j .L740
	#br label %If_End.723
	
.L740:
	j .L742
	#br label %If_End.719
	
.L741:
	j .L742
	#br label %If_End.719
	
.L742:
	j .L744
	#br label %If_End.715
	
.L743:
	j .L744
	#br label %If_End.715
	
.L744:
	j .L746
	#br label %If_End.711
	
.L745:
	j .L746
	#br label %If_End.711
	
.L746:
	j .L748
	#br label %If_End.707
	
.L747:
	j .L748
	#br label %If_End.707
	
.L748:
	j .L750
	#br label %If_End.703
	
.L749:
	j .L750
	#br label %If_End.703
	
.L750:
	j .L752
	#br label %If_End.699
	
.L751:
	j .L752
	#br label %If_End.699
	
.L752:
	j .L754
	#br label %If_End.695
	
.L753:
	j .L754
	#br label %If_End.695
	
.L754:
	j .L756
	#br label %If_End.691
	
.L755:
	j .L756
	#br label %If_End.691
	
.L756:
	j .L758
	#br label %If_End.687
	
.L757:
	j .L758
	#br label %If_End.687
	
.L758:
	j .L760
	#br label %If_End.683
	
.L759:
	j .L760
	#br label %If_End.683
	
.L760:
	j .L762
	#br label %If_End.679
	
.L761:
	j .L762
	#br label %If_End.679
	
.L762:
	j .L764
	#br label %If_End.675
	
.L763:
	j .L764
	#br label %If_End.675
	
.L764:
	j .L766
	#br label %If_End.671
	
.L765:
	j .L766
	#br label %If_End.671
	
.L766:
	j .L768
	#br label %If_End.667
	
.L767:
	j .L768
	#br label %If_End.667
	
.L768:
	j .L770
	#br label %If_End.663
	
.L769:
	j .L770
	#br label %If_End.663
	
.L770:
	j .L772
	#br label %If_End.659
	
.L771:
	j .L772
	#br label %If_End.659
	
.L772:
	j .L774
	#br label %If_End.655
	
.L773:
	j .L774
	#br label %If_End.655
	
.L774:
	j .L776
	#br label %If_End.651
	
.L775:
	j .L776
	#br label %If_End.651
	
.L776:
	j .L778
	#br label %If_End.647
	
.L777:
	j .L778
	#br label %If_End.647
	
.L778:
	j .L780
	#br label %If_End.643
	
.L779:
	j .L780
	#br label %If_End.643
	
.L780:
	j .L782
	#br label %If_End.639
	
.L781:
	j .L782
	#br label %If_End.639
	
.L782:
	j .L784
	#br label %If_End.635
	
.L783:
	j .L784
	#br label %If_End.635
	
.L784:
	j .L786
	#br label %If_End.631
	
.L785:
	j .L786
	#br label %If_End.631
	
.L786:
	j .L788
	#br label %If_End.627
	
.L787:
	j .L788
	#br label %If_End.627
	
.L788:
	j .L790
	#br label %If_End.623
	
.L789:
	j .L790
	#br label %If_End.623
	
.L790:
	j .L792
	#br label %If_End.619
	
.L791:
	j .L792
	#br label %If_End.619
	
.L792:
	j .L794
	#br label %If_End.615
	
.L793:
	j .L794
	#br label %If_End.615
	
.L794:
	j .L796
	#br label %If_End.611
	
.L795:
	j .L796
	#br label %If_End.611
	
.L796:
	j .L798
	#br label %If_End.607
	
.L797:
	j .L798
	#br label %If_End.607
	
.L798:
	j .L800
	#br label %If_End.603
	
.L799:
	j .L800
	#br label %If_End.603
	
.L800:
	j .L802
	#br label %If_End.599
	
.L801:
	j .L802
	#br label %If_End.599
	
.L802:
	j .L804
	#br label %If_End.595
	
.L803:
	j .L804
	#br label %If_End.595
	
.L804:
	j .L806
	#br label %If_End.591
	
.L805:
	j .L806
	#br label %If_End.591
	
.L806:
	j .L808
	#br label %If_End.587
	
.L807:
	j .L808
	#br label %If_End.587
	
.L808:
	j .L810
	#br label %If_End.583
	
.L809:
	j .L810
	#br label %If_End.583
	
.L810:
	j .L812
	#br label %If_End.579
	
.L811:
	j .L812
	#br label %If_End.579
	
.L812:
	j .L814
	#br label %If_End.575
	
.L813:
	j .L814
	#br label %If_End.575
	
.L814:
	j .L816
	#br label %If_End.571
	
.L815:
	j .L816
	#br label %If_End.571
	
.L816:
	j .L818
	#br label %If_End.567
	
.L817:
	j .L818
	#br label %If_End.567
	
.L818:
	j .L820
	#br label %If_End.563
	
.L819:
	j .L820
	#br label %If_End.563
	
.L820:
	j .L822
	#br label %If_End.559
	
.L821:
	j .L822
	#br label %If_End.559
	
.L822:
	j .L824
	#br label %If_End.555
	
.L823:
	j .L824
	#br label %If_End.555
	
.L824:
	j .L826
	#br label %If_End.551
	
.L825:
	j .L826
	#br label %If_End.551
	
.L826:
	j .L828
	#br label %If_End.547
	
.L827:
	j .L828
	#br label %If_End.547
	
.L828:
	j .L830
	#br label %If_End.543
	
.L829:
	j .L830
	#br label %If_End.543
	
.L830:
	j .L832
	#br label %If_End.539
	
.L831:
	j .L832
	#br label %If_End.539
	
.L832:
	j .L834
	#br label %If_End.535
	
.L833:
	j .L834
	#br label %If_End.535
	
.L834:
	j .L836
	#br label %If_End.531
	
.L835:
	j .L836
	#br label %If_End.531
	
.L836:
	j .L838
	#br label %If_End.527
	
.L837:
	j .L838
	#br label %If_End.527
	
.L838:
	j .L840
	#br label %If_End.523
	
.L839:
	j .L840
	#br label %If_End.523
	
.L840:
	j .L842
	#br label %If_End.519
	
.L841:
	j .L842
	#br label %If_End.519
	
.L842:
	j .L844
	#br label %If_End.515
	
.L843:
	j .L844
	#br label %If_End.515
	
.L844:
	j .L846
	#br label %If_End.511
	
.L845:
	j .L846
	#br label %If_End.511
	
.L846:
	j .L848
	#br label %If_End.507
	
.L847:
	j .L848
	#br label %If_End.507
	
.L848:
	j .L850
	#br label %If_End.503
	
.L849:
	j .L850
	#br label %If_End.503
	
.L850:
	j .L852
	#br label %If_End.499
	
.L851:
	j .L852
	#br label %If_End.499
	
.L852:
	j .L854
	#br label %If_End.495
	
.L853:
	j .L854
	#br label %If_End.495
	
.L854:
	j .L856
	#br label %If_End.491
	
.L855:
	j .L856
	#br label %If_End.491
	
.L856:
	j .L858
	#br label %If_End.487
	
.L857:
	j .L858
	#br label %If_End.487
	
.L858:
	j .L860
	#br label %If_End.483
	
.L859:
	j .L860
	#br label %If_End.483
	
.L860:
	j .L862
	#br label %If_End.479
	
.L861:
	j .L862
	#br label %If_End.479
	
.L862:
	j .L864
	#br label %If_End.475
	
.L863:
	j .L864
	#br label %If_End.475
	
.L864:
	j .L866
	#br label %If_End.471
	
.L865:
	j .L866
	#br label %If_End.471
	
.L866:
	j .L868
	#br label %If_End.467
	
.L867:
	j .L868
	#br label %If_End.467
	
.L868:
	j .L870
	#br label %If_End.463
	
.L869:
	j .L870
	#br label %If_End.463
	
.L870:
	j .L872
	#br label %If_End.459
	
.L871:
	j .L872
	#br label %If_End.459
	
.L872:
	j .L874
	#br label %If_End.455
	
.L873:
	j .L874
	#br label %If_End.455
	
.L874:
	j .L876
	#br label %If_End.451
	
.L875:
	j .L876
	#br label %If_End.451
	
.L876:
	j .L878
	#br label %If_End.447
	
.L877:
	j .L878
	#br label %If_End.447
	
.L878:
	j .L880
	#br label %If_End.443
	
.L879:
	j .L880
	#br label %If_End.443
	
.L880:
	j .L882
	#br label %If_End.439
	
.L881:
	j .L882
	#br label %If_End.439
	
.L882:
	j .L884
	#br label %If_End.435
	
.L883:
	j .L884
	#br label %If_End.435
	
.L884:
	j .L886
	#br label %If_End.431
	
.L885:
	j .L886
	#br label %If_End.431
	
.L886:
	j .L888
	#br label %If_End.427
	
.L887:
	j .L888
	#br label %If_End.427
	
.L888:
	j .L890
	#br label %If_End.423
	
.L889:
	j .L890
	#br label %If_End.423
	
.L890:
	j .L892
	#br label %If_End.419
	
.L891:
	j .L892
	#br label %If_End.419
	
.L892:
	j .L894
	#br label %If_End.415
	
.L893:
	j .L894
	#br label %If_End.415
	
.L894:
	j .L896
	#br label %If_End.411
	
.L895:
	j .L896
	#br label %If_End.411
	
.L896:
	j .L898
	#br label %If_End.407
	
.L897:
	j .L898
	#br label %If_End.407
	
.L898:
	j .L900
	#br label %If_End.403
	
.L899:
	j .L900
	#br label %If_End.403
	
.L900:
	j .L902
	#br label %If_End.399
	
.L901:
	j .L902
	#br label %If_End.399
	
.L902:
	j .L904
	#br label %If_End.395
	
.L903:
	j .L904
	#br label %If_End.395
	
.L904:
	j .L906
	#br label %If_End.391
	
.L905:
	j .L906
	#br label %If_End.391
	
.L906:
	j .L908
	#br label %If_End.387
	
.L907:
	j .L908
	#br label %If_End.387
	
.L908:
	j .L910
	#br label %If_End.383
	
.L909:
	j .L910
	#br label %If_End.383
	
.L910:
	j .L912
	#br label %If_End.379
	
.L911:
	j .L912
	#br label %If_End.379
	
.L912:
	j .L914
	#br label %If_End.375
	
.L913:
	j .L914
	#br label %If_End.375
	
.L914:
	j .L916
	#br label %If_End.371
	
.L915:
	j .L916
	#br label %If_End.371
	
.L916:
	j .L918
	#br label %If_End.367
	
.L917:
	j .L918
	#br label %If_End.367
	
.L918:
	j .L920
	#br label %If_End.363
	
.L919:
	j .L920
	#br label %If_End.363
	
.L920:
	j .L922
	#br label %If_End.359
	
.L921:
	j .L922
	#br label %If_End.359
	
.L922:
	j .L924
	#br label %If_End.355
	
.L923:
	j .L924
	#br label %If_End.355
	
.L924:
	j .L926
	#br label %If_End.351
	
.L925:
	j .L926
	#br label %If_End.351
	
.L926:
	j .L928
	#br label %If_End.347
	
.L927:
	j .L928
	#br label %If_End.347
	
.L928:
	j .L930
	#br label %If_End.343
	
.L929:
	j .L930
	#br label %If_End.343
	
.L930:
	j .L932
	#br label %If_End.339
	
.L931:
	j .L932
	#br label %If_End.339
	
.L932:
	j .L934
	#br label %If_End.335
	
.L933:
	j .L934
	#br label %If_End.335
	
.L934:
	j .L936
	#br label %If_End.331
	
.L935:
	j .L936
	#br label %If_End.331
	
.L936:
	j .L938
	#br label %If_End.327
	
.L937:
	j .L938
	#br label %If_End.327
	
.L938:
	j .L940
	#br label %If_End.323
	
.L939:
	j .L940
	#br label %If_End.323
	
.L940:
	j .L942
	#br label %If_End.319
	
.L941:
	j .L942
	#br label %If_End.319
	
.L942:
	j .L944
	#br label %If_End.315
	
.L943:
	j .L944
	#br label %If_End.315
	
.L944:
	j .L946
	#br label %If_End.311
	
.L945:
	j .L946
	#br label %If_End.311
	
.L946:
	j .L948
	#br label %If_End.307
	
.L947:
	j .L948
	#br label %If_End.307
	
.L948:
	j .L950
	#br label %If_End.303
	
.L949:
	j .L950
	#br label %If_End.303
	
.L950:
	j .L952
	#br label %If_End.299
	
.L951:
	j .L952
	#br label %If_End.299
	
.L952:
	j .L954
	#br label %If_End.295
	
.L953:
	j .L954
	#br label %If_End.295
	
.L954:
	j .L956
	#br label %If_End.291
	
.L955:
	j .L956
	#br label %If_End.291
	
.L956:
	j .L958
	#br label %If_End.287
	
.L957:
	j .L958
	#br label %If_End.287
	
.L958:
	j .L960
	#br label %If_End.283
	
.L959:
	j .L960
	#br label %If_End.283
	
.L960:
	j .L962
	#br label %If_End.279
	
.L961:
	j .L962
	#br label %If_End.279
	
.L962:
	j .L964
	#br label %If_End.275
	
.L963:
	j .L964
	#br label %If_End.275
	
.L964:
	j .L966
	#br label %If_End.271
	
.L965:
	j .L966
	#br label %If_End.271
	
.L966:
	j .L968
	#br label %If_End.267
	
.L967:
	j .L968
	#br label %If_End.267
	
.L968:
	j .L970
	#br label %If_End.263
	
.L969:
	j .L970
	#br label %If_End.263
	
.L970:
	j .L972
	#br label %If_End.259
	
.L971:
	j .L972
	#br label %If_End.259
	
.L972:
	j .L974
	#br label %If_End.255
	
.L973:
	j .L974
	#br label %If_End.255
	
.L974:
	j .L976
	#br label %If_End.251
	
.L975:
	j .L976
	#br label %If_End.251
	
.L976:
	j .L978
	#br label %If_End.247
	
.L977:
	j .L978
	#br label %If_End.247
	
.L978:
	j .L980
	#br label %If_End.243
	
.L979:
	j .L980
	#br label %If_End.243
	
.L980:
	j .L982
	#br label %If_End.239
	
.L981:
	j .L982
	#br label %If_End.239
	
.L982:
	j .L984
	#br label %If_End.235
	
.L983:
	j .L984
	#br label %If_End.235
	
.L984:
	j .L986
	#br label %If_End.231
	
.L985:
	j .L986
	#br label %If_End.231
	
.L986:
	j .L988
	#br label %If_End.227
	
.L987:
	j .L988
	#br label %If_End.227
	
.L988:
	j .L990
	#br label %If_End.223
	
.L989:
	j .L990
	#br label %If_End.223
	
.L990:
	j .L992
	#br label %If_End.219
	
.L991:
	j .L992
	#br label %If_End.219
	
.L992:
	j .L994
	#br label %If_End.215
	
.L993:
	j .L994
	#br label %If_End.215
	
.L994:
	j .L996
	#br label %If_End.211
	
.L995:
	j .L996
	#br label %If_End.211
	
.L996:
	j .L998
	#br label %If_End.207
	
.L997:
	j .L998
	#br label %If_End.207
	
.L998:
	j .L1000
	#br label %If_End.203
	
.L999:
	j .L1000
	#br label %If_End.203
	
.L1000:
	j .L1002
	#br label %If_End.199
	
.L1001:
	j .L1002
	#br label %If_End.199
	
.L1002:
	j .L1004
	#br label %If_End.195
	
.L1003:
	j .L1004
	#br label %If_End.195
	
.L1004:
	j .L1006
	#br label %If_End.191
	
.L1005:
	j .L1006
	#br label %If_End.191
	
.L1006:
	li t0 1919
	sw t0,0(sp)
	j .func.naivedce.Exit
	#br label %Exit.170
	
.func.naivedce.Exit:
	mv s11 t3
	mv s10 tp
	mv s9 gp
	mv s8 ra
	mv s7 s11
	mv s6 s10
	mv s5 s9
	mv s4 s8
	mv s3 s7
	mv s2 s6
	mv s1 s5
	mv s0 s4
	lw t0 0(sp)
	mv a0 t0
	mv ra s3
	addi sp,sp,36
	ret
	#ret i32 %.retval
	

    .globl .func.dceconst
.func.dceconst:


addi sp,sp,-36
	mv gp s11
	mv ra s10
	mv s11 s9
	mv s10 s8
	mv s9 s7
	mv s8 s6
	mv s7 s5
	mv s6 s4
	mv s5 s3
	mv s4 s2
	mv s3 s1
	mv s2 s0
	mv s1 ra
	#%c.0=alloca i32
	j .L1007
	#br label %.block.1050
	
.L1007:
	li t0 114514
	sw t0,16(sp)
	li t0 0
	sw t0,4(sp)
	j .L1008
	#br label %For_Cond.1051
	
.L1008:
	lw t0 4(sp)
	mv s0 t0
	lw t0 N.0
	mv a1 t0
	slt a1 s0,a1
	#%.middle.2382 = icmp slt i32 %.middle.2383,%.middle.2384
	bnez a1 .L1009
	beqz a1 .L1015
	#br i1 %.middle.2382,label %For_Body.1053,label %For_End.1052
	
.L1009:
	li t0 0
	sw t0,8(sp)
	j .L1010
	#br label %For_Cond.1055
	
.L1010:
	lw t0 8(sp)
	mv a1 t0
	lw t0 N.0
	mv a5 t0
	slt a5 a1,a5
	#%.middle.2386 = icmp slt i32 %.middle.2387,%.middle.2388
	bnez a5 .L1011
	beqz a5 .L1013
	#br i1 %.middle.2386,label %For_Body.1057,label %For_End.1056
	
.L1011:
	lw t0 4(sp)
	mv a5 t0
	lw t0 8(sp)
	mv t5 t0
	add t5,a5,t5
	#%.middle.2389 = add i32 %.middle.2390,%.middle.2391
	mv t0 t5
	sw t0,24(sp)
	lw t0 4(sp)
	mv t5 t0
	lw t0 8(sp)
	mv t4 t0
	sub t4,t5,t4
	#%.middle.2392 = sub i32 %.middle.2393,%.middle.2394
	mv t0 t4
	sw t0,28(sp)
	lw t0 4(sp)
	mv t4 t0
	lw t0 8(sp)
	mv a7 t0
	add a7,t4,a7
	#%.middle.2395 = add i32 %.middle.2396,%.middle.2397
	lw t0 4(sp)
	mv a0 t0
	sub a0,a7,a0
	#%.middle.2398 = sub i32 %.middle.2395,%.middle.2399
	mv t0 a0
	sw t0,32(sp)
	lw t0 32(sp)
	mv a0 t0
	lw t0 32(sp)
	mv a6 t0
	mul a6,a0,a6
	#%.middle.2400 = mul i32 %.middle.2401,%.middle.2402
	mv t0 a6
	sw t0,32(sp)
	lw t0 32(sp)
	mv a6 t0
	lw t0 N.0
	mv a4 t0
	div a4,a6,a4
	#%.middle.2404 = sdiv i32 %.middle.2405,%.middle.2406
	mv t0 a4
	sw t0,32(sp)
	j .L1012
	#br label %For_Change.1058
	
.L1012:
	lw t0 8(sp)
	mv a4 t0
	lw t0 8(sp)
	mv a4 t0
	li t1 1
	add a4,a4,t1
	#%.middle.2409 = add i32 %.middle.2410,1
	mv t0 a4
	sw t0,8(sp)
	j .L1010
	#br label %For_Cond.1055
	
.L1013:
	j .L1014
	#br label %For_Change.1054
	
.L1014:
	lw t0 4(sp)
	mv a4 t0
	lw t0 4(sp)
	mv a4 t0
	li t1 1
	add a4,a4,t1
	#%.middle.2412 = add i32 %.middle.2413,1
	mv t0 a4
	sw t0,4(sp)
	j .L1008
	#br label %For_Cond.1051
	
.L1015:
	li t0 0
	sw t0,4(sp)
	j .L1016
	#br label %For_Cond.1059
	
.L1016:
	lw t0 4(sp)
	mv a4 t0
	lw t0 N.0
	mv t3 t0
	slt t3 a4,t3
	#%.middle.2415 = icmp slt i32 %.middle.2416,%.middle.2417
	bnez t3 .L1017
	beqz t3 .L1019
	#br i1 %.middle.2415,label %For_Body.1061,label %For_End.1060
	
.L1017:
	lw t0 20(sp)
	mv t3 t0
	li t1 234
	mul t3,t3,t1
	#%.middle.2418 = mul i32 %.middle.2419,234
	li t1 111
	add t3,t3,t1
	#%.middle.2420 = add i32 %.middle.2418,111
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.2421 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.2422 = mul i32 %.middle.2421,6
	add t6,t3,t6
	#%.middle.2423 = add i32 %.middle.2420,%.middle.2422
	li t1 7
	add t6,t6,t1
	#%.middle.2424 = add i32 %.middle.2423,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.2425 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.2426 = mul i32 %.middle.2425,10111
	add a3,t6,a3
	#%.middle.2427 = add i32 %.middle.2424,%.middle.2426
	li t0 4
	li t1 5
	div tp,t0,t1
	#%.middle.2428 = sdiv i32 4,5
	li t1 6
	mul tp,tp,t1
	#%.middle.2429 = mul i32 %.middle.2428,6
	add tp,a3,tp
	#%.middle.2430 = add i32 %.middle.2427,%.middle.2429
	li t1 7
	add tp,tp,t1
	#%.middle.2431 = add i32 %.middle.2430,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.2432 = sdiv i32 8,9
	li t1 10111
	mul a2,a2,t1
	#%.middle.2433 = mul i32 %.middle.2432,10111
	add a2,tp,a2
	#%.middle.2434 = add i32 %.middle.2431,%.middle.2433
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.2435 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.2436 = mul i32 %.middle.2435,6
	add s0,a2,s0
	#%.middle.2437 = add i32 %.middle.2434,%.middle.2436
	li t1 7
	add s0,s0,t1
	#%.middle.2438 = add i32 %.middle.2437,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.2439 = sdiv i32 8,9
	li t1 10
	mul a1,a1,t1
	#%.middle.2440 = mul i32 %.middle.2439,10
	add a5,s0,a1
	#%.middle.2441 = add i32 %.middle.2438,%.middle.2440
	li t0 42342
	li t1 12
	mul a1,t0,t1
	#%.middle.2442 = mul i32 42342,12
	li t0 12211342
	add a1,t0,a1
	#%.middle.2443 = add i32 12211342,%.middle.2442
	li t1 111
	add a1,a1,t1
	#%.middle.2444 = add i32 %.middle.2443,111
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.2445 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.2446 = mul i32 %.middle.2445,6
	add t5,a1,t5
	#%.middle.2447 = add i32 %.middle.2444,%.middle.2446
	li t1 7
	add t5,t5,t1
	#%.middle.2448 = add i32 %.middle.2447,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.2449 = sdiv i32 8,9
	li t1 10111
	mul t4,t4,t1
	#%.middle.2450 = mul i32 %.middle.2449,10111
	add t4,t5,t4
	#%.middle.2451 = add i32 %.middle.2448,%.middle.2450
	li t0 4
	li t1 5
	div a7,t0,t1
	#%.middle.2452 = sdiv i32 4,5
	li t1 6
	mul a0,a7,t1
	#%.middle.2453 = mul i32 %.middle.2452,6
	add a0,t4,a0
	#%.middle.2454 = add i32 %.middle.2451,%.middle.2453
	li t1 7
	add a0,a0,t1
	#%.middle.2455 = add i32 %.middle.2454,7
	li t0 8
	li t1 9
	div t3,t0,t1
	#%.middle.2456 = sdiv i32 8,9
	li t1 10111
	mul t3,t3,t1
	#%.middle.2457 = mul i32 %.middle.2456,10111
	add t3,a0,t3
	#%.middle.2458 = add i32 %.middle.2455,%.middle.2457
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.2459 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.2460 = mul i32 %.middle.2459,6
	add a4,t3,a4
	#%.middle.2461 = add i32 %.middle.2458,%.middle.2460
	li t1 7
	add a4,a4,t1
	#%.middle.2462 = add i32 %.middle.2461,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.2463 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.2464 = mul i32 %.middle.2463,10
	add a6,a4,a6
	#%.middle.2465 = add i32 %.middle.2462,%.middle.2464
	xor t6,a5,a6
	#%.middle.2466 = xor i32 %.middle.2441,%.middle.2465
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.2467 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.2468 = add i32 12211342,%.middle.2467
	li t1 111
	add a6,a6,t1
	#%.middle.2469 = add i32 %.middle.2468,111
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.2470 = sdiv i32 4,5
	li t1 6
	mul a3,a3,t1
	#%.middle.2471 = mul i32 %.middle.2470,6
	add a3,a6,a3
	#%.middle.2472 = add i32 %.middle.2469,%.middle.2471
	li t1 7
	add a3,a3,t1
	#%.middle.2473 = add i32 %.middle.2472,7
	li t0 8
	li t1 9
	div tp,t0,t1
	#%.middle.2474 = sdiv i32 8,9
	li t1 10111
	mul tp,tp,t1
	#%.middle.2475 = mul i32 %.middle.2474,10111
	add tp,a3,tp
	#%.middle.2476 = add i32 %.middle.2473,%.middle.2475
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.2477 = sdiv i32 4,5
	li t1 6
	mul a2,s0,t1
	#%.middle.2478 = mul i32 %.middle.2477,6
	add a2,tp,a2
	#%.middle.2479 = add i32 %.middle.2476,%.middle.2478
	li t1 7
	add a2,a2,t1
	#%.middle.2480 = add i32 %.middle.2479,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.2481 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.2482 = mul i32 %.middle.2481,10111
	add a1,a2,a1
	#%.middle.2483 = add i32 %.middle.2480,%.middle.2482
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.2484 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.2485 = mul i32 %.middle.2484,6
	add t5,a1,t5
	#%.middle.2486 = add i32 %.middle.2483,%.middle.2485
	li t1 7
	add t5,t5,t1
	#%.middle.2487 = add i32 %.middle.2486,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.2488 = sdiv i32 8,9
	li t1 10
	mul t4,t4,t1
	#%.middle.2489 = mul i32 %.middle.2488,10
	add t4,t5,t4
	#%.middle.2490 = add i32 %.middle.2487,%.middle.2489
	xor a5,t6,t4
	#%.middle.2491 = xor i32 %.middle.2466,%.middle.2490
	li t0 42342
	li t1 12
	mul t4,t0,t1
	#%.middle.2492 = mul i32 42342,12
	lw t0 N.0
	mv a7 t0
	add a7,a7,t4
	#%.middle.2493 = add i32 %.middle.2494,%.middle.2492
	li t1 111
	add a7,a7,t1
	#%.middle.2495 = add i32 %.middle.2493,111
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.2496 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.2497 = mul i32 %.middle.2496,6
	add a0,a7,a0
	#%.middle.2498 = add i32 %.middle.2495,%.middle.2497
	li t1 7
	add a0,a0,t1
	#%.middle.2499 = add i32 %.middle.2498,7
	li t0 8
	li t1 9
	div t3,t0,t1
	#%.middle.2500 = sdiv i32 8,9
	li t1 10111
	mul t3,t3,t1
	#%.middle.2501 = mul i32 %.middle.2500,10111
	add t3,a0,t3
	#%.middle.2502 = add i32 %.middle.2499,%.middle.2501
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.2503 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.2504 = mul i32 %.middle.2503,6
	add s0,t3,a4
	#%.middle.2505 = add i32 %.middle.2502,%.middle.2504
	li t1 7
	add s0,s0,t1
	#%.middle.2506 = add i32 %.middle.2505,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.2507 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.2508 = mul i32 %.middle.2507,10111
	add a3,s0,a3
	#%.middle.2509 = add i32 %.middle.2506,%.middle.2508
	lw t0 20(sp)
	mv tp t0
	li t1 5
	div tp,tp,t1
	#%.middle.2510 = sdiv i32 %.middle.2511,5
	li t1 6
	mul tp,tp,t1
	#%.middle.2512 = mul i32 %.middle.2510,6
	add tp,a3,tp
	#%.middle.2513 = add i32 %.middle.2509,%.middle.2512
	li t1 7
	add tp,tp,t1
	#%.middle.2514 = add i32 %.middle.2513,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.2515 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.2516 = mul i32 %.middle.2515,10
	add a6,tp,a6
	#%.middle.2517 = add i32 %.middle.2514,%.middle.2516
	xor t6,a5,a6
	#%.middle.2518 = xor i32 %.middle.2491,%.middle.2517
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.2519 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.2520 = add i32 12211342,%.middle.2519
	li t1 111
	add a6,a6,t1
	#%.middle.2521 = add i32 %.middle.2520,111
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.2522 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.2523 = mul i32 %.middle.2522,6
	add a2,a6,a2
	#%.middle.2524 = add i32 %.middle.2521,%.middle.2523
	li t1 7
	add a2,a2,t1
	#%.middle.2525 = add i32 %.middle.2524,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.2526 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.2527 = mul i32 %.middle.2526,10111
	add a1,a2,a1
	#%.middle.2528 = add i32 %.middle.2525,%.middle.2527
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.2529 = sdiv i32 4,5
	li t1 6
	mul t5,t4,t1
	#%.middle.2530 = mul i32 %.middle.2529,6
	add t5,a1,t5
	#%.middle.2531 = add i32 %.middle.2528,%.middle.2530
	li t1 7
	add t5,t5,t1
	#%.middle.2532 = add i32 %.middle.2531,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.2533 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.2534 = mul i32 %.middle.2533,10111
	add a0,t5,a0
	#%.middle.2535 = add i32 %.middle.2532,%.middle.2534
	li t0 4
	li t1 5
	div t3,t0,t1
	#%.middle.2536 = sdiv i32 4,5
	li t1 6
	mul t3,t3,t1
	#%.middle.2537 = mul i32 %.middle.2536,6
	add t3,a0,t3
	#%.middle.2538 = add i32 %.middle.2535,%.middle.2537
	li t1 7
	add t3,t3,t1
	#%.middle.2539 = add i32 %.middle.2538,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2540 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.2541 = mul i32 %.middle.2540,10
	add a7,t3,a7
	#%.middle.2542 = add i32 %.middle.2539,%.middle.2541
	xor a4,t6,a7
	#%.middle.2543 = xor i32 %.middle.2518,%.middle.2542
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.2544 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.2545 = add i32 12211342,%.middle.2544
	li t1 111
	add a7,a7,t1
	#%.middle.2546 = add i32 %.middle.2545,111
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.2547 = sdiv i32 4,5
	li t1 6
	mul a5,a5,t1
	#%.middle.2548 = mul i32 %.middle.2547,6
	add a5,a7,a5
	#%.middle.2549 = add i32 %.middle.2546,%.middle.2548
	li t1 7
	add a5,a5,t1
	#%.middle.2550 = add i32 %.middle.2549,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.2551 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.2552 = mul i32 %.middle.2551,10111
	add s0,a5,s0
	#%.middle.2553 = add i32 %.middle.2550,%.middle.2552
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.2554 = sdiv i32 4,5
	li t1 6
	mul tp,a3,t1
	#%.middle.2555 = mul i32 %.middle.2554,6
	add tp,s0,tp
	#%.middle.2556 = add i32 %.middle.2553,%.middle.2555
	li t1 7
	add tp,tp,t1
	#%.middle.2557 = add i32 %.middle.2556,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.2558 = sdiv i32 8,9
	li t1 10111
	mul a2,a2,t1
	#%.middle.2559 = mul i32 %.middle.2558,10111
	add a2,tp,a2
	#%.middle.2560 = add i32 %.middle.2557,%.middle.2559
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.2561 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.2562 = mul i32 %.middle.2561,6
	add a1,a2,a1
	#%.middle.2563 = add i32 %.middle.2560,%.middle.2562
	li t1 7
	add a1,a1,t1
	#%.middle.2564 = add i32 %.middle.2563,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.2565 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.2566 = mul i32 %.middle.2565,10
	add a6,a1,a6
	#%.middle.2567 = add i32 %.middle.2564,%.middle.2566
	xor t4,a4,a6
	#%.middle.2568 = xor i32 %.middle.2543,%.middle.2567
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.2569 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.2570 = add i32 12211342,%.middle.2569
	li t1 111
	add a6,a6,t1
	#%.middle.2571 = add i32 %.middle.2570,111
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.2572 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.2573 = mul i32 %.middle.2572,6
	add t6,a6,t6
	#%.middle.2574 = add i32 %.middle.2571,%.middle.2573
	li t1 7
	add t6,t6,t1
	#%.middle.2575 = add i32 %.middle.2574,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.2576 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.2577 = mul i32 %.middle.2576,10111
	add t5,t6,t5
	#%.middle.2578 = add i32 %.middle.2575,%.middle.2577
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.2579 = sdiv i32 4,5
	li t1 6
	mul t3,a0,t1
	#%.middle.2580 = mul i32 %.middle.2579,6
	add t3,t5,t3
	#%.middle.2581 = add i32 %.middle.2578,%.middle.2580
	li t1 7
	add t3,t3,t1
	#%.middle.2582 = add i32 %.middle.2581,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.2583 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.2584 = mul i32 %.middle.2583,10111
	add a5,t3,a5
	#%.middle.2585 = add i32 %.middle.2582,%.middle.2584
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.2586 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.2587 = mul i32 %.middle.2586,6
	add s0,a5,s0
	#%.middle.2588 = add i32 %.middle.2585,%.middle.2587
	li t1 7
	add s0,s0,t1
	#%.middle.2589 = add i32 %.middle.2588,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2590 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.2591 = mul i32 %.middle.2590,10
	add a7,s0,a7
	#%.middle.2592 = add i32 %.middle.2589,%.middle.2591
	xor a3,t4,a7
	#%.middle.2593 = xor i32 %.middle.2568,%.middle.2592
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.2594 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.2595 = add i32 12211342,%.middle.2594
	li t1 111
	add a7,a7,t1
	#%.middle.2596 = add i32 %.middle.2595,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.2597 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.2598 = mul i32 %.middle.2597,6
	add a4,a7,a4
	#%.middle.2599 = add i32 %.middle.2596,%.middle.2598
	li t1 7
	add a4,a4,t1
	#%.middle.2600 = add i32 %.middle.2599,7
	li t0 8
	li t1 9
	div tp,t0,t1
	#%.middle.2601 = sdiv i32 8,9
	li t1 10111
	mul tp,tp,t1
	#%.middle.2602 = mul i32 %.middle.2601,10111
	add tp,a4,tp
	#%.middle.2603 = add i32 %.middle.2600,%.middle.2602
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.2604 = sdiv i32 4,5
	li t1 6
	mul a2,a1,t1
	#%.middle.2605 = mul i32 %.middle.2604,6
	add a2,tp,a2
	#%.middle.2606 = add i32 %.middle.2603,%.middle.2605
	li t1 7
	add a2,a2,t1
	#%.middle.2607 = add i32 %.middle.2606,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.2608 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.2609 = mul i32 %.middle.2608,10111
	add t6,a2,t6
	#%.middle.2610 = add i32 %.middle.2607,%.middle.2609
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.2611 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.2612 = mul i32 %.middle.2611,6
	add t5,t6,t5
	#%.middle.2613 = add i32 %.middle.2610,%.middle.2612
	li t1 7
	add t5,t5,t1
	#%.middle.2614 = add i32 %.middle.2613,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.2615 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.2616 = mul i32 %.middle.2615,10
	add a6,t5,a6
	#%.middle.2617 = add i32 %.middle.2614,%.middle.2616
	xor a0,a3,a6
	#%.middle.2618 = xor i32 %.middle.2593,%.middle.2617
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.2619 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.2620 = add i32 12211342,%.middle.2619
	li t1 111
	add a6,a6,t1
	#%.middle.2621 = add i32 %.middle.2620,111
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.2622 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.2623 = mul i32 %.middle.2622,6
	add t4,a6,t4
	#%.middle.2624 = add i32 %.middle.2621,%.middle.2623
	li t1 7
	add t4,t4,t1
	#%.middle.2625 = add i32 %.middle.2624,7
	li t0 8
	li t1 9
	div t3,t0,t1
	#%.middle.2626 = sdiv i32 8,9
	li t1 10111
	mul t3,t3,t1
	#%.middle.2627 = mul i32 %.middle.2626,10111
	add t3,t4,t3
	#%.middle.2628 = add i32 %.middle.2625,%.middle.2627
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.2629 = sdiv i32 4,5
	li t1 6
	mul s0,a5,t1
	#%.middle.2630 = mul i32 %.middle.2629,6
	add s0,t3,s0
	#%.middle.2631 = add i32 %.middle.2628,%.middle.2630
	li t1 7
	add s0,s0,t1
	#%.middle.2632 = add i32 %.middle.2631,7
	li t0 8
	li t1 9
	div a4,t0,t1
	#%.middle.2633 = sdiv i32 8,9
	li t1 10111
	mul a4,a4,t1
	#%.middle.2634 = mul i32 %.middle.2633,10111
	add a4,s0,a4
	#%.middle.2635 = add i32 %.middle.2632,%.middle.2634
	li t0 4
	li t1 5
	div tp,t0,t1
	#%.middle.2636 = sdiv i32 4,5
	li t1 6
	mul tp,tp,t1
	#%.middle.2637 = mul i32 %.middle.2636,6
	add tp,a4,tp
	#%.middle.2638 = add i32 %.middle.2635,%.middle.2637
	li t1 7
	add tp,tp,t1
	#%.middle.2639 = add i32 %.middle.2638,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2640 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.2641 = mul i32 %.middle.2640,10
	add a7,tp,a7
	#%.middle.2642 = add i32 %.middle.2639,%.middle.2641
	xor a1,a0,a7
	#%.middle.2643 = xor i32 %.middle.2618,%.middle.2642
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.2644 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.2645 = add i32 12211342,%.middle.2644
	li t1 111
	add a7,a7,t1
	#%.middle.2646 = add i32 %.middle.2645,111
	li t0 4
	li t1 5
	div a3,t0,t1
	#%.middle.2647 = sdiv i32 4,5
	li t1 6
	mul a3,a3,t1
	#%.middle.2648 = mul i32 %.middle.2647,6
	add a3,a7,a3
	#%.middle.2649 = add i32 %.middle.2646,%.middle.2648
	li t1 7
	add a3,a3,t1
	#%.middle.2650 = add i32 %.middle.2649,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.2651 = sdiv i32 8,9
	li t1 10111
	mul a2,a2,t1
	#%.middle.2652 = mul i32 %.middle.2651,10111
	add a2,a3,a2
	#%.middle.2653 = add i32 %.middle.2650,%.middle.2652
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.2654 = sdiv i32 4,5
	li t1 6
	mul t6,t5,t1
	#%.middle.2655 = mul i32 %.middle.2654,6
	add t6,a2,t6
	#%.middle.2656 = add i32 %.middle.2653,%.middle.2655
	li t1 7
	add t6,t6,t1
	#%.middle.2657 = add i32 %.middle.2656,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.2658 = sdiv i32 8,9
	li t1 10111
	mul t4,t4,t1
	#%.middle.2659 = mul i32 %.middle.2658,10111
	add t4,t6,t4
	#%.middle.2660 = add i32 %.middle.2657,%.middle.2659
	li t0 4
	li t1 5
	div t3,t0,t1
	#%.middle.2661 = sdiv i32 4,5
	li t1 6
	mul t3,t3,t1
	#%.middle.2662 = mul i32 %.middle.2661,6
	add t3,t4,t3
	#%.middle.2663 = add i32 %.middle.2660,%.middle.2662
	li t1 7
	add t3,t3,t1
	#%.middle.2664 = add i32 %.middle.2663,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.2665 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.2666 = mul i32 %.middle.2665,10
	add a6,t3,a6
	#%.middle.2667 = add i32 %.middle.2664,%.middle.2666
	xor a5,a1,a6
	#%.middle.2668 = xor i32 %.middle.2643,%.middle.2667
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.2669 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.2670 = add i32 12211342,%.middle.2669
	li t1 111
	add a6,a6,t1
	#%.middle.2671 = add i32 %.middle.2670,111
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.2672 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.2673 = mul i32 %.middle.2672,6
	add a0,a6,a0
	#%.middle.2674 = add i32 %.middle.2671,%.middle.2673
	li t1 7
	add a0,a0,t1
	#%.middle.2675 = add i32 %.middle.2674,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.2676 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.2677 = mul i32 %.middle.2676,10111
	add s0,a0,s0
	#%.middle.2678 = add i32 %.middle.2675,%.middle.2677
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.2679 = sdiv i32 4,5
	li t1 6
	mul tp,a4,t1
	#%.middle.2680 = mul i32 %.middle.2679,6
	add tp,s0,tp
	#%.middle.2681 = add i32 %.middle.2678,%.middle.2680
	li t1 7
	add tp,tp,t1
	#%.middle.2682 = add i32 %.middle.2681,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.2683 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.2684 = mul i32 %.middle.2683,10111
	add a3,tp,a3
	#%.middle.2685 = add i32 %.middle.2682,%.middle.2684
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.2686 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.2687 = mul i32 %.middle.2686,6
	add a2,a3,a2
	#%.middle.2688 = add i32 %.middle.2685,%.middle.2687
	li t1 7
	add a2,a2,t1
	#%.middle.2689 = add i32 %.middle.2688,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2690 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.2691 = mul i32 %.middle.2690,10
	add a7,a2,a7
	#%.middle.2692 = add i32 %.middle.2689,%.middle.2691
	xor t5,a5,a7
	#%.middle.2693 = xor i32 %.middle.2668,%.middle.2692
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.2694 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.2695 = add i32 12211342,%.middle.2694
	li t1 111
	add a7,a7,t1
	#%.middle.2696 = add i32 %.middle.2695,111
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.2697 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.2698 = mul i32 %.middle.2697,6
	add a1,a7,a1
	#%.middle.2699 = add i32 %.middle.2696,%.middle.2698
	li t1 7
	add a1,a1,t1
	#%.middle.2700 = add i32 %.middle.2699,7
	li t0 8
	li t1 9
	div t6,t0,t1
	#%.middle.2701 = sdiv i32 8,9
	li t1 10111
	mul t6,t6,t1
	#%.middle.2702 = mul i32 %.middle.2701,10111
	add t6,a1,t6
	#%.middle.2703 = add i32 %.middle.2700,%.middle.2702
	li t0 4
	li t1 5
	div t3,t0,t1
	#%.middle.2704 = sdiv i32 4,5
	li t1 6
	mul t4,t3,t1
	#%.middle.2705 = mul i32 %.middle.2704,6
	add t4,t6,t4
	#%.middle.2706 = add i32 %.middle.2703,%.middle.2705
	li t1 7
	add t4,t4,t1
	#%.middle.2707 = add i32 %.middle.2706,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.2708 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.2709 = mul i32 %.middle.2708,10111
	add a0,t4,a0
	#%.middle.2710 = add i32 %.middle.2707,%.middle.2709
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.2711 = sdiv i32 4,5
	li t1 1
	mul s0,s0,t1
	#%.middle.2712 = mul i32 %.middle.2711,1
	add s0,a0,s0
	#%.middle.2713 = add i32 %.middle.2710,%.middle.2712
	li t1 7
	add s0,s0,t1
	#%.middle.2714 = add i32 %.middle.2713,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.2715 = sdiv i32 8,9
	li t1 10
	mul a6,a6,t1
	#%.middle.2716 = mul i32 %.middle.2715,10
	add a6,s0,a6
	#%.middle.2717 = add i32 %.middle.2714,%.middle.2716
	xor a4,t5,a6
	#%.middle.2718 = xor i32 %.middle.2693,%.middle.2717
	li t0 42342
	li t1 12
	mul a6,t0,t1
	#%.middle.2719 = mul i32 42342,12
	li t0 12211342
	add a6,t0,a6
	#%.middle.2720 = add i32 12211342,%.middle.2719
	li t1 111
	add a6,a6,t1
	#%.middle.2721 = add i32 %.middle.2720,111
	li t0 4
	li t1 5
	div a5,t0,t1
	#%.middle.2722 = sdiv i32 4,5
	li t1 6
	mul a5,a5,t1
	#%.middle.2723 = mul i32 %.middle.2722,6
	add a5,a6,a5
	#%.middle.2724 = add i32 %.middle.2721,%.middle.2723
	li t1 7
	add a5,a5,t1
	#%.middle.2725 = add i32 %.middle.2724,7
	li t0 8
	li t1 9
	div tp,t0,t1
	#%.middle.2726 = sdiv i32 8,9
	li t1 10111
	mul tp,tp,t1
	#%.middle.2727 = mul i32 %.middle.2726,10111
	add tp,a5,tp
	#%.middle.2728 = add i32 %.middle.2725,%.middle.2727
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.2729 = sdiv i32 4,5
	li t1 6
	mul a3,a2,t1
	#%.middle.2730 = mul i32 %.middle.2729,6
	add a3,tp,a3
	#%.middle.2731 = add i32 %.middle.2728,%.middle.2730
	li t1 7
	add a3,a3,t1
	#%.middle.2732 = add i32 %.middle.2731,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.2733 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.2734 = mul i32 %.middle.2733,10111
	add a1,a3,a1
	#%.middle.2735 = add i32 %.middle.2732,%.middle.2734
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.2736 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.2737 = mul i32 %.middle.2736,6
	add t6,a1,t6
	#%.middle.2738 = add i32 %.middle.2735,%.middle.2737
	li t1 7
	add t6,t6,t1
	#%.middle.2739 = add i32 %.middle.2738,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2740 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.2741 = mul i32 %.middle.2740,10
	add a7,t6,a7
	#%.middle.2742 = add i32 %.middle.2739,%.middle.2741
	xor t3,a4,a7
	#%.middle.2743 = xor i32 %.middle.2718,%.middle.2742
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.2744 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.2745 = add i32 12211342,%.middle.2744
	li t1 111
	add a7,a7,t1
	#%.middle.2746 = add i32 %.middle.2745,111
	li t0 4
	li t1 5
	div t5,t0,t1
	#%.middle.2747 = sdiv i32 4,5
	li t1 6
	mul t5,t5,t1
	#%.middle.2748 = mul i32 %.middle.2747,6
	add t5,a7,t5
	#%.middle.2749 = add i32 %.middle.2746,%.middle.2748
	li t1 7
	add t5,t5,t1
	#%.middle.2750 = add i32 %.middle.2749,7
	li t0 8
	li t1 9
	div t4,t0,t1
	#%.middle.2751 = sdiv i32 8,9
	li t1 10111
	mul t4,t4,t1
	#%.middle.2752 = mul i32 %.middle.2751,10111
	sub t4,t5,t4
	#%.middle.2753 = sub i32 %.middle.2750,%.middle.2752
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.2754 = sdiv i32 4,5
	li t1 6
	mul s0,a0,t1
	#%.middle.2755 = mul i32 %.middle.2754,6
	add s0,t4,s0
	#%.middle.2756 = add i32 %.middle.2753,%.middle.2755
	li t1 7
	add s0,s0,t1
	#%.middle.2757 = add i32 %.middle.2756,7
	li t0 8
	li t1 9
	div a6,t0,t1
	#%.middle.2758 = sdiv i32 8,9
	li t1 10111
	mul a6,a6,t1
	#%.middle.2759 = mul i32 %.middle.2758,10111
	add a6,s0,a6
	#%.middle.2760 = add i32 %.middle.2757,%.middle.2759
	li t0 4
	li t1 5
	div tp,t0,t1
	#%.middle.2761 = sdiv i32 4,5
	li t1 6
	mul tp,tp,t1
	#%.middle.2762 = mul i32 %.middle.2761,6
	add tp,a6,tp
	#%.middle.2763 = add i32 %.middle.2760,%.middle.2762
	li t1 7
	add tp,tp,t1
	#%.middle.2764 = add i32 %.middle.2763,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.2765 = sdiv i32 8,9
	li t1 10
	mul a5,a5,t1
	#%.middle.2766 = mul i32 %.middle.2765,10
	add a5,tp,a5
	#%.middle.2767 = add i32 %.middle.2764,%.middle.2766
	xor a2,t3,a5
	#%.middle.2768 = xor i32 %.middle.2743,%.middle.2767
	li t0 42342
	li t1 12
	mul a5,t0,t1
	#%.middle.2769 = mul i32 42342,12
	li t0 12211342
	add a5,t0,a5
	#%.middle.2770 = add i32 12211342,%.middle.2769
	li t1 111
	add a5,a5,t1
	#%.middle.2771 = add i32 %.middle.2770,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.2772 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.2773 = mul i32 %.middle.2772,6
	add a4,a5,a4
	#%.middle.2774 = add i32 %.middle.2771,%.middle.2773
	li t1 7
	add a4,a4,t1
	#%.middle.2775 = add i32 %.middle.2774,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.2776 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.2777 = mul i32 %.middle.2776,10111
	add a3,a4,a3
	#%.middle.2778 = add i32 %.middle.2775,%.middle.2777
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.2779 = sdiv i32 4,5
	li t1 6
	mul a1,t6,t1
	#%.middle.2780 = mul i32 %.middle.2779,6
	add a1,a3,a1
	#%.middle.2781 = add i32 %.middle.2778,%.middle.2780
	li t1 7
	add a1,a1,t1
	#%.middle.2782 = add i32 %.middle.2781,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.2783 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.2784 = mul i32 %.middle.2783,10111
	add t5,a1,t5
	#%.middle.2785 = add i32 %.middle.2782,%.middle.2784
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.2786 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.2787 = mul i32 %.middle.2786,6
	add t4,t5,t4
	#%.middle.2788 = add i32 %.middle.2785,%.middle.2787
	li t1 7
	add t4,t4,t1
	#%.middle.2789 = add i32 %.middle.2788,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2790 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.2791 = mul i32 %.middle.2790,10
	add a7,t4,a7
	#%.middle.2792 = add i32 %.middle.2789,%.middle.2791
	xor a0,a2,a7
	#%.middle.2793 = xor i32 %.middle.2768,%.middle.2792
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.2794 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.2795 = add i32 12211342,%.middle.2794
	li t1 111
	add a7,a7,t1
	#%.middle.2796 = add i32 %.middle.2795,111
	li t0 4
	li t1 5
	div t3,t0,t1
	#%.middle.2797 = sdiv i32 4,5
	li t1 6
	mul t3,t3,t1
	#%.middle.2798 = mul i32 %.middle.2797,6
	add t3,a7,t3
	#%.middle.2799 = add i32 %.middle.2796,%.middle.2798
	li t1 7
	add t3,t3,t1
	#%.middle.2800 = add i32 %.middle.2799,7
	li t0 8
	li t1 9
	div s0,t0,t1
	#%.middle.2801 = sdiv i32 8,9
	li t1 10111
	mul s0,s0,t1
	#%.middle.2802 = mul i32 %.middle.2801,10111
	add s0,t3,s0
	#%.middle.2803 = add i32 %.middle.2800,%.middle.2802
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.2804 = sdiv i32 4,5
	li t1 6
	mul tp,a6,t1
	#%.middle.2805 = mul i32 %.middle.2804,6
	add tp,s0,tp
	#%.middle.2806 = add i32 %.middle.2803,%.middle.2805
	li t1 7
	add tp,tp,t1
	#%.middle.2807 = add i32 %.middle.2806,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.2808 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.2809 = mul i32 %.middle.2808,10111
	add a5,tp,a5
	#%.middle.2810 = add i32 %.middle.2807,%.middle.2809
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.2811 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.2812 = mul i32 %.middle.2811,6
	add a4,a5,a4
	#%.middle.2813 = add i32 %.middle.2810,%.middle.2812
	li t1 7
	add a4,a4,t1
	#%.middle.2814 = add i32 %.middle.2813,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.2815 = sdiv i32 8,9
	li t1 10
	mul a3,a3,t1
	#%.middle.2816 = mul i32 %.middle.2815,10
	add a3,a4,a3
	#%.middle.2817 = add i32 %.middle.2814,%.middle.2816
	xor t6,a0,a3
	#%.middle.2818 = xor i32 %.middle.2793,%.middle.2817
	li t0 42342
	li t1 12
	mul a3,t0,t1
	#%.middle.2819 = mul i32 42342,12
	li t0 12211342
	add a3,t0,a3
	#%.middle.2820 = add i32 12211342,%.middle.2819
	li t1 111
	add a3,a3,t1
	#%.middle.2821 = add i32 %.middle.2820,111
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.2822 = sdiv i32 4,5
	li t1 6
	mul a2,a2,t1
	#%.middle.2823 = mul i32 %.middle.2822,6
	add a2,a3,a2
	#%.middle.2824 = add i32 %.middle.2821,%.middle.2823
	li t1 7
	add a2,a2,t1
	#%.middle.2825 = add i32 %.middle.2824,7
	li t0 8
	li t1 9
	div a1,t0,t1
	#%.middle.2826 = sdiv i32 8,9
	li t1 10111
	mul a1,a1,t1
	#%.middle.2827 = mul i32 %.middle.2826,10111
	add a1,a2,a1
	#%.middle.2828 = add i32 %.middle.2825,%.middle.2827
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.2829 = sdiv i32 4,5
	li t1 6
	mul t5,t4,t1
	#%.middle.2830 = mul i32 %.middle.2829,6
	add t5,a1,t5
	#%.middle.2831 = add i32 %.middle.2828,%.middle.2830
	li t1 7
	add t5,t5,t1
	#%.middle.2832 = add i32 %.middle.2831,7
	li t0 8
	li t1 9
	div t3,t0,t1
	#%.middle.2833 = sdiv i32 8,9
	li t1 10111
	mul t3,t3,t1
	#%.middle.2834 = mul i32 %.middle.2833,10111
	add t3,t5,t3
	#%.middle.2835 = add i32 %.middle.2832,%.middle.2834
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.2836 = sdiv i32 4,5
	li t1 6
	mul s0,s0,t1
	#%.middle.2837 = mul i32 %.middle.2836,6
	add s0,t3,s0
	#%.middle.2838 = add i32 %.middle.2835,%.middle.2837
	li t1 7
	add s0,s0,t1
	#%.middle.2839 = add i32 %.middle.2838,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2840 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.2841 = mul i32 %.middle.2840,10
	add a7,s0,a7
	#%.middle.2842 = add i32 %.middle.2839,%.middle.2841
	xor a6,t6,a7
	#%.middle.2843 = xor i32 %.middle.2818,%.middle.2842
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.2844 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.2845 = add i32 12211342,%.middle.2844
	li t1 111
	add a7,a7,t1
	#%.middle.2846 = add i32 %.middle.2845,111
	li t0 4
	li t1 5
	div a0,t0,t1
	#%.middle.2847 = sdiv i32 4,5
	li t1 6
	mul a0,a0,t1
	#%.middle.2848 = mul i32 %.middle.2847,6
	add a0,a7,a0
	#%.middle.2849 = add i32 %.middle.2846,%.middle.2848
	li t1 7
	add a0,a0,t1
	#%.middle.2850 = add i32 %.middle.2849,7
	li t0 8
	li t1 9
	div tp,t0,t1
	#%.middle.2851 = sdiv i32 8,9
	li t1 10111
	mul tp,tp,t1
	#%.middle.2852 = mul i32 %.middle.2851,10111
	add tp,a0,tp
	#%.middle.2853 = add i32 %.middle.2850,%.middle.2852
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.2854 = sdiv i32 4,5
	li t1 6
	mul a5,a4,t1
	#%.middle.2855 = mul i32 %.middle.2854,6
	add a5,tp,a5
	#%.middle.2856 = add i32 %.middle.2853,%.middle.2855
	li t1 7
	add a5,a5,t1
	#%.middle.2857 = add i32 %.middle.2856,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.2858 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.2859 = mul i32 %.middle.2858,10111
	add a3,a5,a3
	#%.middle.2860 = add i32 %.middle.2857,%.middle.2859
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.2861 = sdiv i32 4,5
	li t1 6
	mul a1,a1,t1
	#%.middle.2862 = mul i32 %.middle.2861,6
	add a1,a3,a1
	#%.middle.2863 = add i32 %.middle.2860,%.middle.2862
	li t1 7
	add a1,a1,t1
	#%.middle.2864 = add i32 %.middle.2863,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.2865 = sdiv i32 8,9
	li t1 10
	mul a2,a2,t1
	#%.middle.2866 = mul i32 %.middle.2865,10
	add a2,a1,a2
	#%.middle.2867 = add i32 %.middle.2864,%.middle.2866
	xor t4,a6,a2
	#%.middle.2868 = xor i32 %.middle.2843,%.middle.2867
	li t0 42342
	li t1 12
	mul a2,t0,t1
	#%.middle.2869 = mul i32 42342,12
	li t0 12211342
	add a2,t0,a2
	#%.middle.2870 = add i32 12211342,%.middle.2869
	li t1 111
	add a2,a2,t1
	#%.middle.2871 = add i32 %.middle.2870,111
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.2872 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.2873 = mul i32 %.middle.2872,6
	add t6,a2,t6
	#%.middle.2874 = add i32 %.middle.2871,%.middle.2873
	li t1 7
	add t6,t6,t1
	#%.middle.2875 = add i32 %.middle.2874,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.2876 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.2877 = mul i32 %.middle.2876,10111
	add t5,t6,t5
	#%.middle.2878 = add i32 %.middle.2875,%.middle.2877
	li t0 4
	li t1 5
	div s0,t0,t1
	#%.middle.2879 = sdiv i32 4,5
	li t1 6
	mul t3,s0,t1
	#%.middle.2880 = mul i32 %.middle.2879,6
	add t3,t5,t3
	#%.middle.2881 = add i32 %.middle.2878,%.middle.2880
	li t1 7
	add t3,t3,t1
	#%.middle.2882 = add i32 %.middle.2881,7
	li t0 8
	li t1 9
	div a0,t0,t1
	#%.middle.2883 = sdiv i32 8,9
	li t1 10111
	mul a0,a0,t1
	#%.middle.2884 = mul i32 %.middle.2883,10111
	add a0,t3,a0
	#%.middle.2885 = add i32 %.middle.2882,%.middle.2884
	li t0 4
	li t1 5
	div tp,t0,t1
	#%.middle.2886 = sdiv i32 4,5
	li t1 6
	mul tp,tp,t1
	#%.middle.2887 = mul i32 %.middle.2886,6
	add tp,a0,tp
	#%.middle.2888 = add i32 %.middle.2885,%.middle.2887
	li t1 7
	add tp,tp,t1
	#%.middle.2889 = add i32 %.middle.2888,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2890 = sdiv i32 8,9
	li t1 10
	mul a7,a7,t1
	#%.middle.2891 = mul i32 %.middle.2890,10
	add a7,tp,a7
	#%.middle.2892 = add i32 %.middle.2889,%.middle.2891
	xor a4,t4,a7
	#%.middle.2893 = xor i32 %.middle.2868,%.middle.2892
	li t0 42342
	li t1 12
	mul a7,t0,t1
	#%.middle.2894 = mul i32 42342,12
	li t0 12211342
	add a7,t0,a7
	#%.middle.2895 = add i32 12211342,%.middle.2894
	li t1 111
	add a7,a7,t1
	#%.middle.2896 = add i32 %.middle.2895,111
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.2897 = sdiv i32 4,5
	li t1 6
	mul a6,a6,t1
	#%.middle.2898 = mul i32 %.middle.2897,6
	add a6,a7,a6
	#%.middle.2899 = add i32 %.middle.2896,%.middle.2898
	li t1 7
	add a6,a6,t1
	#%.middle.2900 = add i32 %.middle.2899,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.2901 = sdiv i32 8,9
	li t1 10111
	mul a5,a5,t1
	#%.middle.2902 = mul i32 %.middle.2901,10111
	add a5,a6,a5
	#%.middle.2903 = add i32 %.middle.2900,%.middle.2902
	li t0 4
	li t1 5
	div a1,t0,t1
	#%.middle.2904 = sdiv i32 4,5
	li t1 6
	mul a3,a1,t1
	#%.middle.2905 = mul i32 %.middle.2904,6
	add a3,a5,a3
	#%.middle.2906 = add i32 %.middle.2903,%.middle.2905
	li t1 7
	add a3,a3,t1
	#%.middle.2907 = add i32 %.middle.2906,7
	li t0 8
	li t1 9
	div a2,t0,t1
	#%.middle.2908 = sdiv i32 8,9
	li t1 10111
	mul a2,a2,t1
	#%.middle.2909 = mul i32 %.middle.2908,10111
	add a2,a3,a2
	#%.middle.2910 = add i32 %.middle.2907,%.middle.2909
	li t0 4
	li t1 5
	div t6,t0,t1
	#%.middle.2911 = sdiv i32 4,5
	li t1 6
	mul t6,t6,t1
	#%.middle.2912 = mul i32 %.middle.2911,6
	add t6,a2,t6
	#%.middle.2913 = add i32 %.middle.2910,%.middle.2912
	li t1 7
	add t6,t6,t1
	#%.middle.2914 = add i32 %.middle.2913,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.2915 = sdiv i32 8,9
	li t1 10
	mul t5,t5,t1
	#%.middle.2916 = mul i32 %.middle.2915,10
	add t5,t6,t5
	#%.middle.2917 = add i32 %.middle.2914,%.middle.2916
	xor s0,a4,t5
	#%.middle.2918 = xor i32 %.middle.2893,%.middle.2917
	li t0 42342
	li t1 12
	mul t5,t0,t1
	#%.middle.2919 = mul i32 42342,12
	li t0 12211342
	add t5,t0,t5
	#%.middle.2920 = add i32 12211342,%.middle.2919
	li t1 111
	add t5,t5,t1
	#%.middle.2921 = add i32 %.middle.2920,111
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.2922 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.2923 = mul i32 %.middle.2922,6
	add t4,t5,t4
	#%.middle.2924 = add i32 %.middle.2921,%.middle.2923
	li t1 7
	add t4,t4,t1
	#%.middle.2925 = add i32 %.middle.2924,7
	li t0 8
	li t1 9
	div t3,t0,t1
	#%.middle.2926 = sdiv i32 8,9
	li t1 10111
	mul t3,t3,t1
	#%.middle.2927 = mul i32 %.middle.2926,10111
	add t3,t4,t3
	#%.middle.2928 = add i32 %.middle.2925,%.middle.2927
	li t0 4
	li t1 5
	div tp,t0,t1
	#%.middle.2929 = sdiv i32 4,5
	li t1 6
	mul a0,tp,t1
	#%.middle.2930 = mul i32 %.middle.2929,6
	add a0,t3,a0
	#%.middle.2931 = add i32 %.middle.2928,%.middle.2930
	li t1 7
	add a0,a0,t1
	#%.middle.2932 = add i32 %.middle.2931,7
	li t0 8
	li t1 9
	div a7,t0,t1
	#%.middle.2933 = sdiv i32 8,9
	li t1 10111
	mul a7,a7,t1
	#%.middle.2934 = mul i32 %.middle.2933,10111
	add a7,a0,a7
	#%.middle.2935 = add i32 %.middle.2932,%.middle.2934
	li t0 4
	li t1 5
	div a6,t0,t1
	#%.middle.2936 = sdiv i32 4,5
	li t1 6
	mul a6,a6,t1
	#%.middle.2937 = mul i32 %.middle.2936,6
	add a6,a7,a6
	#%.middle.2938 = add i32 %.middle.2935,%.middle.2937
	li t1 7
	add a6,a6,t1
	#%.middle.2939 = add i32 %.middle.2938,7
	li t0 8
	li t1 9
	div a5,t0,t1
	#%.middle.2940 = sdiv i32 8,9
	li t1 10
	mul a5,a5,t1
	#%.middle.2941 = mul i32 %.middle.2940,10
	add a5,a6,a5
	#%.middle.2942 = add i32 %.middle.2939,%.middle.2941
	xor a1,s0,a5
	#%.middle.2943 = xor i32 %.middle.2918,%.middle.2942
	li t0 42342
	li t1 12
	mul a5,t0,t1
	#%.middle.2944 = mul i32 42342,12
	li t0 12211342
	add a5,t0,a5
	#%.middle.2945 = add i32 12211342,%.middle.2944
	li t1 111
	add a5,a5,t1
	#%.middle.2946 = add i32 %.middle.2945,111
	li t0 4
	li t1 5
	div a4,t0,t1
	#%.middle.2947 = sdiv i32 4,5
	li t1 6
	mul a4,a4,t1
	#%.middle.2948 = mul i32 %.middle.2947,6
	add a4,a5,a4
	#%.middle.2949 = add i32 %.middle.2946,%.middle.2948
	li t1 7
	add a4,a4,t1
	#%.middle.2950 = add i32 %.middle.2949,7
	li t0 8
	li t1 9
	div a3,t0,t1
	#%.middle.2951 = sdiv i32 8,9
	li t1 10111
	mul a3,a3,t1
	#%.middle.2952 = mul i32 %.middle.2951,10111
	add a3,a4,a3
	#%.middle.2953 = add i32 %.middle.2950,%.middle.2952
	li t0 4
	li t1 5
	div a2,t0,t1
	#%.middle.2954 = sdiv i32 4,5
	li t1 6
	mul t6,a2,t1
	#%.middle.2955 = mul i32 %.middle.2954,6
	add t6,a3,t6
	#%.middle.2956 = add i32 %.middle.2953,%.middle.2955
	li t1 7
	add t6,t6,t1
	#%.middle.2957 = add i32 %.middle.2956,7
	li t0 8
	li t1 9
	div t5,t0,t1
	#%.middle.2958 = sdiv i32 8,9
	li t1 10111
	mul t5,t5,t1
	#%.middle.2959 = mul i32 %.middle.2958,10111
	add t5,t6,t5
	#%.middle.2960 = add i32 %.middle.2957,%.middle.2959
	li t0 4
	li t1 5
	div t4,t0,t1
	#%.middle.2961 = sdiv i32 4,5
	li t1 6
	mul t4,t4,t1
	#%.middle.2962 = mul i32 %.middle.2961,6
	add t4,t5,t4
	#%.middle.2963 = add i32 %.middle.2960,%.middle.2962
	li t1 7
	add t4,t4,t1
	#%.middle.2964 = add i32 %.middle.2963,7
	li t0 8
	li t1 9
	div t3,t0,t1
	#%.middle.2965 = sdiv i32 8,9
	li t1 10
	mul t3,t3,t1
	#%.middle.2966 = mul i32 %.middle.2965,10
	add t3,t4,t3
	#%.middle.2967 = add i32 %.middle.2964,%.middle.2966
	xor t3,a1,t3
	#%.middle.2968 = xor i32 %.middle.2943,%.middle.2967
	lw t0 20(sp)
	mv tp t0
	li t1 12
	mul tp,tp,t1
	#%.middle.2969 = mul i32 %.middle.2970,12
	li t0 12211342
	add tp,t0,tp
	#%.middle.2971 = add i32 12211342,%.middle.2969
	xor tp,t3,tp
	#%.middle.2972 = xor i32 %.middle.2968,%.middle.2971
	mv t0 tp
	sw t0,20(sp)
	lw t0 20(sp)
	mv tp t0
	li t1 11
	add tp,tp,t1
	#%.middle.2974 = add i32 %.middle.2975,11
	mv t0 tp
	sw t0,20(sp)
	li t0 1
	li t1 5
	div tp,t0,t1
	#%.middle.2977 = sdiv i32 1,5
	li t1 5
	div tp,tp,t1
	#%.middle.2978 = sdiv i32 %.middle.2977,5
	li t1 5
	div tp,tp,t1
	#%.middle.2979 = sdiv i32 %.middle.2978,5
	li t1 5
	div tp,tp,t1
	#%.middle.2980 = sdiv i32 %.middle.2979,5
	li t1 5
	div tp,tp,t1
	#%.middle.2981 = sdiv i32 %.middle.2980,5
	li t1 5
	div tp,tp,t1
	#%.middle.2982 = sdiv i32 %.middle.2981,5
	li t1 5
	div tp,tp,t1
	#%.middle.2983 = sdiv i32 %.middle.2982,5
	li t1 5
	div tp,tp,t1
	#%.middle.2984 = sdiv i32 %.middle.2983,5
	li t1 5
	div tp,tp,t1
	#%.middle.2985 = sdiv i32 %.middle.2984,5
	li t1 5
	div s0,tp,t1
	#%.middle.2986 = sdiv i32 %.middle.2985,5
	li t1 5
	div s0,s0,t1
	#%.middle.2987 = sdiv i32 %.middle.2986,5
	li t1 5
	div s0,s0,t1
	#%.middle.2988 = sdiv i32 %.middle.2987,5
	li t1 5
	div s0,s0,t1
	#%.middle.2989 = sdiv i32 %.middle.2988,5
	li t1 5
	div s0,s0,t1
	#%.middle.2990 = sdiv i32 %.middle.2989,5
	li t1 5
	div s0,s0,t1
	#%.middle.2991 = sdiv i32 %.middle.2990,5
	li t1 5
	div s0,s0,t1
	#%.middle.2992 = sdiv i32 %.middle.2991,5
	li t1 5
	div s0,s0,t1
	#%.middle.2993 = sdiv i32 %.middle.2992,5
	li t1 5
	div s0,s0,t1
	#%.middle.2994 = sdiv i32 %.middle.2993,5
	li t1 5
	div s0,s0,t1
	#%.middle.2995 = sdiv i32 %.middle.2994,5
	mv t0 s0
	sw t0,20(sp)
	j .L1018
	#br label %For_Change.1062
	
.L1018:
	lw t0 4(sp)
	mv s0 t0
	lw t0 4(sp)
	mv s0 t0
	li t1 1
	add s0,s0,t1
	#%.middle.2998 = add i32 %.middle.2999,1
	mv t0 s0
	sw t0,4(sp)
	j .L1016
	#br label %For_Cond.1059
	
.L1019:
	lw t0 16(sp)
	mv s0 t0
	mv t0 s0
	sw t0,0(sp)
	j .func.dceconst.Exit
	#br label %Exit.1049
	
.func.dceconst.Exit:
	mv s11 gp
	mv s10 ra
	mv s9 s11
	mv s8 s10
	mv s7 s9
	mv s6 s8
	mv s5 s7
	mv s4 s6
	mv s3 s5
	mv s2 s4
	mv s1 s3
	mv s0 s2
	lw t0 0(sp)
	mv a0 t0
	mv ra s1
	addi sp,sp,36
	ret
	#ret i32 %.retval
	

    .globl main
main:


addi sp,sp,-88
	mv t0 s11
	sw t0,84(sp)
	mv t0 s10
	sw t0,80(sp)
	mv t0 s9
	sw t0,76(sp)
	mv t0 s8
	sw t0,72(sp)
	mv t0 s7
	sw t0,68(sp)
	mv t0 s6
	sw t0,64(sp)
	mv t0 s5
	sw t0,60(sp)
	mv t0 s4
	sw t0,56(sp)
	mv t0 s3
	sw t0,52(sp)
	mv t0 s2
	sw t0,48(sp)
	mv t0 s1
	sw t0,44(sp)
	mv t0 s0
	sw t0,40(sp)
	mv t0 ra
	#%.Func.Return.p.7.0=alloca i32
	sw t0,36(sp)
	j .L1020
	#br label %.block.1065
	
.L1020:
	mv t0 ra
	sw t0,24(sp)
	mv t0 gp
	sw t0,20(sp)
	mv t0 tp
	sw t0,16(sp)
	mv s11 t3
	mv s10 t4
	mv s9 t5
	mv s8 t6
	mv s7 a0
	mv s6 a1
	mv s5 a2
	mv s4 a3
	mv s3 a4
	mv s2 a5
	mv s1 a6
	mv s0 a7
	call .init
	mv a6 s1
	mv a4 s3
	mv a7 s0
	lw t0 16(sp)
	mv tp t0
	mv a1 s6
	mv a0 s7
	mv t6 s8
	lw t0 24(sp)
	mv ra t0
	mv a2 s5
	lw t0 20(sp)
	mv gp t0
	mv t3 s11
	mv a5 s2
	mv a3 s4
	mv t4 s10
	mv t5 s9
	#call void @.init()
	mv t0 ra
	sw t0,28(sp)
	mv t0 gp
	sw t0,24(sp)
	mv t0 tp
	sw t0,20(sp)
	mv t0 t3
	sw t0,16(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	call .func.test
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 20(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 28(sp)
	mv ra t0
	mv a2 s6
	lw t0 24(sp)
	mv gp t0
	lw t0 16(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.Func_Return.5 = call i32 @.func.test()
	mv t0 s0
	sw t0,4(sp)
	mv t0 ra
	sw t0,28(sp)
	mv t0 gp
	sw t0,24(sp)
	mv t0 tp
	sw t0,20(sp)
	mv t0 t3
	sw t0,16(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	call .func.naivedce
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 20(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 28(sp)
	mv ra t0
	mv a2 s6
	lw t0 24(sp)
	mv gp t0
	lw t0 16(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.Func_Return.6 = call i32 @.func.naivedce()
	mv t0 s0
	sw t0,8(sp)
	lw t0 4(sp)
	mv s1 t0
	lw t0 8(sp)
	mv s0 t0
	add t0,s1,s0
	#%.middle.3001 = add i32 %.middle.3002,%.middle.3003
	sw t0,32(sp)
	mv t0 ra
	sw t0,28(sp)
	mv t0 gp
	sw t0,24(sp)
	mv t0 tp
	sw t0,20(sp)
	mv t0 t3
	sw t0,16(sp)
	mv s11 t4
	mv s10 t5
	mv s9 t6
	mv s8 a0
	mv s7 a1
	mv s6 a2
	mv s5 a3
	mv s4 a4
	mv s3 a5
	mv s2 a6
	mv s1 a7
	call .func.dceconst
	mv s0 a0
	mv a6 s2
	mv a4 s4
	mv a7 s1
	lw t0 20(sp)
	mv tp t0
	mv a1 s7
	mv a0 s8
	mv t6 s9
	lw t0 28(sp)
	mv ra t0
	mv a2 s6
	lw t0 24(sp)
	mv gp t0
	lw t0 16(sp)
	mv t3 t0
	mv a5 s3
	mv a3 s5
	mv t4 s11
	mv t5 s10
	#%.Func_Return.7 = call i32 @.func.dceconst()
	mv t0 s0
	sw t0,12(sp)
	lw t0 12(sp)
	mv s0 t0
	lw t0 32(sp)
	add s0,t0,s0
	#%.middle.3004 = add i32 %.middle.3001,%.middle.3005
	li t1 50997
	sub s0,s0,t1
	#%.middle.3006 = sub i32 %.middle.3004,50997
	mv t0 s0
	sw t0,0(sp)
	j main.Exit
	#br label %Exit.1064
	
main.Exit:
	lw t0 84(sp)
	mv s11 t0
	lw t0 80(sp)
	mv s10 t0
	lw t0 76(sp)
	mv s9 t0
	lw t0 72(sp)
	mv s8 t0
	lw t0 68(sp)
	mv s7 t0
	lw t0 64(sp)
	mv s6 t0
	lw t0 60(sp)
	mv s5 t0
	lw t0 56(sp)
	mv s4 t0
	lw t0 52(sp)
	mv s3 t0
	lw t0 48(sp)
	mv s2 t0
	lw t0 44(sp)
	mv s1 t0
	lw t0 40(sp)
	mv s0 t0
	lw t0 0(sp)
	mv a0 t0
	lw t0 36(sp)
	mv ra t0
	addi sp,sp,88
	ret
	#ret i32 %.retval
	

    .section data
    .type   a_no_collison_plz.0,@object
    .global a_no_collison_plz.0
a_no_collison_plz.0:
    .zero 4
    .size a_no_collison_plz.0,4

    .section data
    .type   tmp_no_collision_plz.0,@object
    .global tmp_no_collision_plz.0
tmp_no_collision_plz.0:
    .zero 4
    .size tmp_no_collision_plz.0,4

    .section data
    .type   N.0,@object
    .global N.0
N.0:
    .zero 4
    .size N.0,4

.section data
.ConstantString.0:
	.word 10
	
.section data
.ConstantString.1:
	.word 10
	
