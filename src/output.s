.text
    .globl .init
.init:


mv s0 sp
	addi sp,sp,-36
	mv t0 s0
	sw t0,0(sp)
	mv t0 ra
	sw t0,4(sp)
	j .L0
	#br label %.block.3
	
.L0:
	li t0 10000000
	sw t0,INF.0,t2
	#  store i32 10000000,i32* @INF.0
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,4(sp)
	call _malloc
	lw t0 4(sp)
	mv ra t0
	mv t0 a0
	sw t0,8(sp)
	# %.SizeList.0 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,12(sp)
	lw t0 12(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,12(sp)
	lw t0 8(sp)
	lw t1 12(sp)
	add t0,t0,t1
	#%.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0,i32 0
	sw t0,16(sp)
	# %.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0,i32 0
	lw t1 16(sp)
	li t0 20
	sw t0,0(t1)
	#  store i32 20,i32* %.ArrayIdx.0
	lw t0 8(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,4(sp)
	call _malloc_toInt
	lw t0 4(sp)
	mv ra t0
	mv t0 a0
	sw t0,20(sp)
	# %.middle.0 = call i32* @_malloc_toInt(i32* %.SizeList.0,i32 1)
	lw t0 20(sp)
	sw t0,24(sp)
	# %.new.0 = bitcast i32* %.middle.0 to i32*
	lw t0 24(sp)
	sw t0,a_no_collison_plz.0,t2
	#  store i32* %.new.0,i32** @a_no_collison_plz.0
	li t0 2
	mv a0 t0
	mv t0 ra
	sw t0,4(sp)
	call _malloc
	lw t0 4(sp)
	mv ra t0
	mv t0 a0
	sw t0,28(sp)
	# %.middle.2 = call i32* @_malloc(i32 2)
	lw t0 28(sp)
	sw t0,32(sp)
	# %.middle.1 = bitcast i32* %.middle.2 to %struct.string*
	lw t0 32(sp)
	mv a0 t0
	mv t0 ra
	sw t0,4(sp)
	call .func.string.construct
	lw t0 4(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.1)
	lw t0 32(sp)
	sw t0,tmp_no_collision_plz.0,t2
	#  store %struct.string* %.middle.1,%struct.string** @tmp_no_collision_plz.0
	j .init.Exit
	#br label %Exit.2
	
.init.Exit:
	lw t0 0(sp)
	mv s0 t0
	lw t0 4(sp)
	mv ra t0
	addi sp,sp,36
	ret
	#ret void
	

    .globl .func.string.construct
.func.string.construct:


mv s0 sp
	addi sp,sp,-20
	mv t0 s0
	sw t0,4(sp)
	mv t0 ra
	sw t0,8(sp)
	# %This_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	#  store %struct.string* %This,%struct.string** %This_addr
	j .L1
	#br label %.block.6
	
.L1:
	lw t0 0(sp)
	sw t0,12(sp)
	#  %This_addr.0=load %struct.string*,%struct.string** %This_addr
	lw t0 12(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.len.0 = getelementptr %struct.string,%struct.string* %This_addr.0,i32 0,i32 0
	sw t0,16(sp)
	# %This_addr.len.0 = getelementptr %struct.string,%struct.string* %This_addr.0,i32 0,i32 0
	lw t1 16(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %This_addr.len.0
	j .func.string.construct.Exit
	#br label %Exit.5
	
.func.string.construct.Exit:
	lw t0 4(sp)
	mv s0 t0
	lw t0 8(sp)
	mv ra t0
	addi sp,sp,20
	ret
	#ret void
	

    .globl .func.string.length
.func.string.length:


mv s0 sp
	addi sp,sp,-32
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %.retval.p=alloca i32
	j .L2
	#br label %.block.9
	
.L2:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.1=load %struct.string*,%struct.string** %This_addr
	lw t0 16(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.len.1 = getelementptr %struct.string,%struct.string* %This_addr.1,i32 0,i32 0
	sw t0,20(sp)
	# %This_addr.len.1 = getelementptr %struct.string,%struct.string* %This_addr.1,i32 0,i32 0
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.4=load i32,i32* %This_addr.len.1
	sw t0,24(sp)
	#  %.middle.4=load i32,i32* %This_addr.len.1
	lw t0 24(sp)
	sw t0,4(sp)
	#  store i32 %.middle.4,i32* %.retval.p
	j .func.string.length.Exit
	#br label %Exit.8
	
.func.string.length.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,28(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 28(sp)
	mv a0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,32
	ret
	#ret i32 %.retval
	

    .globl .func.string.parseInt
.func.string.parseInt:


mv s0 sp
	addi sp,sp,-224
	mv t0 s0
	sw t0,24(sp)
	mv t0 ra
	sw t0,28(sp)
	# %This_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %RV.1.0=alloca i32
	j .L3
	#br label %.block.12
	
.L3:
	li t0 0
	sw t0,8(sp)
	#  store i32 0,i32* %ans.0
	li t0 0
	sw t0,12(sp)
	#  store i32 0,i32* %i.0
	j .L4
	#br label %For_Cond.13
	
.L4:
	lw t0 0(sp)
	sw t0,32(sp)
	#  %This_addr.2=load %struct.string*,%struct.string** %This_addr
	lw t0 32(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.len.2 = getelementptr %struct.string,%struct.string* %This_addr.2,i32 0,i32 0
	sw t0,36(sp)
	# %This_addr.len.2 = getelementptr %struct.string,%struct.string* %This_addr.2,i32 0,i32 0
	lw t0 12(sp)
	sw t0,40(sp)
	#  %.middle.6=load i32,i32* %i.0
	lw t1 36(sp)
	lw t0 0(t1)
	# %.middle.7=load i32,i32* %This_addr.len.2
	sw t0,44(sp)
	#  %.middle.7=load i32,i32* %This_addr.len.2
	lw t0 40(sp)
	lw t1 44(sp)
	slt t0 t0,t1
	#%.middle.5 = icmp slt i32 %.middle.6,%.middle.7
	sw t0,48(sp)
	# %.middle.5 = icmp slt i32 %.middle.6,%.middle.7
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %RV.0.0
	lw t0 48(sp)
	bnez t0 .L5
	lw t0 48(sp)
	beqz t0 .L6
	#br i1 %.middle.5,label %binary_and_rv.17,label %binary_end.18
	
.L5:
	lw t0 0(sp)
	sw t0,52(sp)
	#  %This_addr.3=load %struct.string*,%struct.string** %This_addr
	lw t0 52(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.content.0 = getelementptr %struct.string,%struct.string* %This_addr.3,i32 0,i32 1
	sw t0,56(sp)
	# %This_addr.content.0 = getelementptr %struct.string,%struct.string* %This_addr.3,i32 0,i32 1
	lw t1 56(sp)
	lw t0 0(t1)
	# %.middle.8=load i32*,i32** %This_addr.content.0
	sw t0,60(sp)
	#  %.middle.8=load i32*,i32** %This_addr.content.0
	lw t0 12(sp)
	sw t0,64(sp)
	#  %.middle.10=load i32,i32* %i.0
	lw t0 64(sp)
	sw t0,68(sp)
	lw t0 68(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,68(sp)
	lw t0 60(sp)
	lw t1 68(sp)
	add t0,t0,t1
	#%.middle.9 = getelementptr i32,i32* %.middle.8,i32 %.middle.10
	sw t0,72(sp)
	# %.middle.9 = getelementptr i32,i32* %.middle.8,i32 %.middle.10
	lw t1 72(sp)
	lw t0 0(t1)
	# %.middle.9.0=load i32,i32* %.middle.9
	sw t0,76(sp)
	#  %.middle.9.0=load i32,i32* %.middle.9
	lw t1 72(sp)
	lw t0 0(t1)
	# %.middle.12=load i32,i32* %.middle.9
	sw t0,80(sp)
	#  %.middle.12=load i32,i32* %.middle.9
	li t0 47
	lw t1 80(sp)
	sub t0,t0,t1
	sw t0,84(sp)
	lw t0 84(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.11 = icmp sgt i32 %.middle.12,47
	sw t0,84(sp)
	# %.middle.11 = icmp sgt i32 %.middle.12,47
	lw t0 84(sp)
	sw t0,88(sp)
	# %.FromBool.0 = zext i1 %.middle.11 to i32
	lw t0 88(sp)
	sw t0,16(sp)
	#  store i32 %.FromBool.0,i32* %RV.0.0
	j .L6
	#br label %binary_end.18
	
.L6:
	lw t0 16(sp)
	sw t0,92(sp)
	#  %.ToBool.0=load i32,i32* %RV.0.0
	lw t0 92(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.14 = trunc i32 %.ToBool.0 to i1
	sw t0,96(sp)
	# %.middle.14 = trunc i32 %.ToBool.0 to i1
	lw t0 84(sp)
	lw t1 96(sp)
	and t0,t0,t1
	#%.middle.13 = and i1 %.middle.11,%.middle.14
	sw t0,100(sp)
	# %.middle.13 = and i1 %.middle.11,%.middle.14
	li t0 0
	sw t0,20(sp)
	#  store i32 0,i32* %RV.1.0
	lw t0 100(sp)
	bnez t0 .L7
	lw t0 100(sp)
	beqz t0 .L8
	#br i1 %.middle.13,label %binary_and_rv.19,label %binary_end.20
	
.L7:
	lw t0 0(sp)
	sw t0,104(sp)
	#  %This_addr.4=load %struct.string*,%struct.string** %This_addr
	lw t0 104(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.content.1 = getelementptr %struct.string,%struct.string* %This_addr.4,i32 0,i32 1
	sw t0,108(sp)
	# %This_addr.content.1 = getelementptr %struct.string,%struct.string* %This_addr.4,i32 0,i32 1
	lw t1 108(sp)
	lw t0 0(t1)
	# %.middle.15=load i32*,i32** %This_addr.content.1
	sw t0,112(sp)
	#  %.middle.15=load i32*,i32** %This_addr.content.1
	lw t0 12(sp)
	sw t0,116(sp)
	#  %.middle.17=load i32,i32* %i.0
	lw t0 116(sp)
	sw t0,120(sp)
	lw t0 120(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,120(sp)
	lw t0 112(sp)
	lw t1 120(sp)
	add t0,t0,t1
	#%.middle.16 = getelementptr i32,i32* %.middle.15,i32 %.middle.17
	sw t0,124(sp)
	# %.middle.16 = getelementptr i32,i32* %.middle.15,i32 %.middle.17
	lw t1 124(sp)
	lw t0 0(t1)
	# %.middle.16.0=load i32,i32* %.middle.16
	sw t0,128(sp)
	#  %.middle.16.0=load i32,i32* %.middle.16
	lw t1 124(sp)
	lw t0 0(t1)
	# %.middle.19=load i32,i32* %.middle.16
	sw t0,132(sp)
	#  %.middle.19=load i32,i32* %.middle.16
	lw t0 132(sp)
	li t1 58
	slt t0 t0,t1
	#%.middle.18 = icmp slt i32 %.middle.19,58
	sw t0,136(sp)
	# %.middle.18 = icmp slt i32 %.middle.19,58
	lw t0 136(sp)
	sw t0,140(sp)
	# %.FromBool.1 = zext i1 %.middle.18 to i32
	lw t0 140(sp)
	sw t0,20(sp)
	#  store i32 %.FromBool.1,i32* %RV.1.0
	j .L8
	#br label %binary_end.20
	
.L8:
	lw t0 20(sp)
	sw t0,144(sp)
	#  %.ToBool.1=load i32,i32* %RV.1.0
	lw t0 144(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.21 = trunc i32 %.ToBool.1 to i1
	sw t0,148(sp)
	# %.middle.21 = trunc i32 %.ToBool.1 to i1
	lw t0 136(sp)
	lw t1 148(sp)
	and t0,t0,t1
	#%.middle.20 = and i1 %.middle.18,%.middle.21
	sw t0,152(sp)
	# %.middle.20 = and i1 %.middle.18,%.middle.21
	lw t0 152(sp)
	bnez t0 .L9
	lw t0 152(sp)
	beqz t0 .L11
	#br i1 %.middle.20,label %For_Body.15,label %For_End.14
	
.L9:
	lw t0 8(sp)
	sw t0,156(sp)
	#  %.middle.23=load i32,i32* %ans.0
	lw t0 156(sp)
	li t1 10
	mul t0,t0,t1
	#%.middle.22 = mul i32 %.middle.23,10
	sw t0,160(sp)
	# %.middle.22 = mul i32 %.middle.23,10
	lw t0 0(sp)
	sw t0,164(sp)
	#  %This_addr.5=load %struct.string*,%struct.string** %This_addr
	lw t0 164(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.content.2 = getelementptr %struct.string,%struct.string* %This_addr.5,i32 0,i32 1
	sw t0,168(sp)
	# %This_addr.content.2 = getelementptr %struct.string,%struct.string* %This_addr.5,i32 0,i32 1
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.24=load i32*,i32** %This_addr.content.2
	sw t0,172(sp)
	#  %.middle.24=load i32*,i32** %This_addr.content.2
	lw t0 12(sp)
	sw t0,176(sp)
	#  %.middle.26=load i32,i32* %i.0
	lw t0 176(sp)
	sw t0,180(sp)
	lw t0 180(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,180(sp)
	lw t0 172(sp)
	lw t1 180(sp)
	add t0,t0,t1
	#%.middle.25 = getelementptr i32,i32* %.middle.24,i32 %.middle.26
	sw t0,184(sp)
	# %.middle.25 = getelementptr i32,i32* %.middle.24,i32 %.middle.26
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.25.0=load i32,i32* %.middle.25
	sw t0,188(sp)
	#  %.middle.25.0=load i32,i32* %.middle.25
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.28=load i32,i32* %.middle.25
	sw t0,192(sp)
	#  %.middle.28=load i32,i32* %.middle.25
	lw t0 160(sp)
	lw t1 192(sp)
	add t0,t0,t1
	#%.middle.27 = add i32 %.middle.22,%.middle.28
	sw t0,196(sp)
	# %.middle.27 = add i32 %.middle.22,%.middle.28
	lw t0 196(sp)
	li t1 48
	sub t0,t0,t1
	#%.middle.29 = sub i32 %.middle.27,48
	sw t0,200(sp)
	# %.middle.29 = sub i32 %.middle.27,48
	lw t0 200(sp)
	sw t0,8(sp)
	#  store i32 %.middle.29,i32* %ans.0
	j .L10
	#br label %For_Change.16
	
.L10:
	lw t0 12(sp)
	sw t0,204(sp)
	#  %.middle.31=load i32,i32* %i.0
	lw t0 12(sp)
	sw t0,208(sp)
	#  %.middle.33=load i32,i32* %i.0
	lw t0 208(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.32 = add i32 %.middle.33,1
	sw t0,212(sp)
	# %.middle.32 = add i32 %.middle.33,1
	lw t0 212(sp)
	sw t0,12(sp)
	#  store i32 %.middle.32,i32* %i.0
	j .L4
	#br label %For_Cond.13
	
.L11:
	lw t0 8(sp)
	sw t0,216(sp)
	#  %.middle.34=load i32,i32* %ans.0
	lw t0 216(sp)
	sw t0,4(sp)
	#  store i32 %.middle.34,i32* %.retval.p
	j .func.string.parseInt.Exit
	#br label %Exit.11
	
.func.string.parseInt.Exit:
	lw t0 24(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,220(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 220(sp)
	mv a0 t0
	lw t0 28(sp)
	mv ra t0
	addi sp,sp,224
	ret
	#ret i32 %.retval
	

    .globl .func.string.ord
.func.string.ord:


mv s0 sp
	addi sp,sp,-56
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %pos_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %.retval.p=alloca i32
	j .L12
	#br label %.block.23
	
.L12:
	lw t0 0(sp)
	sw t0,20(sp)
	#  %This_addr.6=load %struct.string*,%struct.string** %This_addr
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.content.3 = getelementptr %struct.string,%struct.string* %This_addr.6,i32 0,i32 1
	sw t0,24(sp)
	# %This_addr.content.3 = getelementptr %struct.string,%struct.string* %This_addr.6,i32 0,i32 1
	lw t1 24(sp)
	lw t0 0(t1)
	# %.middle.35=load i32*,i32** %This_addr.content.3
	sw t0,28(sp)
	#  %.middle.35=load i32*,i32** %This_addr.content.3
	lw t0 4(sp)
	sw t0,32(sp)
	#  %.middle.37=load i32,i32* %pos_addr
	lw t0 32(sp)
	sw t0,36(sp)
	lw t0 36(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,36(sp)
	lw t0 28(sp)
	lw t1 36(sp)
	add t0,t0,t1
	#%.middle.36 = getelementptr i32,i32* %.middle.35,i32 %.middle.37
	sw t0,40(sp)
	# %.middle.36 = getelementptr i32,i32* %.middle.35,i32 %.middle.37
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.36.0=load i32,i32* %.middle.36
	sw t0,44(sp)
	#  %.middle.36.0=load i32,i32* %.middle.36
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.38=load i32,i32* %.middle.36
	sw t0,48(sp)
	#  %.middle.38=load i32,i32* %.middle.36
	lw t0 48(sp)
	sw t0,8(sp)
	#  store i32 %.middle.38,i32* %.retval.p
	j .func.string.ord.Exit
	#br label %Exit.22
	
.func.string.ord.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,52(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 52(sp)
	mv a0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,56
	ret
	#ret i32 %.retval
	

    .globl .func.string.substring
.func.string.substring:


mv s0 sp
	addi sp,sp,-200
	mv t0 s0
	sw t0,28(sp)
	mv t0 ra
	sw t0,32(sp)
	# %This_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %left_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %right_addr=alloca i32
	mv t0 a2
	sw t0,8(sp)
	# %i.1=alloca i32
	j .L13
	#br label %.block.26
	
.L13:
	li t0 2
	mv a0 t0
	mv t0 ra
	sw t0,32(sp)
	call _malloc
	lw t0 32(sp)
	mv ra t0
	mv t0 a0
	sw t0,36(sp)
	# %.middle.40 = call i32* @_malloc(i32 2)
	lw t0 36(sp)
	sw t0,40(sp)
	# %.middle.39 = bitcast i32* %.middle.40 to %struct.string*
	lw t0 40(sp)
	mv a0 t0
	mv t0 ra
	sw t0,32(sp)
	call .func.string.construct
	lw t0 32(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.39)
	lw t0 40(sp)
	sw t0,16(sp)
	#  store %struct.string* %.middle.39,%struct.string** %tmp.0
	lw t0 8(sp)
	sw t0,44(sp)
	#  %.middle.42=load i32,i32* %right_addr
	lw t0 4(sp)
	sw t0,48(sp)
	#  %.middle.43=load i32,i32* %left_addr
	lw t0 44(sp)
	lw t1 48(sp)
	sub t0,t0,t1
	#%.middle.41 = sub i32 %.middle.42,%.middle.43
	sw t0,52(sp)
	# %.middle.41 = sub i32 %.middle.42,%.middle.43
	lw t0 52(sp)
	sw t0,20(sp)
	#  store i32 %.middle.41,i32* %tmplen.0
	lw t0 16(sp)
	sw t0,56(sp)
	#  %tmp.0.0=load %struct.string*,%struct.string** %tmp.0
	lw t0 56(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.44 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	sw t0,60(sp)
	# %.middle.44 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	lw t0 20(sp)
	sw t0,64(sp)
	#  %.middle.45=load i32,i32* %tmplen.0
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,32(sp)
	call _malloc
	lw t0 32(sp)
	mv ra t0
	mv t0 a0
	sw t0,68(sp)
	# %.SizeList.1 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,72(sp)
	lw t0 72(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,72(sp)
	lw t0 68(sp)
	lw t1 72(sp)
	add t0,t0,t1
	#%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	sw t0,76(sp)
	# %.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	lw t1 76(sp)
	lw t0 64(sp)
	sw t0,0(t1)
	#  store i32 %.middle.45,i32* %.ArrayIdx.1
	lw t0 68(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,32(sp)
	call _malloc_toInt
	lw t0 32(sp)
	mv ra t0
	mv t0 a0
	sw t0,80(sp)
	# %.middle.46 = call i32* @_malloc_toInt(i32* %.SizeList.1,i32 1)
	lw t0 80(sp)
	sw t0,84(sp)
	# %.new.1 = bitcast i32* %.middle.46 to i32*
	lw t1 60(sp)
	lw t0 84(sp)
	sw t0,0(t1)
	#  store i32* %.new.1,i32** %.middle.44
	lw t0 16(sp)
	sw t0,88(sp)
	#  %tmp.0.1=load %struct.string*,%struct.string** %tmp.0
	lw t0 88(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.48 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	sw t0,92(sp)
	# %.middle.48 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	lw t0 20(sp)
	sw t0,96(sp)
	#  %.middle.50=load i32,i32* %tmplen.0
	lw t1 92(sp)
	lw t0 96(sp)
	sw t0,0(t1)
	#  store i32 %.middle.50,i32* %.middle.48
	li t0 0
	sw t0,24(sp)
	#  store i32 0,i32* %i.1
	j .L14
	#br label %For_Cond.27
	
.L14:
	lw t0 24(sp)
	sw t0,100(sp)
	#  %.middle.52=load i32,i32* %i.1
	lw t0 20(sp)
	sw t0,104(sp)
	#  %.middle.53=load i32,i32* %tmplen.0
	lw t0 100(sp)
	lw t1 104(sp)
	slt t0 t0,t1
	#%.middle.51 = icmp slt i32 %.middle.52,%.middle.53
	sw t0,108(sp)
	# %.middle.51 = icmp slt i32 %.middle.52,%.middle.53
	lw t0 108(sp)
	bnez t0 .L15
	lw t0 108(sp)
	beqz t0 .L17
	#br i1 %.middle.51,label %For_Body.29,label %For_End.28
	
.L15:
	lw t0 16(sp)
	sw t0,112(sp)
	#  %tmp.0.2=load %struct.string*,%struct.string** %tmp.0
	lw t0 112(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.54 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	sw t0,116(sp)
	# %.middle.54 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.55=load i32*,i32** %.middle.54
	sw t0,120(sp)
	#  %.middle.55=load i32*,i32** %.middle.54
	lw t0 24(sp)
	sw t0,124(sp)
	#  %.middle.57=load i32,i32* %i.1
	lw t0 124(sp)
	sw t0,128(sp)
	lw t0 128(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,128(sp)
	lw t0 120(sp)
	lw t1 128(sp)
	add t0,t0,t1
	#%.middle.56 = getelementptr i32,i32* %.middle.55,i32 %.middle.57
	sw t0,132(sp)
	# %.middle.56 = getelementptr i32,i32* %.middle.55,i32 %.middle.57
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.56.0=load i32,i32* %.middle.56
	sw t0,136(sp)
	#  %.middle.56.0=load i32,i32* %.middle.56
	lw t0 0(sp)
	sw t0,140(sp)
	#  %This_addr.7=load %struct.string*,%struct.string** %This_addr
	lw t0 140(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.content.4 = getelementptr %struct.string,%struct.string* %This_addr.7,i32 0,i32 1
	sw t0,144(sp)
	# %This_addr.content.4 = getelementptr %struct.string,%struct.string* %This_addr.7,i32 0,i32 1
	lw t1 144(sp)
	lw t0 0(t1)
	# %.middle.58=load i32*,i32** %This_addr.content.4
	sw t0,148(sp)
	#  %.middle.58=load i32*,i32** %This_addr.content.4
	lw t0 4(sp)
	sw t0,152(sp)
	#  %.middle.60=load i32,i32* %left_addr
	lw t0 24(sp)
	sw t0,156(sp)
	#  %.middle.61=load i32,i32* %i.1
	lw t0 152(sp)
	lw t1 156(sp)
	add t0,t0,t1
	#%.middle.59 = add i32 %.middle.60,%.middle.61
	sw t0,160(sp)
	# %.middle.59 = add i32 %.middle.60,%.middle.61
	lw t0 160(sp)
	sw t0,164(sp)
	lw t0 164(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,164(sp)
	lw t0 148(sp)
	lw t1 164(sp)
	add t0,t0,t1
	#%.middle.62 = getelementptr i32,i32* %.middle.58,i32 %.middle.59
	sw t0,168(sp)
	# %.middle.62 = getelementptr i32,i32* %.middle.58,i32 %.middle.59
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.62.0=load i32,i32* %.middle.62
	sw t0,172(sp)
	#  %.middle.62.0=load i32,i32* %.middle.62
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.64=load i32,i32* %.middle.62
	sw t0,176(sp)
	#  %.middle.64=load i32,i32* %.middle.62
	lw t1 132(sp)
	lw t0 176(sp)
	sw t0,0(t1)
	#  store i32 %.middle.64,i32* %.middle.56
	j .L16
	#br label %For_Change.30
	
.L16:
	lw t0 24(sp)
	sw t0,180(sp)
	#  %.middle.65=load i32,i32* %i.1
	lw t0 24(sp)
	sw t0,184(sp)
	#  %.middle.67=load i32,i32* %i.1
	lw t0 184(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.66 = add i32 %.middle.67,1
	sw t0,188(sp)
	# %.middle.66 = add i32 %.middle.67,1
	lw t0 188(sp)
	sw t0,24(sp)
	#  store i32 %.middle.66,i32* %i.1
	j .L14
	#br label %For_Cond.27
	
.L17:
	lw t0 16(sp)
	sw t0,192(sp)
	#  %.middle.68=load %struct.string*,%struct.string** %tmp.0
	lw t0 192(sp)
	sw t0,12(sp)
	#  store %struct.string* %.middle.68,%struct.string** %.retval.p
	j .func.string.substring.Exit
	#br label %Exit.25
	
.func.string.substring.Exit:
	lw t0 28(sp)
	mv s0 t0
	lw t0 12(sp)
	sw t0,196(sp)
	#  %.retval=load %struct.string*,%struct.string** %.retval.p
	lw t0 196(sp)
	mv a0 t0
	lw t0 32(sp)
	mv ra t0
	addi sp,sp,200
	ret
	#ret %struct.string* %.retval
	

    .globl .func.Add_String_Together_No_Collision_Please
.func.Add_String_Together_No_Collision_Please:


mv s0 sp
	addi sp,sp,-324
	mv t0 s0
	sw t0,36(sp)
	mv t0 ra
	sw t0,40(sp)
	# %a_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %b_addr=alloca %struct.string*
	mv t0 a1
	sw t0,4(sp)
	# %i.3=alloca i32
	j .L18
	#br label %.block.33
	
.L18:
	li t0 2
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call _malloc
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,44(sp)
	# %.middle.70 = call i32* @_malloc(i32 2)
	lw t0 44(sp)
	sw t0,48(sp)
	# %.middle.69 = bitcast i32* %.middle.70 to %struct.string*
	lw t0 48(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.string.construct
	lw t0 40(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.69)
	lw t0 48(sp)
	sw t0,12(sp)
	#  store %struct.string* %.middle.69,%struct.string** %tmp.1
	lw t0 0(sp)
	sw t0,52(sp)
	#  %a_addr.0=load %struct.string*,%struct.string** %a_addr
	lw t0 52(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.71 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	sw t0,56(sp)
	# %.middle.71 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	lw t0 4(sp)
	sw t0,60(sp)
	#  %b_addr.0=load %struct.string*,%struct.string** %b_addr
	lw t0 60(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.72 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	sw t0,64(sp)
	# %.middle.72 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	lw t1 56(sp)
	lw t0 0(t1)
	# %.middle.74=load i32,i32* %.middle.71
	sw t0,68(sp)
	#  %.middle.74=load i32,i32* %.middle.71
	lw t1 64(sp)
	lw t0 0(t1)
	# %.middle.75=load i32,i32* %.middle.72
	sw t0,72(sp)
	#  %.middle.75=load i32,i32* %.middle.72
	lw t0 68(sp)
	lw t1 72(sp)
	add t0,t0,t1
	#%.middle.73 = add i32 %.middle.74,%.middle.75
	sw t0,76(sp)
	# %.middle.73 = add i32 %.middle.74,%.middle.75
	lw t0 76(sp)
	sw t0,16(sp)
	#  store i32 %.middle.73,i32* %tmplen.1
	lw t0 0(sp)
	sw t0,80(sp)
	#  %a_addr.1=load %struct.string*,%struct.string** %a_addr
	lw t0 80(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.76 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	sw t0,84(sp)
	# %.middle.76 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	lw t1 84(sp)
	lw t0 0(t1)
	# %.middle.77=load i32,i32* %.middle.76
	sw t0,88(sp)
	#  %.middle.77=load i32,i32* %.middle.76
	lw t0 88(sp)
	sw t0,20(sp)
	#  store i32 %.middle.77,i32* %alen.0
	lw t0 4(sp)
	sw t0,92(sp)
	#  %b_addr.1=load %struct.string*,%struct.string** %b_addr
	lw t0 92(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.78 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	sw t0,96(sp)
	# %.middle.78 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	lw t1 96(sp)
	lw t0 0(t1)
	# %.middle.79=load i32,i32* %.middle.78
	sw t0,100(sp)
	#  %.middle.79=load i32,i32* %.middle.78
	lw t0 100(sp)
	sw t0,24(sp)
	#  store i32 %.middle.79,i32* %blen.0
	lw t0 12(sp)
	sw t0,104(sp)
	#  %tmp.1.0=load %struct.string*,%struct.string** %tmp.1
	lw t0 104(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.80 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	sw t0,108(sp)
	# %.middle.80 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	lw t0 16(sp)
	sw t0,112(sp)
	#  %.middle.82=load i32,i32* %tmplen.1
	lw t1 108(sp)
	lw t0 112(sp)
	sw t0,0(t1)
	#  store i32 %.middle.82,i32* %.middle.80
	lw t0 12(sp)
	sw t0,116(sp)
	#  %tmp.1.1=load %struct.string*,%struct.string** %tmp.1
	lw t0 116(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.83 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	sw t0,120(sp)
	# %.middle.83 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	lw t0 16(sp)
	sw t0,124(sp)
	#  %.middle.84=load i32,i32* %tmplen.1
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call _malloc
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,128(sp)
	# %.SizeList.2 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,132(sp)
	lw t0 132(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,132(sp)
	lw t0 128(sp)
	lw t1 132(sp)
	add t0,t0,t1
	#%.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	sw t0,136(sp)
	# %.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	lw t1 136(sp)
	lw t0 124(sp)
	sw t0,0(t1)
	#  store i32 %.middle.84,i32* %.ArrayIdx.2
	lw t0 128(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,40(sp)
	call _malloc_toInt
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,140(sp)
	# %.middle.85 = call i32* @_malloc_toInt(i32* %.SizeList.2,i32 1)
	lw t0 140(sp)
	sw t0,144(sp)
	# %.new.2 = bitcast i32* %.middle.85 to i32*
	lw t1 120(sp)
	lw t0 144(sp)
	sw t0,0(t1)
	#  store i32* %.new.2,i32** %.middle.83
	li t0 0
	sw t0,28(sp)
	#  store i32 0,i32* %i.2
	j .L19
	#br label %For_Cond.34
	
.L19:
	lw t0 28(sp)
	sw t0,148(sp)
	#  %.middle.88=load i32,i32* %i.2
	lw t0 20(sp)
	sw t0,152(sp)
	#  %.middle.89=load i32,i32* %alen.0
	lw t0 148(sp)
	lw t1 152(sp)
	slt t0 t0,t1
	#%.middle.87 = icmp slt i32 %.middle.88,%.middle.89
	sw t0,156(sp)
	# %.middle.87 = icmp slt i32 %.middle.88,%.middle.89
	lw t0 156(sp)
	bnez t0 .L20
	lw t0 156(sp)
	beqz t0 .L22
	#br i1 %.middle.87,label %For_Body.36,label %For_End.35
	
.L20:
	lw t0 12(sp)
	sw t0,160(sp)
	#  %tmp.1.2=load %struct.string*,%struct.string** %tmp.1
	lw t0 160(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.90 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	sw t0,164(sp)
	# %.middle.90 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	lw t1 164(sp)
	lw t0 0(t1)
	# %.middle.91=load i32*,i32** %.middle.90
	sw t0,168(sp)
	#  %.middle.91=load i32*,i32** %.middle.90
	lw t0 28(sp)
	sw t0,172(sp)
	#  %.middle.93=load i32,i32* %i.2
	lw t0 172(sp)
	sw t0,176(sp)
	lw t0 176(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,176(sp)
	lw t0 168(sp)
	lw t1 176(sp)
	add t0,t0,t1
	#%.middle.92 = getelementptr i32,i32* %.middle.91,i32 %.middle.93
	sw t0,180(sp)
	# %.middle.92 = getelementptr i32,i32* %.middle.91,i32 %.middle.93
	lw t1 180(sp)
	lw t0 0(t1)
	# %.middle.92.0=load i32,i32* %.middle.92
	sw t0,184(sp)
	#  %.middle.92.0=load i32,i32* %.middle.92
	lw t0 0(sp)
	sw t0,188(sp)
	#  %a_addr.2=load %struct.string*,%struct.string** %a_addr
	lw t0 188(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.94 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	sw t0,192(sp)
	# %.middle.94 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	lw t1 192(sp)
	lw t0 0(t1)
	# %.middle.95=load i32*,i32** %.middle.94
	sw t0,196(sp)
	#  %.middle.95=load i32*,i32** %.middle.94
	lw t0 28(sp)
	sw t0,200(sp)
	#  %.middle.97=load i32,i32* %i.2
	lw t0 200(sp)
	sw t0,204(sp)
	lw t0 204(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,204(sp)
	lw t0 196(sp)
	lw t1 204(sp)
	add t0,t0,t1
	#%.middle.96 = getelementptr i32,i32* %.middle.95,i32 %.middle.97
	sw t0,208(sp)
	# %.middle.96 = getelementptr i32,i32* %.middle.95,i32 %.middle.97
	lw t1 208(sp)
	lw t0 0(t1)
	# %.middle.96.0=load i32,i32* %.middle.96
	sw t0,212(sp)
	#  %.middle.96.0=load i32,i32* %.middle.96
	lw t1 208(sp)
	lw t0 0(t1)
	# %.middle.99=load i32,i32* %.middle.96
	sw t0,216(sp)
	#  %.middle.99=load i32,i32* %.middle.96
	lw t1 180(sp)
	lw t0 216(sp)
	sw t0,0(t1)
	#  store i32 %.middle.99,i32* %.middle.92
	j .L21
	#br label %For_Change.37
	
.L21:
	lw t0 28(sp)
	sw t0,220(sp)
	#  %.middle.100=load i32,i32* %i.2
	lw t0 220(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.101 = add i32 %.middle.100,1
	sw t0,224(sp)
	# %.middle.101 = add i32 %.middle.100,1
	lw t0 224(sp)
	sw t0,28(sp)
	#  store i32 %.middle.101,i32* %i.2
	j .L19
	#br label %For_Cond.34
	
.L22:
	li t0 0
	sw t0,32(sp)
	#  store i32 0,i32* %i.3
	j .L23
	#br label %For_Cond.38
	
.L23:
	lw t0 32(sp)
	sw t0,228(sp)
	#  %.middle.103=load i32,i32* %i.3
	lw t0 24(sp)
	sw t0,232(sp)
	#  %.middle.104=load i32,i32* %blen.0
	lw t0 228(sp)
	lw t1 232(sp)
	slt t0 t0,t1
	#%.middle.102 = icmp slt i32 %.middle.103,%.middle.104
	sw t0,236(sp)
	# %.middle.102 = icmp slt i32 %.middle.103,%.middle.104
	lw t0 236(sp)
	bnez t0 .L24
	lw t0 236(sp)
	beqz t0 .L26
	#br i1 %.middle.102,label %For_Body.40,label %For_End.39
	
.L24:
	lw t0 12(sp)
	sw t0,240(sp)
	#  %tmp.1.3=load %struct.string*,%struct.string** %tmp.1
	lw t0 240(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.105 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	sw t0,244(sp)
	# %.middle.105 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	lw t1 244(sp)
	lw t0 0(t1)
	# %.middle.106=load i32*,i32** %.middle.105
	sw t0,248(sp)
	#  %.middle.106=load i32*,i32** %.middle.105
	lw t0 32(sp)
	sw t0,252(sp)
	#  %.middle.108=load i32,i32* %i.3
	lw t0 20(sp)
	sw t0,256(sp)
	#  %.middle.109=load i32,i32* %alen.0
	lw t0 252(sp)
	lw t1 256(sp)
	add t0,t0,t1
	#%.middle.107 = add i32 %.middle.108,%.middle.109
	sw t0,260(sp)
	# %.middle.107 = add i32 %.middle.108,%.middle.109
	lw t0 260(sp)
	sw t0,264(sp)
	lw t0 264(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,264(sp)
	lw t0 248(sp)
	lw t1 264(sp)
	add t0,t0,t1
	#%.middle.110 = getelementptr i32,i32* %.middle.106,i32 %.middle.107
	sw t0,268(sp)
	# %.middle.110 = getelementptr i32,i32* %.middle.106,i32 %.middle.107
	lw t1 268(sp)
	lw t0 0(t1)
	# %.middle.110.0=load i32,i32* %.middle.110
	sw t0,272(sp)
	#  %.middle.110.0=load i32,i32* %.middle.110
	lw t0 4(sp)
	sw t0,276(sp)
	#  %b_addr.2=load %struct.string*,%struct.string** %b_addr
	lw t0 276(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.111 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	sw t0,280(sp)
	# %.middle.111 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	lw t1 280(sp)
	lw t0 0(t1)
	# %.middle.112=load i32*,i32** %.middle.111
	sw t0,284(sp)
	#  %.middle.112=load i32*,i32** %.middle.111
	lw t0 32(sp)
	sw t0,288(sp)
	#  %.middle.114=load i32,i32* %i.3
	lw t0 288(sp)
	sw t0,292(sp)
	lw t0 292(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,292(sp)
	lw t0 284(sp)
	lw t1 292(sp)
	add t0,t0,t1
	#%.middle.113 = getelementptr i32,i32* %.middle.112,i32 %.middle.114
	sw t0,296(sp)
	# %.middle.113 = getelementptr i32,i32* %.middle.112,i32 %.middle.114
	lw t1 296(sp)
	lw t0 0(t1)
	# %.middle.113.0=load i32,i32* %.middle.113
	sw t0,300(sp)
	#  %.middle.113.0=load i32,i32* %.middle.113
	lw t1 296(sp)
	lw t0 0(t1)
	# %.middle.116=load i32,i32* %.middle.113
	sw t0,304(sp)
	#  %.middle.116=load i32,i32* %.middle.113
	lw t1 268(sp)
	lw t0 304(sp)
	sw t0,0(t1)
	#  store i32 %.middle.116,i32* %.middle.110
	j .L25
	#br label %For_Change.41
	
.L25:
	lw t0 32(sp)
	sw t0,308(sp)
	#  %.middle.117=load i32,i32* %i.3
	lw t0 308(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.118 = add i32 %.middle.117,1
	sw t0,312(sp)
	# %.middle.118 = add i32 %.middle.117,1
	lw t0 312(sp)
	sw t0,32(sp)
	#  store i32 %.middle.118,i32* %i.3
	j .L23
	#br label %For_Cond.38
	
.L26:
	lw t0 12(sp)
	sw t0,316(sp)
	#  %.middle.119=load %struct.string*,%struct.string** %tmp.1
	lw t0 316(sp)
	sw t0,8(sp)
	#  store %struct.string* %.middle.119,%struct.string** %.retval.p
	j .func.Add_String_Together_No_Collision_Please.Exit
	#br label %Exit.32
	
.func.Add_String_Together_No_Collision_Please.Exit:
	lw t0 36(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,320(sp)
	#  %.retval=load %struct.string*,%struct.string** %.retval.p
	lw t0 320(sp)
	mv a0 t0
	lw t0 40(sp)
	mv ra t0
	addi sp,sp,324
	ret
	#ret %struct.string* %.retval
	

    .globl .func.Less_Compare_String_Together_No_Collision_Please
.func.Less_Compare_String_Together_No_Collision_Please:


mv s0 sp
	addi sp,sp,-288
	mv t0 s0
	sw t0,20(sp)
	mv t0 ra
	sw t0,24(sp)
	# %a_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %b_addr=alloca %struct.string*
	mv t0 a1
	sw t0,4(sp)
	# %i.4=alloca i32
	j .L27
	#br label %.block.44
	
.L27:
	lw t0 4(sp)
	sw t0,28(sp)
	#  %b_addr.3=load %struct.string*,%struct.string** %b_addr
	lw t0 28(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.120 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	sw t0,32(sp)
	# %.middle.120 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.121=load i32,i32* %.middle.120
	sw t0,36(sp)
	#  %.middle.121=load i32,i32* %.middle.120
	lw t0 36(sp)
	sw t0,12(sp)
	#  store i32 %.middle.121,i32* %len.0
	j .L28
	#br label %If_Cond.45
	
.L28:
	lw t0 0(sp)
	sw t0,40(sp)
	#  %a_addr.3=load %struct.string*,%struct.string** %a_addr
	lw t0 40(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.122 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	sw t0,44(sp)
	# %.middle.122 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	lw t0 4(sp)
	sw t0,48(sp)
	#  %b_addr.4=load %struct.string*,%struct.string** %b_addr
	lw t0 48(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.123 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	sw t0,52(sp)
	# %.middle.123 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	lw t1 44(sp)
	lw t0 0(t1)
	# %.middle.125=load i32,i32* %.middle.122
	sw t0,56(sp)
	#  %.middle.125=load i32,i32* %.middle.122
	lw t1 52(sp)
	lw t0 0(t1)
	# %.middle.126=load i32,i32* %.middle.123
	sw t0,60(sp)
	#  %.middle.126=load i32,i32* %.middle.123
	lw t0 56(sp)
	lw t1 60(sp)
	slt t0 t0,t1
	#%.middle.124 = icmp slt i32 %.middle.125,%.middle.126
	sw t0,64(sp)
	# %.middle.124 = icmp slt i32 %.middle.125,%.middle.126
	lw t0 64(sp)
	bnez t0 .L29
	lw t0 64(sp)
	beqz t0 .L30
	#br i1 %.middle.124,label %If_Then.46,label %If_Else.47
	
.L29:
	lw t0 0(sp)
	sw t0,68(sp)
	#  %a_addr.4=load %struct.string*,%struct.string** %a_addr
	lw t0 68(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.127 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	sw t0,72(sp)
	# %.middle.127 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	lw t1 72(sp)
	lw t0 0(t1)
	# %.middle.129=load i32,i32* %.middle.127
	sw t0,76(sp)
	#  %.middle.129=load i32,i32* %.middle.127
	lw t0 76(sp)
	sw t0,12(sp)
	#  store i32 %.middle.129,i32* %len.0
	j .L31
	#br label %If_End.48
	
.L30:
	j .L31
	#br label %If_End.48
	
.L31:
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %i.4
	j .L32
	#br label %For_Cond.49
	
.L32:
	lw t0 16(sp)
	sw t0,80(sp)
	#  %.middle.131=load i32,i32* %i.4
	lw t0 12(sp)
	sw t0,84(sp)
	#  %.middle.132=load i32,i32* %len.0
	lw t0 80(sp)
	lw t1 84(sp)
	slt t0 t0,t1
	#%.middle.130 = icmp slt i32 %.middle.131,%.middle.132
	sw t0,88(sp)
	# %.middle.130 = icmp slt i32 %.middle.131,%.middle.132
	lw t0 88(sp)
	bnez t0 .L33
	lw t0 88(sp)
	beqz t0 .L43
	#br i1 %.middle.130,label %For_Body.51,label %For_End.50
	
.L33:
	j .L34
	#br label %If_Cond.53
	
.L34:
	lw t0 0(sp)
	sw t0,92(sp)
	#  %a_addr.5=load %struct.string*,%struct.string** %a_addr
	lw t0 92(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.133 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	sw t0,96(sp)
	# %.middle.133 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	lw t1 96(sp)
	lw t0 0(t1)
	# %.middle.134=load i32*,i32** %.middle.133
	sw t0,100(sp)
	#  %.middle.134=load i32*,i32** %.middle.133
	lw t0 16(sp)
	sw t0,104(sp)
	#  %.middle.136=load i32,i32* %i.4
	lw t0 104(sp)
	sw t0,108(sp)
	lw t0 108(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,108(sp)
	lw t0 100(sp)
	lw t1 108(sp)
	add t0,t0,t1
	#%.middle.135 = getelementptr i32,i32* %.middle.134,i32 %.middle.136
	sw t0,112(sp)
	# %.middle.135 = getelementptr i32,i32* %.middle.134,i32 %.middle.136
	lw t1 112(sp)
	lw t0 0(t1)
	# %.middle.135.0=load i32,i32* %.middle.135
	sw t0,116(sp)
	#  %.middle.135.0=load i32,i32* %.middle.135
	lw t0 4(sp)
	sw t0,120(sp)
	#  %b_addr.5=load %struct.string*,%struct.string** %b_addr
	lw t0 120(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.137 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	sw t0,124(sp)
	# %.middle.137 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	lw t1 124(sp)
	lw t0 0(t1)
	# %.middle.138=load i32*,i32** %.middle.137
	sw t0,128(sp)
	#  %.middle.138=load i32*,i32** %.middle.137
	lw t0 16(sp)
	sw t0,132(sp)
	#  %.middle.140=load i32,i32* %i.4
	lw t0 132(sp)
	sw t0,136(sp)
	lw t0 136(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,136(sp)
	lw t0 128(sp)
	lw t1 136(sp)
	add t0,t0,t1
	#%.middle.139 = getelementptr i32,i32* %.middle.138,i32 %.middle.140
	sw t0,140(sp)
	# %.middle.139 = getelementptr i32,i32* %.middle.138,i32 %.middle.140
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.139.0=load i32,i32* %.middle.139
	sw t0,144(sp)
	#  %.middle.139.0=load i32,i32* %.middle.139
	lw t1 112(sp)
	lw t0 0(t1)
	# %.middle.142=load i32,i32* %.middle.135
	sw t0,148(sp)
	#  %.middle.142=load i32,i32* %.middle.135
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.143=load i32,i32* %.middle.139
	sw t0,152(sp)
	#  %.middle.143=load i32,i32* %.middle.139
	lw t0 148(sp)
	lw t1 152(sp)
	slt t0 t0,t1
	#%.middle.141 = icmp slt i32 %.middle.142,%.middle.143
	sw t0,156(sp)
	# %.middle.141 = icmp slt i32 %.middle.142,%.middle.143
	lw t0 156(sp)
	bnez t0 .L35
	lw t0 156(sp)
	beqz t0 .L36
	#br i1 %.middle.141,label %If_Then.54,label %If_Else.55
	
.L35:
	li t0 1
	sw t0,160(sp)
	# %.FromBool.2 = zext i1 1 to i32
	lw t0 160(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.2,i32* %.retval.p
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
	sw t0,164(sp)
	#  %a_addr.6=load %struct.string*,%struct.string** %a_addr
	lw t0 164(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.144 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	sw t0,168(sp)
	# %.middle.144 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.145=load i32*,i32** %.middle.144
	sw t0,172(sp)
	#  %.middle.145=load i32*,i32** %.middle.144
	lw t0 16(sp)
	sw t0,176(sp)
	#  %.middle.147=load i32,i32* %i.4
	lw t0 176(sp)
	sw t0,180(sp)
	lw t0 180(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,180(sp)
	lw t0 172(sp)
	lw t1 180(sp)
	add t0,t0,t1
	#%.middle.146 = getelementptr i32,i32* %.middle.145,i32 %.middle.147
	sw t0,184(sp)
	# %.middle.146 = getelementptr i32,i32* %.middle.145,i32 %.middle.147
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.146.0=load i32,i32* %.middle.146
	sw t0,188(sp)
	#  %.middle.146.0=load i32,i32* %.middle.146
	lw t0 4(sp)
	sw t0,192(sp)
	#  %b_addr.6=load %struct.string*,%struct.string** %b_addr
	lw t0 192(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.148 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	sw t0,196(sp)
	# %.middle.148 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	lw t1 196(sp)
	lw t0 0(t1)
	# %.middle.149=load i32*,i32** %.middle.148
	sw t0,200(sp)
	#  %.middle.149=load i32*,i32** %.middle.148
	lw t0 16(sp)
	sw t0,204(sp)
	#  %.middle.151=load i32,i32* %i.4
	lw t0 204(sp)
	sw t0,208(sp)
	lw t0 208(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,208(sp)
	lw t0 200(sp)
	lw t1 208(sp)
	add t0,t0,t1
	#%.middle.150 = getelementptr i32,i32* %.middle.149,i32 %.middle.151
	sw t0,212(sp)
	# %.middle.150 = getelementptr i32,i32* %.middle.149,i32 %.middle.151
	lw t1 212(sp)
	lw t0 0(t1)
	# %.middle.150.0=load i32,i32* %.middle.150
	sw t0,216(sp)
	#  %.middle.150.0=load i32,i32* %.middle.150
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.153=load i32,i32* %.middle.146
	sw t0,220(sp)
	#  %.middle.153=load i32,i32* %.middle.146
	lw t1 212(sp)
	lw t0 0(t1)
	# %.middle.154=load i32,i32* %.middle.150
	sw t0,224(sp)
	#  %.middle.154=load i32,i32* %.middle.150
	lw t0 224(sp)
	lw t1 220(sp)
	sub t0,t0,t1
	sw t0,228(sp)
	lw t0 228(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.152 = icmp sgt i32 %.middle.153,%.middle.154
	sw t0,228(sp)
	# %.middle.152 = icmp sgt i32 %.middle.153,%.middle.154
	lw t0 228(sp)
	bnez t0 .L39
	lw t0 228(sp)
	beqz t0 .L40
	#br i1 %.middle.152,label %If_Then.58,label %If_Else.59
	
.L39:
	li t0 0
	sw t0,232(sp)
	# %.FromBool.3 = zext i1 0 to i32
	lw t0 232(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.3,i32* %.retval.p
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
	sw t0,236(sp)
	#  %.middle.155=load i32,i32* %i.4
	lw t0 236(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.156 = add i32 %.middle.155,1
	sw t0,240(sp)
	# %.middle.156 = add i32 %.middle.155,1
	lw t0 240(sp)
	sw t0,16(sp)
	#  store i32 %.middle.156,i32* %i.4
	j .L32
	#br label %For_Cond.49
	
.L43:
	j .L44
	#br label %If_Cond.61
	
.L44:
	lw t0 0(sp)
	sw t0,244(sp)
	#  %a_addr.7=load %struct.string*,%struct.string** %a_addr
	lw t0 244(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.157 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	sw t0,248(sp)
	# %.middle.157 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	lw t0 4(sp)
	sw t0,252(sp)
	#  %b_addr.7=load %struct.string*,%struct.string** %b_addr
	lw t0 252(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.158 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	sw t0,256(sp)
	# %.middle.158 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	lw t1 248(sp)
	lw t0 0(t1)
	# %.middle.160=load i32,i32* %.middle.157
	sw t0,260(sp)
	#  %.middle.160=load i32,i32* %.middle.157
	lw t1 256(sp)
	lw t0 0(t1)
	# %.middle.161=load i32,i32* %.middle.158
	sw t0,264(sp)
	#  %.middle.161=load i32,i32* %.middle.158
	lw t0 264(sp)
	lw t1 260(sp)
	sub t0,t0,t1
	sw t0,268(sp)
	lw t0 268(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.159 = icmp sgt i32 %.middle.160,%.middle.161
	sw t0,268(sp)
	# %.middle.159 = icmp sgt i32 %.middle.160,%.middle.161
	lw t0 268(sp)
	bnez t0 .L45
	lw t0 268(sp)
	beqz t0 .L46
	#br i1 %.middle.159,label %If_Then.62,label %If_Else.63
	
.L45:
	li t0 1
	sw t0,272(sp)
	# %.FromBool.4 = zext i1 1 to i32
	lw t0 272(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.4,i32* %.retval.p
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.L46:
	j .L47
	#br label %If_End.64
	
.L47:
	li t0 0
	sw t0,276(sp)
	# %.FromBool.5 = zext i1 0 to i32
	lw t0 276(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.5,i32* %.retval.p
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.func.Less_Compare_String_Together_No_Collision_Please.Exit:
	lw t0 20(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,280(sp)
	#  %.retval.Tobool=load i32,i32* %.retval.p
	lw t0 280(sp)
	li t1 1
	and t0,t0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	sw t0,284(sp)
	# %.retval = trunc i32 %.retval.Tobool to i1
	lw t0 284(sp)
	mv a0 t0
	lw t0 24(sp)
	mv ra t0
	addi sp,sp,288
	ret
	#ret i1 %.retval
	

    .globl .func.Equal_String_Together_No_Collision_Please
.func.Equal_String_Together_No_Collision_Please:


mv s0 sp
	addi sp,sp,-176
	mv t0 s0
	sw t0,20(sp)
	mv t0 ra
	sw t0,24(sp)
	# %a_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %b_addr=alloca %struct.string*
	mv t0 a1
	sw t0,4(sp)
	# %i.5=alloca i32
	j .L48
	#br label %.block.67
	
.L48:
	j .L49
	#br label %If_Cond.68
	
.L49:
	lw t0 0(sp)
	sw t0,28(sp)
	#  %a_addr.8=load %struct.string*,%struct.string** %a_addr
	lw t0 28(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.162 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	sw t0,32(sp)
	# %.middle.162 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	lw t0 4(sp)
	sw t0,36(sp)
	#  %b_addr.8=load %struct.string*,%struct.string** %b_addr
	lw t0 36(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.163 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	sw t0,40(sp)
	# %.middle.163 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.165=load i32,i32* %.middle.162
	sw t0,44(sp)
	#  %.middle.165=load i32,i32* %.middle.162
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.166=load i32,i32* %.middle.163
	sw t0,48(sp)
	#  %.middle.166=load i32,i32* %.middle.163
	lw t0 44(sp)
	lw t1 48(sp)
	sub t0,t0,t1
	sw t0,52(sp)
	lw t0 52(sp)
	snez t0 t0
	#%.middle.164 = icmp ne i32 %.middle.165,%.middle.166
	sw t0,52(sp)
	# %.middle.164 = icmp ne i32 %.middle.165,%.middle.166
	lw t0 52(sp)
	bnez t0 .L50
	lw t0 52(sp)
	beqz t0 .L51
	#br i1 %.middle.164,label %If_Then.69,label %If_Else.70
	
.L50:
	li t0 0
	sw t0,56(sp)
	# %.FromBool.6 = zext i1 0 to i32
	lw t0 56(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.6,i32* %.retval.p
	j .func.Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.66
	
.L51:
	j .L52
	#br label %If_End.71
	
.L52:
	lw t0 0(sp)
	sw t0,60(sp)
	#  %a_addr.9=load %struct.string*,%struct.string** %a_addr
	lw t0 60(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.167 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	sw t0,64(sp)
	# %.middle.167 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	lw t1 64(sp)
	lw t0 0(t1)
	# %.middle.168=load i32,i32* %.middle.167
	sw t0,68(sp)
	#  %.middle.168=load i32,i32* %.middle.167
	lw t0 68(sp)
	sw t0,12(sp)
	#  store i32 %.middle.168,i32* %len.1
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %i.5
	j .L53
	#br label %For_Cond.72
	
.L53:
	lw t0 16(sp)
	sw t0,72(sp)
	#  %.middle.170=load i32,i32* %i.5
	lw t0 12(sp)
	sw t0,76(sp)
	#  %.middle.171=load i32,i32* %len.1
	lw t0 72(sp)
	lw t1 76(sp)
	slt t0 t0,t1
	#%.middle.169 = icmp slt i32 %.middle.170,%.middle.171
	sw t0,80(sp)
	# %.middle.169 = icmp slt i32 %.middle.170,%.middle.171
	lw t0 80(sp)
	bnez t0 .L54
	lw t0 80(sp)
	beqz t0 .L60
	#br i1 %.middle.169,label %For_Body.74,label %For_End.73
	
.L54:
	j .L55
	#br label %If_Cond.76
	
.L55:
	lw t0 0(sp)
	sw t0,84(sp)
	#  %a_addr.10=load %struct.string*,%struct.string** %a_addr
	lw t0 84(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.172 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	sw t0,88(sp)
	# %.middle.172 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	lw t1 88(sp)
	lw t0 0(t1)
	# %.middle.173=load i32*,i32** %.middle.172
	sw t0,92(sp)
	#  %.middle.173=load i32*,i32** %.middle.172
	lw t0 16(sp)
	sw t0,96(sp)
	#  %.middle.175=load i32,i32* %i.5
	lw t0 96(sp)
	sw t0,100(sp)
	lw t0 100(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,100(sp)
	lw t0 92(sp)
	lw t1 100(sp)
	add t0,t0,t1
	#%.middle.174 = getelementptr i32,i32* %.middle.173,i32 %.middle.175
	sw t0,104(sp)
	# %.middle.174 = getelementptr i32,i32* %.middle.173,i32 %.middle.175
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.174.0=load i32,i32* %.middle.174
	sw t0,108(sp)
	#  %.middle.174.0=load i32,i32* %.middle.174
	lw t0 4(sp)
	sw t0,112(sp)
	#  %b_addr.9=load %struct.string*,%struct.string** %b_addr
	lw t0 112(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.176 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	sw t0,116(sp)
	# %.middle.176 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.177=load i32*,i32** %.middle.176
	sw t0,120(sp)
	#  %.middle.177=load i32*,i32** %.middle.176
	lw t0 16(sp)
	sw t0,124(sp)
	#  %.middle.179=load i32,i32* %i.5
	lw t0 124(sp)
	sw t0,128(sp)
	lw t0 128(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,128(sp)
	lw t0 120(sp)
	lw t1 128(sp)
	add t0,t0,t1
	#%.middle.178 = getelementptr i32,i32* %.middle.177,i32 %.middle.179
	sw t0,132(sp)
	# %.middle.178 = getelementptr i32,i32* %.middle.177,i32 %.middle.179
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.178.0=load i32,i32* %.middle.178
	sw t0,136(sp)
	#  %.middle.178.0=load i32,i32* %.middle.178
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.181=load i32,i32* %.middle.174
	sw t0,140(sp)
	#  %.middle.181=load i32,i32* %.middle.174
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.182=load i32,i32* %.middle.178
	sw t0,144(sp)
	#  %.middle.182=load i32,i32* %.middle.178
	lw t0 140(sp)
	lw t1 144(sp)
	sub t0,t0,t1
	sw t0,148(sp)
	lw t0 148(sp)
	snez t0 t0
	#%.middle.180 = icmp ne i32 %.middle.181,%.middle.182
	sw t0,148(sp)
	# %.middle.180 = icmp ne i32 %.middle.181,%.middle.182
	lw t0 148(sp)
	bnez t0 .L56
	lw t0 148(sp)
	beqz t0 .L57
	#br i1 %.middle.180,label %If_Then.77,label %If_Else.78
	
.L56:
	li t0 0
	sw t0,152(sp)
	# %.FromBool.7 = zext i1 0 to i32
	lw t0 152(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.7,i32* %.retval.p
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
	sw t0,156(sp)
	#  %.middle.183=load i32,i32* %i.5
	lw t0 156(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.184 = add i32 %.middle.183,1
	sw t0,160(sp)
	# %.middle.184 = add i32 %.middle.183,1
	lw t0 160(sp)
	sw t0,16(sp)
	#  store i32 %.middle.184,i32* %i.5
	j .L53
	#br label %For_Cond.72
	
.L60:
	li t0 1
	sw t0,164(sp)
	# %.FromBool.8 = zext i1 1 to i32
	lw t0 164(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.8,i32* %.retval.p
	j .func.Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.66
	
.func.Equal_String_Together_No_Collision_Please.Exit:
	lw t0 20(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,168(sp)
	#  %.retval.Tobool=load i32,i32* %.retval.p
	lw t0 168(sp)
	li t1 1
	and t0,t0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	sw t0,172(sp)
	# %.retval = trunc i32 %.retval.Tobool to i1
	lw t0 172(sp)
	mv a0 t0
	lw t0 24(sp)
	mv ra t0
	addi sp,sp,176
	ret
	#ret i1 %.retval
	

    .globl .func.Not_Equal_String_Together_No_Collision_Please
.func.Not_Equal_String_Together_No_Collision_Please:


mv s0 sp
	addi sp,sp,-176
	mv t0 s0
	sw t0,20(sp)
	mv t0 ra
	sw t0,24(sp)
	# %a_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %b_addr=alloca %struct.string*
	mv t0 a1
	sw t0,4(sp)
	# %i.6=alloca i32
	j .L61
	#br label %.block.82
	
.L61:
	j .L62
	#br label %If_Cond.83
	
.L62:
	lw t0 0(sp)
	sw t0,28(sp)
	#  %a_addr.11=load %struct.string*,%struct.string** %a_addr
	lw t0 28(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.185 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	sw t0,32(sp)
	# %.middle.185 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	lw t0 4(sp)
	sw t0,36(sp)
	#  %b_addr.10=load %struct.string*,%struct.string** %b_addr
	lw t0 36(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.186 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	sw t0,40(sp)
	# %.middle.186 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.188=load i32,i32* %.middle.185
	sw t0,44(sp)
	#  %.middle.188=load i32,i32* %.middle.185
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.189=load i32,i32* %.middle.186
	sw t0,48(sp)
	#  %.middle.189=load i32,i32* %.middle.186
	lw t0 44(sp)
	lw t1 48(sp)
	sub t0,t0,t1
	sw t0,52(sp)
	lw t0 52(sp)
	snez t0 t0
	#%.middle.187 = icmp ne i32 %.middle.188,%.middle.189
	sw t0,52(sp)
	# %.middle.187 = icmp ne i32 %.middle.188,%.middle.189
	lw t0 52(sp)
	bnez t0 .L63
	lw t0 52(sp)
	beqz t0 .L64
	#br i1 %.middle.187,label %If_Then.84,label %If_Else.85
	
.L63:
	li t0 1
	sw t0,56(sp)
	# %.FromBool.9 = zext i1 1 to i32
	lw t0 56(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.9,i32* %.retval.p
	j .func.Not_Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.81
	
.L64:
	j .L65
	#br label %If_End.86
	
.L65:
	lw t0 0(sp)
	sw t0,60(sp)
	#  %a_addr.12=load %struct.string*,%struct.string** %a_addr
	lw t0 60(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.190 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	sw t0,64(sp)
	# %.middle.190 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	lw t1 64(sp)
	lw t0 0(t1)
	# %.middle.191=load i32,i32* %.middle.190
	sw t0,68(sp)
	#  %.middle.191=load i32,i32* %.middle.190
	lw t0 68(sp)
	sw t0,12(sp)
	#  store i32 %.middle.191,i32* %len.2
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %i.6
	j .L66
	#br label %For_Cond.87
	
.L66:
	lw t0 16(sp)
	sw t0,72(sp)
	#  %.middle.193=load i32,i32* %i.6
	lw t0 12(sp)
	sw t0,76(sp)
	#  %.middle.194=load i32,i32* %len.2
	lw t0 72(sp)
	lw t1 76(sp)
	slt t0 t0,t1
	#%.middle.192 = icmp slt i32 %.middle.193,%.middle.194
	sw t0,80(sp)
	# %.middle.192 = icmp slt i32 %.middle.193,%.middle.194
	lw t0 80(sp)
	bnez t0 .L67
	lw t0 80(sp)
	beqz t0 .L73
	#br i1 %.middle.192,label %For_Body.89,label %For_End.88
	
.L67:
	j .L68
	#br label %If_Cond.91
	
.L68:
	lw t0 0(sp)
	sw t0,84(sp)
	#  %a_addr.13=load %struct.string*,%struct.string** %a_addr
	lw t0 84(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.195 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	sw t0,88(sp)
	# %.middle.195 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	lw t1 88(sp)
	lw t0 0(t1)
	# %.middle.196=load i32*,i32** %.middle.195
	sw t0,92(sp)
	#  %.middle.196=load i32*,i32** %.middle.195
	lw t0 16(sp)
	sw t0,96(sp)
	#  %.middle.198=load i32,i32* %i.6
	lw t0 96(sp)
	sw t0,100(sp)
	lw t0 100(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,100(sp)
	lw t0 92(sp)
	lw t1 100(sp)
	add t0,t0,t1
	#%.middle.197 = getelementptr i32,i32* %.middle.196,i32 %.middle.198
	sw t0,104(sp)
	# %.middle.197 = getelementptr i32,i32* %.middle.196,i32 %.middle.198
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.197.0=load i32,i32* %.middle.197
	sw t0,108(sp)
	#  %.middle.197.0=load i32,i32* %.middle.197
	lw t0 4(sp)
	sw t0,112(sp)
	#  %b_addr.11=load %struct.string*,%struct.string** %b_addr
	lw t0 112(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.199 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	sw t0,116(sp)
	# %.middle.199 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.200=load i32*,i32** %.middle.199
	sw t0,120(sp)
	#  %.middle.200=load i32*,i32** %.middle.199
	lw t0 16(sp)
	sw t0,124(sp)
	#  %.middle.202=load i32,i32* %i.6
	lw t0 124(sp)
	sw t0,128(sp)
	lw t0 128(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,128(sp)
	lw t0 120(sp)
	lw t1 128(sp)
	add t0,t0,t1
	#%.middle.201 = getelementptr i32,i32* %.middle.200,i32 %.middle.202
	sw t0,132(sp)
	# %.middle.201 = getelementptr i32,i32* %.middle.200,i32 %.middle.202
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.201.0=load i32,i32* %.middle.201
	sw t0,136(sp)
	#  %.middle.201.0=load i32,i32* %.middle.201
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.204=load i32,i32* %.middle.197
	sw t0,140(sp)
	#  %.middle.204=load i32,i32* %.middle.197
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.205=load i32,i32* %.middle.201
	sw t0,144(sp)
	#  %.middle.205=load i32,i32* %.middle.201
	lw t0 140(sp)
	lw t1 144(sp)
	sub t0,t0,t1
	sw t0,148(sp)
	lw t0 148(sp)
	snez t0 t0
	#%.middle.203 = icmp ne i32 %.middle.204,%.middle.205
	sw t0,148(sp)
	# %.middle.203 = icmp ne i32 %.middle.204,%.middle.205
	lw t0 148(sp)
	bnez t0 .L69
	lw t0 148(sp)
	beqz t0 .L70
	#br i1 %.middle.203,label %If_Then.92,label %If_Else.93
	
.L69:
	li t0 1
	sw t0,152(sp)
	# %.FromBool.10 = zext i1 1 to i32
	lw t0 152(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.10,i32* %.retval.p
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
	sw t0,156(sp)
	#  %.middle.206=load i32,i32* %i.6
	lw t0 156(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.207 = add i32 %.middle.206,1
	sw t0,160(sp)
	# %.middle.207 = add i32 %.middle.206,1
	lw t0 160(sp)
	sw t0,16(sp)
	#  store i32 %.middle.207,i32* %i.6
	j .L66
	#br label %For_Cond.87
	
.L73:
	li t0 0
	sw t0,164(sp)
	# %.FromBool.11 = zext i1 0 to i32
	lw t0 164(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.11,i32* %.retval.p
	j .func.Not_Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.81
	
.func.Not_Equal_String_Together_No_Collision_Please.Exit:
	lw t0 20(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,168(sp)
	#  %.retval.Tobool=load i32,i32* %.retval.p
	lw t0 168(sp)
	li t1 1
	and t0,t0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	sw t0,172(sp)
	# %.retval = trunc i32 %.retval.Tobool to i1
	lw t0 172(sp)
	mv a0 t0
	lw t0 24(sp)
	mv ra t0
	addi sp,sp,176
	ret
	#ret i1 %.retval
	

    .globl .func.LE_Compare_String_Together_No_Collision_Please
.func.LE_Compare_String_Together_No_Collision_Please:


mv s0 sp
	addi sp,sp,-92
	mv t0 s0
	sw t0,20(sp)
	mv t0 ra
	sw t0,24(sp)
	# %a_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %b_addr=alloca %struct.string*
	mv t0 a1
	sw t0,4(sp)
	# %.Func.Return.p.1.0=alloca i32
	j .L74
	#br label %.block.97
	
.L74:
	lw t0 0(sp)
	sw t0,28(sp)
	#  %.middle.208=load %struct.string*,%struct.string** %a_addr
	lw t0 4(sp)
	sw t0,32(sp)
	#  %.middle.209=load %struct.string*,%struct.string** %b_addr
	lw t0 28(sp)
	mv a0 t0
	lw t0 32(sp)
	mv a1 t0
	mv t0 ra
	sw t0,24(sp)
	call .func.Less_Compare_String_Together_No_Collision_Please
	lw t0 24(sp)
	mv ra t0
	mv t0 a0
	sw t0,36(sp)
	# %.Func_Return.0 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.208,%struct.string* %.middle.209)
	lw t0 36(sp)
	sw t0,40(sp)
	# %.FromBool.12 = zext i1 %.Func_Return.0 to i32
	lw t0 40(sp)
	sw t0,12(sp)
	#  store i32 %.FromBool.12,i32* %.Func.Return.p.0.0
	lw t0 0(sp)
	sw t0,44(sp)
	#  %.middle.210=load %struct.string*,%struct.string** %a_addr
	lw t0 4(sp)
	sw t0,48(sp)
	#  %.middle.211=load %struct.string*,%struct.string** %b_addr
	lw t0 44(sp)
	mv a0 t0
	lw t0 48(sp)
	mv a1 t0
	mv t0 ra
	sw t0,24(sp)
	call .func.Equal_String_Together_No_Collision_Please
	lw t0 24(sp)
	mv ra t0
	mv t0 a0
	sw t0,52(sp)
	# %.Func_Return.1 = call i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %.middle.210,%struct.string* %.middle.211)
	lw t0 52(sp)
	sw t0,56(sp)
	# %.FromBool.13 = zext i1 %.Func_Return.1 to i32
	lw t0 56(sp)
	sw t0,16(sp)
	#  store i32 %.FromBool.13,i32* %.Func.Return.p.1.0
	lw t0 12(sp)
	sw t0,60(sp)
	#  %.ToBool.2=load i32,i32* %.Func.Return.p.0.0
	lw t0 60(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.213 = trunc i32 %.ToBool.2 to i1
	sw t0,64(sp)
	# %.middle.213 = trunc i32 %.ToBool.2 to i1
	lw t0 16(sp)
	sw t0,68(sp)
	#  %.ToBool.3=load i32,i32* %.Func.Return.p.1.0
	lw t0 68(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.214 = trunc i32 %.ToBool.3 to i1
	sw t0,72(sp)
	# %.middle.214 = trunc i32 %.ToBool.3 to i1
	lw t0 64(sp)
	lw t1 72(sp)
	or t0,t0,t1
	#%.middle.212 = or i1 %.middle.213,%.middle.214
	sw t0,76(sp)
	# %.middle.212 = or i1 %.middle.213,%.middle.214
	lw t0 76(sp)
	sw t0,80(sp)
	# %.FromBool.14 = zext i1 %.middle.212 to i32
	lw t0 80(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.14,i32* %.retval.p
	j .func.LE_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.96
	
.func.LE_Compare_String_Together_No_Collision_Please.Exit:
	lw t0 20(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,84(sp)
	#  %.retval.Tobool=load i32,i32* %.retval.p
	lw t0 84(sp)
	li t1 1
	and t0,t0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	sw t0,88(sp)
	# %.retval = trunc i32 %.retval.Tobool to i1
	lw t0 88(sp)
	mv a0 t0
	lw t0 24(sp)
	mv ra t0
	addi sp,sp,92
	ret
	#ret i1 %.retval
	

    .globl .func.Greater_Compare_String_Together_No_Collision_Please
.func.Greater_Compare_String_Together_No_Collision_Please:


mv s0 sp
	addi sp,sp,-64
	mv t0 s0
	sw t0,16(sp)
	mv t0 ra
	sw t0,20(sp)
	# %a_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %b_addr=alloca %struct.string*
	mv t0 a1
	sw t0,4(sp)
	# %.Func.Return.p.2.0=alloca i32
	j .L75
	#br label %.block.100
	
.L75:
	lw t0 0(sp)
	sw t0,24(sp)
	#  %.middle.215=load %struct.string*,%struct.string** %a_addr
	lw t0 4(sp)
	sw t0,28(sp)
	#  %.middle.216=load %struct.string*,%struct.string** %b_addr
	lw t0 24(sp)
	mv a0 t0
	lw t0 28(sp)
	mv a1 t0
	mv t0 ra
	sw t0,20(sp)
	call .func.LE_Compare_String_Together_No_Collision_Please
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,32(sp)
	# %.Func_Return.2 = call i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.215,%struct.string* %.middle.216)
	lw t0 32(sp)
	sw t0,36(sp)
	# %.FromBool.15 = zext i1 %.Func_Return.2 to i32
	lw t0 36(sp)
	sw t0,12(sp)
	#  store i32 %.FromBool.15,i32* %.Func.Return.p.2.0
	lw t0 12(sp)
	sw t0,40(sp)
	#  %.ToBool.4=load i32,i32* %.Func.Return.p.2.0
	lw t0 40(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.218 = trunc i32 %.ToBool.4 to i1
	sw t0,44(sp)
	# %.middle.218 = trunc i32 %.ToBool.4 to i1
	lw t0 44(sp)
	li t1 1
	xor t0,t0,t1
	#%.middle.217 = xor i1 %.middle.218,1
	sw t0,48(sp)
	# %.middle.217 = xor i1 %.middle.218,1
	lw t0 48(sp)
	sw t0,52(sp)
	# %.FromBool.16 = zext i1 %.middle.217 to i32
	lw t0 52(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.16,i32* %.retval.p
	j .func.Greater_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.99
	
.func.Greater_Compare_String_Together_No_Collision_Please.Exit:
	lw t0 16(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,56(sp)
	#  %.retval.Tobool=load i32,i32* %.retval.p
	lw t0 56(sp)
	li t1 1
	and t0,t0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	sw t0,60(sp)
	# %.retval = trunc i32 %.retval.Tobool to i1
	lw t0 60(sp)
	mv a0 t0
	lw t0 20(sp)
	mv ra t0
	addi sp,sp,64
	ret
	#ret i1 %.retval
	

    .globl .func.GE_Compare_String_Together_No_Collision_Please
.func.GE_Compare_String_Together_No_Collision_Please:


mv s0 sp
	addi sp,sp,-64
	mv t0 s0
	sw t0,16(sp)
	mv t0 ra
	sw t0,20(sp)
	# %a_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %b_addr=alloca %struct.string*
	mv t0 a1
	sw t0,4(sp)
	# %.Func.Return.p.3.0=alloca i32
	j .L76
	#br label %.block.103
	
.L76:
	lw t0 0(sp)
	sw t0,24(sp)
	#  %.middle.219=load %struct.string*,%struct.string** %a_addr
	lw t0 4(sp)
	sw t0,28(sp)
	#  %.middle.220=load %struct.string*,%struct.string** %b_addr
	lw t0 24(sp)
	mv a0 t0
	lw t0 28(sp)
	mv a1 t0
	mv t0 ra
	sw t0,20(sp)
	call .func.Less_Compare_String_Together_No_Collision_Please
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,32(sp)
	# %.Func_Return.3 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.219,%struct.string* %.middle.220)
	lw t0 32(sp)
	sw t0,36(sp)
	# %.FromBool.17 = zext i1 %.Func_Return.3 to i32
	lw t0 36(sp)
	sw t0,12(sp)
	#  store i32 %.FromBool.17,i32* %.Func.Return.p.3.0
	lw t0 12(sp)
	sw t0,40(sp)
	#  %.ToBool.5=load i32,i32* %.Func.Return.p.3.0
	lw t0 40(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.222 = trunc i32 %.ToBool.5 to i1
	sw t0,44(sp)
	# %.middle.222 = trunc i32 %.ToBool.5 to i1
	lw t0 44(sp)
	li t1 1
	xor t0,t0,t1
	#%.middle.221 = xor i1 %.middle.222,1
	sw t0,48(sp)
	# %.middle.221 = xor i1 %.middle.222,1
	lw t0 48(sp)
	sw t0,52(sp)
	# %.FromBool.18 = zext i1 %.middle.221 to i32
	lw t0 52(sp)
	sw t0,8(sp)
	#  store i32 %.FromBool.18,i32* %.retval.p
	j .func.GE_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.102
	
.func.GE_Compare_String_Together_No_Collision_Please.Exit:
	lw t0 16(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,56(sp)
	#  %.retval.Tobool=load i32,i32* %.retval.p
	lw t0 56(sp)
	li t1 1
	and t0,t0,t1
	#%.retval = trunc i32 %.retval.Tobool to i1
	sw t0,60(sp)
	# %.retval = trunc i32 %.retval.Tobool to i1
	lw t0 60(sp)
	mv a0 t0
	lw t0 20(sp)
	mv ra t0
	addi sp,sp,64
	ret
	#ret i1 %.retval
	

    .globl .func.print
.func.print:


mv s0 sp
	addi sp,sp,-36
	mv t0 s0
	sw t0,4(sp)
	mv t0 ra
	sw t0,8(sp)
	# %str_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	#  store %struct.string* %str,%struct.string** %str_addr
	j .L77
	#br label %.block.106
	
.L77:
	lw t0 0(sp)
	sw t0,12(sp)
	#  %str_addr.0=load %struct.string*,%struct.string** %str_addr
	lw t0 12(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.223 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 1
	sw t0,16(sp)
	# %.middle.223 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 1
	lw t1 16(sp)
	lw t0 0(t1)
	# %.middle.224=load i32*,i32** %.middle.223
	sw t0,20(sp)
	#  %.middle.224=load i32*,i32** %.middle.223
	lw t0 0(sp)
	sw t0,24(sp)
	#  %str_addr.1=load %struct.string*,%struct.string** %str_addr
	lw t0 24(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.225 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 0
	sw t0,28(sp)
	# %.middle.225 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 0
	lw t1 28(sp)
	lw t0 0(t1)
	# %.middle.226=load i32,i32* %.middle.225
	sw t0,32(sp)
	#  %.middle.226=load i32,i32* %.middle.225
	lw t0 20(sp)
	mv a0 t0
	lw t0 32(sp)
	mv a1 t0
	mv t0 ra
	sw t0,8(sp)
	call printf_no_collision_please
	lw t0 8(sp)
	mv ra t0
	#call void @printf_no_collision_please(i32* %.middle.224,i32 %.middle.226)
	j .func.print.Exit
	#br label %Exit.105
	
.func.print.Exit:
	lw t0 4(sp)
	mv s0 t0
	lw t0 8(sp)
	mv ra t0
	addi sp,sp,36
	ret
	#ret void
	

    .globl .func.println
.func.println:


mv s0 sp
	addi sp,sp,-48
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %str_addr=alloca %struct.string*
	mv t0 a0
	sw t0,0(sp)
	# %.TmpString.0.0=alloca %struct.string*
	li t0 8
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call _malloc
	lw t0 12(sp)
	mv ra t0
	mv t0 a0
	sw t0,16(sp)
	# %.middle.229 = call i32* @_malloc(i32 8)
	lw t0 16(sp)
	sw t0,20(sp)
	# %.middle.228 = bitcast i32* %.middle.229 to %struct.string*
	j .L78
	#br label %.block.109
	
.L78:
	lw t0 0(sp)
	sw t0,24(sp)
	#  %.middle.227=load %struct.string*,%struct.string** %str_addr
	lw t0 24(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.print
	lw t0 12(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.227)
	lw t0 20(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.string.construct
	lw t0 12(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.228)
	lw t0 20(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.228,i32 0,i32 0
	sw t0,28(sp)
	# %.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.228,i32 0,i32 0
	lw t1 28(sp)
	li t0 1
	sw t0,0(t1)
	#  store i32 1,i32* %.TmpLen.0
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.228,i32 0,i32 1
	sw t0,32(sp)
	# %.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.228,i32 0,i32 1
	la t0 .ConstantString.0
	sw t0,36(sp)
	lw t0 36(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpConstRef.0 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.0,i32 0,i32 0
	sw t0,40(sp)
	# %.TmpConstRef.0 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.0,i32 0,i32 0
	lw t1 32(sp)
	lw t0 40(sp)
	sw t0,0(t1)
	#  store i32* %.TmpConstRef.0,i32** %.TmpContent.0
	lw t0 20(sp)
	sw t0,4(sp)
	#  store %struct.string* %.middle.228,%struct.string** %.TmpString.0.0
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.middle.230=load %struct.string*,%struct.string** %.TmpString.0.0
	lw t0 44(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.print
	lw t0 12(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.230)
	j .func.println.Exit
	#br label %Exit.108
	
.func.println.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,48
	ret
	#ret void
	

    .globl .func.printlnInt
.func.printlnInt:


mv s0 sp
	addi sp,sp,-48
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %num_addr=alloca i32
	mv t0 a0
	sw t0,0(sp)
	# %.TmpString.1.0=alloca %struct.string*
	li t0 8
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call _malloc
	lw t0 12(sp)
	mv ra t0
	mv t0 a0
	sw t0,16(sp)
	# %.middle.233 = call i32* @_malloc(i32 8)
	lw t0 16(sp)
	sw t0,20(sp)
	# %.middle.232 = bitcast i32* %.middle.233 to %struct.string*
	j .L79
	#br label %.block.112
	
.L79:
	lw t0 0(sp)
	sw t0,24(sp)
	#  %.middle.231=load i32,i32* %num_addr
	lw t0 24(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call printInt
	lw t0 12(sp)
	mv ra t0
	#call void @printInt(i32 %.middle.231)
	lw t0 20(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.string.construct
	lw t0 12(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.232)
	lw t0 20(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpLen.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 0
	sw t0,28(sp)
	# %.TmpLen.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 0
	lw t1 28(sp)
	li t0 1
	sw t0,0(t1)
	#  store i32 1,i32* %.TmpLen.1
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%.TmpContent.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 1
	sw t0,32(sp)
	# %.TmpContent.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 1
	la t0 .ConstantString.1
	sw t0,36(sp)
	lw t0 36(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpConstRef.1 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.1,i32 0,i32 0
	sw t0,40(sp)
	# %.TmpConstRef.1 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.1,i32 0,i32 0
	lw t1 32(sp)
	lw t0 40(sp)
	sw t0,0(t1)
	#  store i32* %.TmpConstRef.1,i32** %.TmpContent.1
	lw t0 20(sp)
	sw t0,4(sp)
	#  store %struct.string* %.middle.232,%struct.string** %.TmpString.1.0
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.middle.234=load %struct.string*,%struct.string** %.TmpString.1.0
	lw t0 44(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.print
	lw t0 12(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.234)
	j .func.printlnInt.Exit
	#br label %Exit.111
	
.func.printlnInt.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,48
	ret
	#ret void
	

    .globl .func.toString
.func.toString:


mv s0 sp
	addi sp,sp,-320
	mv t0 s0
	sw t0,20(sp)
	mv t0 ra
	sw t0,24(sp)
	# %i_addr=alloca i32
	mv t0 a0
	sw t0,0(sp)
	# %i.7=alloca i32
	j .L80
	#br label %.block.115
	
.L80:
	j .L81
	#br label %If_Cond.116
	
.L81:
	lw t0 tmp_no_collision_plz.0
	sw t0,28(sp)
	#  %tmp_no_collision_plz.0.0=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	lw t0 28(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.235 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.0,i32 0,i32 0
	sw t0,32(sp)
	# %.middle.235 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.0,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.237=load i32,i32* %.middle.235
	sw t0,36(sp)
	#  %.middle.237=load i32,i32* %.middle.235
	lw t0 36(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,40(sp)
	lw t0 40(sp)
	seqz t0 t0
	#%.middle.236 = icmp eq i32 %.middle.237,0
	sw t0,40(sp)
	# %.middle.236 = icmp eq i32 %.middle.237,0
	lw t0 40(sp)
	bnez t0 .L82
	lw t0 40(sp)
	beqz t0 .L83
	#br i1 %.middle.236,label %If_Then.117,label %If_Else.118
	
.L82:
	lw t0 tmp_no_collision_plz.0
	sw t0,44(sp)
	#  %tmp_no_collision_plz.0.1=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	lw t0 44(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.238 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.1,i32 0,i32 1
	sw t0,48(sp)
	# %.middle.238 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.1,i32 0,i32 1
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,24(sp)
	call _malloc
	lw t0 24(sp)
	mv ra t0
	mv t0 a0
	sw t0,52(sp)
	# %.SizeList.3 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,56(sp)
	lw t0 56(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,56(sp)
	lw t0 52(sp)
	lw t1 56(sp)
	add t0,t0,t1
	#%.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	sw t0,60(sp)
	# %.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	lw t1 60(sp)
	li t0 20
	sw t0,0(t1)
	#  store i32 20,i32* %.ArrayIdx.3
	lw t0 52(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,24(sp)
	call _malloc_toInt
	lw t0 24(sp)
	mv ra t0
	mv t0 a0
	sw t0,64(sp)
	# %.middle.239 = call i32* @_malloc_toInt(i32* %.SizeList.3,i32 1)
	lw t0 64(sp)
	sw t0,68(sp)
	# %.new.3 = bitcast i32* %.middle.239 to i32*
	lw t1 48(sp)
	lw t0 68(sp)
	sw t0,0(t1)
	#  store i32* %.new.3,i32** %.middle.238
	j .L84
	#br label %If_End.119
	
.L83:
	j .L84
	#br label %If_End.119
	
.L84:
	li t0 0
	sw t0,8(sp)
	#  store i32 0,i32* %cnt.0
	li t0 0
	sw t0,72(sp)
	# %.FromBool.19 = zext i1 0 to i32
	lw t0 72(sp)
	sw t0,12(sp)
	#  store i32 %.FromBool.19,i32* %fg.0
	j .L85
	#br label %If_Cond.120
	
.L85:
	lw t0 0(sp)
	sw t0,76(sp)
	#  %.middle.242=load i32,i32* %i_addr
	lw t0 76(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,80(sp)
	lw t0 80(sp)
	seqz t0 t0
	#%.middle.241 = icmp eq i32 %.middle.242,0
	sw t0,80(sp)
	# %.middle.241 = icmp eq i32 %.middle.242,0
	lw t0 80(sp)
	bnez t0 .L86
	lw t0 80(sp)
	beqz t0 .L87
	#br i1 %.middle.241,label %If_Then.121,label %If_Else.122
	
.L86:
	li t0 1
	sw t0,8(sp)
	#  store i32 1,i32* %cnt.0
	lw t0 a_no_collison_plz.0
	sw t0,84(sp)
	#  %.middle.244=load i32*,i32** @a_no_collison_plz.0
	li t0 0
	sw t0,88(sp)
	lw t0 88(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,88(sp)
	lw t0 84(sp)
	lw t1 88(sp)
	add t0,t0,t1
	#%.middle.245 = getelementptr i32,i32* %.middle.244,i32 0
	sw t0,92(sp)
	# %.middle.245 = getelementptr i32,i32* %.middle.244,i32 0
	lw t1 92(sp)
	lw t0 0(t1)
	# %.middle.245.0=load i32,i32* %.middle.245
	sw t0,96(sp)
	#  %.middle.245.0=load i32,i32* %.middle.245
	lw t1 92(sp)
	li t0 0
	sw t0,0(t1)
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
	sw t0,100(sp)
	#  %.middle.248=load i32,i32* %i_addr
	lw t0 100(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.247 = icmp slt i32 %.middle.248,0
	sw t0,104(sp)
	# %.middle.247 = icmp slt i32 %.middle.248,0
	lw t0 104(sp)
	bnez t0 .L90
	lw t0 104(sp)
	beqz t0 .L91
	#br i1 %.middle.247,label %If_Then.125,label %If_Else.126
	
.L90:
	li t0 1
	sw t0,108(sp)
	# %.FromBool.20 = zext i1 1 to i32
	lw t0 108(sp)
	sw t0,12(sp)
	#  store i32 %.FromBool.20,i32* %fg.0
	lw t0 0(sp)
	sw t0,112(sp)
	#  %.middle.251=load i32,i32* %i_addr
	li t0 0
	lw t1 112(sp)
	sub t0,t0,t1
	#%.middle.250 = sub i32 0,%.middle.251
	sw t0,116(sp)
	# %.middle.250 = sub i32 0,%.middle.251
	lw t0 116(sp)
	sw t0,0(sp)
	#  store i32 %.middle.250,i32* %i_addr
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
	sw t0,120(sp)
	#  %.middle.254=load i32,i32* %i_addr
	lw t0 120(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,124(sp)
	lw t0 124(sp)
	snez t0 t0
	#%.middle.253 = icmp ne i32 %.middle.254,0
	sw t0,124(sp)
	# %.middle.253 = icmp ne i32 %.middle.254,0
	lw t0 124(sp)
	bnez t0 .L94
	lw t0 124(sp)
	beqz t0 .L95
	#br i1 %.middle.253,label %While_Body.129,label %While_End.130
	
.L94:
	lw t0 a_no_collison_plz.0
	sw t0,128(sp)
	#  %.middle.255=load i32*,i32** @a_no_collison_plz.0
	lw t0 8(sp)
	sw t0,132(sp)
	#  %.middle.257=load i32,i32* %cnt.0
	lw t0 132(sp)
	sw t0,136(sp)
	lw t0 136(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,136(sp)
	lw t0 128(sp)
	lw t1 136(sp)
	add t0,t0,t1
	#%.middle.256 = getelementptr i32,i32* %.middle.255,i32 %.middle.257
	sw t0,140(sp)
	# %.middle.256 = getelementptr i32,i32* %.middle.255,i32 %.middle.257
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.256.0=load i32,i32* %.middle.256
	sw t0,144(sp)
	#  %.middle.256.0=load i32,i32* %.middle.256
	lw t0 0(sp)
	sw t0,148(sp)
	#  %.middle.259=load i32,i32* %i_addr
	lw t0 148(sp)
	li t1 10
	rem t0,t0,t1
	#%.middle.258 = srem i32 %.middle.259,10
	sw t0,152(sp)
	# %.middle.258 = srem i32 %.middle.259,10
	lw t1 140(sp)
	lw t0 152(sp)
	sw t0,0(t1)
	#  store i32 %.middle.258,i32* %.middle.256
	lw t0 0(sp)
	sw t0,156(sp)
	#  %.middle.262=load i32,i32* %i_addr
	lw t0 156(sp)
	li t1 10
	div t0,t0,t1
	#%.middle.261 = sdiv i32 %.middle.262,10
	sw t0,160(sp)
	# %.middle.261 = sdiv i32 %.middle.262,10
	lw t0 160(sp)
	sw t0,0(sp)
	#  store i32 %.middle.261,i32* %i_addr
	lw t0 8(sp)
	sw t0,164(sp)
	#  %.middle.264=load i32,i32* %cnt.0
	lw t0 164(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.265 = add i32 %.middle.264,1
	sw t0,168(sp)
	# %.middle.265 = add i32 %.middle.264,1
	lw t0 168(sp)
	sw t0,8(sp)
	#  store i32 %.middle.265,i32* %cnt.0
	j .L93
	#br label %While_Cond.128
	
.L95:
	j .L96
	#br label %If_Cond.131
	
.L96:
	lw t0 12(sp)
	sw t0,172(sp)
	#  %.ToBool.6=load i32,i32* %fg.0
	lw t0 172(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.266 = trunc i32 %.ToBool.6 to i1
	sw t0,176(sp)
	# %.middle.266 = trunc i32 %.ToBool.6 to i1
	lw t0 176(sp)
	bnez t0 .L97
	lw t0 176(sp)
	beqz t0 .L98
	#br i1 %.middle.266,label %If_Then.132,label %If_Else.133
	
.L97:
	lw t0 a_no_collison_plz.0
	sw t0,180(sp)
	#  %.middle.267=load i32*,i32** @a_no_collison_plz.0
	lw t0 8(sp)
	sw t0,184(sp)
	#  %.middle.269=load i32,i32* %cnt.0
	lw t0 184(sp)
	sw t0,188(sp)
	lw t0 188(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,188(sp)
	lw t0 180(sp)
	lw t1 188(sp)
	add t0,t0,t1
	#%.middle.268 = getelementptr i32,i32* %.middle.267,i32 %.middle.269
	sw t0,192(sp)
	# %.middle.268 = getelementptr i32,i32* %.middle.267,i32 %.middle.269
	lw t1 192(sp)
	lw t0 0(t1)
	# %.middle.268.0=load i32,i32* %.middle.268
	sw t0,196(sp)
	#  %.middle.268.0=load i32,i32* %.middle.268
	li t0 0
	li t1 3
	sub t0,t0,t1
	#%.middle.270 = sub i32 0,3
	sw t0,200(sp)
	# %.middle.270 = sub i32 0,3
	lw t1 192(sp)
	lw t0 200(sp)
	sw t0,0(t1)
	#  store i32 %.middle.270,i32* %.middle.268
	lw t0 8(sp)
	sw t0,204(sp)
	#  %.middle.272=load i32,i32* %cnt.0
	lw t0 204(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.273 = add i32 %.middle.272,1
	sw t0,208(sp)
	# %.middle.273 = add i32 %.middle.272,1
	lw t0 208(sp)
	sw t0,8(sp)
	#  store i32 %.middle.273,i32* %cnt.0
	j .L99
	#br label %If_End.134
	
.L98:
	j .L99
	#br label %If_End.134
	
.L99:
	lw t0 tmp_no_collision_plz.0
	sw t0,212(sp)
	#  %tmp_no_collision_plz.0.2=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	lw t0 212(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.274 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.2,i32 0,i32 0
	sw t0,216(sp)
	# %.middle.274 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.2,i32 0,i32 0
	lw t0 8(sp)
	sw t0,220(sp)
	#  %.middle.276=load i32,i32* %cnt.0
	lw t1 216(sp)
	lw t0 220(sp)
	sw t0,0(t1)
	#  store i32 %.middle.276,i32* %.middle.274
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %i.7
	j .L100
	#br label %For_Cond.135
	
.L100:
	lw t0 16(sp)
	sw t0,224(sp)
	#  %.middle.278=load i32,i32* %i.7
	lw t0 8(sp)
	sw t0,228(sp)
	#  %.middle.279=load i32,i32* %cnt.0
	lw t0 224(sp)
	lw t1 228(sp)
	slt t0 t0,t1
	#%.middle.277 = icmp slt i32 %.middle.278,%.middle.279
	sw t0,232(sp)
	# %.middle.277 = icmp slt i32 %.middle.278,%.middle.279
	lw t0 232(sp)
	bnez t0 .L101
	lw t0 232(sp)
	beqz t0 .L103
	#br i1 %.middle.277,label %For_Body.137,label %For_End.136
	
.L101:
	lw t0 tmp_no_collision_plz.0
	sw t0,236(sp)
	#  %tmp_no_collision_plz.0.3=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	lw t0 236(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.280 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.3,i32 0,i32 1
	sw t0,240(sp)
	# %.middle.280 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.3,i32 0,i32 1
	lw t1 240(sp)
	lw t0 0(t1)
	# %.middle.281=load i32*,i32** %.middle.280
	sw t0,244(sp)
	#  %.middle.281=load i32*,i32** %.middle.280
	lw t0 16(sp)
	sw t0,248(sp)
	#  %.middle.283=load i32,i32* %i.7
	lw t0 248(sp)
	sw t0,252(sp)
	lw t0 252(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,252(sp)
	lw t0 244(sp)
	lw t1 252(sp)
	add t0,t0,t1
	#%.middle.282 = getelementptr i32,i32* %.middle.281,i32 %.middle.283
	sw t0,256(sp)
	# %.middle.282 = getelementptr i32,i32* %.middle.281,i32 %.middle.283
	lw t1 256(sp)
	lw t0 0(t1)
	# %.middle.282.0=load i32,i32* %.middle.282
	sw t0,260(sp)
	#  %.middle.282.0=load i32,i32* %.middle.282
	lw t0 a_no_collison_plz.0
	sw t0,264(sp)
	#  %.middle.284=load i32*,i32** @a_no_collison_plz.0
	lw t0 8(sp)
	sw t0,268(sp)
	#  %.middle.286=load i32,i32* %cnt.0
	lw t0 16(sp)
	sw t0,272(sp)
	#  %.middle.287=load i32,i32* %i.7
	lw t0 268(sp)
	lw t1 272(sp)
	sub t0,t0,t1
	#%.middle.285 = sub i32 %.middle.286,%.middle.287
	sw t0,276(sp)
	# %.middle.285 = sub i32 %.middle.286,%.middle.287
	lw t0 276(sp)
	li t1 1
	sub t0,t0,t1
	#%.middle.288 = sub i32 %.middle.285,1
	sw t0,280(sp)
	# %.middle.288 = sub i32 %.middle.285,1
	lw t0 280(sp)
	sw t0,284(sp)
	lw t0 284(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,284(sp)
	lw t0 264(sp)
	lw t1 284(sp)
	add t0,t0,t1
	#%.middle.289 = getelementptr i32,i32* %.middle.284,i32 %.middle.288
	sw t0,288(sp)
	# %.middle.289 = getelementptr i32,i32* %.middle.284,i32 %.middle.288
	lw t1 288(sp)
	lw t0 0(t1)
	# %.middle.289.0=load i32,i32* %.middle.289
	sw t0,292(sp)
	#  %.middle.289.0=load i32,i32* %.middle.289
	lw t1 288(sp)
	lw t0 0(t1)
	# %.middle.291=load i32,i32* %.middle.289
	sw t0,296(sp)
	#  %.middle.291=load i32,i32* %.middle.289
	lw t0 296(sp)
	li t1 48
	add t0,t0,t1
	#%.middle.290 = add i32 %.middle.291,48
	sw t0,300(sp)
	# %.middle.290 = add i32 %.middle.291,48
	lw t1 256(sp)
	lw t0 300(sp)
	sw t0,0(t1)
	#  store i32 %.middle.290,i32* %.middle.282
	j .L102
	#br label %For_Change.138
	
.L102:
	lw t0 16(sp)
	sw t0,304(sp)
	#  %.middle.293=load i32,i32* %i.7
	lw t0 304(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.294 = add i32 %.middle.293,1
	sw t0,308(sp)
	# %.middle.294 = add i32 %.middle.293,1
	lw t0 308(sp)
	sw t0,16(sp)
	#  store i32 %.middle.294,i32* %i.7
	j .L100
	#br label %For_Cond.135
	
.L103:
	lw t0 tmp_no_collision_plz.0
	sw t0,312(sp)
	#  %.middle.295=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	lw t0 312(sp)
	sw t0,4(sp)
	#  store %struct.string* %.middle.295,%struct.string** %.retval.p
	j .func.toString.Exit
	#br label %Exit.114
	
.func.toString.Exit:
	lw t0 20(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,316(sp)
	#  %.retval=load %struct.string*,%struct.string** %.retval.p
	lw t0 316(sp)
	mv a0 t0
	lw t0 24(sp)
	mv ra t0
	addi sp,sp,320
	ret
	#ret %struct.string* %.retval
	

    .globl .func.getString
.func.getString:


mv s0 sp
	addi sp,sp,-112
	mv t0 s0
	sw t0,16(sp)
	mv t0 ra
	sw t0,20(sp)
	# %cnt.1=alloca i32
	j .L104
	#br label %.block.141
	
.L104:
	li t0 2
	mv a0 t0
	mv t0 ra
	sw t0,20(sp)
	call _malloc
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,24(sp)
	# %.middle.297 = call i32* @_malloc(i32 2)
	lw t0 24(sp)
	sw t0,28(sp)
	# %.middle.296 = bitcast i32* %.middle.297 to %struct.string*
	lw t0 28(sp)
	mv a0 t0
	mv t0 ra
	sw t0,20(sp)
	call .func.string.construct
	lw t0 20(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.296)
	lw t0 28(sp)
	sw t0,4(sp)
	#  store %struct.string* %.middle.296,%struct.string** %tmp.2
	lw t0 4(sp)
	sw t0,32(sp)
	#  %tmp.2.0=load %struct.string*,%struct.string** %tmp.2
	lw t0 32(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.298 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 1
	sw t0,36(sp)
	# %.middle.298 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 1
	mv t0 ra
	sw t0,20(sp)
	call scanf_string
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,40(sp)
	# %.Func_Return.4 = call i32* @scanf_string()
	lw t0 40(sp)
	sw t0,8(sp)
	#  store i32* %.Func_Return.4,i32** %.Func.Return.p.4.0
	lw t0 8(sp)
	sw t0,44(sp)
	#  %.middle.300=load i32*,i32** %.Func.Return.p.4.0
	lw t1 36(sp)
	lw t0 44(sp)
	sw t0,0(t1)
	#  store i32* %.middle.300,i32** %.middle.298
	li t0 0
	sw t0,12(sp)
	#  store i32 0,i32* %cnt.1
	j .L105
	#br label %For_Cond.142
	
.L105:
	lw t0 4(sp)
	sw t0,48(sp)
	#  %tmp.2.1=load %struct.string*,%struct.string** %tmp.2
	lw t0 48(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.302 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	sw t0,52(sp)
	# %.middle.302 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	lw t1 52(sp)
	lw t0 0(t1)
	# %.middle.303=load i32*,i32** %.middle.302
	sw t0,56(sp)
	#  %.middle.303=load i32*,i32** %.middle.302
	lw t0 12(sp)
	sw t0,60(sp)
	#  %.middle.305=load i32,i32* %cnt.1
	lw t0 60(sp)
	sw t0,64(sp)
	lw t0 64(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,64(sp)
	lw t0 56(sp)
	lw t1 64(sp)
	add t0,t0,t1
	#%.middle.304 = getelementptr i32,i32* %.middle.303,i32 %.middle.305
	sw t0,68(sp)
	# %.middle.304 = getelementptr i32,i32* %.middle.303,i32 %.middle.305
	lw t1 68(sp)
	lw t0 0(t1)
	# %.middle.304.0=load i32,i32* %.middle.304
	sw t0,72(sp)
	#  %.middle.304.0=load i32,i32* %.middle.304
	lw t1 68(sp)
	lw t0 0(t1)
	# %.middle.307=load i32,i32* %.middle.304
	sw t0,76(sp)
	#  %.middle.307=load i32,i32* %.middle.304
	lw t0 76(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,80(sp)
	lw t0 80(sp)
	snez t0 t0
	#%.middle.306 = icmp ne i32 %.middle.307,0
	sw t0,80(sp)
	# %.middle.306 = icmp ne i32 %.middle.307,0
	lw t0 80(sp)
	bnez t0 .L106
	lw t0 80(sp)
	beqz t0 .L108
	#br i1 %.middle.306,label %For_Body.144,label %For_End.143
	
.L106:
	j .L107
	#br label %For_Change.145
	
.L107:
	lw t0 12(sp)
	sw t0,84(sp)
	#  %.middle.308=load i32,i32* %cnt.1
	lw t0 84(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.309 = add i32 %.middle.308,1
	sw t0,88(sp)
	# %.middle.309 = add i32 %.middle.308,1
	lw t0 88(sp)
	sw t0,12(sp)
	#  store i32 %.middle.309,i32* %cnt.1
	j .L105
	#br label %For_Cond.142
	
.L108:
	lw t0 4(sp)
	sw t0,92(sp)
	#  %tmp.2.2=load %struct.string*,%struct.string** %tmp.2
	lw t0 92(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.310 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 0
	sw t0,96(sp)
	# %.middle.310 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 0
	lw t0 12(sp)
	sw t0,100(sp)
	#  %.middle.312=load i32,i32* %cnt.1
	lw t1 96(sp)
	lw t0 100(sp)
	sw t0,0(t1)
	#  store i32 %.middle.312,i32* %.middle.310
	lw t0 4(sp)
	sw t0,104(sp)
	#  %.middle.313=load %struct.string*,%struct.string** %tmp.2
	lw t0 104(sp)
	sw t0,0(sp)
	#  store %struct.string* %.middle.313,%struct.string** %.retval.p
	j .func.getString.Exit
	#br label %Exit.140
	
.func.getString.Exit:
	lw t0 16(sp)
	mv s0 t0
	lw t0 0(sp)
	sw t0,108(sp)
	#  %.retval=load %struct.string*,%struct.string** %.retval.p
	lw t0 108(sp)
	mv a0 t0
	lw t0 20(sp)
	mv ra t0
	addi sp,sp,112
	ret
	#ret %struct.string* %.retval
	

    .globl .func.Edge.construct
.func.Edge.construct:


mv s0 sp
	addi sp,sp,-12
	mv t0 s0
	sw t0,4(sp)
	mv t0 ra
	sw t0,8(sp)
	# %This_addr=alloca %struct.Edge*
	mv t0 a0
	sw t0,0(sp)
	#  store %struct.Edge* %This,%struct.Edge** %This_addr
	j .L109
	#br label %.block.148
	
.L109:
	j .func.Edge.construct.Exit
	#br label %Exit.147
	
.func.Edge.construct.Exit:
	lw t0 4(sp)
	mv s0 t0
	lw t0 8(sp)
	mv ra t0
	addi sp,sp,12
	ret
	#ret void
	

    .globl .func.EdgeList.init
.func.EdgeList.init:


mv s0 sp
	addi sp,sp,-232
	mv t0 s0
	sw t0,16(sp)
	mv t0 ra
	sw t0,20(sp)
	# %This_addr=alloca %struct.EdgeList*
	mv t0 a0
	sw t0,0(sp)
	# %n_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %m_addr=alloca i32
	mv t0 a2
	sw t0,8(sp)
	# %i.8=alloca i32
	j .L110
	#br label %.block.151
	
.L110:
	lw t0 0(sp)
	sw t0,24(sp)
	#  %This_addr.8=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 24(sp)
	li t1 8
	add t0,t0,t1
	#%This_addr.edges.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.8,i32 0,i32 2
	sw t0,28(sp)
	# %This_addr.edges.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.8,i32 0,i32 2
	lw t0 8(sp)
	sw t0,32(sp)
	#  %.middle.314=load i32,i32* %m_addr
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,20(sp)
	call _malloc
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,36(sp)
	# %.SizeList.4 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,40(sp)
	lw t0 40(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,40(sp)
	lw t0 36(sp)
	lw t1 40(sp)
	add t0,t0,t1
	#%.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	sw t0,44(sp)
	# %.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	lw t1 44(sp)
	lw t0 32(sp)
	sw t0,0(t1)
	#  store i32 %.middle.314,i32* %.ArrayIdx.4
	lw t0 36(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,20(sp)
	call _malloc_toInt
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,48(sp)
	# %.middle.315 = call i32* @_malloc_toInt(i32* %.SizeList.4,i32 1)
	lw t0 48(sp)
	sw t0,52(sp)
	# %.new.4 = bitcast i32* %.middle.315 to %struct.Edge**
	lw t1 28(sp)
	lw t0 52(sp)
	sw t0,0(t1)
	#  store %struct.Edge** %.new.4,%struct.Edge*** %This_addr.edges.0
	lw t0 0(sp)
	sw t0,56(sp)
	#  %This_addr.9=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 56(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.next.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.9,i32 0,i32 0
	sw t0,60(sp)
	# %This_addr.next.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.9,i32 0,i32 0
	lw t0 8(sp)
	sw t0,64(sp)
	#  %.middle.317=load i32,i32* %m_addr
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,20(sp)
	call _malloc
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,68(sp)
	# %.SizeList.5 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,72(sp)
	lw t0 72(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,72(sp)
	lw t0 68(sp)
	lw t1 72(sp)
	add t0,t0,t1
	#%.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	sw t0,76(sp)
	# %.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	lw t1 76(sp)
	lw t0 64(sp)
	sw t0,0(t1)
	#  store i32 %.middle.317,i32* %.ArrayIdx.5
	lw t0 68(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,20(sp)
	call _malloc_toInt
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,80(sp)
	# %.middle.318 = call i32* @_malloc_toInt(i32* %.SizeList.5,i32 1)
	lw t0 80(sp)
	sw t0,84(sp)
	# %.new.5 = bitcast i32* %.middle.318 to i32*
	lw t1 60(sp)
	lw t0 84(sp)
	sw t0,0(t1)
	#  store i32* %.new.5,i32** %This_addr.next.0
	lw t0 0(sp)
	sw t0,88(sp)
	#  %This_addr.10=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 88(sp)
	li t1 12
	add t0,t0,t1
	#%This_addr.first.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.10,i32 0,i32 3
	sw t0,92(sp)
	# %This_addr.first.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.10,i32 0,i32 3
	lw t0 4(sp)
	sw t0,96(sp)
	#  %.middle.320=load i32,i32* %n_addr
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,20(sp)
	call _malloc
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,100(sp)
	# %.SizeList.6 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,104(sp)
	lw t0 104(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,104(sp)
	lw t0 100(sp)
	lw t1 104(sp)
	add t0,t0,t1
	#%.ArrayIdx.6 = getelementptr i32,i32* %.SizeList.6,i32 0
	sw t0,108(sp)
	# %.ArrayIdx.6 = getelementptr i32,i32* %.SizeList.6,i32 0
	lw t1 108(sp)
	lw t0 96(sp)
	sw t0,0(t1)
	#  store i32 %.middle.320,i32* %.ArrayIdx.6
	lw t0 100(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,20(sp)
	call _malloc_toInt
	lw t0 20(sp)
	mv ra t0
	mv t0 a0
	sw t0,112(sp)
	# %.middle.321 = call i32* @_malloc_toInt(i32* %.SizeList.6,i32 1)
	lw t0 112(sp)
	sw t0,116(sp)
	# %.new.6 = bitcast i32* %.middle.321 to i32*
	lw t1 92(sp)
	lw t0 116(sp)
	sw t0,0(t1)
	#  store i32* %.new.6,i32** %This_addr.first.0
	li t0 0
	sw t0,12(sp)
	#  store i32 0,i32* %i.8
	j .L111
	#br label %For_Cond.152
	
.L111:
	lw t0 12(sp)
	sw t0,120(sp)
	#  %.middle.325=load i32,i32* %i.8
	lw t0 8(sp)
	sw t0,124(sp)
	#  %.middle.326=load i32,i32* %m_addr
	lw t0 120(sp)
	lw t1 124(sp)
	slt t0 t0,t1
	#%.middle.324 = icmp slt i32 %.middle.325,%.middle.326
	sw t0,128(sp)
	# %.middle.324 = icmp slt i32 %.middle.325,%.middle.326
	lw t0 128(sp)
	bnez t0 .L112
	lw t0 128(sp)
	beqz t0 .L114
	#br i1 %.middle.324,label %For_Body.154,label %For_End.153
	
.L112:
	lw t0 0(sp)
	sw t0,132(sp)
	#  %This_addr.11=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 132(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.next.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.11,i32 0,i32 0
	sw t0,136(sp)
	# %This_addr.next.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.11,i32 0,i32 0
	lw t1 136(sp)
	lw t0 0(t1)
	# %.middle.327=load i32*,i32** %This_addr.next.1
	sw t0,140(sp)
	#  %.middle.327=load i32*,i32** %This_addr.next.1
	lw t0 12(sp)
	sw t0,144(sp)
	#  %.middle.329=load i32,i32* %i.8
	lw t0 144(sp)
	sw t0,148(sp)
	lw t0 148(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,148(sp)
	lw t0 140(sp)
	lw t1 148(sp)
	add t0,t0,t1
	#%.middle.328 = getelementptr i32,i32* %.middle.327,i32 %.middle.329
	sw t0,152(sp)
	# %.middle.328 = getelementptr i32,i32* %.middle.327,i32 %.middle.329
	lw t1 152(sp)
	lw t0 0(t1)
	# %.middle.328.0=load i32,i32* %.middle.328
	sw t0,156(sp)
	#  %.middle.328.0=load i32,i32* %.middle.328
	li t0 0
	li t1 1
	sub t0,t0,t1
	#%.middle.330 = sub i32 0,1
	sw t0,160(sp)
	# %.middle.330 = sub i32 0,1
	lw t1 152(sp)
	lw t0 160(sp)
	sw t0,0(t1)
	#  store i32 %.middle.330,i32* %.middle.328
	j .L113
	#br label %For_Change.155
	
.L113:
	lw t0 12(sp)
	sw t0,164(sp)
	#  %.middle.332=load i32,i32* %i.8
	lw t0 164(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.333 = add i32 %.middle.332,1
	sw t0,168(sp)
	# %.middle.333 = add i32 %.middle.332,1
	lw t0 168(sp)
	sw t0,12(sp)
	#  store i32 %.middle.333,i32* %i.8
	j .L111
	#br label %For_Cond.152
	
.L114:
	li t0 0
	sw t0,12(sp)
	#  store i32 0,i32* %i.8
	j .L115
	#br label %For_Cond.156
	
.L115:
	lw t0 12(sp)
	sw t0,172(sp)
	#  %.middle.336=load i32,i32* %i.8
	lw t0 4(sp)
	sw t0,176(sp)
	#  %.middle.337=load i32,i32* %n_addr
	lw t0 172(sp)
	lw t1 176(sp)
	slt t0 t0,t1
	#%.middle.335 = icmp slt i32 %.middle.336,%.middle.337
	sw t0,180(sp)
	# %.middle.335 = icmp slt i32 %.middle.336,%.middle.337
	lw t0 180(sp)
	bnez t0 .L116
	lw t0 180(sp)
	beqz t0 .L118
	#br i1 %.middle.335,label %For_Body.158,label %For_End.157
	
.L116:
	lw t0 0(sp)
	sw t0,184(sp)
	#  %This_addr.12=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 184(sp)
	li t1 12
	add t0,t0,t1
	#%This_addr.first.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.12,i32 0,i32 3
	sw t0,188(sp)
	# %This_addr.first.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.12,i32 0,i32 3
	lw t1 188(sp)
	lw t0 0(t1)
	# %.middle.338=load i32*,i32** %This_addr.first.1
	sw t0,192(sp)
	#  %.middle.338=load i32*,i32** %This_addr.first.1
	lw t0 12(sp)
	sw t0,196(sp)
	#  %.middle.340=load i32,i32* %i.8
	lw t0 196(sp)
	sw t0,200(sp)
	lw t0 200(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,200(sp)
	lw t0 192(sp)
	lw t1 200(sp)
	add t0,t0,t1
	#%.middle.339 = getelementptr i32,i32* %.middle.338,i32 %.middle.340
	sw t0,204(sp)
	# %.middle.339 = getelementptr i32,i32* %.middle.338,i32 %.middle.340
	lw t1 204(sp)
	lw t0 0(t1)
	# %.middle.339.0=load i32,i32* %.middle.339
	sw t0,208(sp)
	#  %.middle.339.0=load i32,i32* %.middle.339
	li t0 0
	li t1 1
	sub t0,t0,t1
	#%.middle.341 = sub i32 0,1
	sw t0,212(sp)
	# %.middle.341 = sub i32 0,1
	lw t1 204(sp)
	lw t0 212(sp)
	sw t0,0(t1)
	#  store i32 %.middle.341,i32* %.middle.339
	j .L117
	#br label %For_Change.159
	
.L117:
	lw t0 12(sp)
	sw t0,216(sp)
	#  %.middle.343=load i32,i32* %i.8
	lw t0 216(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.344 = add i32 %.middle.343,1
	sw t0,220(sp)
	# %.middle.344 = add i32 %.middle.343,1
	lw t0 220(sp)
	sw t0,12(sp)
	#  store i32 %.middle.344,i32* %i.8
	j .L115
	#br label %For_Cond.156
	
.L118:
	lw t0 0(sp)
	sw t0,224(sp)
	#  %This_addr.13=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 224(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.size.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.13,i32 0,i32 1
	sw t0,228(sp)
	# %This_addr.size.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.13,i32 0,i32 1
	lw t1 228(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %This_addr.size.0
	j .func.EdgeList.init.Exit
	#br label %Exit.150
	
.func.EdgeList.init.Exit:
	lw t0 16(sp)
	mv s0 t0
	lw t0 20(sp)
	mv ra t0
	addi sp,sp,232
	ret
	#ret void
	

    .globl .func.EdgeList.addEdge
.func.EdgeList.addEdge:


mv s0 sp
	addi sp,sp,-236
	mv t0 s0
	sw t0,20(sp)
	mv t0 ra
	sw t0,24(sp)
	# %This_addr=alloca %struct.EdgeList*
	mv t0 a0
	sw t0,0(sp)
	# %u_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %v_addr=alloca i32
	mv t0 a2
	sw t0,8(sp)
	# %w_addr=alloca i32
	mv t0 a3
	sw t0,12(sp)
	# %e.0=alloca %struct.Edge*
	j .L119
	#br label %.block.162
	
.L119:
	li t0 3
	mv a0 t0
	mv t0 ra
	sw t0,24(sp)
	call _malloc
	lw t0 24(sp)
	mv ra t0
	mv t0 a0
	sw t0,28(sp)
	# %.middle.347 = call i32* @_malloc(i32 3)
	lw t0 28(sp)
	sw t0,32(sp)
	# %.middle.346 = bitcast i32* %.middle.347 to %struct.Edge*
	lw t0 32(sp)
	mv a0 t0
	mv t0 ra
	sw t0,24(sp)
	call .func.Edge.construct
	lw t0 24(sp)
	mv ra t0
	#call void @.func.Edge.construct(%struct.Edge* %.middle.346)
	lw t0 32(sp)
	sw t0,16(sp)
	#  store %struct.Edge* %.middle.346,%struct.Edge** %e.0
	lw t0 16(sp)
	sw t0,36(sp)
	#  %e.0.0=load %struct.Edge*,%struct.Edge** %e.0
	lw t0 36(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.348 = getelementptr %struct.Edge,%struct.Edge* %e.0.0,i32 0,i32 1
	sw t0,40(sp)
	# %.middle.348 = getelementptr %struct.Edge,%struct.Edge* %e.0.0,i32 0,i32 1
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.middle.350=load i32,i32* %u_addr
	lw t1 40(sp)
	lw t0 44(sp)
	sw t0,0(t1)
	#  store i32 %.middle.350,i32* %.middle.348
	lw t0 16(sp)
	sw t0,48(sp)
	#  %e.0.1=load %struct.Edge*,%struct.Edge** %e.0
	lw t0 48(sp)
	li t1 8
	add t0,t0,t1
	#%.middle.351 = getelementptr %struct.Edge,%struct.Edge* %e.0.1,i32 0,i32 2
	sw t0,52(sp)
	# %.middle.351 = getelementptr %struct.Edge,%struct.Edge* %e.0.1,i32 0,i32 2
	lw t0 8(sp)
	sw t0,56(sp)
	#  %.middle.353=load i32,i32* %v_addr
	lw t1 52(sp)
	lw t0 56(sp)
	sw t0,0(t1)
	#  store i32 %.middle.353,i32* %.middle.351
	lw t0 16(sp)
	sw t0,60(sp)
	#  %e.0.2=load %struct.Edge*,%struct.Edge** %e.0
	lw t0 60(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.354 = getelementptr %struct.Edge,%struct.Edge* %e.0.2,i32 0,i32 0
	sw t0,64(sp)
	# %.middle.354 = getelementptr %struct.Edge,%struct.Edge* %e.0.2,i32 0,i32 0
	lw t0 12(sp)
	sw t0,68(sp)
	#  %.middle.356=load i32,i32* %w_addr
	lw t1 64(sp)
	lw t0 68(sp)
	sw t0,0(t1)
	#  store i32 %.middle.356,i32* %.middle.354
	lw t0 0(sp)
	sw t0,72(sp)
	#  %This_addr.14=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 72(sp)
	li t1 8
	add t0,t0,t1
	#%This_addr.edges.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.14,i32 0,i32 2
	sw t0,76(sp)
	# %This_addr.edges.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.14,i32 0,i32 2
	lw t1 76(sp)
	lw t0 0(t1)
	# %.middle.357=load %struct.Edge**,%struct.Edge*** %This_addr.edges.1
	sw t0,80(sp)
	#  %.middle.357=load %struct.Edge**,%struct.Edge*** %This_addr.edges.1
	lw t0 0(sp)
	sw t0,84(sp)
	#  %This_addr.15=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 84(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.size.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.15,i32 0,i32 1
	sw t0,88(sp)
	# %This_addr.size.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.15,i32 0,i32 1
	lw t1 88(sp)
	lw t0 0(t1)
	# %.middle.359=load i32,i32* %This_addr.size.1
	sw t0,92(sp)
	#  %.middle.359=load i32,i32* %This_addr.size.1
	lw t0 92(sp)
	sw t0,96(sp)
	lw t0 96(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,96(sp)
	lw t0 80(sp)
	lw t1 96(sp)
	add t0,t0,t1
	#%.middle.358 = getelementptr %struct.Edge*,%struct.Edge** %.middle.357,i32 %.middle.359
	sw t0,100(sp)
	# %.middle.358 = getelementptr %struct.Edge*,%struct.Edge** %.middle.357,i32 %.middle.359
	lw t1 100(sp)
	lw t0 0(t1)
	# %.middle.358.0=load %struct.Edge*,%struct.Edge** %.middle.358
	sw t0,104(sp)
	#  %.middle.358.0=load %struct.Edge*,%struct.Edge** %.middle.358
	lw t0 16(sp)
	sw t0,108(sp)
	#  %.middle.361=load %struct.Edge*,%struct.Edge** %e.0
	lw t1 100(sp)
	lw t0 108(sp)
	sw t0,0(t1)
	#  store %struct.Edge* %.middle.361,%struct.Edge** %.middle.358
	lw t0 0(sp)
	sw t0,112(sp)
	#  %This_addr.16=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 112(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.next.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.16,i32 0,i32 0
	sw t0,116(sp)
	# %This_addr.next.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.16,i32 0,i32 0
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.362=load i32*,i32** %This_addr.next.2
	sw t0,120(sp)
	#  %.middle.362=load i32*,i32** %This_addr.next.2
	lw t0 0(sp)
	sw t0,124(sp)
	#  %This_addr.17=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 124(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.size.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.17,i32 0,i32 1
	sw t0,128(sp)
	# %This_addr.size.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.17,i32 0,i32 1
	lw t1 128(sp)
	lw t0 0(t1)
	# %.middle.364=load i32,i32* %This_addr.size.2
	sw t0,132(sp)
	#  %.middle.364=load i32,i32* %This_addr.size.2
	lw t0 132(sp)
	sw t0,136(sp)
	lw t0 136(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,136(sp)
	lw t0 120(sp)
	lw t1 136(sp)
	add t0,t0,t1
	#%.middle.363 = getelementptr i32,i32* %.middle.362,i32 %.middle.364
	sw t0,140(sp)
	# %.middle.363 = getelementptr i32,i32* %.middle.362,i32 %.middle.364
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.363.0=load i32,i32* %.middle.363
	sw t0,144(sp)
	#  %.middle.363.0=load i32,i32* %.middle.363
	lw t0 0(sp)
	sw t0,148(sp)
	#  %This_addr.18=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 148(sp)
	li t1 12
	add t0,t0,t1
	#%This_addr.first.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.18,i32 0,i32 3
	sw t0,152(sp)
	# %This_addr.first.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.18,i32 0,i32 3
	lw t1 152(sp)
	lw t0 0(t1)
	# %.middle.365=load i32*,i32** %This_addr.first.2
	sw t0,156(sp)
	#  %.middle.365=load i32*,i32** %This_addr.first.2
	lw t0 4(sp)
	sw t0,160(sp)
	#  %.middle.367=load i32,i32* %u_addr
	lw t0 160(sp)
	sw t0,164(sp)
	lw t0 164(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,164(sp)
	lw t0 156(sp)
	lw t1 164(sp)
	add t0,t0,t1
	#%.middle.366 = getelementptr i32,i32* %.middle.365,i32 %.middle.367
	sw t0,168(sp)
	# %.middle.366 = getelementptr i32,i32* %.middle.365,i32 %.middle.367
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.366.0=load i32,i32* %.middle.366
	sw t0,172(sp)
	#  %.middle.366.0=load i32,i32* %.middle.366
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.369=load i32,i32* %.middle.366
	sw t0,176(sp)
	#  %.middle.369=load i32,i32* %.middle.366
	lw t1 140(sp)
	lw t0 176(sp)
	sw t0,0(t1)
	#  store i32 %.middle.369,i32* %.middle.363
	lw t0 0(sp)
	sw t0,180(sp)
	#  %This_addr.19=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 180(sp)
	li t1 12
	add t0,t0,t1
	#%This_addr.first.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.19,i32 0,i32 3
	sw t0,184(sp)
	# %This_addr.first.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.19,i32 0,i32 3
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.370=load i32*,i32** %This_addr.first.3
	sw t0,188(sp)
	#  %.middle.370=load i32*,i32** %This_addr.first.3
	lw t0 4(sp)
	sw t0,192(sp)
	#  %.middle.372=load i32,i32* %u_addr
	lw t0 192(sp)
	sw t0,196(sp)
	lw t0 196(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,196(sp)
	lw t0 188(sp)
	lw t1 196(sp)
	add t0,t0,t1
	#%.middle.371 = getelementptr i32,i32* %.middle.370,i32 %.middle.372
	sw t0,200(sp)
	# %.middle.371 = getelementptr i32,i32* %.middle.370,i32 %.middle.372
	lw t1 200(sp)
	lw t0 0(t1)
	# %.middle.371.0=load i32,i32* %.middle.371
	sw t0,204(sp)
	#  %.middle.371.0=load i32,i32* %.middle.371
	lw t0 0(sp)
	sw t0,208(sp)
	#  %This_addr.20=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 208(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.size.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.20,i32 0,i32 1
	sw t0,212(sp)
	# %This_addr.size.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.20,i32 0,i32 1
	lw t1 212(sp)
	lw t0 0(t1)
	# %.middle.374=load i32,i32* %This_addr.size.3
	sw t0,216(sp)
	#  %.middle.374=load i32,i32* %This_addr.size.3
	lw t1 200(sp)
	lw t0 216(sp)
	sw t0,0(t1)
	#  store i32 %.middle.374,i32* %.middle.371
	lw t0 0(sp)
	sw t0,220(sp)
	#  %This_addr.21=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 220(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.size.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.21,i32 0,i32 1
	sw t0,224(sp)
	# %This_addr.size.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.21,i32 0,i32 1
	lw t1 224(sp)
	lw t0 0(t1)
	# %.middle.375=load i32,i32* %This_addr.size.4
	sw t0,228(sp)
	#  %.middle.375=load i32,i32* %This_addr.size.4
	lw t0 228(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.376 = add i32 %.middle.375,1
	sw t0,232(sp)
	# %.middle.376 = add i32 %.middle.375,1
	lw t1 224(sp)
	lw t0 232(sp)
	sw t0,0(t1)
	#  store i32 %.middle.376,i32* %This_addr.size.4
	j .func.EdgeList.addEdge.Exit
	#br label %Exit.161
	
.func.EdgeList.addEdge.Exit:
	lw t0 20(sp)
	mv s0 t0
	lw t0 24(sp)
	mv ra t0
	addi sp,sp,236
	ret
	#ret void
	

    .globl .func.EdgeList.nVertices
.func.EdgeList.nVertices:


mv s0 sp
	addi sp,sp,-48
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.EdgeList*
	mv t0 a0
	sw t0,0(sp)
	# %.retval.p=alloca i32
	j .L120
	#br label %.block.165
	
.L120:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.22=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 16(sp)
	li t1 12
	add t0,t0,t1
	#%This_addr.first.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.22,i32 0,i32 3
	sw t0,20(sp)
	# %This_addr.first.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.22,i32 0,i32 3
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.378=load i32*,i32** %This_addr.first.4
	sw t0,24(sp)
	#  %.middle.378=load i32*,i32** %This_addr.first.4
	lw t0 24(sp)
	sw t0,28(sp)
	# %.middle.377 = ptrtoint i32* %.middle.378 to i32
	lw t0 28(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.379 = sub i32 %.middle.377,4
	sw t0,32(sp)
	# %.middle.379 = sub i32 %.middle.377,4
	lw t0 32(sp)
	sw t0,36(sp)
	# %.middle.380 = inttoptr i32 %.middle.379 to i32*
	lw t1 36(sp)
	lw t0 0(t1)
	# %.middle.380.0=load i32,i32* %.middle.380
	sw t0,40(sp)
	#  %.middle.380.0=load i32,i32* %.middle.380
	lw t0 40(sp)
	sw t0,4(sp)
	#  store i32 %.middle.380.0,i32* %.retval.p
	j .func.EdgeList.nVertices.Exit
	#br label %Exit.164
	
.func.EdgeList.nVertices.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 44(sp)
	mv a0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,48
	ret
	#ret i32 %.retval
	

    .globl .func.EdgeList.nEdges
.func.EdgeList.nEdges:


mv s0 sp
	addi sp,sp,-48
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.EdgeList*
	mv t0 a0
	sw t0,0(sp)
	# %.retval.p=alloca i32
	j .L121
	#br label %.block.168
	
.L121:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.23=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 16(sp)
	li t1 8
	add t0,t0,t1
	#%This_addr.edges.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.23,i32 0,i32 2
	sw t0,20(sp)
	# %This_addr.edges.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.23,i32 0,i32 2
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.382=load %struct.Edge**,%struct.Edge*** %This_addr.edges.2
	sw t0,24(sp)
	#  %.middle.382=load %struct.Edge**,%struct.Edge*** %This_addr.edges.2
	lw t0 24(sp)
	sw t0,28(sp)
	# %.middle.381 = ptrtoint %struct.Edge** %.middle.382 to i32
	lw t0 28(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.383 = sub i32 %.middle.381,4
	sw t0,32(sp)
	# %.middle.383 = sub i32 %.middle.381,4
	lw t0 32(sp)
	sw t0,36(sp)
	# %.middle.384 = inttoptr i32 %.middle.383 to i32*
	lw t1 36(sp)
	lw t0 0(t1)
	# %.middle.384.0=load i32,i32* %.middle.384
	sw t0,40(sp)
	#  %.middle.384.0=load i32,i32* %.middle.384
	lw t0 40(sp)
	sw t0,4(sp)
	#  store i32 %.middle.384.0,i32* %.retval.p
	j .func.EdgeList.nEdges.Exit
	#br label %Exit.167
	
.func.EdgeList.nEdges.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 44(sp)
	mv a0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,48
	ret
	#ret i32 %.retval
	

    .globl .func.EdgeList.construct
.func.EdgeList.construct:


mv s0 sp
	addi sp,sp,-12
	mv t0 s0
	sw t0,4(sp)
	mv t0 ra
	sw t0,8(sp)
	# %This_addr=alloca %struct.EdgeList*
	mv t0 a0
	sw t0,0(sp)
	#  store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	j .L122
	#br label %.block.171
	
.L122:
	j .func.EdgeList.construct.Exit
	#br label %Exit.170
	
.func.EdgeList.construct.Exit:
	lw t0 4(sp)
	mv s0 t0
	lw t0 8(sp)
	mv ra t0
	addi sp,sp,12
	ret
	#ret void
	

    .globl .func.Array_Node.construct
.func.Array_Node.construct:


mv s0 sp
	addi sp,sp,-48
	mv t0 s0
	sw t0,4(sp)
	mv t0 ra
	sw t0,8(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	#  store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	j .L123
	#br label %.block.174
	
.L123:
	lw t0 0(sp)
	sw t0,12(sp)
	#  %This_addr.24=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 12(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.24,i32 0,i32 0
	sw t0,16(sp)
	# %This_addr.sz.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.24,i32 0,i32 0
	lw t1 16(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %This_addr.sz.0
	lw t0 0(sp)
	sw t0,20(sp)
	#  %This_addr.25=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.25,i32 0,i32 1
	sw t0,24(sp)
	# %This_addr.storage.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.25,i32 0,i32 1
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,8(sp)
	call _malloc
	lw t0 8(sp)
	mv ra t0
	mv t0 a0
	sw t0,28(sp)
	# %.SizeList.7 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,32(sp)
	lw t0 32(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,32(sp)
	lw t0 28(sp)
	lw t1 32(sp)
	add t0,t0,t1
	#%.ArrayIdx.7 = getelementptr i32,i32* %.SizeList.7,i32 0
	sw t0,36(sp)
	# %.ArrayIdx.7 = getelementptr i32,i32* %.SizeList.7,i32 0
	lw t1 36(sp)
	li t0 16
	sw t0,0(t1)
	#  store i32 16,i32* %.ArrayIdx.7
	lw t0 28(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,8(sp)
	call _malloc_toInt
	lw t0 8(sp)
	mv ra t0
	mv t0 a0
	sw t0,40(sp)
	# %.middle.386 = call i32* @_malloc_toInt(i32* %.SizeList.7,i32 1)
	lw t0 40(sp)
	sw t0,44(sp)
	# %.new.7 = bitcast i32* %.middle.386 to %struct.Node**
	lw t1 24(sp)
	lw t0 44(sp)
	sw t0,0(t1)
	#  store %struct.Node** %.new.7,%struct.Node*** %This_addr.storage.0
	j .func.Array_Node.construct.Exit
	#br label %Exit.173
	
.func.Array_Node.construct.Exit:
	lw t0 4(sp)
	mv s0 t0
	lw t0 8(sp)
	mv ra t0
	addi sp,sp,48
	ret
	#ret void
	

    .globl .func.Array_Node.push_back
.func.Array_Node.push_back:


mv s0 sp
	addi sp,sp,-124
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %v_addr=alloca %struct.Node*
	mv t0 a1
	sw t0,4(sp)
	# %.Func.Return.p.5.0=alloca i32
	j .L124
	#br label %.block.177
	
.L124:
	j .L125
	#br label %If_Cond.178
	
.L125:
	lw t0 0(sp)
	sw t0,20(sp)
	#  %.middle.388=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 20(sp)
	mv a0 t0
	mv t0 ra
	sw t0,16(sp)
	call .func.Array_Node.size
	lw t0 16(sp)
	mv ra t0
	mv t0 a0
	sw t0,24(sp)
	# %.Func_Return.5 = call i32 @.func.Array_Node.size(%struct.Array_Node* %.middle.388)
	lw t0 24(sp)
	sw t0,8(sp)
	#  store i32 %.Func_Return.5,i32* %.Func.Return.p.5.0
	lw t0 0(sp)
	sw t0,28(sp)
	#  %This_addr.26=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 28(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.26,i32 0,i32 1
	sw t0,32(sp)
	# %This_addr.storage.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.26,i32 0,i32 1
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.390=load %struct.Node**,%struct.Node*** %This_addr.storage.1
	sw t0,36(sp)
	#  %.middle.390=load %struct.Node**,%struct.Node*** %This_addr.storage.1
	lw t0 36(sp)
	sw t0,40(sp)
	# %.middle.389 = ptrtoint %struct.Node** %.middle.390 to i32
	lw t0 40(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.391 = sub i32 %.middle.389,4
	sw t0,44(sp)
	# %.middle.391 = sub i32 %.middle.389,4
	lw t0 44(sp)
	sw t0,48(sp)
	# %.middle.392 = inttoptr i32 %.middle.391 to i32*
	lw t1 48(sp)
	lw t0 0(t1)
	# %.middle.392.0=load i32,i32* %.middle.392
	sw t0,52(sp)
	#  %.middle.392.0=load i32,i32* %.middle.392
	lw t0 8(sp)
	sw t0,56(sp)
	#  %.middle.394=load i32,i32* %.Func.Return.p.5.0
	lw t0 56(sp)
	lw t1 52(sp)
	sub t0,t0,t1
	sw t0,60(sp)
	lw t0 60(sp)
	seqz t0 t0
	#%.middle.393 = icmp eq i32 %.middle.394,%.middle.392.0
	sw t0,60(sp)
	# %.middle.393 = icmp eq i32 %.middle.394,%.middle.392.0
	lw t0 60(sp)
	bnez t0 .L126
	lw t0 60(sp)
	beqz t0 .L127
	#br i1 %.middle.393,label %If_Then.179,label %If_Else.180
	
.L126:
	lw t0 0(sp)
	sw t0,64(sp)
	#  %.middle.395=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 64(sp)
	mv a0 t0
	mv t0 ra
	sw t0,16(sp)
	call .func.Array_Node.doubleStorage
	lw t0 16(sp)
	mv ra t0
	#call void @.func.Array_Node.doubleStorage(%struct.Array_Node* %.middle.395)
	j .L128
	#br label %If_End.181
	
.L127:
	j .L128
	#br label %If_End.181
	
.L128:
	lw t0 0(sp)
	sw t0,68(sp)
	#  %This_addr.27=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 68(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.27,i32 0,i32 1
	sw t0,72(sp)
	# %This_addr.storage.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.27,i32 0,i32 1
	lw t1 72(sp)
	lw t0 0(t1)
	# %.middle.396=load %struct.Node**,%struct.Node*** %This_addr.storage.2
	sw t0,76(sp)
	#  %.middle.396=load %struct.Node**,%struct.Node*** %This_addr.storage.2
	lw t0 0(sp)
	sw t0,80(sp)
	#  %This_addr.28=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 80(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.28,i32 0,i32 0
	sw t0,84(sp)
	# %This_addr.sz.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.28,i32 0,i32 0
	lw t1 84(sp)
	lw t0 0(t1)
	# %.middle.398=load i32,i32* %This_addr.sz.1
	sw t0,88(sp)
	#  %.middle.398=load i32,i32* %This_addr.sz.1
	lw t0 88(sp)
	sw t0,92(sp)
	lw t0 92(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,92(sp)
	lw t0 76(sp)
	lw t1 92(sp)
	add t0,t0,t1
	#%.middle.397 = getelementptr %struct.Node*,%struct.Node** %.middle.396,i32 %.middle.398
	sw t0,96(sp)
	# %.middle.397 = getelementptr %struct.Node*,%struct.Node** %.middle.396,i32 %.middle.398
	lw t1 96(sp)
	lw t0 0(t1)
	# %.middle.397.0=load %struct.Node*,%struct.Node** %.middle.397
	sw t0,100(sp)
	#  %.middle.397.0=load %struct.Node*,%struct.Node** %.middle.397
	lw t0 4(sp)
	sw t0,104(sp)
	#  %.middle.400=load %struct.Node*,%struct.Node** %v_addr
	lw t1 96(sp)
	lw t0 104(sp)
	sw t0,0(t1)
	#  store %struct.Node* %.middle.400,%struct.Node** %.middle.397
	lw t0 0(sp)
	sw t0,108(sp)
	#  %This_addr.29=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 108(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.29,i32 0,i32 0
	sw t0,112(sp)
	# %This_addr.sz.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.29,i32 0,i32 0
	lw t1 112(sp)
	lw t0 0(t1)
	# %.middle.401=load i32,i32* %This_addr.sz.2
	sw t0,116(sp)
	#  %.middle.401=load i32,i32* %This_addr.sz.2
	lw t0 116(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.402 = add i32 %.middle.401,1
	sw t0,120(sp)
	# %.middle.402 = add i32 %.middle.401,1
	lw t1 112(sp)
	lw t0 120(sp)
	sw t0,0(t1)
	#  store i32 %.middle.402,i32* %This_addr.sz.2
	j .func.Array_Node.push_back.Exit
	#br label %Exit.176
	
.func.Array_Node.push_back.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,124
	ret
	#ret void
	

    .globl .func.Array_Node.pop_back
.func.Array_Node.pop_back:


mv s0 sp
	addi sp,sp,-76
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %.retval.p=alloca %struct.Node*
	j .L129
	#br label %.block.184
	
.L129:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.30=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 16(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.30,i32 0,i32 0
	sw t0,20(sp)
	# %This_addr.sz.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.30,i32 0,i32 0
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.403=load i32,i32* %This_addr.sz.3
	sw t0,24(sp)
	#  %.middle.403=load i32,i32* %This_addr.sz.3
	lw t0 24(sp)
	li t1 1
	sub t0,t0,t1
	#%.middle.404 = sub i32 %.middle.403,1
	sw t0,28(sp)
	# %.middle.404 = sub i32 %.middle.403,1
	lw t1 20(sp)
	lw t0 28(sp)
	sw t0,0(t1)
	#  store i32 %.middle.404,i32* %This_addr.sz.3
	lw t0 0(sp)
	sw t0,32(sp)
	#  %This_addr.31=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 32(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.31,i32 0,i32 1
	sw t0,36(sp)
	# %This_addr.storage.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.31,i32 0,i32 1
	lw t1 36(sp)
	lw t0 0(t1)
	# %.middle.405=load %struct.Node**,%struct.Node*** %This_addr.storage.3
	sw t0,40(sp)
	#  %.middle.405=load %struct.Node**,%struct.Node*** %This_addr.storage.3
	lw t0 0(sp)
	sw t0,44(sp)
	#  %This_addr.32=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 44(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.32,i32 0,i32 0
	sw t0,48(sp)
	# %This_addr.sz.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.32,i32 0,i32 0
	lw t1 48(sp)
	lw t0 0(t1)
	# %.middle.407=load i32,i32* %This_addr.sz.4
	sw t0,52(sp)
	#  %.middle.407=load i32,i32* %This_addr.sz.4
	lw t0 52(sp)
	sw t0,56(sp)
	lw t0 56(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,56(sp)
	lw t0 40(sp)
	lw t1 56(sp)
	add t0,t0,t1
	#%.middle.406 = getelementptr %struct.Node*,%struct.Node** %.middle.405,i32 %.middle.407
	sw t0,60(sp)
	# %.middle.406 = getelementptr %struct.Node*,%struct.Node** %.middle.405,i32 %.middle.407
	lw t1 60(sp)
	lw t0 0(t1)
	# %.middle.406.0=load %struct.Node*,%struct.Node** %.middle.406
	sw t0,64(sp)
	#  %.middle.406.0=load %struct.Node*,%struct.Node** %.middle.406
	lw t1 60(sp)
	lw t0 0(t1)
	# %.middle.408=load %struct.Node*,%struct.Node** %.middle.406
	sw t0,68(sp)
	#  %.middle.408=load %struct.Node*,%struct.Node** %.middle.406
	lw t0 68(sp)
	sw t0,4(sp)
	#  store %struct.Node* %.middle.408,%struct.Node** %.retval.p
	j .func.Array_Node.pop_back.Exit
	#br label %Exit.183
	
.func.Array_Node.pop_back.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,72(sp)
	#  %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw t0 72(sp)
	mv a0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,76
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Array_Node.back
.func.Array_Node.back:


mv s0 sp
	addi sp,sp,-64
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %.retval.p=alloca %struct.Node*
	j .L130
	#br label %.block.187
	
.L130:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.33=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 16(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.33,i32 0,i32 1
	sw t0,20(sp)
	# %This_addr.storage.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.33,i32 0,i32 1
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.409=load %struct.Node**,%struct.Node*** %This_addr.storage.4
	sw t0,24(sp)
	#  %.middle.409=load %struct.Node**,%struct.Node*** %This_addr.storage.4
	lw t0 0(sp)
	sw t0,28(sp)
	#  %This_addr.34=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 28(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.34,i32 0,i32 0
	sw t0,32(sp)
	# %This_addr.sz.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.34,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.411=load i32,i32* %This_addr.sz.5
	sw t0,36(sp)
	#  %.middle.411=load i32,i32* %This_addr.sz.5
	lw t0 36(sp)
	li t1 1
	sub t0,t0,t1
	#%.middle.410 = sub i32 %.middle.411,1
	sw t0,40(sp)
	# %.middle.410 = sub i32 %.middle.411,1
	lw t0 40(sp)
	sw t0,44(sp)
	lw t0 44(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,44(sp)
	lw t0 24(sp)
	lw t1 44(sp)
	add t0,t0,t1
	#%.middle.412 = getelementptr %struct.Node*,%struct.Node** %.middle.409,i32 %.middle.410
	sw t0,48(sp)
	# %.middle.412 = getelementptr %struct.Node*,%struct.Node** %.middle.409,i32 %.middle.410
	lw t1 48(sp)
	lw t0 0(t1)
	# %.middle.412.0=load %struct.Node*,%struct.Node** %.middle.412
	sw t0,52(sp)
	#  %.middle.412.0=load %struct.Node*,%struct.Node** %.middle.412
	lw t1 48(sp)
	lw t0 0(t1)
	# %.middle.413=load %struct.Node*,%struct.Node** %.middle.412
	sw t0,56(sp)
	#  %.middle.413=load %struct.Node*,%struct.Node** %.middle.412
	lw t0 56(sp)
	sw t0,4(sp)
	#  store %struct.Node* %.middle.413,%struct.Node** %.retval.p
	j .func.Array_Node.back.Exit
	#br label %Exit.186
	
.func.Array_Node.back.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,60(sp)
	#  %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw t0 60(sp)
	mv a0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,64
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Array_Node.front
.func.Array_Node.front:


mv s0 sp
	addi sp,sp,-48
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %.retval.p=alloca %struct.Node*
	j .L131
	#br label %.block.190
	
.L131:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.35=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 16(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.35,i32 0,i32 1
	sw t0,20(sp)
	# %This_addr.storage.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.35,i32 0,i32 1
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.414=load %struct.Node**,%struct.Node*** %This_addr.storage.5
	sw t0,24(sp)
	#  %.middle.414=load %struct.Node**,%struct.Node*** %This_addr.storage.5
	li t0 0
	sw t0,28(sp)
	lw t0 28(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,28(sp)
	lw t0 24(sp)
	lw t1 28(sp)
	add t0,t0,t1
	#%.middle.415 = getelementptr %struct.Node*,%struct.Node** %.middle.414,i32 0
	sw t0,32(sp)
	# %.middle.415 = getelementptr %struct.Node*,%struct.Node** %.middle.414,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.415.0=load %struct.Node*,%struct.Node** %.middle.415
	sw t0,36(sp)
	#  %.middle.415.0=load %struct.Node*,%struct.Node** %.middle.415
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.416=load %struct.Node*,%struct.Node** %.middle.415
	sw t0,40(sp)
	#  %.middle.416=load %struct.Node*,%struct.Node** %.middle.415
	lw t0 40(sp)
	sw t0,4(sp)
	#  store %struct.Node* %.middle.416,%struct.Node** %.retval.p
	j .func.Array_Node.front.Exit
	#br label %Exit.189
	
.func.Array_Node.front.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw t0 44(sp)
	mv a0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,48
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Array_Node.size
.func.Array_Node.size:


mv s0 sp
	addi sp,sp,-32
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %.retval.p=alloca i32
	j .L132
	#br label %.block.193
	
.L132:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.36=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 16(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.36,i32 0,i32 0
	sw t0,20(sp)
	# %This_addr.sz.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.36,i32 0,i32 0
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.417=load i32,i32* %This_addr.sz.6
	sw t0,24(sp)
	#  %.middle.417=load i32,i32* %This_addr.sz.6
	lw t0 24(sp)
	sw t0,4(sp)
	#  store i32 %.middle.417,i32* %.retval.p
	j .func.Array_Node.size.Exit
	#br label %Exit.192
	
.func.Array_Node.size.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,28(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 28(sp)
	mv a0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,32
	ret
	#ret i32 %.retval
	

    .globl .func.Array_Node.resize
.func.Array_Node.resize:


mv s0 sp
	addi sp,sp,-68
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %newSize_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	#  store i32 %newSize,i32* %newSize_addr
	j .L133
	#br label %.block.196
	
.L133:
	j .L134
	#br label %While_Cond.197
	
.L134:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.37=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 16(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.37,i32 0,i32 1
	sw t0,20(sp)
	# %This_addr.storage.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.37,i32 0,i32 1
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.419=load %struct.Node**,%struct.Node*** %This_addr.storage.6
	sw t0,24(sp)
	#  %.middle.419=load %struct.Node**,%struct.Node*** %This_addr.storage.6
	lw t0 24(sp)
	sw t0,28(sp)
	# %.middle.418 = ptrtoint %struct.Node** %.middle.419 to i32
	lw t0 28(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.420 = sub i32 %.middle.418,4
	sw t0,32(sp)
	# %.middle.420 = sub i32 %.middle.418,4
	lw t0 32(sp)
	sw t0,36(sp)
	# %.middle.421 = inttoptr i32 %.middle.420 to i32*
	lw t1 36(sp)
	lw t0 0(t1)
	# %.middle.421.0=load i32,i32* %.middle.421
	sw t0,40(sp)
	#  %.middle.421.0=load i32,i32* %.middle.421
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.middle.423=load i32,i32* %newSize_addr
	lw t0 40(sp)
	lw t1 44(sp)
	slt t0 t0,t1
	#%.middle.422 = icmp slt i32 %.middle.421.0,%.middle.423
	sw t0,48(sp)
	# %.middle.422 = icmp slt i32 %.middle.421.0,%.middle.423
	lw t0 48(sp)
	bnez t0 .L135
	lw t0 48(sp)
	beqz t0 .L136
	#br i1 %.middle.422,label %While_Body.198,label %While_End.199
	
.L135:
	lw t0 0(sp)
	sw t0,52(sp)
	#  %.middle.424=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 52(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.Array_Node.doubleStorage
	lw t0 12(sp)
	mv ra t0
	#call void @.func.Array_Node.doubleStorage(%struct.Array_Node* %.middle.424)
	j .L134
	#br label %While_Cond.197
	
.L136:
	lw t0 0(sp)
	sw t0,56(sp)
	#  %This_addr.38=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 56(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.38,i32 0,i32 0
	sw t0,60(sp)
	# %This_addr.sz.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.38,i32 0,i32 0
	lw t0 4(sp)
	sw t0,64(sp)
	#  %.middle.426=load i32,i32* %newSize_addr
	lw t1 60(sp)
	lw t0 64(sp)
	sw t0,0(t1)
	#  store i32 %.middle.426,i32* %This_addr.sz.7
	j .func.Array_Node.resize.Exit
	#br label %Exit.195
	
.func.Array_Node.resize.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,68
	ret
	#ret void
	

    .globl .func.Array_Node.get
.func.Array_Node.get:


mv s0 sp
	addi sp,sp,-56
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %i_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %.retval.p=alloca %struct.Node*
	j .L137
	#br label %.block.202
	
.L137:
	lw t0 0(sp)
	sw t0,20(sp)
	#  %This_addr.39=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.39,i32 0,i32 1
	sw t0,24(sp)
	# %This_addr.storage.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.39,i32 0,i32 1
	lw t1 24(sp)
	lw t0 0(t1)
	# %.middle.427=load %struct.Node**,%struct.Node*** %This_addr.storage.7
	sw t0,28(sp)
	#  %.middle.427=load %struct.Node**,%struct.Node*** %This_addr.storage.7
	lw t0 4(sp)
	sw t0,32(sp)
	#  %.middle.429=load i32,i32* %i_addr
	lw t0 32(sp)
	sw t0,36(sp)
	lw t0 36(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,36(sp)
	lw t0 28(sp)
	lw t1 36(sp)
	add t0,t0,t1
	#%.middle.428 = getelementptr %struct.Node*,%struct.Node** %.middle.427,i32 %.middle.429
	sw t0,40(sp)
	# %.middle.428 = getelementptr %struct.Node*,%struct.Node** %.middle.427,i32 %.middle.429
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.428.0=load %struct.Node*,%struct.Node** %.middle.428
	sw t0,44(sp)
	#  %.middle.428.0=load %struct.Node*,%struct.Node** %.middle.428
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.430=load %struct.Node*,%struct.Node** %.middle.428
	sw t0,48(sp)
	#  %.middle.430=load %struct.Node*,%struct.Node** %.middle.428
	lw t0 48(sp)
	sw t0,8(sp)
	#  store %struct.Node* %.middle.430,%struct.Node** %.retval.p
	j .func.Array_Node.get.Exit
	#br label %Exit.201
	
.func.Array_Node.get.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,52(sp)
	#  %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw t0 52(sp)
	mv a0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,56
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Array_Node.set
.func.Array_Node.set:


mv s0 sp
	addi sp,sp,-52
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %i_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %v_addr=alloca %struct.Node*
	mv t0 a2
	sw t0,8(sp)
	#  store %struct.Node* %v,%struct.Node** %v_addr
	j .L138
	#br label %.block.205
	
.L138:
	lw t0 0(sp)
	sw t0,20(sp)
	#  %This_addr.40=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.40,i32 0,i32 1
	sw t0,24(sp)
	# %This_addr.storage.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.40,i32 0,i32 1
	lw t1 24(sp)
	lw t0 0(t1)
	# %.middle.431=load %struct.Node**,%struct.Node*** %This_addr.storage.8
	sw t0,28(sp)
	#  %.middle.431=load %struct.Node**,%struct.Node*** %This_addr.storage.8
	lw t0 4(sp)
	sw t0,32(sp)
	#  %.middle.433=load i32,i32* %i_addr
	lw t0 32(sp)
	sw t0,36(sp)
	lw t0 36(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,36(sp)
	lw t0 28(sp)
	lw t1 36(sp)
	add t0,t0,t1
	#%.middle.432 = getelementptr %struct.Node*,%struct.Node** %.middle.431,i32 %.middle.433
	sw t0,40(sp)
	# %.middle.432 = getelementptr %struct.Node*,%struct.Node** %.middle.431,i32 %.middle.433
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.432.0=load %struct.Node*,%struct.Node** %.middle.432
	sw t0,44(sp)
	#  %.middle.432.0=load %struct.Node*,%struct.Node** %.middle.432
	lw t0 8(sp)
	sw t0,48(sp)
	#  %.middle.435=load %struct.Node*,%struct.Node** %v_addr
	lw t1 40(sp)
	lw t0 48(sp)
	sw t0,0(t1)
	#  store %struct.Node* %.middle.435,%struct.Node** %.middle.432
	j .func.Array_Node.set.Exit
	#br label %Exit.204
	
.func.Array_Node.set.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,52
	ret
	#ret void
	

    .globl .func.Array_Node.swap
.func.Array_Node.swap:


mv s0 sp
	addi sp,sp,-148
	mv t0 s0
	sw t0,16(sp)
	mv t0 ra
	sw t0,20(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %i_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %j_addr=alloca i32
	mv t0 a2
	sw t0,8(sp)
	# %t.0=alloca %struct.Node*
	j .L139
	#br label %.block.208
	
.L139:
	lw t0 0(sp)
	sw t0,24(sp)
	#  %This_addr.41=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 24(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.41,i32 0,i32 1
	sw t0,28(sp)
	# %This_addr.storage.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.41,i32 0,i32 1
	lw t1 28(sp)
	lw t0 0(t1)
	# %.middle.436=load %struct.Node**,%struct.Node*** %This_addr.storage.9
	sw t0,32(sp)
	#  %.middle.436=load %struct.Node**,%struct.Node*** %This_addr.storage.9
	lw t0 4(sp)
	sw t0,36(sp)
	#  %.middle.438=load i32,i32* %i_addr
	lw t0 36(sp)
	sw t0,40(sp)
	lw t0 40(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,40(sp)
	lw t0 32(sp)
	lw t1 40(sp)
	add t0,t0,t1
	#%.middle.437 = getelementptr %struct.Node*,%struct.Node** %.middle.436,i32 %.middle.438
	sw t0,44(sp)
	# %.middle.437 = getelementptr %struct.Node*,%struct.Node** %.middle.436,i32 %.middle.438
	lw t1 44(sp)
	lw t0 0(t1)
	# %.middle.437.0=load %struct.Node*,%struct.Node** %.middle.437
	sw t0,48(sp)
	#  %.middle.437.0=load %struct.Node*,%struct.Node** %.middle.437
	lw t1 44(sp)
	lw t0 0(t1)
	# %.middle.439=load %struct.Node*,%struct.Node** %.middle.437
	sw t0,52(sp)
	#  %.middle.439=load %struct.Node*,%struct.Node** %.middle.437
	lw t0 52(sp)
	sw t0,12(sp)
	#  store %struct.Node* %.middle.439,%struct.Node** %t.0
	lw t0 0(sp)
	sw t0,56(sp)
	#  %This_addr.42=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 56(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.42,i32 0,i32 1
	sw t0,60(sp)
	# %This_addr.storage.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.42,i32 0,i32 1
	lw t1 60(sp)
	lw t0 0(t1)
	# %.middle.440=load %struct.Node**,%struct.Node*** %This_addr.storage.10
	sw t0,64(sp)
	#  %.middle.440=load %struct.Node**,%struct.Node*** %This_addr.storage.10
	lw t0 4(sp)
	sw t0,68(sp)
	#  %.middle.442=load i32,i32* %i_addr
	lw t0 68(sp)
	sw t0,72(sp)
	lw t0 72(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,72(sp)
	lw t0 64(sp)
	lw t1 72(sp)
	add t0,t0,t1
	#%.middle.441 = getelementptr %struct.Node*,%struct.Node** %.middle.440,i32 %.middle.442
	sw t0,76(sp)
	# %.middle.441 = getelementptr %struct.Node*,%struct.Node** %.middle.440,i32 %.middle.442
	lw t1 76(sp)
	lw t0 0(t1)
	# %.middle.441.0=load %struct.Node*,%struct.Node** %.middle.441
	sw t0,80(sp)
	#  %.middle.441.0=load %struct.Node*,%struct.Node** %.middle.441
	lw t0 0(sp)
	sw t0,84(sp)
	#  %This_addr.43=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 84(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.43,i32 0,i32 1
	sw t0,88(sp)
	# %This_addr.storage.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.43,i32 0,i32 1
	lw t1 88(sp)
	lw t0 0(t1)
	# %.middle.443=load %struct.Node**,%struct.Node*** %This_addr.storage.11
	sw t0,92(sp)
	#  %.middle.443=load %struct.Node**,%struct.Node*** %This_addr.storage.11
	lw t0 8(sp)
	sw t0,96(sp)
	#  %.middle.445=load i32,i32* %j_addr
	lw t0 96(sp)
	sw t0,100(sp)
	lw t0 100(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,100(sp)
	lw t0 92(sp)
	lw t1 100(sp)
	add t0,t0,t1
	#%.middle.444 = getelementptr %struct.Node*,%struct.Node** %.middle.443,i32 %.middle.445
	sw t0,104(sp)
	# %.middle.444 = getelementptr %struct.Node*,%struct.Node** %.middle.443,i32 %.middle.445
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.444.0=load %struct.Node*,%struct.Node** %.middle.444
	sw t0,108(sp)
	#  %.middle.444.0=load %struct.Node*,%struct.Node** %.middle.444
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.447=load %struct.Node*,%struct.Node** %.middle.444
	sw t0,112(sp)
	#  %.middle.447=load %struct.Node*,%struct.Node** %.middle.444
	lw t1 76(sp)
	lw t0 112(sp)
	sw t0,0(t1)
	#  store %struct.Node* %.middle.447,%struct.Node** %.middle.441
	lw t0 0(sp)
	sw t0,116(sp)
	#  %This_addr.44=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 116(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.44,i32 0,i32 1
	sw t0,120(sp)
	# %This_addr.storage.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.44,i32 0,i32 1
	lw t1 120(sp)
	lw t0 0(t1)
	# %.middle.448=load %struct.Node**,%struct.Node*** %This_addr.storage.12
	sw t0,124(sp)
	#  %.middle.448=load %struct.Node**,%struct.Node*** %This_addr.storage.12
	lw t0 8(sp)
	sw t0,128(sp)
	#  %.middle.450=load i32,i32* %j_addr
	lw t0 128(sp)
	sw t0,132(sp)
	lw t0 132(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,132(sp)
	lw t0 124(sp)
	lw t1 132(sp)
	add t0,t0,t1
	#%.middle.449 = getelementptr %struct.Node*,%struct.Node** %.middle.448,i32 %.middle.450
	sw t0,136(sp)
	# %.middle.449 = getelementptr %struct.Node*,%struct.Node** %.middle.448,i32 %.middle.450
	lw t1 136(sp)
	lw t0 0(t1)
	# %.middle.449.0=load %struct.Node*,%struct.Node** %.middle.449
	sw t0,140(sp)
	#  %.middle.449.0=load %struct.Node*,%struct.Node** %.middle.449
	lw t0 12(sp)
	sw t0,144(sp)
	#  %.middle.452=load %struct.Node*,%struct.Node** %t.0
	lw t1 136(sp)
	lw t0 144(sp)
	sw t0,0(t1)
	#  store %struct.Node* %.middle.452,%struct.Node** %.middle.449
	j .func.Array_Node.swap.Exit
	#br label %Exit.207
	
.func.Array_Node.swap.Exit:
	lw t0 16(sp)
	mv s0 t0
	lw t0 20(sp)
	mv ra t0
	addi sp,sp,148
	ret
	#ret void
	

    .globl .func.Array_Node.doubleStorage
.func.Array_Node.doubleStorage:


mv s0 sp
	addi sp,sp,-208
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Array_Node*
	mv t0 a0
	sw t0,0(sp)
	# %szCopy.0=alloca i32
	j .L140
	#br label %.block.211
	
.L140:
	lw t0 0(sp)
	sw t0,20(sp)
	#  %This_addr.45=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.45,i32 0,i32 1
	sw t0,24(sp)
	# %This_addr.storage.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.45,i32 0,i32 1
	lw t1 24(sp)
	lw t0 0(t1)
	# %.middle.453=load %struct.Node**,%struct.Node*** %This_addr.storage.13
	sw t0,28(sp)
	#  %.middle.453=load %struct.Node**,%struct.Node*** %This_addr.storage.13
	lw t0 28(sp)
	sw t0,4(sp)
	#  store %struct.Node** %.middle.453,%struct.Node*** %copy.0
	lw t0 0(sp)
	sw t0,32(sp)
	#  %This_addr.46=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 32(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.46,i32 0,i32 0
	sw t0,36(sp)
	# %This_addr.sz.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.46,i32 0,i32 0
	lw t1 36(sp)
	lw t0 0(t1)
	# %.middle.454=load i32,i32* %This_addr.sz.8
	sw t0,40(sp)
	#  %.middle.454=load i32,i32* %This_addr.sz.8
	lw t0 40(sp)
	sw t0,8(sp)
	#  store i32 %.middle.454,i32* %szCopy.0
	lw t0 0(sp)
	sw t0,44(sp)
	#  %This_addr.47=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 44(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.14 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.47,i32 0,i32 1
	sw t0,48(sp)
	# %This_addr.storage.14 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.47,i32 0,i32 1
	lw t0 4(sp)
	sw t0,52(sp)
	#  %.middle.456=load %struct.Node**,%struct.Node*** %copy.0
	lw t0 52(sp)
	sw t0,56(sp)
	# %.middle.455 = ptrtoint %struct.Node** %.middle.456 to i32
	lw t0 56(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.457 = sub i32 %.middle.455,4
	sw t0,60(sp)
	# %.middle.457 = sub i32 %.middle.455,4
	lw t0 60(sp)
	sw t0,64(sp)
	# %.middle.458 = inttoptr i32 %.middle.457 to i32*
	lw t1 64(sp)
	lw t0 0(t1)
	# %.middle.458.0=load i32,i32* %.middle.458
	sw t0,68(sp)
	#  %.middle.458.0=load i32,i32* %.middle.458
	lw t0 68(sp)
	li t1 2
	mul t0,t0,t1
	#%.middle.459 = mul i32 %.middle.458.0,2
	sw t0,72(sp)
	# %.middle.459 = mul i32 %.middle.458.0,2
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,16(sp)
	call _malloc
	lw t0 16(sp)
	mv ra t0
	mv t0 a0
	sw t0,76(sp)
	# %.SizeList.8 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,80(sp)
	lw t0 80(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,80(sp)
	lw t0 76(sp)
	lw t1 80(sp)
	add t0,t0,t1
	#%.ArrayIdx.8 = getelementptr i32,i32* %.SizeList.8,i32 0
	sw t0,84(sp)
	# %.ArrayIdx.8 = getelementptr i32,i32* %.SizeList.8,i32 0
	lw t1 84(sp)
	lw t0 72(sp)
	sw t0,0(t1)
	#  store i32 %.middle.459,i32* %.ArrayIdx.8
	lw t0 76(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,16(sp)
	call _malloc_toInt
	lw t0 16(sp)
	mv ra t0
	mv t0 a0
	sw t0,88(sp)
	# %.middle.460 = call i32* @_malloc_toInt(i32* %.SizeList.8,i32 1)
	lw t0 88(sp)
	sw t0,92(sp)
	# %.new.8 = bitcast i32* %.middle.460 to %struct.Node**
	lw t1 48(sp)
	lw t0 92(sp)
	sw t0,0(t1)
	#  store %struct.Node** %.new.8,%struct.Node*** %This_addr.storage.14
	lw t0 0(sp)
	sw t0,96(sp)
	#  %This_addr.48=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 96(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.48,i32 0,i32 0
	sw t0,100(sp)
	# %This_addr.sz.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.48,i32 0,i32 0
	lw t1 100(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %This_addr.sz.9
	j .L141
	#br label %For_Cond.212
	
.L141:
	lw t0 0(sp)
	sw t0,104(sp)
	#  %This_addr.49=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 104(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.49,i32 0,i32 0
	sw t0,108(sp)
	# %This_addr.sz.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.49,i32 0,i32 0
	lw t1 108(sp)
	lw t0 0(t1)
	# %.middle.464=load i32,i32* %This_addr.sz.10
	sw t0,112(sp)
	#  %.middle.464=load i32,i32* %This_addr.sz.10
	lw t0 8(sp)
	sw t0,116(sp)
	#  %.middle.465=load i32,i32* %szCopy.0
	lw t0 112(sp)
	lw t1 116(sp)
	sub t0,t0,t1
	sw t0,120(sp)
	lw t0 120(sp)
	snez t0 t0
	#%.middle.463 = icmp ne i32 %.middle.464,%.middle.465
	sw t0,120(sp)
	# %.middle.463 = icmp ne i32 %.middle.464,%.middle.465
	lw t0 120(sp)
	bnez t0 .L142
	lw t0 120(sp)
	beqz t0 .L144
	#br i1 %.middle.463,label %For_Body.214,label %For_End.213
	
.L142:
	lw t0 0(sp)
	sw t0,124(sp)
	#  %This_addr.50=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 124(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.storage.15 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.50,i32 0,i32 1
	sw t0,128(sp)
	# %This_addr.storage.15 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.50,i32 0,i32 1
	lw t1 128(sp)
	lw t0 0(t1)
	# %.middle.466=load %struct.Node**,%struct.Node*** %This_addr.storage.15
	sw t0,132(sp)
	#  %.middle.466=load %struct.Node**,%struct.Node*** %This_addr.storage.15
	lw t0 0(sp)
	sw t0,136(sp)
	#  %This_addr.51=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 136(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.51,i32 0,i32 0
	sw t0,140(sp)
	# %This_addr.sz.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.51,i32 0,i32 0
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.468=load i32,i32* %This_addr.sz.11
	sw t0,144(sp)
	#  %.middle.468=load i32,i32* %This_addr.sz.11
	lw t0 144(sp)
	sw t0,148(sp)
	lw t0 148(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,148(sp)
	lw t0 132(sp)
	lw t1 148(sp)
	add t0,t0,t1
	#%.middle.467 = getelementptr %struct.Node*,%struct.Node** %.middle.466,i32 %.middle.468
	sw t0,152(sp)
	# %.middle.467 = getelementptr %struct.Node*,%struct.Node** %.middle.466,i32 %.middle.468
	lw t1 152(sp)
	lw t0 0(t1)
	# %.middle.467.0=load %struct.Node*,%struct.Node** %.middle.467
	sw t0,156(sp)
	#  %.middle.467.0=load %struct.Node*,%struct.Node** %.middle.467
	lw t0 4(sp)
	sw t0,160(sp)
	#  %.middle.469=load %struct.Node**,%struct.Node*** %copy.0
	lw t0 0(sp)
	sw t0,164(sp)
	#  %This_addr.52=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 164(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.52,i32 0,i32 0
	sw t0,168(sp)
	# %This_addr.sz.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.52,i32 0,i32 0
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.471=load i32,i32* %This_addr.sz.12
	sw t0,172(sp)
	#  %.middle.471=load i32,i32* %This_addr.sz.12
	lw t0 172(sp)
	sw t0,176(sp)
	lw t0 176(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,176(sp)
	lw t0 160(sp)
	lw t1 176(sp)
	add t0,t0,t1
	#%.middle.470 = getelementptr %struct.Node*,%struct.Node** %.middle.469,i32 %.middle.471
	sw t0,180(sp)
	# %.middle.470 = getelementptr %struct.Node*,%struct.Node** %.middle.469,i32 %.middle.471
	lw t1 180(sp)
	lw t0 0(t1)
	# %.middle.470.0=load %struct.Node*,%struct.Node** %.middle.470
	sw t0,184(sp)
	#  %.middle.470.0=load %struct.Node*,%struct.Node** %.middle.470
	lw t1 180(sp)
	lw t0 0(t1)
	# %.middle.473=load %struct.Node*,%struct.Node** %.middle.470
	sw t0,188(sp)
	#  %.middle.473=load %struct.Node*,%struct.Node** %.middle.470
	lw t1 152(sp)
	lw t0 188(sp)
	sw t0,0(t1)
	#  store %struct.Node* %.middle.473,%struct.Node** %.middle.467
	j .L143
	#br label %For_Change.215
	
.L143:
	lw t0 0(sp)
	sw t0,192(sp)
	#  %This_addr.53=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 192(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.sz.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.53,i32 0,i32 0
	sw t0,196(sp)
	# %This_addr.sz.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.53,i32 0,i32 0
	lw t1 196(sp)
	lw t0 0(t1)
	# %.middle.474=load i32,i32* %This_addr.sz.13
	sw t0,200(sp)
	#  %.middle.474=load i32,i32* %This_addr.sz.13
	lw t0 200(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.475 = add i32 %.middle.474,1
	sw t0,204(sp)
	# %.middle.475 = add i32 %.middle.474,1
	lw t1 196(sp)
	lw t0 204(sp)
	sw t0,0(t1)
	#  store i32 %.middle.475,i32* %This_addr.sz.13
	j .L141
	#br label %For_Cond.212
	
.L144:
	j .func.Array_Node.doubleStorage.Exit
	#br label %Exit.210
	
.func.Array_Node.doubleStorage.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,208
	ret
	#ret void
	

    .globl .func.Heap_Node.construct
.func.Heap_Node.construct:


mv s0 sp
	addi sp,sp,-28
	mv t0 s0
	sw t0,4(sp)
	mv t0 ra
	sw t0,8(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	#  store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	j .L145
	#br label %.block.218
	
.L145:
	lw t0 0(sp)
	sw t0,12(sp)
	#  %This_addr.54=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 12(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.16 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.54,i32 0,i32 0
	sw t0,16(sp)
	# %This_addr.storage.16 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.54,i32 0,i32 0
	li t0 2
	mv a0 t0
	mv t0 ra
	sw t0,8(sp)
	call _malloc
	lw t0 8(sp)
	mv ra t0
	mv t0 a0
	sw t0,20(sp)
	# %.middle.477 = call i32* @_malloc(i32 2)
	lw t0 20(sp)
	sw t0,24(sp)
	# %.middle.476 = bitcast i32* %.middle.477 to %struct.Array_Node*
	lw t0 24(sp)
	mv a0 t0
	mv t0 ra
	sw t0,8(sp)
	call .func.Array_Node.construct
	lw t0 8(sp)
	mv ra t0
	#call void @.func.Array_Node.construct(%struct.Array_Node* %.middle.476)
	lw t1 16(sp)
	lw t0 24(sp)
	sw t0,0(t1)
	#  store %struct.Array_Node* %.middle.476,%struct.Array_Node** %This_addr.storage.16
	j .func.Heap_Node.construct.Exit
	#br label %Exit.217
	
.func.Heap_Node.construct.Exit:
	lw t0 4(sp)
	mv s0 t0
	lw t0 8(sp)
	mv ra t0
	addi sp,sp,28
	ret
	#ret void
	

    .globl .func.Heap_Node.push
.func.Heap_Node.push:


mv s0 sp
	addi sp,sp,-196
	mv t0 s0
	sw t0,40(sp)
	mv t0 ra
	sw t0,44(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	# %v_addr=alloca %struct.Node*
	mv t0 a1
	sw t0,4(sp)
	# %.Func.Return.p.11.0=alloca i32
	j .L146
	#br label %.block.221
	
.L146:
	lw t0 0(sp)
	sw t0,48(sp)
	#  %This_addr.55=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 48(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.17 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.55,i32 0,i32 0
	sw t0,52(sp)
	# %This_addr.storage.17 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.55,i32 0,i32 0
	lw t1 52(sp)
	lw t0 0(t1)
	# %.middle.479=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.17
	sw t0,56(sp)
	#  %.middle.479=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.17
	lw t0 4(sp)
	sw t0,60(sp)
	#  %.middle.480=load %struct.Node*,%struct.Node** %v_addr
	lw t0 56(sp)
	mv a0 t0
	lw t0 60(sp)
	mv a1 t0
	mv t0 ra
	sw t0,44(sp)
	call .func.Array_Node.push_back
	lw t0 44(sp)
	mv ra t0
	#call void @.func.Array_Node.push_back(%struct.Array_Node* %.middle.479,%struct.Node* %.middle.480)
	lw t0 0(sp)
	sw t0,64(sp)
	#  %.middle.481=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 64(sp)
	mv a0 t0
	mv t0 ra
	sw t0,44(sp)
	call .func.Heap_Node.size
	lw t0 44(sp)
	mv ra t0
	mv t0 a0
	sw t0,68(sp)
	# %.Func_Return.6 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.481)
	lw t0 68(sp)
	sw t0,12(sp)
	#  store i32 %.Func_Return.6,i32* %.Func.Return.p.6.0
	lw t0 12(sp)
	sw t0,72(sp)
	#  %.middle.483=load i32,i32* %.Func.Return.p.6.0
	lw t0 72(sp)
	li t1 1
	sub t0,t0,t1
	#%.middle.482 = sub i32 %.middle.483,1
	sw t0,76(sp)
	# %.middle.482 = sub i32 %.middle.483,1
	lw t0 76(sp)
	sw t0,8(sp)
	#  store i32 %.middle.482,i32* %x.0
	j .L147
	#br label %While_Cond.222
	
.L147:
	lw t0 8(sp)
	sw t0,80(sp)
	#  %.middle.485=load i32,i32* %x.0
	li t0 0
	lw t1 80(sp)
	sub t0,t0,t1
	sw t0,84(sp)
	lw t0 84(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.484 = icmp sgt i32 %.middle.485,0
	sw t0,84(sp)
	# %.middle.484 = icmp sgt i32 %.middle.485,0
	lw t0 84(sp)
	bnez t0 .L148
	lw t0 84(sp)
	beqz t0 .L153
	#br i1 %.middle.484,label %While_Body.223,label %While_End.224
	
.L148:
	lw t0 0(sp)
	sw t0,88(sp)
	#  %.middle.486=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 8(sp)
	sw t0,92(sp)
	#  %.middle.487=load i32,i32* %x.0
	lw t0 88(sp)
	mv a0 t0
	lw t0 92(sp)
	mv a1 t0
	mv t0 ra
	sw t0,44(sp)
	call .func.Heap_Node.pnt
	lw t0 44(sp)
	mv ra t0
	mv t0 a0
	sw t0,96(sp)
	# %.Func_Return.7 = call i32 @.func.Heap_Node.pnt(%struct.Heap_Node* %.middle.486,i32 %.middle.487)
	lw t0 96(sp)
	sw t0,20(sp)
	#  store i32 %.Func_Return.7,i32* %.Func.Return.p.7.0
	lw t0 20(sp)
	sw t0,100(sp)
	#  %.middle.488=load i32,i32* %.Func.Return.p.7.0
	lw t0 100(sp)
	sw t0,16(sp)
	#  store i32 %.middle.488,i32* %p.0
	j .L149
	#br label %If_Cond.225
	
.L149:
	lw t0 0(sp)
	sw t0,104(sp)
	#  %This_addr.56=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 104(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.18 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.56,i32 0,i32 0
	sw t0,108(sp)
	# %This_addr.storage.18 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.56,i32 0,i32 0
	lw t1 108(sp)
	lw t0 0(t1)
	# %.middle.489=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.18
	sw t0,112(sp)
	#  %.middle.489=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.18
	lw t0 16(sp)
	sw t0,116(sp)
	#  %.middle.490=load i32,i32* %p.0
	lw t0 112(sp)
	mv a0 t0
	lw t0 116(sp)
	mv a1 t0
	mv t0 ra
	sw t0,44(sp)
	call .func.Array_Node.get
	lw t0 44(sp)
	mv ra t0
	mv t0 a0
	sw t0,120(sp)
	# %.Func_Return.8 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.489,i32 %.middle.490)
	lw t0 120(sp)
	sw t0,24(sp)
	#  store %struct.Node* %.Func_Return.8,%struct.Node** %.Func.Return.p.8.0
	lw t0 24(sp)
	sw t0,124(sp)
	#  %.middle.491=load %struct.Node*,%struct.Node** %.Func.Return.p.8.0
	lw t0 124(sp)
	mv a0 t0
	mv t0 ra
	sw t0,44(sp)
	call .func.Node.key_
	lw t0 44(sp)
	mv ra t0
	mv t0 a0
	sw t0,128(sp)
	# %.Func_Return.9 = call i32 @.func.Node.key_(%struct.Node* %.middle.491)
	lw t0 128(sp)
	sw t0,28(sp)
	#  store i32 %.Func_Return.9,i32* %.Func.Return.p.9.0
	lw t0 0(sp)
	sw t0,132(sp)
	#  %This_addr.57=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 132(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.19 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.57,i32 0,i32 0
	sw t0,136(sp)
	# %This_addr.storage.19 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.57,i32 0,i32 0
	lw t1 136(sp)
	lw t0 0(t1)
	# %.middle.492=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.19
	sw t0,140(sp)
	#  %.middle.492=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.19
	lw t0 8(sp)
	sw t0,144(sp)
	#  %.middle.493=load i32,i32* %x.0
	lw t0 140(sp)
	mv a0 t0
	lw t0 144(sp)
	mv a1 t0
	mv t0 ra
	sw t0,44(sp)
	call .func.Array_Node.get
	lw t0 44(sp)
	mv ra t0
	mv t0 a0
	sw t0,148(sp)
	# %.Func_Return.10 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.492,i32 %.middle.493)
	lw t0 148(sp)
	sw t0,32(sp)
	#  store %struct.Node* %.Func_Return.10,%struct.Node** %.Func.Return.p.10.0
	lw t0 32(sp)
	sw t0,152(sp)
	#  %.middle.494=load %struct.Node*,%struct.Node** %.Func.Return.p.10.0
	lw t0 152(sp)
	mv a0 t0
	mv t0 ra
	sw t0,44(sp)
	call .func.Node.key_
	lw t0 44(sp)
	mv ra t0
	mv t0 a0
	sw t0,156(sp)
	# %.Func_Return.11 = call i32 @.func.Node.key_(%struct.Node* %.middle.494)
	lw t0 156(sp)
	sw t0,36(sp)
	#  store i32 %.Func_Return.11,i32* %.Func.Return.p.11.0
	lw t0 28(sp)
	sw t0,160(sp)
	#  %.middle.496=load i32,i32* %.Func.Return.p.9.0
	lw t0 36(sp)
	sw t0,164(sp)
	#  %.middle.497=load i32,i32* %.Func.Return.p.11.0
	lw t0 164(sp)
	lw t1 160(sp)
	sub t0,t0,t1
	sw t0,168(sp)
	lw t0 168(sp)
	li t1 1
	slt t0 t0,t1
	#%.middle.495 = icmp sge i32 %.middle.496,%.middle.497
	sw t0,168(sp)
	# %.middle.495 = icmp sge i32 %.middle.496,%.middle.497
	lw t0 168(sp)
	bnez t0 .L150
	lw t0 168(sp)
	beqz t0 .L151
	#br i1 %.middle.495,label %If_Then.226,label %If_Else.227
	
.L150:
	j .L153
	#br label %While_End.224
	
.L151:
	j .L152
	#br label %If_End.228
	
.L152:
	lw t0 0(sp)
	sw t0,172(sp)
	#  %This_addr.58=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 172(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.20 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.58,i32 0,i32 0
	sw t0,176(sp)
	# %This_addr.storage.20 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.58,i32 0,i32 0
	lw t1 176(sp)
	lw t0 0(t1)
	# %.middle.498=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.20
	sw t0,180(sp)
	#  %.middle.498=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.20
	lw t0 16(sp)
	sw t0,184(sp)
	#  %.middle.499=load i32,i32* %p.0
	lw t0 8(sp)
	sw t0,188(sp)
	#  %.middle.500=load i32,i32* %x.0
	lw t0 180(sp)
	mv a0 t0
	lw t0 184(sp)
	mv a1 t0
	lw t0 188(sp)
	mv a2 t0
	mv t0 ra
	sw t0,44(sp)
	call .func.Array_Node.swap
	lw t0 44(sp)
	mv ra t0
	#call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.498,i32 %.middle.499,i32 %.middle.500)
	lw t0 16(sp)
	sw t0,192(sp)
	#  %.middle.502=load i32,i32* %p.0
	lw t0 192(sp)
	sw t0,8(sp)
	#  store i32 %.middle.502,i32* %x.0
	j .L147
	#br label %While_Cond.222
	
.L153:
	j .func.Heap_Node.push.Exit
	#br label %Exit.220
	
.func.Heap_Node.push.Exit:
	lw t0 40(sp)
	mv s0 t0
	lw t0 44(sp)
	mv ra t0
	addi sp,sp,196
	ret
	#ret void
	

    .globl .func.Heap_Node.pop
.func.Heap_Node.pop:


mv s0 sp
	addi sp,sp,-108
	mv t0 s0
	sw t0,24(sp)
	mv t0 ra
	sw t0,28(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	# %.Func.Return.p.14.0=alloca %struct.Node*
	j .L154
	#br label %.block.231
	
.L154:
	lw t0 0(sp)
	sw t0,32(sp)
	#  %This_addr.59=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 32(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.21 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.59,i32 0,i32 0
	sw t0,36(sp)
	# %This_addr.storage.21 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.59,i32 0,i32 0
	lw t1 36(sp)
	lw t0 0(t1)
	# %.middle.503=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.21
	sw t0,40(sp)
	#  %.middle.503=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.21
	lw t0 40(sp)
	mv a0 t0
	mv t0 ra
	sw t0,28(sp)
	call .func.Array_Node.front
	lw t0 28(sp)
	mv ra t0
	mv t0 a0
	sw t0,44(sp)
	# %.Func_Return.12 = call %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %.middle.503)
	lw t0 44(sp)
	sw t0,12(sp)
	#  store %struct.Node* %.Func_Return.12,%struct.Node** %.Func.Return.p.12.0
	lw t0 12(sp)
	sw t0,48(sp)
	#  %.middle.504=load %struct.Node*,%struct.Node** %.Func.Return.p.12.0
	lw t0 48(sp)
	sw t0,8(sp)
	#  store %struct.Node* %.middle.504,%struct.Node** %res.0
	lw t0 0(sp)
	sw t0,52(sp)
	#  %This_addr.60=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 52(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.22 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.60,i32 0,i32 0
	sw t0,56(sp)
	# %This_addr.storage.22 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.60,i32 0,i32 0
	lw t1 56(sp)
	lw t0 0(t1)
	# %.middle.505=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.22
	sw t0,60(sp)
	#  %.middle.505=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.22
	lw t0 0(sp)
	sw t0,64(sp)
	#  %.middle.506=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 64(sp)
	mv a0 t0
	mv t0 ra
	sw t0,28(sp)
	call .func.Heap_Node.size
	lw t0 28(sp)
	mv ra t0
	mv t0 a0
	sw t0,68(sp)
	# %.Func_Return.13 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.506)
	lw t0 68(sp)
	sw t0,16(sp)
	#  store i32 %.Func_Return.13,i32* %.Func.Return.p.13.0
	lw t0 16(sp)
	sw t0,72(sp)
	#  %.middle.508=load i32,i32* %.Func.Return.p.13.0
	lw t0 72(sp)
	li t1 1
	sub t0,t0,t1
	#%.middle.507 = sub i32 %.middle.508,1
	sw t0,76(sp)
	# %.middle.507 = sub i32 %.middle.508,1
	lw t0 60(sp)
	mv a0 t0
	li t0 0
	mv a1 t0
	lw t0 76(sp)
	mv a2 t0
	mv t0 ra
	sw t0,28(sp)
	call .func.Array_Node.swap
	lw t0 28(sp)
	mv ra t0
	#call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.505,i32 0,i32 %.middle.507)
	lw t0 0(sp)
	sw t0,80(sp)
	#  %This_addr.61=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 80(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.23 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.61,i32 0,i32 0
	sw t0,84(sp)
	# %This_addr.storage.23 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.61,i32 0,i32 0
	lw t1 84(sp)
	lw t0 0(t1)
	# %.middle.509=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.23
	sw t0,88(sp)
	#  %.middle.509=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.23
	lw t0 88(sp)
	mv a0 t0
	mv t0 ra
	sw t0,28(sp)
	call .func.Array_Node.pop_back
	lw t0 28(sp)
	mv ra t0
	mv t0 a0
	sw t0,92(sp)
	# %.Func_Return.14 = call %struct.Node* @.func.Array_Node.pop_back(%struct.Array_Node* %.middle.509)
	lw t0 92(sp)
	sw t0,20(sp)
	#  store %struct.Node* %.Func_Return.14,%struct.Node** %.Func.Return.p.14.0
	lw t0 0(sp)
	sw t0,96(sp)
	#  %.middle.510=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 96(sp)
	mv a0 t0
	li t0 0
	mv a1 t0
	mv t0 ra
	sw t0,28(sp)
	call .func.Heap_Node.maxHeapify
	lw t0 28(sp)
	mv ra t0
	#call void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %.middle.510,i32 0)
	lw t0 8(sp)
	sw t0,100(sp)
	#  %.middle.511=load %struct.Node*,%struct.Node** %res.0
	lw t0 100(sp)
	sw t0,4(sp)
	#  store %struct.Node* %.middle.511,%struct.Node** %.retval.p
	j .func.Heap_Node.pop.Exit
	#br label %Exit.230
	
.func.Heap_Node.pop.Exit:
	lw t0 24(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,104(sp)
	#  %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw t0 104(sp)
	mv a0 t0
	lw t0 28(sp)
	mv ra t0
	addi sp,sp,108
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Heap_Node.top
.func.Heap_Node.top:


mv s0 sp
	addi sp,sp,-44
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	# %.Func.Return.p.15.0=alloca %struct.Node*
	j .L155
	#br label %.block.234
	
.L155:
	lw t0 0(sp)
	sw t0,20(sp)
	#  %This_addr.62=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 20(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.24 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.62,i32 0,i32 0
	sw t0,24(sp)
	# %This_addr.storage.24 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.62,i32 0,i32 0
	lw t1 24(sp)
	lw t0 0(t1)
	# %.middle.512=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.24
	sw t0,28(sp)
	#  %.middle.512=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.24
	lw t0 28(sp)
	mv a0 t0
	mv t0 ra
	sw t0,16(sp)
	call .func.Array_Node.front
	lw t0 16(sp)
	mv ra t0
	mv t0 a0
	sw t0,32(sp)
	# %.Func_Return.15 = call %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %.middle.512)
	lw t0 32(sp)
	sw t0,8(sp)
	#  store %struct.Node* %.Func_Return.15,%struct.Node** %.Func.Return.p.15.0
	lw t0 8(sp)
	sw t0,36(sp)
	#  %.middle.513=load %struct.Node*,%struct.Node** %.Func.Return.p.15.0
	lw t0 36(sp)
	sw t0,4(sp)
	#  store %struct.Node* %.middle.513,%struct.Node** %.retval.p
	j .func.Heap_Node.top.Exit
	#br label %Exit.233
	
.func.Heap_Node.top.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,40(sp)
	#  %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw t0 40(sp)
	mv a0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,44
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Heap_Node.size
.func.Heap_Node.size:


mv s0 sp
	addi sp,sp,-44
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	# %.Func.Return.p.16.0=alloca i32
	j .L156
	#br label %.block.237
	
.L156:
	lw t0 0(sp)
	sw t0,20(sp)
	#  %This_addr.63=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 20(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.25 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.63,i32 0,i32 0
	sw t0,24(sp)
	# %This_addr.storage.25 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.63,i32 0,i32 0
	lw t1 24(sp)
	lw t0 0(t1)
	# %.middle.514=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.25
	sw t0,28(sp)
	#  %.middle.514=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.25
	lw t0 28(sp)
	mv a0 t0
	mv t0 ra
	sw t0,16(sp)
	call .func.Array_Node.size
	lw t0 16(sp)
	mv ra t0
	mv t0 a0
	sw t0,32(sp)
	# %.Func_Return.16 = call i32 @.func.Array_Node.size(%struct.Array_Node* %.middle.514)
	lw t0 32(sp)
	sw t0,8(sp)
	#  store i32 %.Func_Return.16,i32* %.Func.Return.p.16.0
	lw t0 8(sp)
	sw t0,36(sp)
	#  %.middle.515=load i32,i32* %.Func.Return.p.16.0
	lw t0 36(sp)
	sw t0,4(sp)
	#  store i32 %.middle.515,i32* %.retval.p
	j .func.Heap_Node.size.Exit
	#br label %Exit.236
	
.func.Heap_Node.size.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,40(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 40(sp)
	mv a0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,44
	ret
	#ret i32 %.retval
	

    .globl .func.Heap_Node.lchild
.func.Heap_Node.lchild:


mv s0 sp
	addi sp,sp,-36
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	# %x_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %.retval.p=alloca i32
	j .L157
	#br label %.block.240
	
.L157:
	lw t0 4(sp)
	sw t0,20(sp)
	#  %.middle.517=load i32,i32* %x_addr
	lw t0 20(sp)
	li t1 2
	mul t0,t0,t1
	#%.middle.516 = mul i32 %.middle.517,2
	sw t0,24(sp)
	# %.middle.516 = mul i32 %.middle.517,2
	lw t0 24(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.518 = add i32 %.middle.516,1
	sw t0,28(sp)
	# %.middle.518 = add i32 %.middle.516,1
	lw t0 28(sp)
	sw t0,8(sp)
	#  store i32 %.middle.518,i32* %.retval.p
	j .func.Heap_Node.lchild.Exit
	#br label %Exit.239
	
.func.Heap_Node.lchild.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,32(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 32(sp)
	mv a0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,36
	ret
	#ret i32 %.retval
	

    .globl .func.Heap_Node.rchild
.func.Heap_Node.rchild:


mv s0 sp
	addi sp,sp,-36
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	# %x_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %.retval.p=alloca i32
	j .L158
	#br label %.block.243
	
.L158:
	lw t0 4(sp)
	sw t0,20(sp)
	#  %.middle.520=load i32,i32* %x_addr
	lw t0 20(sp)
	li t1 2
	mul t0,t0,t1
	#%.middle.519 = mul i32 %.middle.520,2
	sw t0,24(sp)
	# %.middle.519 = mul i32 %.middle.520,2
	lw t0 24(sp)
	li t1 2
	add t0,t0,t1
	#%.middle.521 = add i32 %.middle.519,2
	sw t0,28(sp)
	# %.middle.521 = add i32 %.middle.519,2
	lw t0 28(sp)
	sw t0,8(sp)
	#  store i32 %.middle.521,i32* %.retval.p
	j .func.Heap_Node.rchild.Exit
	#br label %Exit.242
	
.func.Heap_Node.rchild.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,32(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 32(sp)
	mv a0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,36
	ret
	#ret i32 %.retval
	

    .globl .func.Heap_Node.pnt
.func.Heap_Node.pnt:


mv s0 sp
	addi sp,sp,-36
	mv t0 s0
	sw t0,12(sp)
	mv t0 ra
	sw t0,16(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	# %x_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %.retval.p=alloca i32
	j .L159
	#br label %.block.246
	
.L159:
	lw t0 4(sp)
	sw t0,20(sp)
	#  %.middle.523=load i32,i32* %x_addr
	lw t0 20(sp)
	li t1 1
	sub t0,t0,t1
	#%.middle.522 = sub i32 %.middle.523,1
	sw t0,24(sp)
	# %.middle.522 = sub i32 %.middle.523,1
	lw t0 24(sp)
	li t1 2
	div t0,t0,t1
	#%.middle.524 = sdiv i32 %.middle.522,2
	sw t0,28(sp)
	# %.middle.524 = sdiv i32 %.middle.522,2
	lw t0 28(sp)
	sw t0,8(sp)
	#  store i32 %.middle.524,i32* %.retval.p
	j .func.Heap_Node.pnt.Exit
	#br label %Exit.245
	
.func.Heap_Node.pnt.Exit:
	lw t0 12(sp)
	mv s0 t0
	lw t0 8(sp)
	sw t0,32(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 32(sp)
	mv a0 t0
	lw t0 16(sp)
	mv ra t0
	addi sp,sp,36
	ret
	#ret i32 %.retval
	

    .globl .func.Heap_Node.maxHeapify
.func.Heap_Node.maxHeapify:


mv s0 sp
	addi sp,sp,-376
	mv t0 s0
	sw t0,76(sp)
	mv t0 ra
	sw t0,80(sp)
	# %This_addr=alloca %struct.Heap_Node*
	mv t0 a0
	sw t0,0(sp)
	# %x_addr=alloca i32
	mv t0 a1
	sw t0,4(sp)
	# %.Func.Return.p.28.0=alloca i32
	j .L160
	#br label %.block.249
	
.L160:
	lw t0 0(sp)
	sw t0,84(sp)
	#  %.middle.525=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 4(sp)
	sw t0,88(sp)
	#  %.middle.526=load i32,i32* %x_addr
	lw t0 84(sp)
	mv a0 t0
	lw t0 88(sp)
	mv a1 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Heap_Node.lchild
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,92(sp)
	# %.Func_Return.17 = call i32 @.func.Heap_Node.lchild(%struct.Heap_Node* %.middle.525,i32 %.middle.526)
	lw t0 92(sp)
	sw t0,12(sp)
	#  store i32 %.Func_Return.17,i32* %.Func.Return.p.17.0
	lw t0 12(sp)
	sw t0,96(sp)
	#  %.middle.527=load i32,i32* %.Func.Return.p.17.0
	lw t0 96(sp)
	sw t0,8(sp)
	#  store i32 %.middle.527,i32* %l.0
	lw t0 0(sp)
	sw t0,100(sp)
	#  %.middle.528=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 4(sp)
	sw t0,104(sp)
	#  %.middle.529=load i32,i32* %x_addr
	lw t0 100(sp)
	mv a0 t0
	lw t0 104(sp)
	mv a1 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Heap_Node.rchild
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,108(sp)
	# %.Func_Return.18 = call i32 @.func.Heap_Node.rchild(%struct.Heap_Node* %.middle.528,i32 %.middle.529)
	lw t0 108(sp)
	sw t0,20(sp)
	#  store i32 %.Func_Return.18,i32* %.Func.Return.p.18.0
	lw t0 20(sp)
	sw t0,112(sp)
	#  %.middle.530=load i32,i32* %.Func.Return.p.18.0
	lw t0 112(sp)
	sw t0,16(sp)
	#  store i32 %.middle.530,i32* %r.0
	lw t0 4(sp)
	sw t0,116(sp)
	#  %.middle.531=load i32,i32* %x_addr
	lw t0 116(sp)
	sw t0,24(sp)
	#  store i32 %.middle.531,i32* %largest.0
	j .L161
	#br label %If_Cond.250
	
.L161:
	lw t0 0(sp)
	sw t0,120(sp)
	#  %.middle.532=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 120(sp)
	mv a0 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Heap_Node.size
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,124(sp)
	# %.Func_Return.19 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.532)
	lw t0 124(sp)
	sw t0,28(sp)
	#  store i32 %.Func_Return.19,i32* %.Func.Return.p.19.0
	lw t0 8(sp)
	sw t0,128(sp)
	#  %.middle.534=load i32,i32* %l.0
	lw t0 28(sp)
	sw t0,132(sp)
	#  %.middle.535=load i32,i32* %.Func.Return.p.19.0
	lw t0 128(sp)
	lw t1 132(sp)
	slt t0 t0,t1
	#%.middle.533 = icmp slt i32 %.middle.534,%.middle.535
	sw t0,136(sp)
	# %.middle.533 = icmp slt i32 %.middle.534,%.middle.535
	li t0 0
	sw t0,32(sp)
	#  store i32 0,i32* %RV.2.0
	lw t0 136(sp)
	bnez t0 .L162
	lw t0 136(sp)
	beqz t0 .L163
	#br i1 %.middle.533,label %binary_and_rv.254,label %binary_end.255
	
.L162:
	lw t0 0(sp)
	sw t0,140(sp)
	#  %This_addr.64=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 140(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.26 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.64,i32 0,i32 0
	sw t0,144(sp)
	# %This_addr.storage.26 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.64,i32 0,i32 0
	lw t1 144(sp)
	lw t0 0(t1)
	# %.middle.536=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.26
	sw t0,148(sp)
	#  %.middle.536=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.26
	lw t0 8(sp)
	sw t0,152(sp)
	#  %.middle.537=load i32,i32* %l.0
	lw t0 148(sp)
	mv a0 t0
	lw t0 152(sp)
	mv a1 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Array_Node.get
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,156(sp)
	# %.Func_Return.20 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.536,i32 %.middle.537)
	lw t0 156(sp)
	sw t0,36(sp)
	#  store %struct.Node* %.Func_Return.20,%struct.Node** %.Func.Return.p.20.0
	lw t0 36(sp)
	sw t0,160(sp)
	#  %.middle.538=load %struct.Node*,%struct.Node** %.Func.Return.p.20.0
	lw t0 160(sp)
	mv a0 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Node.key_
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,164(sp)
	# %.Func_Return.21 = call i32 @.func.Node.key_(%struct.Node* %.middle.538)
	lw t0 164(sp)
	sw t0,40(sp)
	#  store i32 %.Func_Return.21,i32* %.Func.Return.p.21.0
	lw t0 0(sp)
	sw t0,168(sp)
	#  %This_addr.65=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 168(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.27 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.65,i32 0,i32 0
	sw t0,172(sp)
	# %This_addr.storage.27 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.65,i32 0,i32 0
	lw t1 172(sp)
	lw t0 0(t1)
	# %.middle.539=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.27
	sw t0,176(sp)
	#  %.middle.539=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.27
	lw t0 24(sp)
	sw t0,180(sp)
	#  %.middle.540=load i32,i32* %largest.0
	lw t0 176(sp)
	mv a0 t0
	lw t0 180(sp)
	mv a1 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Array_Node.get
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,184(sp)
	# %.Func_Return.22 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.539,i32 %.middle.540)
	lw t0 184(sp)
	sw t0,44(sp)
	#  store %struct.Node* %.Func_Return.22,%struct.Node** %.Func.Return.p.22.0
	lw t0 44(sp)
	sw t0,188(sp)
	#  %.middle.541=load %struct.Node*,%struct.Node** %.Func.Return.p.22.0
	lw t0 188(sp)
	mv a0 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Node.key_
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,192(sp)
	# %.Func_Return.23 = call i32 @.func.Node.key_(%struct.Node* %.middle.541)
	lw t0 192(sp)
	sw t0,48(sp)
	#  store i32 %.Func_Return.23,i32* %.Func.Return.p.23.0
	lw t0 40(sp)
	sw t0,196(sp)
	#  %.middle.543=load i32,i32* %.Func.Return.p.21.0
	lw t0 48(sp)
	sw t0,200(sp)
	#  %.middle.544=load i32,i32* %.Func.Return.p.23.0
	lw t0 200(sp)
	lw t1 196(sp)
	sub t0,t0,t1
	sw t0,204(sp)
	lw t0 204(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.542 = icmp sgt i32 %.middle.543,%.middle.544
	sw t0,204(sp)
	# %.middle.542 = icmp sgt i32 %.middle.543,%.middle.544
	lw t0 204(sp)
	sw t0,208(sp)
	# %.FromBool.21 = zext i1 %.middle.542 to i32
	lw t0 208(sp)
	sw t0,32(sp)
	#  store i32 %.FromBool.21,i32* %RV.2.0
	j .L163
	#br label %binary_end.255
	
.L163:
	lw t0 32(sp)
	sw t0,212(sp)
	#  %.ToBool.7=load i32,i32* %RV.2.0
	lw t0 212(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.546 = trunc i32 %.ToBool.7 to i1
	sw t0,216(sp)
	# %.middle.546 = trunc i32 %.ToBool.7 to i1
	lw t0 204(sp)
	lw t1 216(sp)
	and t0,t0,t1
	#%.middle.545 = and i1 %.middle.542,%.middle.546
	sw t0,220(sp)
	# %.middle.545 = and i1 %.middle.542,%.middle.546
	lw t0 220(sp)
	bnez t0 .L164
	lw t0 220(sp)
	beqz t0 .L165
	#br i1 %.middle.545,label %If_Then.251,label %If_Else.252
	
.L164:
	lw t0 8(sp)
	sw t0,224(sp)
	#  %.middle.548=load i32,i32* %l.0
	lw t0 224(sp)
	sw t0,24(sp)
	#  store i32 %.middle.548,i32* %largest.0
	j .L166
	#br label %If_End.253
	
.L165:
	j .L166
	#br label %If_End.253
	
.L166:
	j .L167
	#br label %If_Cond.256
	
.L167:
	lw t0 0(sp)
	sw t0,228(sp)
	#  %.middle.549=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 228(sp)
	mv a0 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Heap_Node.size
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,232(sp)
	# %.Func_Return.24 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.549)
	lw t0 232(sp)
	sw t0,52(sp)
	#  store i32 %.Func_Return.24,i32* %.Func.Return.p.24.0
	lw t0 16(sp)
	sw t0,236(sp)
	#  %.middle.551=load i32,i32* %r.0
	lw t0 52(sp)
	sw t0,240(sp)
	#  %.middle.552=load i32,i32* %.Func.Return.p.24.0
	lw t0 236(sp)
	lw t1 240(sp)
	slt t0 t0,t1
	#%.middle.550 = icmp slt i32 %.middle.551,%.middle.552
	sw t0,244(sp)
	# %.middle.550 = icmp slt i32 %.middle.551,%.middle.552
	li t0 0
	sw t0,56(sp)
	#  store i32 0,i32* %RV.3.0
	lw t0 244(sp)
	bnez t0 .L168
	lw t0 244(sp)
	beqz t0 .L169
	#br i1 %.middle.550,label %binary_and_rv.260,label %binary_end.261
	
.L168:
	lw t0 0(sp)
	sw t0,248(sp)
	#  %This_addr.66=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 248(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.28 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.66,i32 0,i32 0
	sw t0,252(sp)
	# %This_addr.storage.28 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.66,i32 0,i32 0
	lw t1 252(sp)
	lw t0 0(t1)
	# %.middle.553=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.28
	sw t0,256(sp)
	#  %.middle.553=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.28
	lw t0 16(sp)
	sw t0,260(sp)
	#  %.middle.554=load i32,i32* %r.0
	lw t0 256(sp)
	mv a0 t0
	lw t0 260(sp)
	mv a1 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Array_Node.get
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,264(sp)
	# %.Func_Return.25 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.553,i32 %.middle.554)
	lw t0 264(sp)
	sw t0,60(sp)
	#  store %struct.Node* %.Func_Return.25,%struct.Node** %.Func.Return.p.25.0
	lw t0 60(sp)
	sw t0,268(sp)
	#  %.middle.555=load %struct.Node*,%struct.Node** %.Func.Return.p.25.0
	lw t0 268(sp)
	mv a0 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Node.key_
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,272(sp)
	# %.Func_Return.26 = call i32 @.func.Node.key_(%struct.Node* %.middle.555)
	lw t0 272(sp)
	sw t0,64(sp)
	#  store i32 %.Func_Return.26,i32* %.Func.Return.p.26.0
	lw t0 0(sp)
	sw t0,276(sp)
	#  %This_addr.67=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 276(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.29 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.67,i32 0,i32 0
	sw t0,280(sp)
	# %This_addr.storage.29 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.67,i32 0,i32 0
	lw t1 280(sp)
	lw t0 0(t1)
	# %.middle.556=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.29
	sw t0,284(sp)
	#  %.middle.556=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.29
	lw t0 24(sp)
	sw t0,288(sp)
	#  %.middle.557=load i32,i32* %largest.0
	lw t0 284(sp)
	mv a0 t0
	lw t0 288(sp)
	mv a1 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Array_Node.get
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,292(sp)
	# %.Func_Return.27 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.556,i32 %.middle.557)
	lw t0 292(sp)
	sw t0,68(sp)
	#  store %struct.Node* %.Func_Return.27,%struct.Node** %.Func.Return.p.27.0
	lw t0 68(sp)
	sw t0,296(sp)
	#  %.middle.558=load %struct.Node*,%struct.Node** %.Func.Return.p.27.0
	lw t0 296(sp)
	mv a0 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Node.key_
	lw t0 80(sp)
	mv ra t0
	mv t0 a0
	sw t0,300(sp)
	# %.Func_Return.28 = call i32 @.func.Node.key_(%struct.Node* %.middle.558)
	lw t0 300(sp)
	sw t0,72(sp)
	#  store i32 %.Func_Return.28,i32* %.Func.Return.p.28.0
	lw t0 64(sp)
	sw t0,304(sp)
	#  %.middle.560=load i32,i32* %.Func.Return.p.26.0
	lw t0 72(sp)
	sw t0,308(sp)
	#  %.middle.561=load i32,i32* %.Func.Return.p.28.0
	lw t0 308(sp)
	lw t1 304(sp)
	sub t0,t0,t1
	sw t0,312(sp)
	lw t0 312(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.559 = icmp sgt i32 %.middle.560,%.middle.561
	sw t0,312(sp)
	# %.middle.559 = icmp sgt i32 %.middle.560,%.middle.561
	lw t0 312(sp)
	sw t0,316(sp)
	# %.FromBool.22 = zext i1 %.middle.559 to i32
	lw t0 316(sp)
	sw t0,56(sp)
	#  store i32 %.FromBool.22,i32* %RV.3.0
	j .L169
	#br label %binary_end.261
	
.L169:
	lw t0 56(sp)
	sw t0,320(sp)
	#  %.ToBool.8=load i32,i32* %RV.3.0
	lw t0 320(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.563 = trunc i32 %.ToBool.8 to i1
	sw t0,324(sp)
	# %.middle.563 = trunc i32 %.ToBool.8 to i1
	lw t0 312(sp)
	lw t1 324(sp)
	and t0,t0,t1
	#%.middle.562 = and i1 %.middle.559,%.middle.563
	sw t0,328(sp)
	# %.middle.562 = and i1 %.middle.559,%.middle.563
	lw t0 328(sp)
	bnez t0 .L170
	lw t0 328(sp)
	beqz t0 .L171
	#br i1 %.middle.562,label %If_Then.257,label %If_Else.258
	
.L170:
	lw t0 16(sp)
	sw t0,332(sp)
	#  %.middle.565=load i32,i32* %r.0
	lw t0 332(sp)
	sw t0,24(sp)
	#  store i32 %.middle.565,i32* %largest.0
	j .L172
	#br label %If_End.259
	
.L171:
	j .L172
	#br label %If_End.259
	
.L172:
	j .L173
	#br label %If_Cond.262
	
.L173:
	lw t0 24(sp)
	sw t0,336(sp)
	#  %.middle.567=load i32,i32* %largest.0
	lw t0 4(sp)
	sw t0,340(sp)
	#  %.middle.568=load i32,i32* %x_addr
	lw t0 336(sp)
	lw t1 340(sp)
	sub t0,t0,t1
	sw t0,344(sp)
	lw t0 344(sp)
	seqz t0 t0
	#%.middle.566 = icmp eq i32 %.middle.567,%.middle.568
	sw t0,344(sp)
	# %.middle.566 = icmp eq i32 %.middle.567,%.middle.568
	lw t0 344(sp)
	bnez t0 .L174
	lw t0 344(sp)
	beqz t0 .L175
	#br i1 %.middle.566,label %If_Then.263,label %If_Else.264
	
.L174:
	j .func.Heap_Node.maxHeapify.Exit
	#br label %Exit.248
	
.L175:
	j .L176
	#br label %If_End.265
	
.L176:
	lw t0 0(sp)
	sw t0,348(sp)
	#  %This_addr.68=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 348(sp)
	li t1 0
	add t0,t0,t1
	#%This_addr.storage.30 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.68,i32 0,i32 0
	sw t0,352(sp)
	# %This_addr.storage.30 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.68,i32 0,i32 0
	lw t1 352(sp)
	lw t0 0(t1)
	# %.middle.569=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.30
	sw t0,356(sp)
	#  %.middle.569=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.30
	lw t0 4(sp)
	sw t0,360(sp)
	#  %.middle.570=load i32,i32* %x_addr
	lw t0 24(sp)
	sw t0,364(sp)
	#  %.middle.571=load i32,i32* %largest.0
	lw t0 356(sp)
	mv a0 t0
	lw t0 360(sp)
	mv a1 t0
	lw t0 364(sp)
	mv a2 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Array_Node.swap
	lw t0 80(sp)
	mv ra t0
	#call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.569,i32 %.middle.570,i32 %.middle.571)
	lw t0 0(sp)
	sw t0,368(sp)
	#  %.middle.572=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 24(sp)
	sw t0,372(sp)
	#  %.middle.573=load i32,i32* %largest.0
	lw t0 368(sp)
	mv a0 t0
	lw t0 372(sp)
	mv a1 t0
	mv t0 ra
	sw t0,80(sp)
	call .func.Heap_Node.maxHeapify
	lw t0 80(sp)
	mv ra t0
	#call void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %.middle.572,i32 %.middle.573)
	j .func.Heap_Node.maxHeapify.Exit
	#br label %Exit.248
	
.func.Heap_Node.maxHeapify.Exit:
	lw t0 76(sp)
	mv s0 t0
	lw t0 80(sp)
	mv ra t0
	addi sp,sp,376
	ret
	#ret void
	

    .globl .func.init
.func.init:


mv s0 sp
	addi sp,sp,-140
	mv t0 s0
	sw t0,36(sp)
	mv t0 ra
	sw t0,40(sp)
	# %.Func.Return.p.33.0=alloca i32
	j .L177
	#br label %.block.268
	
.L177:
	mv t0 ra
	sw t0,40(sp)
	call getInt
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,44(sp)
	# %.Func_Return.29 = call i32 @getInt()
	lw t0 44(sp)
	sw t0,0(sp)
	#  store i32 %.Func_Return.29,i32* %.Func.Return.p.29.0
	lw t0 0(sp)
	sw t0,48(sp)
	#  %.middle.575=load i32,i32* %.Func.Return.p.29.0
	lw t0 48(sp)
	sw t0,n.0,t2
	#  store i32 %.middle.575,i32* @n.0
	mv t0 ra
	sw t0,40(sp)
	call getInt
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,52(sp)
	# %.Func_Return.30 = call i32 @getInt()
	lw t0 52(sp)
	sw t0,4(sp)
	#  store i32 %.Func_Return.30,i32* %.Func.Return.p.30.0
	lw t0 4(sp)
	sw t0,56(sp)
	#  %.middle.577=load i32,i32* %.Func.Return.p.30.0
	lw t0 56(sp)
	sw t0,m.0,t2
	#  store i32 %.middle.577,i32* @m.0
	li t0 4
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call _malloc
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,60(sp)
	# %.middle.579 = call i32* @_malloc(i32 4)
	lw t0 60(sp)
	sw t0,64(sp)
	# %.middle.578 = bitcast i32* %.middle.579 to %struct.EdgeList*
	lw t0 64(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.EdgeList.construct
	lw t0 40(sp)
	mv ra t0
	#call void @.func.EdgeList.construct(%struct.EdgeList* %.middle.578)
	lw t0 64(sp)
	sw t0,g.0,t2
	#  store %struct.EdgeList* %.middle.578,%struct.EdgeList** @g.0
	lw t0 g.0
	sw t0,68(sp)
	#  %.middle.581=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 n.0
	sw t0,72(sp)
	#  %.middle.582=load i32,i32* @n.0
	lw t0 m.0
	sw t0,76(sp)
	#  %.middle.583=load i32,i32* @m.0
	lw t0 68(sp)
	mv a0 t0
	lw t0 72(sp)
	mv a1 t0
	lw t0 76(sp)
	mv a2 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.EdgeList.init
	lw t0 40(sp)
	mv ra t0
	#call void @.func.EdgeList.init(%struct.EdgeList* %.middle.581,i32 %.middle.582,i32 %.middle.583)
	li t0 0
	sw t0,8(sp)
	#  store i32 0,i32* %i.9
	j .L178
	#br label %For_Cond.269
	
.L178:
	lw t0 8(sp)
	sw t0,80(sp)
	#  %.middle.586=load i32,i32* %i.9
	lw t0 m.0
	sw t0,84(sp)
	#  %.middle.587=load i32,i32* @m.0
	lw t0 80(sp)
	lw t1 84(sp)
	slt t0 t0,t1
	#%.middle.585 = icmp slt i32 %.middle.586,%.middle.587
	sw t0,88(sp)
	# %.middle.585 = icmp slt i32 %.middle.586,%.middle.587
	lw t0 88(sp)
	bnez t0 .L179
	lw t0 88(sp)
	beqz t0 .L181
	#br i1 %.middle.585,label %For_Body.271,label %For_End.270
	
.L179:
	mv t0 ra
	sw t0,40(sp)
	call getInt
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,92(sp)
	# %.Func_Return.31 = call i32 @getInt()
	lw t0 92(sp)
	sw t0,16(sp)
	#  store i32 %.Func_Return.31,i32* %.Func.Return.p.31.0
	lw t0 16(sp)
	sw t0,96(sp)
	#  %.middle.588=load i32,i32* %.Func.Return.p.31.0
	lw t0 96(sp)
	sw t0,12(sp)
	#  store i32 %.middle.588,i32* %u.0
	mv t0 ra
	sw t0,40(sp)
	call getInt
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,100(sp)
	# %.Func_Return.32 = call i32 @getInt()
	lw t0 100(sp)
	sw t0,24(sp)
	#  store i32 %.Func_Return.32,i32* %.Func.Return.p.32.0
	lw t0 24(sp)
	sw t0,104(sp)
	#  %.middle.589=load i32,i32* %.Func.Return.p.32.0
	lw t0 104(sp)
	sw t0,20(sp)
	#  store i32 %.middle.589,i32* %v.0
	mv t0 ra
	sw t0,40(sp)
	call getInt
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,108(sp)
	# %.Func_Return.33 = call i32 @getInt()
	lw t0 108(sp)
	sw t0,32(sp)
	#  store i32 %.Func_Return.33,i32* %.Func.Return.p.33.0
	lw t0 32(sp)
	sw t0,112(sp)
	#  %.middle.590=load i32,i32* %.Func.Return.p.33.0
	lw t0 112(sp)
	sw t0,28(sp)
	#  store i32 %.middle.590,i32* %w.0
	lw t0 g.0
	sw t0,116(sp)
	#  %.middle.591=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 12(sp)
	sw t0,120(sp)
	#  %.middle.592=load i32,i32* %u.0
	lw t0 20(sp)
	sw t0,124(sp)
	#  %.middle.593=load i32,i32* %v.0
	lw t0 28(sp)
	sw t0,128(sp)
	#  %.middle.594=load i32,i32* %w.0
	lw t0 116(sp)
	mv a0 t0
	lw t0 120(sp)
	mv a1 t0
	lw t0 124(sp)
	mv a2 t0
	lw t0 128(sp)
	mv a3 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.EdgeList.addEdge
	lw t0 40(sp)
	mv ra t0
	#call void @.func.EdgeList.addEdge(%struct.EdgeList* %.middle.591,i32 %.middle.592,i32 %.middle.593,i32 %.middle.594)
	j .L180
	#br label %For_Change.272
	
.L180:
	lw t0 8(sp)
	sw t0,132(sp)
	#  %.middle.595=load i32,i32* %i.9
	lw t0 132(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.596 = add i32 %.middle.595,1
	sw t0,136(sp)
	# %.middle.596 = add i32 %.middle.595,1
	lw t0 136(sp)
	sw t0,8(sp)
	#  store i32 %.middle.596,i32* %i.9
	j .L178
	#br label %For_Cond.269
	
.L181:
	j .func.init.Exit
	#br label %Exit.267
	
.func.init.Exit:
	lw t0 36(sp)
	mv s0 t0
	lw t0 40(sp)
	mv ra t0
	addi sp,sp,140
	ret
	#ret void
	

    .globl .func.Node.key_
.func.Node.key_:


mv s0 sp
	addi sp,sp,-36
	mv t0 s0
	sw t0,8(sp)
	mv t0 ra
	sw t0,12(sp)
	# %This_addr=alloca %struct.Node*
	mv t0 a0
	sw t0,0(sp)
	# %.retval.p=alloca i32
	j .L182
	#br label %.block.275
	
.L182:
	lw t0 0(sp)
	sw t0,16(sp)
	#  %This_addr.69=load %struct.Node*,%struct.Node** %This_addr
	lw t0 16(sp)
	li t1 4
	add t0,t0,t1
	#%This_addr.dist.0 = getelementptr %struct.Node,%struct.Node* %This_addr.69,i32 0,i32 1
	sw t0,20(sp)
	# %This_addr.dist.0 = getelementptr %struct.Node,%struct.Node* %This_addr.69,i32 0,i32 1
	lw t1 20(sp)
	lw t0 0(t1)
	# %.middle.598=load i32,i32* %This_addr.dist.0
	sw t0,24(sp)
	#  %.middle.598=load i32,i32* %This_addr.dist.0
	li t0 0
	lw t1 24(sp)
	sub t0,t0,t1
	#%.middle.597 = sub i32 0,%.middle.598
	sw t0,28(sp)
	# %.middle.597 = sub i32 0,%.middle.598
	lw t0 28(sp)
	sw t0,4(sp)
	#  store i32 %.middle.597,i32* %.retval.p
	j .func.Node.key_.Exit
	#br label %Exit.274
	
.func.Node.key_.Exit:
	lw t0 8(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,32(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 32(sp)
	mv a0 t0
	lw t0 12(sp)
	mv ra t0
	addi sp,sp,36
	ret
	#ret i32 %.retval
	

    .globl .func.Node.construct
.func.Node.construct:


mv s0 sp
	addi sp,sp,-12
	mv t0 s0
	sw t0,4(sp)
	mv t0 ra
	sw t0,8(sp)
	# %This_addr=alloca %struct.Node*
	mv t0 a0
	sw t0,0(sp)
	#  store %struct.Node* %This,%struct.Node** %This_addr
	j .L183
	#br label %.block.278
	
.L183:
	j .func.Node.construct.Exit
	#br label %Exit.277
	
.func.Node.construct.Exit:
	lw t0 4(sp)
	mv s0 t0
	lw t0 8(sp)
	mv ra t0
	addi sp,sp,12
	ret
	#ret void
	

    .globl .func.dijkstra
.func.dijkstra:


mv s0 sp
	addi sp,sp,-644
	mv t0 s0
	sw t0,60(sp)
	mv t0 ra
	sw t0,64(sp)
	# %s_addr=alloca i32
	mv t0 a0
	sw t0,0(sp)
	# %alt.0=alloca i32
	j .L184
	#br label %.block.281
	
.L184:
	lw t0 n.0
	sw t0,68(sp)
	#  %.middle.599=load i32,i32* @n.0
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call _malloc
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,72(sp)
	# %.SizeList.9 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,76(sp)
	lw t0 76(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,76(sp)
	lw t0 72(sp)
	lw t1 76(sp)
	add t0,t0,t1
	#%.ArrayIdx.9 = getelementptr i32,i32* %.SizeList.9,i32 0
	sw t0,80(sp)
	# %.ArrayIdx.9 = getelementptr i32,i32* %.SizeList.9,i32 0
	lw t1 80(sp)
	lw t0 68(sp)
	sw t0,0(t1)
	#  store i32 %.middle.599,i32* %.ArrayIdx.9
	lw t0 72(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,64(sp)
	call _malloc_toInt
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,84(sp)
	# %.middle.600 = call i32* @_malloc_toInt(i32* %.SizeList.9,i32 1)
	lw t0 84(sp)
	sw t0,88(sp)
	# %.new.9 = bitcast i32* %.middle.600 to i32*
	lw t0 88(sp)
	sw t0,8(sp)
	#  store i32* %.new.9,i32** %visited.0
	lw t0 n.0
	sw t0,92(sp)
	#  %.middle.601=load i32,i32* @n.0
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call _malloc
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,96(sp)
	# %.SizeList.10 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,100(sp)
	lw t0 100(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,100(sp)
	lw t0 96(sp)
	lw t1 100(sp)
	add t0,t0,t1
	#%.ArrayIdx.10 = getelementptr i32,i32* %.SizeList.10,i32 0
	sw t0,104(sp)
	# %.ArrayIdx.10 = getelementptr i32,i32* %.SizeList.10,i32 0
	lw t1 104(sp)
	lw t0 92(sp)
	sw t0,0(t1)
	#  store i32 %.middle.601,i32* %.ArrayIdx.10
	lw t0 96(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,64(sp)
	call _malloc_toInt
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,108(sp)
	# %.middle.602 = call i32* @_malloc_toInt(i32* %.SizeList.10,i32 1)
	lw t0 108(sp)
	sw t0,112(sp)
	# %.new.10 = bitcast i32* %.middle.602 to i32*
	lw t0 112(sp)
	sw t0,12(sp)
	#  store i32* %.new.10,i32** %d.0
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %i.10
	j .L185
	#br label %For_Cond.282
	
.L185:
	lw t0 16(sp)
	sw t0,116(sp)
	#  %.middle.605=load i32,i32* %i.10
	lw t0 n.0
	sw t0,120(sp)
	#  %.middle.606=load i32,i32* @n.0
	lw t0 116(sp)
	lw t1 120(sp)
	slt t0 t0,t1
	#%.middle.604 = icmp slt i32 %.middle.605,%.middle.606
	sw t0,124(sp)
	# %.middle.604 = icmp slt i32 %.middle.605,%.middle.606
	lw t0 124(sp)
	bnez t0 .L186
	lw t0 124(sp)
	beqz t0 .L188
	#br i1 %.middle.604,label %For_Body.284,label %For_End.283
	
.L186:
	lw t0 12(sp)
	sw t0,128(sp)
	#  %.middle.607=load i32*,i32** %d.0
	lw t0 16(sp)
	sw t0,132(sp)
	#  %.middle.609=load i32,i32* %i.10
	lw t0 132(sp)
	sw t0,136(sp)
	lw t0 136(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,136(sp)
	lw t0 128(sp)
	lw t1 136(sp)
	add t0,t0,t1
	#%.middle.608 = getelementptr i32,i32* %.middle.607,i32 %.middle.609
	sw t0,140(sp)
	# %.middle.608 = getelementptr i32,i32* %.middle.607,i32 %.middle.609
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.608.0=load i32,i32* %.middle.608
	sw t0,144(sp)
	#  %.middle.608.0=load i32,i32* %.middle.608
	lw t0 INF.0
	sw t0,148(sp)
	#  %.middle.611=load i32,i32* @INF.0
	lw t1 140(sp)
	lw t0 148(sp)
	sw t0,0(t1)
	#  store i32 %.middle.611,i32* %.middle.608
	lw t0 8(sp)
	sw t0,152(sp)
	#  %.middle.612=load i32*,i32** %visited.0
	lw t0 16(sp)
	sw t0,156(sp)
	#  %.middle.614=load i32,i32* %i.10
	lw t0 156(sp)
	sw t0,160(sp)
	lw t0 160(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,160(sp)
	lw t0 152(sp)
	lw t1 160(sp)
	add t0,t0,t1
	#%.middle.613 = getelementptr i32,i32* %.middle.612,i32 %.middle.614
	sw t0,164(sp)
	# %.middle.613 = getelementptr i32,i32* %.middle.612,i32 %.middle.614
	lw t1 164(sp)
	lw t0 0(t1)
	# %.middle.613.0=load i32,i32* %.middle.613
	sw t0,168(sp)
	#  %.middle.613.0=load i32,i32* %.middle.613
	lw t1 164(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %.middle.613
	j .L187
	#br label %For_Change.285
	
.L187:
	lw t0 16(sp)
	sw t0,172(sp)
	#  %.middle.616=load i32,i32* %i.10
	lw t0 172(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.617 = add i32 %.middle.616,1
	sw t0,176(sp)
	# %.middle.617 = add i32 %.middle.616,1
	lw t0 176(sp)
	sw t0,16(sp)
	#  store i32 %.middle.617,i32* %i.10
	j .L185
	#br label %For_Cond.282
	
.L188:
	lw t0 12(sp)
	sw t0,180(sp)
	#  %.middle.618=load i32*,i32** %d.0
	lw t0 0(sp)
	sw t0,184(sp)
	#  %.middle.620=load i32,i32* %s_addr
	lw t0 184(sp)
	sw t0,188(sp)
	lw t0 188(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,188(sp)
	lw t0 180(sp)
	lw t1 188(sp)
	add t0,t0,t1
	#%.middle.619 = getelementptr i32,i32* %.middle.618,i32 %.middle.620
	sw t0,192(sp)
	# %.middle.619 = getelementptr i32,i32* %.middle.618,i32 %.middle.620
	lw t1 192(sp)
	lw t0 0(t1)
	# %.middle.619.0=load i32,i32* %.middle.619
	sw t0,196(sp)
	#  %.middle.619.0=load i32,i32* %.middle.619
	lw t1 192(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %.middle.619
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call _malloc
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,200(sp)
	# %.middle.623 = call i32* @_malloc(i32 1)
	lw t0 200(sp)
	sw t0,204(sp)
	# %.middle.622 = bitcast i32* %.middle.623 to %struct.Heap_Node*
	lw t0 204(sp)
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call .func.Heap_Node.construct
	lw t0 64(sp)
	mv ra t0
	#call void @.func.Heap_Node.construct(%struct.Heap_Node* %.middle.622)
	lw t0 204(sp)
	sw t0,20(sp)
	#  store %struct.Heap_Node* %.middle.622,%struct.Heap_Node** %q.0
	li t0 2
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call _malloc
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,208(sp)
	# %.middle.625 = call i32* @_malloc(i32 2)
	lw t0 208(sp)
	sw t0,212(sp)
	# %.middle.624 = bitcast i32* %.middle.625 to %struct.Node*
	lw t0 212(sp)
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call .func.Node.construct
	lw t0 64(sp)
	mv ra t0
	#call void @.func.Node.construct(%struct.Node* %.middle.624)
	lw t0 212(sp)
	sw t0,24(sp)
	#  store %struct.Node* %.middle.624,%struct.Node** %src.0
	lw t0 24(sp)
	sw t0,216(sp)
	#  %src.0.0=load %struct.Node*,%struct.Node** %src.0
	lw t0 216(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.626 = getelementptr %struct.Node,%struct.Node* %src.0.0,i32 0,i32 1
	sw t0,220(sp)
	# %.middle.626 = getelementptr %struct.Node,%struct.Node* %src.0.0,i32 0,i32 1
	lw t1 220(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %.middle.626
	lw t0 24(sp)
	sw t0,224(sp)
	#  %src.0.1=load %struct.Node*,%struct.Node** %src.0
	lw t0 224(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.628 = getelementptr %struct.Node,%struct.Node* %src.0.1,i32 0,i32 0
	sw t0,228(sp)
	# %.middle.628 = getelementptr %struct.Node,%struct.Node* %src.0.1,i32 0,i32 0
	lw t0 0(sp)
	sw t0,232(sp)
	#  %.middle.630=load i32,i32* %s_addr
	lw t1 228(sp)
	lw t0 232(sp)
	sw t0,0(t1)
	#  store i32 %.middle.630,i32* %.middle.628
	lw t0 20(sp)
	sw t0,236(sp)
	#  %.middle.631=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	lw t0 24(sp)
	sw t0,240(sp)
	#  %.middle.632=load %struct.Node*,%struct.Node** %src.0
	lw t0 236(sp)
	mv a0 t0
	lw t0 240(sp)
	mv a1 t0
	mv t0 ra
	sw t0,64(sp)
	call .func.Heap_Node.push
	lw t0 64(sp)
	mv ra t0
	#call void @.func.Heap_Node.push(%struct.Heap_Node* %.middle.631,%struct.Node* %.middle.632)
	j .L189
	#br label %While_Cond.286
	
.L189:
	lw t0 20(sp)
	sw t0,244(sp)
	#  %.middle.633=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	lw t0 244(sp)
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call .func.Heap_Node.size
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,248(sp)
	# %.Func_Return.34 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.633)
	lw t0 248(sp)
	sw t0,28(sp)
	#  store i32 %.Func_Return.34,i32* %.Func.Return.p.34.0
	lw t0 28(sp)
	sw t0,252(sp)
	#  %.middle.635=load i32,i32* %.Func.Return.p.34.0
	lw t0 252(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,256(sp)
	lw t0 256(sp)
	snez t0 t0
	#%.middle.634 = icmp ne i32 %.middle.635,0
	sw t0,256(sp)
	# %.middle.634 = icmp ne i32 %.middle.635,0
	lw t0 256(sp)
	bnez t0 .L190
	lw t0 256(sp)
	beqz t0 .L203
	#br i1 %.middle.634,label %While_Body.287,label %While_End.288
	
.L190:
	lw t0 20(sp)
	sw t0,260(sp)
	#  %.middle.636=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	lw t0 260(sp)
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call .func.Heap_Node.pop
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,264(sp)
	# %.Func_Return.35 = call %struct.Node* @.func.Heap_Node.pop(%struct.Heap_Node* %.middle.636)
	lw t0 264(sp)
	sw t0,36(sp)
	#  store %struct.Node* %.Func_Return.35,%struct.Node** %.Func.Return.p.35.0
	lw t0 36(sp)
	sw t0,268(sp)
	#  %.middle.637=load %struct.Node*,%struct.Node** %.Func.Return.p.35.0
	lw t0 268(sp)
	sw t0,32(sp)
	#  store %struct.Node* %.middle.637,%struct.Node** %node.0
	lw t0 32(sp)
	sw t0,272(sp)
	#  %node.0.0=load %struct.Node*,%struct.Node** %node.0
	lw t0 272(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.638 = getelementptr %struct.Node,%struct.Node* %node.0.0,i32 0,i32 0
	sw t0,276(sp)
	# %.middle.638 = getelementptr %struct.Node,%struct.Node* %node.0.0,i32 0,i32 0
	lw t1 276(sp)
	lw t0 0(t1)
	# %.middle.639=load i32,i32* %.middle.638
	sw t0,280(sp)
	#  %.middle.639=load i32,i32* %.middle.638
	lw t0 280(sp)
	sw t0,40(sp)
	#  store i32 %.middle.639,i32* %u.1
	j .L191
	#br label %If_Cond.289
	
.L191:
	lw t0 8(sp)
	sw t0,284(sp)
	#  %.middle.640=load i32*,i32** %visited.0
	lw t0 40(sp)
	sw t0,288(sp)
	#  %.middle.642=load i32,i32* %u.1
	lw t0 288(sp)
	sw t0,292(sp)
	lw t0 292(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,292(sp)
	lw t0 284(sp)
	lw t1 292(sp)
	add t0,t0,t1
	#%.middle.641 = getelementptr i32,i32* %.middle.640,i32 %.middle.642
	sw t0,296(sp)
	# %.middle.641 = getelementptr i32,i32* %.middle.640,i32 %.middle.642
	lw t1 296(sp)
	lw t0 0(t1)
	# %.middle.641.0=load i32,i32* %.middle.641
	sw t0,300(sp)
	#  %.middle.641.0=load i32,i32* %.middle.641
	lw t1 296(sp)
	lw t0 0(t1)
	# %.middle.644=load i32,i32* %.middle.641
	sw t0,304(sp)
	#  %.middle.644=load i32,i32* %.middle.641
	lw t0 304(sp)
	li t1 1
	sub t0,t0,t1
	sw t0,308(sp)
	lw t0 308(sp)
	seqz t0 t0
	#%.middle.643 = icmp eq i32 %.middle.644,1
	sw t0,308(sp)
	# %.middle.643 = icmp eq i32 %.middle.644,1
	lw t0 308(sp)
	bnez t0 .L192
	lw t0 308(sp)
	beqz t0 .L193
	#br i1 %.middle.643,label %If_Then.290,label %If_Else.291
	
.L192:
	j .L189
	#br label %While_Cond.286
	
.L193:
	j .L194
	#br label %If_End.292
	
.L194:
	lw t0 8(sp)
	sw t0,312(sp)
	#  %.middle.645=load i32*,i32** %visited.0
	lw t0 40(sp)
	sw t0,316(sp)
	#  %.middle.647=load i32,i32* %u.1
	lw t0 316(sp)
	sw t0,320(sp)
	lw t0 320(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,320(sp)
	lw t0 312(sp)
	lw t1 320(sp)
	add t0,t0,t1
	#%.middle.646 = getelementptr i32,i32* %.middle.645,i32 %.middle.647
	sw t0,324(sp)
	# %.middle.646 = getelementptr i32,i32* %.middle.645,i32 %.middle.647
	lw t1 324(sp)
	lw t0 0(t1)
	# %.middle.646.0=load i32,i32* %.middle.646
	sw t0,328(sp)
	#  %.middle.646.0=load i32,i32* %.middle.646
	lw t1 324(sp)
	li t0 1
	sw t0,0(t1)
	#  store i32 1,i32* %.middle.646
	lw t0 g.0
	sw t0,332(sp)
	#  %g.0.0=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 332(sp)
	li t1 12
	add t0,t0,t1
	#%.middle.649 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.0,i32 0,i32 3
	sw t0,336(sp)
	# %.middle.649 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.0,i32 0,i32 3
	lw t1 336(sp)
	lw t0 0(t1)
	# %.middle.650=load i32*,i32** %.middle.649
	sw t0,340(sp)
	#  %.middle.650=load i32*,i32** %.middle.649
	lw t0 40(sp)
	sw t0,344(sp)
	#  %.middle.652=load i32,i32* %u.1
	lw t0 344(sp)
	sw t0,348(sp)
	lw t0 348(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,348(sp)
	lw t0 340(sp)
	lw t1 348(sp)
	add t0,t0,t1
	#%.middle.651 = getelementptr i32,i32* %.middle.650,i32 %.middle.652
	sw t0,352(sp)
	# %.middle.651 = getelementptr i32,i32* %.middle.650,i32 %.middle.652
	lw t1 352(sp)
	lw t0 0(t1)
	# %.middle.651.0=load i32,i32* %.middle.651
	sw t0,356(sp)
	#  %.middle.651.0=load i32,i32* %.middle.651
	lw t1 352(sp)
	lw t0 0(t1)
	# %.middle.654=load i32,i32* %.middle.651
	sw t0,360(sp)
	#  %.middle.654=load i32,i32* %.middle.651
	lw t0 360(sp)
	sw t0,44(sp)
	#  store i32 %.middle.654,i32* %k.0
	j .L195
	#br label %For_Cond.293
	
.L195:
	li t0 0
	li t1 1
	sub t0,t0,t1
	#%.middle.655 = sub i32 0,1
	sw t0,364(sp)
	# %.middle.655 = sub i32 0,1
	lw t0 44(sp)
	sw t0,368(sp)
	#  %.middle.657=load i32,i32* %k.0
	lw t0 368(sp)
	lw t1 364(sp)
	sub t0,t0,t1
	sw t0,372(sp)
	lw t0 372(sp)
	snez t0 t0
	#%.middle.656 = icmp ne i32 %.middle.657,%.middle.655
	sw t0,372(sp)
	# %.middle.656 = icmp ne i32 %.middle.657,%.middle.655
	lw t0 372(sp)
	bnez t0 .L196
	lw t0 372(sp)
	beqz t0 .L202
	#br i1 %.middle.656,label %For_Body.295,label %For_End.294
	
.L196:
	lw t0 g.0
	sw t0,376(sp)
	#  %g.0.1=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 376(sp)
	li t1 8
	add t0,t0,t1
	#%.middle.658 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.1,i32 0,i32 2
	sw t0,380(sp)
	# %.middle.658 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.1,i32 0,i32 2
	lw t1 380(sp)
	lw t0 0(t1)
	# %.middle.659=load %struct.Edge**,%struct.Edge*** %.middle.658
	sw t0,384(sp)
	#  %.middle.659=load %struct.Edge**,%struct.Edge*** %.middle.658
	lw t0 44(sp)
	sw t0,388(sp)
	#  %.middle.661=load i32,i32* %k.0
	lw t0 388(sp)
	sw t0,392(sp)
	lw t0 392(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,392(sp)
	lw t0 384(sp)
	lw t1 392(sp)
	add t0,t0,t1
	#%.middle.660 = getelementptr %struct.Edge*,%struct.Edge** %.middle.659,i32 %.middle.661
	sw t0,396(sp)
	# %.middle.660 = getelementptr %struct.Edge*,%struct.Edge** %.middle.659,i32 %.middle.661
	lw t1 396(sp)
	lw t0 0(t1)
	# %.middle.660.0=load %struct.Edge*,%struct.Edge** %.middle.660
	sw t0,400(sp)
	#  %.middle.660.0=load %struct.Edge*,%struct.Edge** %.middle.660
	lw t1 396(sp)
	lw t0 0(t1)
	# %.middle.660.1=load %struct.Edge*,%struct.Edge** %.middle.660
	sw t0,404(sp)
	#  %.middle.660.1=load %struct.Edge*,%struct.Edge** %.middle.660
	lw t0 404(sp)
	li t1 8
	add t0,t0,t1
	#%.middle.662 = getelementptr %struct.Edge,%struct.Edge* %.middle.660.1,i32 0,i32 2
	sw t0,408(sp)
	# %.middle.662 = getelementptr %struct.Edge,%struct.Edge* %.middle.660.1,i32 0,i32 2
	lw t1 408(sp)
	lw t0 0(t1)
	# %.middle.663=load i32,i32* %.middle.662
	sw t0,412(sp)
	#  %.middle.663=load i32,i32* %.middle.662
	lw t0 412(sp)
	sw t0,48(sp)
	#  store i32 %.middle.663,i32* %v.1
	lw t0 g.0
	sw t0,416(sp)
	#  %g.0.2=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 416(sp)
	li t1 8
	add t0,t0,t1
	#%.middle.664 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.2,i32 0,i32 2
	sw t0,420(sp)
	# %.middle.664 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.2,i32 0,i32 2
	lw t1 420(sp)
	lw t0 0(t1)
	# %.middle.665=load %struct.Edge**,%struct.Edge*** %.middle.664
	sw t0,424(sp)
	#  %.middle.665=load %struct.Edge**,%struct.Edge*** %.middle.664
	lw t0 44(sp)
	sw t0,428(sp)
	#  %.middle.667=load i32,i32* %k.0
	lw t0 428(sp)
	sw t0,432(sp)
	lw t0 432(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,432(sp)
	lw t0 424(sp)
	lw t1 432(sp)
	add t0,t0,t1
	#%.middle.666 = getelementptr %struct.Edge*,%struct.Edge** %.middle.665,i32 %.middle.667
	sw t0,436(sp)
	# %.middle.666 = getelementptr %struct.Edge*,%struct.Edge** %.middle.665,i32 %.middle.667
	lw t1 436(sp)
	lw t0 0(t1)
	# %.middle.666.0=load %struct.Edge*,%struct.Edge** %.middle.666
	sw t0,440(sp)
	#  %.middle.666.0=load %struct.Edge*,%struct.Edge** %.middle.666
	lw t1 436(sp)
	lw t0 0(t1)
	# %.middle.666.1=load %struct.Edge*,%struct.Edge** %.middle.666
	sw t0,444(sp)
	#  %.middle.666.1=load %struct.Edge*,%struct.Edge** %.middle.666
	lw t0 444(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.668 = getelementptr %struct.Edge,%struct.Edge* %.middle.666.1,i32 0,i32 0
	sw t0,448(sp)
	# %.middle.668 = getelementptr %struct.Edge,%struct.Edge* %.middle.666.1,i32 0,i32 0
	lw t1 448(sp)
	lw t0 0(t1)
	# %.middle.669=load i32,i32* %.middle.668
	sw t0,452(sp)
	#  %.middle.669=load i32,i32* %.middle.668
	lw t0 452(sp)
	sw t0,52(sp)
	#  store i32 %.middle.669,i32* %w.1
	lw t0 12(sp)
	sw t0,456(sp)
	#  %.middle.670=load i32*,i32** %d.0
	lw t0 40(sp)
	sw t0,460(sp)
	#  %.middle.672=load i32,i32* %u.1
	lw t0 460(sp)
	sw t0,464(sp)
	lw t0 464(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,464(sp)
	lw t0 456(sp)
	lw t1 464(sp)
	add t0,t0,t1
	#%.middle.671 = getelementptr i32,i32* %.middle.670,i32 %.middle.672
	sw t0,468(sp)
	# %.middle.671 = getelementptr i32,i32* %.middle.670,i32 %.middle.672
	lw t1 468(sp)
	lw t0 0(t1)
	# %.middle.671.0=load i32,i32* %.middle.671
	sw t0,472(sp)
	#  %.middle.671.0=load i32,i32* %.middle.671
	lw t1 468(sp)
	lw t0 0(t1)
	# %.middle.674=load i32,i32* %.middle.671
	sw t0,476(sp)
	#  %.middle.674=load i32,i32* %.middle.671
	lw t0 52(sp)
	sw t0,480(sp)
	#  %.middle.675=load i32,i32* %w.1
	lw t0 476(sp)
	lw t1 480(sp)
	add t0,t0,t1
	#%.middle.673 = add i32 %.middle.674,%.middle.675
	sw t0,484(sp)
	# %.middle.673 = add i32 %.middle.674,%.middle.675
	lw t0 484(sp)
	sw t0,56(sp)
	#  store i32 %.middle.673,i32* %alt.0
	j .L197
	#br label %If_Cond.297
	
.L197:
	lw t0 12(sp)
	sw t0,488(sp)
	#  %.middle.676=load i32*,i32** %d.0
	lw t0 48(sp)
	sw t0,492(sp)
	#  %.middle.678=load i32,i32* %v.1
	lw t0 492(sp)
	sw t0,496(sp)
	lw t0 496(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,496(sp)
	lw t0 488(sp)
	lw t1 496(sp)
	add t0,t0,t1
	#%.middle.677 = getelementptr i32,i32* %.middle.676,i32 %.middle.678
	sw t0,500(sp)
	# %.middle.677 = getelementptr i32,i32* %.middle.676,i32 %.middle.678
	lw t1 500(sp)
	lw t0 0(t1)
	# %.middle.677.0=load i32,i32* %.middle.677
	sw t0,504(sp)
	#  %.middle.677.0=load i32,i32* %.middle.677
	lw t0 56(sp)
	sw t0,508(sp)
	#  %.middle.680=load i32,i32* %alt.0
	lw t1 500(sp)
	lw t0 0(t1)
	# %.middle.681=load i32,i32* %.middle.677
	sw t0,512(sp)
	#  %.middle.681=load i32,i32* %.middle.677
	lw t0 512(sp)
	lw t1 508(sp)
	sub t0,t0,t1
	sw t0,516(sp)
	lw t0 516(sp)
	li t1 1
	slt t0 t0,t1
	#%.middle.679 = icmp sge i32 %.middle.680,%.middle.681
	sw t0,516(sp)
	# %.middle.679 = icmp sge i32 %.middle.680,%.middle.681
	lw t0 516(sp)
	bnez t0 .L198
	lw t0 516(sp)
	beqz t0 .L199
	#br i1 %.middle.679,label %If_Then.298,label %If_Else.299
	
.L198:
	j .L201
	#br label %For_Change.296
	
.L199:
	j .L200
	#br label %If_End.300
	
.L200:
	lw t0 12(sp)
	sw t0,520(sp)
	#  %.middle.682=load i32*,i32** %d.0
	lw t0 48(sp)
	sw t0,524(sp)
	#  %.middle.684=load i32,i32* %v.1
	lw t0 524(sp)
	sw t0,528(sp)
	lw t0 528(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,528(sp)
	lw t0 520(sp)
	lw t1 528(sp)
	add t0,t0,t1
	#%.middle.683 = getelementptr i32,i32* %.middle.682,i32 %.middle.684
	sw t0,532(sp)
	# %.middle.683 = getelementptr i32,i32* %.middle.682,i32 %.middle.684
	lw t1 532(sp)
	lw t0 0(t1)
	# %.middle.683.0=load i32,i32* %.middle.683
	sw t0,536(sp)
	#  %.middle.683.0=load i32,i32* %.middle.683
	lw t0 56(sp)
	sw t0,540(sp)
	#  %.middle.686=load i32,i32* %alt.0
	lw t1 532(sp)
	lw t0 540(sp)
	sw t0,0(t1)
	#  store i32 %.middle.686,i32* %.middle.683
	li t0 2
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call _malloc
	lw t0 64(sp)
	mv ra t0
	mv t0 a0
	sw t0,544(sp)
	# %.middle.688 = call i32* @_malloc(i32 2)
	lw t0 544(sp)
	sw t0,548(sp)
	# %.middle.687 = bitcast i32* %.middle.688 to %struct.Node*
	lw t0 548(sp)
	mv a0 t0
	mv t0 ra
	sw t0,64(sp)
	call .func.Node.construct
	lw t0 64(sp)
	mv ra t0
	#call void @.func.Node.construct(%struct.Node* %.middle.687)
	lw t0 548(sp)
	sw t0,32(sp)
	#  store %struct.Node* %.middle.687,%struct.Node** %node.0
	lw t0 32(sp)
	sw t0,552(sp)
	#  %node.0.1=load %struct.Node*,%struct.Node** %node.0
	lw t0 552(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.690 = getelementptr %struct.Node,%struct.Node* %node.0.1,i32 0,i32 0
	sw t0,556(sp)
	# %.middle.690 = getelementptr %struct.Node,%struct.Node* %node.0.1,i32 0,i32 0
	lw t0 48(sp)
	sw t0,560(sp)
	#  %.middle.692=load i32,i32* %v.1
	lw t1 556(sp)
	lw t0 560(sp)
	sw t0,0(t1)
	#  store i32 %.middle.692,i32* %.middle.690
	lw t0 32(sp)
	sw t0,564(sp)
	#  %node.0.2=load %struct.Node*,%struct.Node** %node.0
	lw t0 564(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.693 = getelementptr %struct.Node,%struct.Node* %node.0.2,i32 0,i32 1
	sw t0,568(sp)
	# %.middle.693 = getelementptr %struct.Node,%struct.Node* %node.0.2,i32 0,i32 1
	lw t0 12(sp)
	sw t0,572(sp)
	#  %.middle.694=load i32*,i32** %d.0
	lw t0 48(sp)
	sw t0,576(sp)
	#  %.middle.696=load i32,i32* %v.1
	lw t0 576(sp)
	sw t0,580(sp)
	lw t0 580(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,580(sp)
	lw t0 572(sp)
	lw t1 580(sp)
	add t0,t0,t1
	#%.middle.695 = getelementptr i32,i32* %.middle.694,i32 %.middle.696
	sw t0,584(sp)
	# %.middle.695 = getelementptr i32,i32* %.middle.694,i32 %.middle.696
	lw t1 584(sp)
	lw t0 0(t1)
	# %.middle.695.0=load i32,i32* %.middle.695
	sw t0,588(sp)
	#  %.middle.695.0=load i32,i32* %.middle.695
	lw t1 584(sp)
	lw t0 0(t1)
	# %.middle.698=load i32,i32* %.middle.695
	sw t0,592(sp)
	#  %.middle.698=load i32,i32* %.middle.695
	lw t1 568(sp)
	lw t0 592(sp)
	sw t0,0(t1)
	#  store i32 %.middle.698,i32* %.middle.693
	lw t0 20(sp)
	sw t0,596(sp)
	#  %.middle.699=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	lw t0 32(sp)
	sw t0,600(sp)
	#  %.middle.700=load %struct.Node*,%struct.Node** %node.0
	lw t0 596(sp)
	mv a0 t0
	lw t0 600(sp)
	mv a1 t0
	mv t0 ra
	sw t0,64(sp)
	call .func.Heap_Node.push
	lw t0 64(sp)
	mv ra t0
	#call void @.func.Heap_Node.push(%struct.Heap_Node* %.middle.699,%struct.Node* %.middle.700)
	j .L201
	#br label %For_Change.296
	
.L201:
	lw t0 g.0
	sw t0,604(sp)
	#  %g.0.3=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 604(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.701 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.3,i32 0,i32 0
	sw t0,608(sp)
	# %.middle.701 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.3,i32 0,i32 0
	lw t1 608(sp)
	lw t0 0(t1)
	# %.middle.702=load i32*,i32** %.middle.701
	sw t0,612(sp)
	#  %.middle.702=load i32*,i32** %.middle.701
	lw t0 44(sp)
	sw t0,616(sp)
	#  %.middle.704=load i32,i32* %k.0
	lw t0 616(sp)
	sw t0,620(sp)
	lw t0 620(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,620(sp)
	lw t0 612(sp)
	lw t1 620(sp)
	add t0,t0,t1
	#%.middle.703 = getelementptr i32,i32* %.middle.702,i32 %.middle.704
	sw t0,624(sp)
	# %.middle.703 = getelementptr i32,i32* %.middle.702,i32 %.middle.704
	lw t1 624(sp)
	lw t0 0(t1)
	# %.middle.703.0=load i32,i32* %.middle.703
	sw t0,628(sp)
	#  %.middle.703.0=load i32,i32* %.middle.703
	lw t1 624(sp)
	lw t0 0(t1)
	# %.middle.706=load i32,i32* %.middle.703
	sw t0,632(sp)
	#  %.middle.706=load i32,i32* %.middle.703
	lw t0 632(sp)
	sw t0,44(sp)
	#  store i32 %.middle.706,i32* %k.0
	j .L195
	#br label %For_Cond.293
	
.L202:
	j .L189
	#br label %While_Cond.286
	
.L203:
	lw t0 12(sp)
	sw t0,636(sp)
	#  %.middle.707=load i32*,i32** %d.0
	lw t0 636(sp)
	sw t0,4(sp)
	#  store i32* %.middle.707,i32** %.retval.p
	j .func.dijkstra.Exit
	#br label %Exit.280
	
.func.dijkstra.Exit:
	lw t0 60(sp)
	mv s0 t0
	lw t0 4(sp)
	sw t0,640(sp)
	#  %.retval=load i32*,i32** %.retval.p
	lw t0 640(sp)
	mv a0 t0
	lw t0 64(sp)
	mv ra t0
	addi sp,sp,644
	ret
	#ret i32* %.retval
	

    .globl main
main:


mv s0 sp
	addi sp,sp,-248
	mv t0 s0
	sw t0,36(sp)
	mv t0 ra
	sw t0,40(sp)
	# %.TmpString.2.0=alloca %struct.string*
	li t0 8
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call _malloc
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,44(sp)
	# %.middle.725 = call i32* @_malloc(i32 8)
	lw t0 44(sp)
	sw t0,48(sp)
	# %.TmpString.3.0=alloca %struct.string*
	li t0 8
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call _malloc
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,52(sp)
	# %.middle.733 = call i32* @_malloc(i32 8)
	lw t0 52(sp)
	sw t0,56(sp)
	# %.TmpString.4.0=alloca %struct.string*
	li t0 8
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call _malloc
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,60(sp)
	# %.middle.738 = call i32* @_malloc(i32 8)
	lw t0 60(sp)
	sw t0,64(sp)
	# %.middle.737 = bitcast i32* %.middle.738 to %struct.string*
	j .L204
	#br label %.block.303
	
.L204:
	mv t0 ra
	sw t0,40(sp)
	call .init
	lw t0 40(sp)
	mv ra t0
	#call void @.init()
	mv t0 ra
	sw t0,40(sp)
	call .func.init
	lw t0 40(sp)
	mv ra t0
	#call void @.func.init()
	li t0 0
	sw t0,4(sp)
	#  store i32 0,i32* %i.11
	j .L205
	#br label %For_Cond.304
	
.L205:
	lw t0 4(sp)
	sw t0,68(sp)
	#  %.middle.710=load i32,i32* %i.11
	lw t0 n.0
	sw t0,72(sp)
	#  %.middle.711=load i32,i32* @n.0
	lw t0 68(sp)
	lw t1 72(sp)
	slt t0 t0,t1
	#%.middle.709 = icmp slt i32 %.middle.710,%.middle.711
	sw t0,76(sp)
	# %.middle.709 = icmp slt i32 %.middle.710,%.middle.711
	lw t0 76(sp)
	bnez t0 .L206
	lw t0 76(sp)
	beqz t0 .L216
	#br i1 %.middle.709,label %For_Body.306,label %For_End.305
	
.L206:
	lw t0 4(sp)
	sw t0,80(sp)
	#  %.middle.712=load i32,i32* %i.11
	lw t0 80(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.dijkstra
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,84(sp)
	# %.Func_Return.36 = call i32* @.func.dijkstra(i32 %.middle.712)
	lw t0 84(sp)
	sw t0,16(sp)
	#  store i32* %.Func_Return.36,i32** %.Func.Return.p.36.0
	lw t0 16(sp)
	sw t0,88(sp)
	#  %.middle.713=load i32*,i32** %.Func.Return.p.36.0
	lw t0 88(sp)
	sw t0,12(sp)
	#  store i32* %.middle.713,i32** %d.1
	li t0 0
	sw t0,8(sp)
	#  store i32 0,i32* %j.0
	j .L207
	#br label %For_Cond.308
	
.L207:
	lw t0 8(sp)
	sw t0,92(sp)
	#  %.middle.716=load i32,i32* %j.0
	lw t0 n.0
	sw t0,96(sp)
	#  %.middle.717=load i32,i32* @n.0
	lw t0 92(sp)
	lw t1 96(sp)
	slt t0 t0,t1
	#%.middle.715 = icmp slt i32 %.middle.716,%.middle.717
	sw t0,100(sp)
	# %.middle.715 = icmp slt i32 %.middle.716,%.middle.717
	lw t0 100(sp)
	bnez t0 .L208
	lw t0 100(sp)
	beqz t0 .L214
	#br i1 %.middle.715,label %For_Body.310,label %For_End.309
	
.L208:
	j .L209
	#br label %If_Cond.312
	
.L209:
	lw t0 12(sp)
	sw t0,104(sp)
	#  %.middle.718=load i32*,i32** %d.1
	lw t0 8(sp)
	sw t0,108(sp)
	#  %.middle.720=load i32,i32* %j.0
	lw t0 108(sp)
	sw t0,112(sp)
	lw t0 112(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,112(sp)
	lw t0 104(sp)
	lw t1 112(sp)
	add t0,t0,t1
	#%.middle.719 = getelementptr i32,i32* %.middle.718,i32 %.middle.720
	sw t0,116(sp)
	# %.middle.719 = getelementptr i32,i32* %.middle.718,i32 %.middle.720
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.719.0=load i32,i32* %.middle.719
	sw t0,120(sp)
	#  %.middle.719.0=load i32,i32* %.middle.719
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.722=load i32,i32* %.middle.719
	sw t0,124(sp)
	#  %.middle.722=load i32,i32* %.middle.719
	lw t0 INF.0
	sw t0,128(sp)
	#  %.middle.723=load i32,i32* @INF.0
	lw t0 124(sp)
	lw t1 128(sp)
	sub t0,t0,t1
	sw t0,132(sp)
	lw t0 132(sp)
	seqz t0 t0
	#%.middle.721 = icmp eq i32 %.middle.722,%.middle.723
	sw t0,132(sp)
	# %.middle.721 = icmp eq i32 %.middle.722,%.middle.723
	lw t0 132(sp)
	bnez t0 .L210
	lw t0 132(sp)
	beqz t0 .L211
	#br i1 %.middle.721,label %If_Then.313,label %If_Else.314
	
.L210:
	lw t0 48(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.string.construct
	lw t0 40(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.724)
	lw t0 48(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpLen.2 = getelementptr %struct.string,%struct.string* %.middle.724,i32 0,i32 0
	sw t0,136(sp)
	# %.TmpLen.2 = getelementptr %struct.string,%struct.string* %.middle.724,i32 0,i32 0
	lw t1 136(sp)
	li t0 2
	sw t0,0(t1)
	#  store i32 2,i32* %.TmpLen.2
	lw t0 48(sp)
	li t1 4
	add t0,t0,t1
	#%.TmpContent.2 = getelementptr %struct.string,%struct.string* %.middle.724,i32 0,i32 1
	sw t0,140(sp)
	# %.TmpContent.2 = getelementptr %struct.string,%struct.string* %.middle.724,i32 0,i32 1
	la t0 .ConstantString.2
	sw t0,144(sp)
	lw t0 144(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpConstRef.2 = getelementptr [2 x i32],[2 x i32]* @.ConstantString.2,i32 0,i32 0
	sw t0,148(sp)
	# %.TmpConstRef.2 = getelementptr [2 x i32],[2 x i32]* @.ConstantString.2,i32 0,i32 0
	lw t1 140(sp)
	lw t0 148(sp)
	sw t0,0(t1)
	#  store i32* %.TmpConstRef.2,i32** %.TmpContent.2
	lw t0 48(sp)
	sw t0,20(sp)
	#  store %struct.string* %.middle.724,%struct.string** %.TmpString.2.0
	lw t0 20(sp)
	sw t0,152(sp)
	#  %.middle.726=load %struct.string*,%struct.string** %.TmpString.2.0
	lw t0 152(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.print
	lw t0 40(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.726)
	j .L212
	#br label %If_End.315
	
.L211:
	lw t0 12(sp)
	sw t0,156(sp)
	#  %.middle.727=load i32*,i32** %d.1
	lw t0 8(sp)
	sw t0,160(sp)
	#  %.middle.729=load i32,i32* %j.0
	lw t0 160(sp)
	sw t0,164(sp)
	lw t0 164(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,164(sp)
	lw t0 156(sp)
	lw t1 164(sp)
	add t0,t0,t1
	#%.middle.728 = getelementptr i32,i32* %.middle.727,i32 %.middle.729
	sw t0,168(sp)
	# %.middle.728 = getelementptr i32,i32* %.middle.727,i32 %.middle.729
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.728.0=load i32,i32* %.middle.728
	sw t0,172(sp)
	#  %.middle.728.0=load i32,i32* %.middle.728
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.730=load i32,i32* %.middle.728
	sw t0,176(sp)
	#  %.middle.730=load i32,i32* %.middle.728
	lw t0 176(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.toString
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,180(sp)
	# %.Func_Return.37 = call %struct.string* @.func.toString(i32 %.middle.730)
	lw t0 180(sp)
	sw t0,24(sp)
	#  store %struct.string* %.Func_Return.37,%struct.string** %.Func.Return.p.37.0
	lw t0 24(sp)
	sw t0,184(sp)
	#  %.middle.731=load %struct.string*,%struct.string** %.Func.Return.p.37.0
	lw t0 184(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.print
	lw t0 40(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.731)
	j .L212
	#br label %If_End.315
	
.L212:
	lw t0 56(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.string.construct
	lw t0 40(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.732)
	lw t0 56(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpLen.3 = getelementptr %struct.string,%struct.string* %.middle.732,i32 0,i32 0
	sw t0,188(sp)
	# %.TmpLen.3 = getelementptr %struct.string,%struct.string* %.middle.732,i32 0,i32 0
	lw t1 188(sp)
	li t0 1
	sw t0,0(t1)
	#  store i32 1,i32* %.TmpLen.3
	lw t0 56(sp)
	li t1 4
	add t0,t0,t1
	#%.TmpContent.3 = getelementptr %struct.string,%struct.string* %.middle.732,i32 0,i32 1
	sw t0,192(sp)
	# %.TmpContent.3 = getelementptr %struct.string,%struct.string* %.middle.732,i32 0,i32 1
	la t0 .ConstantString.3
	sw t0,196(sp)
	lw t0 196(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpConstRef.3 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.3,i32 0,i32 0
	sw t0,200(sp)
	# %.TmpConstRef.3 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.3,i32 0,i32 0
	lw t1 192(sp)
	lw t0 200(sp)
	sw t0,0(t1)
	#  store i32* %.TmpConstRef.3,i32** %.TmpContent.3
	lw t0 56(sp)
	sw t0,28(sp)
	#  store %struct.string* %.middle.732,%struct.string** %.TmpString.3.0
	lw t0 28(sp)
	sw t0,204(sp)
	#  %.middle.734=load %struct.string*,%struct.string** %.TmpString.3.0
	lw t0 204(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.print
	lw t0 40(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.734)
	j .L213
	#br label %For_Change.311
	
.L213:
	lw t0 8(sp)
	sw t0,208(sp)
	#  %.middle.735=load i32,i32* %j.0
	lw t0 208(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.736 = add i32 %.middle.735,1
	sw t0,212(sp)
	# %.middle.736 = add i32 %.middle.735,1
	lw t0 212(sp)
	sw t0,8(sp)
	#  store i32 %.middle.736,i32* %j.0
	j .L207
	#br label %For_Cond.308
	
.L214:
	lw t0 64(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.string.construct
	lw t0 40(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.737)
	lw t0 64(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpLen.4 = getelementptr %struct.string,%struct.string* %.middle.737,i32 0,i32 0
	sw t0,216(sp)
	# %.TmpLen.4 = getelementptr %struct.string,%struct.string* %.middle.737,i32 0,i32 0
	lw t1 216(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %.TmpLen.4
	lw t0 64(sp)
	li t1 4
	add t0,t0,t1
	#%.TmpContent.4 = getelementptr %struct.string,%struct.string* %.middle.737,i32 0,i32 1
	sw t0,220(sp)
	# %.TmpContent.4 = getelementptr %struct.string,%struct.string* %.middle.737,i32 0,i32 1
	la t0 .ConstantString.4
	sw t0,224(sp)
	lw t0 224(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpConstRef.4 = getelementptr [0 x i32],[0 x i32]* @.ConstantString.4,i32 0,i32 0
	sw t0,228(sp)
	# %.TmpConstRef.4 = getelementptr [0 x i32],[0 x i32]* @.ConstantString.4,i32 0,i32 0
	lw t1 220(sp)
	lw t0 228(sp)
	sw t0,0(t1)
	#  store i32* %.TmpConstRef.4,i32** %.TmpContent.4
	lw t0 64(sp)
	sw t0,32(sp)
	#  store %struct.string* %.middle.737,%struct.string** %.TmpString.4.0
	lw t0 32(sp)
	sw t0,232(sp)
	#  %.middle.739=load %struct.string*,%struct.string** %.TmpString.4.0
	lw t0 232(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.println
	lw t0 40(sp)
	mv ra t0
	#call void @.func.println(%struct.string* %.middle.739)
	j .L215
	#br label %For_Change.307
	
.L215:
	lw t0 4(sp)
	sw t0,236(sp)
	#  %.middle.740=load i32,i32* %i.11
	lw t0 236(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.741 = add i32 %.middle.740,1
	sw t0,240(sp)
	# %.middle.741 = add i32 %.middle.740,1
	lw t0 240(sp)
	sw t0,4(sp)
	#  store i32 %.middle.741,i32* %i.11
	j .L205
	#br label %For_Cond.304
	
.L216:
	li t0 0
	sw t0,0(sp)
	#  store i32 0,i32* %.retval.p
	j main.Exit
	#br label %Exit.302
	
main.Exit:
	lw t0 36(sp)
	mv s0 t0
	lw t0 0(sp)
	sw t0,244(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 244(sp)
	mv a0 t0
	lw t0 40(sp)
	mv ra t0
	addi sp,sp,248
	ret
	#ret i32 %.retval
	

    .section data
    .type   INF.0,@object
    .global INF.0
INF.0:
    .zero 4
    .size INF.0,4

    .section data
    .type   a_no_collison_plz.0,@object
    .global a_no_collison_plz.0
a_no_collison_plz.0:
    .zero 4
    .size a_no_collison_plz.0,4

    .section data
    .type   g.0,@object
    .global g.0
g.0:
    .zero 4
    .size g.0,4

    .section data
    .type   tmp_no_collision_plz.0,@object
    .global tmp_no_collision_plz.0
tmp_no_collision_plz.0:
    .zero 4
    .size tmp_no_collision_plz.0,4

    .section data
    .type   m.0,@object
    .global m.0
m.0:
    .zero 4
    .size m.0,4

    .section data
    .type   n.0,@object
    .global n.0
n.0:
    .zero 4
    .size n.0,4

.section data
.ConstantString.0:
	.word 10
	
.section data
.ConstantString.1:
	.word 10
	
.section data
.ConstantString.2:
	.word 45
	.word 49
	
.section data
.ConstantString.3:
	.word 32
	
.section data
.ConstantString.4:
	
