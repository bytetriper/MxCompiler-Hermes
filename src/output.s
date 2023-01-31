.text
    .globl .init
.init:


mv s0 sp
	addi sp,sp,-56
	mv t0 s0
	sw t0,0(sp)
	mv t0 ra
	sw t0,4(sp)
	j .L0
	#br label %.block.3
	
.L0:
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
	li t0 4
	sw t0,0(t1)
	#  store i32 4,i32* %.ArrayIdx.0
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
	sw t0,a.0,t2
	#  store i32* %.new.0,i32** @a.0
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,4(sp)
	call _malloc
	lw t0 4(sp)
	mv ra t0
	mv t0 a0
	sw t0,28(sp)
	# %.SizeList.1 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,32(sp)
	lw t0 32(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,32(sp)
	lw t0 28(sp)
	lw t1 32(sp)
	add t0,t0,t1
	#%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	sw t0,36(sp)
	# %.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	lw t1 36(sp)
	li t0 20
	sw t0,0(t1)
	#  store i32 20,i32* %.ArrayIdx.1
	lw t0 28(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,4(sp)
	call _malloc_toInt
	lw t0 4(sp)
	mv ra t0
	mv t0 a0
	sw t0,40(sp)
	# %.middle.1 = call i32* @_malloc_toInt(i32* %.SizeList.1,i32 1)
	lw t0 40(sp)
	sw t0,44(sp)
	# %.new.1 = bitcast i32* %.middle.1 to i32*
	lw t0 44(sp)
	sw t0,a_no_collison_plz.0,t2
	#  store i32* %.new.1,i32** @a_no_collison_plz.0
	li t0 2
	mv a0 t0
	mv t0 ra
	sw t0,4(sp)
	call _malloc
	lw t0 4(sp)
	mv ra t0
	mv t0 a0
	sw t0,48(sp)
	# %.middle.3 = call i32* @_malloc(i32 2)
	lw t0 48(sp)
	sw t0,52(sp)
	# %.middle.2 = bitcast i32* %.middle.3 to %struct.string*
	lw t0 52(sp)
	mv a0 t0
	mv t0 ra
	sw t0,4(sp)
	call .func.string.construct
	lw t0 4(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.2)
	lw t0 52(sp)
	sw t0,tmp_no_collision_plz.0,t2
	#  store %struct.string* %.middle.2,%struct.string** @tmp_no_collision_plz.0
	j .init.Exit
	#br label %Exit.2
	
.init.Exit:
	lw t0 0(sp)
	mv s0 t0
	lw t0 4(sp)
	mv ra t0
	addi sp,sp,56
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
	# %.middle.5=load i32,i32* %This_addr.len.1
	sw t0,24(sp)
	#  %.middle.5=load i32,i32* %This_addr.len.1
	lw t0 24(sp)
	sw t0,4(sp)
	#  store i32 %.middle.5,i32* %.retval.p
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
	#  %.middle.7=load i32,i32* %i.0
	lw t1 36(sp)
	lw t0 0(t1)
	# %.middle.8=load i32,i32* %This_addr.len.2
	sw t0,44(sp)
	#  %.middle.8=load i32,i32* %This_addr.len.2
	lw t0 40(sp)
	lw t1 44(sp)
	slt t0 t0,t1
	#%.middle.6 = icmp slt i32 %.middle.7,%.middle.8
	sw t0,48(sp)
	# %.middle.6 = icmp slt i32 %.middle.7,%.middle.8
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %RV.0.0
	lw t0 48(sp)
	bnez t0 .L5
	lw t0 48(sp)
	beqz t0 .L6
	#br i1 %.middle.6,label %binary_and_rv.17,label %binary_end.18
	
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
	# %.middle.9=load i32*,i32** %This_addr.content.0
	sw t0,60(sp)
	#  %.middle.9=load i32*,i32** %This_addr.content.0
	lw t0 12(sp)
	sw t0,64(sp)
	#  %.middle.11=load i32,i32* %i.0
	lw t0 64(sp)
	sw t0,68(sp)
	lw t0 68(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,68(sp)
	lw t0 60(sp)
	lw t1 68(sp)
	add t0,t0,t1
	#%.middle.10 = getelementptr i32,i32* %.middle.9,i32 %.middle.11
	sw t0,72(sp)
	# %.middle.10 = getelementptr i32,i32* %.middle.9,i32 %.middle.11
	lw t1 72(sp)
	lw t0 0(t1)
	# %.middle.10.0=load i32,i32* %.middle.10
	sw t0,76(sp)
	#  %.middle.10.0=load i32,i32* %.middle.10
	lw t1 72(sp)
	lw t0 0(t1)
	# %.middle.13=load i32,i32* %.middle.10
	sw t0,80(sp)
	#  %.middle.13=load i32,i32* %.middle.10
	li t0 47
	lw t1 80(sp)
	sub t0,t0,t1
	sw t0,84(sp)
	lw t0 84(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.12 = icmp sgt i32 %.middle.13,47
	sw t0,84(sp)
	# %.middle.12 = icmp sgt i32 %.middle.13,47
	lw t0 84(sp)
	sw t0,88(sp)
	# %.FromBool.0 = zext i1 %.middle.12 to i32
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
	#%.middle.15 = trunc i32 %.ToBool.0 to i1
	sw t0,96(sp)
	# %.middle.15 = trunc i32 %.ToBool.0 to i1
	lw t0 84(sp)
	lw t1 96(sp)
	and t0,t0,t1
	#%.middle.14 = and i1 %.middle.12,%.middle.15
	sw t0,100(sp)
	# %.middle.14 = and i1 %.middle.12,%.middle.15
	li t0 0
	sw t0,20(sp)
	#  store i32 0,i32* %RV.1.0
	lw t0 100(sp)
	bnez t0 .L7
	lw t0 100(sp)
	beqz t0 .L8
	#br i1 %.middle.14,label %binary_and_rv.19,label %binary_end.20
	
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
	# %.middle.16=load i32*,i32** %This_addr.content.1
	sw t0,112(sp)
	#  %.middle.16=load i32*,i32** %This_addr.content.1
	lw t0 12(sp)
	sw t0,116(sp)
	#  %.middle.18=load i32,i32* %i.0
	lw t0 116(sp)
	sw t0,120(sp)
	lw t0 120(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,120(sp)
	lw t0 112(sp)
	lw t1 120(sp)
	add t0,t0,t1
	#%.middle.17 = getelementptr i32,i32* %.middle.16,i32 %.middle.18
	sw t0,124(sp)
	# %.middle.17 = getelementptr i32,i32* %.middle.16,i32 %.middle.18
	lw t1 124(sp)
	lw t0 0(t1)
	# %.middle.17.0=load i32,i32* %.middle.17
	sw t0,128(sp)
	#  %.middle.17.0=load i32,i32* %.middle.17
	lw t1 124(sp)
	lw t0 0(t1)
	# %.middle.20=load i32,i32* %.middle.17
	sw t0,132(sp)
	#  %.middle.20=load i32,i32* %.middle.17
	lw t0 132(sp)
	li t1 58
	slt t0 t0,t1
	#%.middle.19 = icmp slt i32 %.middle.20,58
	sw t0,136(sp)
	# %.middle.19 = icmp slt i32 %.middle.20,58
	lw t0 136(sp)
	sw t0,140(sp)
	# %.FromBool.1 = zext i1 %.middle.19 to i32
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
	#%.middle.22 = trunc i32 %.ToBool.1 to i1
	sw t0,148(sp)
	# %.middle.22 = trunc i32 %.ToBool.1 to i1
	lw t0 136(sp)
	lw t1 148(sp)
	and t0,t0,t1
	#%.middle.21 = and i1 %.middle.19,%.middle.22
	sw t0,152(sp)
	# %.middle.21 = and i1 %.middle.19,%.middle.22
	lw t0 152(sp)
	bnez t0 .L9
	lw t0 152(sp)
	beqz t0 .L11
	#br i1 %.middle.21,label %For_Body.15,label %For_End.14
	
.L9:
	lw t0 8(sp)
	sw t0,156(sp)
	#  %.middle.24=load i32,i32* %ans.0
	lw t0 156(sp)
	li t1 10
	mul t0,t0,t1
	#%.middle.23 = mul i32 %.middle.24,10
	sw t0,160(sp)
	# %.middle.23 = mul i32 %.middle.24,10
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
	# %.middle.25=load i32*,i32** %This_addr.content.2
	sw t0,172(sp)
	#  %.middle.25=load i32*,i32** %This_addr.content.2
	lw t0 12(sp)
	sw t0,176(sp)
	#  %.middle.27=load i32,i32* %i.0
	lw t0 176(sp)
	sw t0,180(sp)
	lw t0 180(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,180(sp)
	lw t0 172(sp)
	lw t1 180(sp)
	add t0,t0,t1
	#%.middle.26 = getelementptr i32,i32* %.middle.25,i32 %.middle.27
	sw t0,184(sp)
	# %.middle.26 = getelementptr i32,i32* %.middle.25,i32 %.middle.27
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.26.0=load i32,i32* %.middle.26
	sw t0,188(sp)
	#  %.middle.26.0=load i32,i32* %.middle.26
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.29=load i32,i32* %.middle.26
	sw t0,192(sp)
	#  %.middle.29=load i32,i32* %.middle.26
	lw t0 160(sp)
	lw t1 192(sp)
	add t0,t0,t1
	#%.middle.28 = add i32 %.middle.23,%.middle.29
	sw t0,196(sp)
	# %.middle.28 = add i32 %.middle.23,%.middle.29
	lw t0 196(sp)
	li t1 48
	sub t0,t0,t1
	#%.middle.30 = sub i32 %.middle.28,48
	sw t0,200(sp)
	# %.middle.30 = sub i32 %.middle.28,48
	lw t0 200(sp)
	sw t0,8(sp)
	#  store i32 %.middle.30,i32* %ans.0
	j .L10
	#br label %For_Change.16
	
.L10:
	lw t0 12(sp)
	sw t0,204(sp)
	#  %.middle.32=load i32,i32* %i.0
	lw t0 12(sp)
	sw t0,208(sp)
	#  %.middle.34=load i32,i32* %i.0
	lw t0 208(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.33 = add i32 %.middle.34,1
	sw t0,212(sp)
	# %.middle.33 = add i32 %.middle.34,1
	lw t0 212(sp)
	sw t0,12(sp)
	#  store i32 %.middle.33,i32* %i.0
	j .L4
	#br label %For_Cond.13
	
.L11:
	lw t0 8(sp)
	sw t0,216(sp)
	#  %.middle.35=load i32,i32* %ans.0
	lw t0 216(sp)
	sw t0,4(sp)
	#  store i32 %.middle.35,i32* %.retval.p
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
	# %.middle.36=load i32*,i32** %This_addr.content.3
	sw t0,28(sp)
	#  %.middle.36=load i32*,i32** %This_addr.content.3
	lw t0 4(sp)
	sw t0,32(sp)
	#  %.middle.38=load i32,i32* %pos_addr
	lw t0 32(sp)
	sw t0,36(sp)
	lw t0 36(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,36(sp)
	lw t0 28(sp)
	lw t1 36(sp)
	add t0,t0,t1
	#%.middle.37 = getelementptr i32,i32* %.middle.36,i32 %.middle.38
	sw t0,40(sp)
	# %.middle.37 = getelementptr i32,i32* %.middle.36,i32 %.middle.38
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.37.0=load i32,i32* %.middle.37
	sw t0,44(sp)
	#  %.middle.37.0=load i32,i32* %.middle.37
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.39=load i32,i32* %.middle.37
	sw t0,48(sp)
	#  %.middle.39=load i32,i32* %.middle.37
	lw t0 48(sp)
	sw t0,8(sp)
	#  store i32 %.middle.39,i32* %.retval.p
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
	# %.middle.41 = call i32* @_malloc(i32 2)
	lw t0 36(sp)
	sw t0,40(sp)
	# %.middle.40 = bitcast i32* %.middle.41 to %struct.string*
	lw t0 40(sp)
	mv a0 t0
	mv t0 ra
	sw t0,32(sp)
	call .func.string.construct
	lw t0 32(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.40)
	lw t0 40(sp)
	sw t0,16(sp)
	#  store %struct.string* %.middle.40,%struct.string** %tmp.0
	lw t0 8(sp)
	sw t0,44(sp)
	#  %.middle.43=load i32,i32* %right_addr
	lw t0 4(sp)
	sw t0,48(sp)
	#  %.middle.44=load i32,i32* %left_addr
	lw t0 44(sp)
	lw t1 48(sp)
	sub t0,t0,t1
	#%.middle.42 = sub i32 %.middle.43,%.middle.44
	sw t0,52(sp)
	# %.middle.42 = sub i32 %.middle.43,%.middle.44
	lw t0 52(sp)
	sw t0,20(sp)
	#  store i32 %.middle.42,i32* %tmplen.0
	lw t0 16(sp)
	sw t0,56(sp)
	#  %tmp.0.0=load %struct.string*,%struct.string** %tmp.0
	lw t0 56(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.45 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	sw t0,60(sp)
	# %.middle.45 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	lw t0 20(sp)
	sw t0,64(sp)
	#  %.middle.46=load i32,i32* %tmplen.0
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,32(sp)
	call _malloc
	lw t0 32(sp)
	mv ra t0
	mv t0 a0
	sw t0,68(sp)
	# %.SizeList.2 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,72(sp)
	lw t0 72(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,72(sp)
	lw t0 68(sp)
	lw t1 72(sp)
	add t0,t0,t1
	#%.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	sw t0,76(sp)
	# %.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	lw t1 76(sp)
	lw t0 64(sp)
	sw t0,0(t1)
	#  store i32 %.middle.46,i32* %.ArrayIdx.2
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
	# %.middle.47 = call i32* @_malloc_toInt(i32* %.SizeList.2,i32 1)
	lw t0 80(sp)
	sw t0,84(sp)
	# %.new.2 = bitcast i32* %.middle.47 to i32*
	lw t1 60(sp)
	lw t0 84(sp)
	sw t0,0(t1)
	#  store i32* %.new.2,i32** %.middle.45
	lw t0 16(sp)
	sw t0,88(sp)
	#  %tmp.0.1=load %struct.string*,%struct.string** %tmp.0
	lw t0 88(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.49 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	sw t0,92(sp)
	# %.middle.49 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	lw t0 20(sp)
	sw t0,96(sp)
	#  %.middle.51=load i32,i32* %tmplen.0
	lw t1 92(sp)
	lw t0 96(sp)
	sw t0,0(t1)
	#  store i32 %.middle.51,i32* %.middle.49
	li t0 0
	sw t0,24(sp)
	#  store i32 0,i32* %i.1
	j .L14
	#br label %For_Cond.27
	
.L14:
	lw t0 24(sp)
	sw t0,100(sp)
	#  %.middle.53=load i32,i32* %i.1
	lw t0 20(sp)
	sw t0,104(sp)
	#  %.middle.54=load i32,i32* %tmplen.0
	lw t0 100(sp)
	lw t1 104(sp)
	slt t0 t0,t1
	#%.middle.52 = icmp slt i32 %.middle.53,%.middle.54
	sw t0,108(sp)
	# %.middle.52 = icmp slt i32 %.middle.53,%.middle.54
	lw t0 108(sp)
	bnez t0 .L15
	lw t0 108(sp)
	beqz t0 .L17
	#br i1 %.middle.52,label %For_Body.29,label %For_End.28
	
.L15:
	lw t0 16(sp)
	sw t0,112(sp)
	#  %tmp.0.2=load %struct.string*,%struct.string** %tmp.0
	lw t0 112(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.55 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	sw t0,116(sp)
	# %.middle.55 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.56=load i32*,i32** %.middle.55
	sw t0,120(sp)
	#  %.middle.56=load i32*,i32** %.middle.55
	lw t0 24(sp)
	sw t0,124(sp)
	#  %.middle.58=load i32,i32* %i.1
	lw t0 124(sp)
	sw t0,128(sp)
	lw t0 128(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,128(sp)
	lw t0 120(sp)
	lw t1 128(sp)
	add t0,t0,t1
	#%.middle.57 = getelementptr i32,i32* %.middle.56,i32 %.middle.58
	sw t0,132(sp)
	# %.middle.57 = getelementptr i32,i32* %.middle.56,i32 %.middle.58
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.57.0=load i32,i32* %.middle.57
	sw t0,136(sp)
	#  %.middle.57.0=load i32,i32* %.middle.57
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
	# %.middle.59=load i32*,i32** %This_addr.content.4
	sw t0,148(sp)
	#  %.middle.59=load i32*,i32** %This_addr.content.4
	lw t0 4(sp)
	sw t0,152(sp)
	#  %.middle.61=load i32,i32* %left_addr
	lw t0 24(sp)
	sw t0,156(sp)
	#  %.middle.62=load i32,i32* %i.1
	lw t0 152(sp)
	lw t1 156(sp)
	add t0,t0,t1
	#%.middle.60 = add i32 %.middle.61,%.middle.62
	sw t0,160(sp)
	# %.middle.60 = add i32 %.middle.61,%.middle.62
	lw t0 160(sp)
	sw t0,164(sp)
	lw t0 164(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,164(sp)
	lw t0 148(sp)
	lw t1 164(sp)
	add t0,t0,t1
	#%.middle.63 = getelementptr i32,i32* %.middle.59,i32 %.middle.60
	sw t0,168(sp)
	# %.middle.63 = getelementptr i32,i32* %.middle.59,i32 %.middle.60
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.63.0=load i32,i32* %.middle.63
	sw t0,172(sp)
	#  %.middle.63.0=load i32,i32* %.middle.63
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.65=load i32,i32* %.middle.63
	sw t0,176(sp)
	#  %.middle.65=load i32,i32* %.middle.63
	lw t1 132(sp)
	lw t0 176(sp)
	sw t0,0(t1)
	#  store i32 %.middle.65,i32* %.middle.57
	j .L16
	#br label %For_Change.30
	
.L16:
	lw t0 24(sp)
	sw t0,180(sp)
	#  %.middle.66=load i32,i32* %i.1
	lw t0 24(sp)
	sw t0,184(sp)
	#  %.middle.68=load i32,i32* %i.1
	lw t0 184(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.67 = add i32 %.middle.68,1
	sw t0,188(sp)
	# %.middle.67 = add i32 %.middle.68,1
	lw t0 188(sp)
	sw t0,24(sp)
	#  store i32 %.middle.67,i32* %i.1
	j .L14
	#br label %For_Cond.27
	
.L17:
	lw t0 16(sp)
	sw t0,192(sp)
	#  %.middle.69=load %struct.string*,%struct.string** %tmp.0
	lw t0 192(sp)
	sw t0,12(sp)
	#  store %struct.string* %.middle.69,%struct.string** %.retval.p
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
	# %.middle.71 = call i32* @_malloc(i32 2)
	lw t0 44(sp)
	sw t0,48(sp)
	# %.middle.70 = bitcast i32* %.middle.71 to %struct.string*
	lw t0 48(sp)
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call .func.string.construct
	lw t0 40(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.70)
	lw t0 48(sp)
	sw t0,12(sp)
	#  store %struct.string* %.middle.70,%struct.string** %tmp.1
	lw t0 0(sp)
	sw t0,52(sp)
	#  %a_addr.0=load %struct.string*,%struct.string** %a_addr
	lw t0 52(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.72 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	sw t0,56(sp)
	# %.middle.72 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	lw t0 4(sp)
	sw t0,60(sp)
	#  %b_addr.0=load %struct.string*,%struct.string** %b_addr
	lw t0 60(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.73 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	sw t0,64(sp)
	# %.middle.73 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	lw t1 56(sp)
	lw t0 0(t1)
	# %.middle.75=load i32,i32* %.middle.72
	sw t0,68(sp)
	#  %.middle.75=load i32,i32* %.middle.72
	lw t1 64(sp)
	lw t0 0(t1)
	# %.middle.76=load i32,i32* %.middle.73
	sw t0,72(sp)
	#  %.middle.76=load i32,i32* %.middle.73
	lw t0 68(sp)
	lw t1 72(sp)
	add t0,t0,t1
	#%.middle.74 = add i32 %.middle.75,%.middle.76
	sw t0,76(sp)
	# %.middle.74 = add i32 %.middle.75,%.middle.76
	lw t0 76(sp)
	sw t0,16(sp)
	#  store i32 %.middle.74,i32* %tmplen.1
	lw t0 0(sp)
	sw t0,80(sp)
	#  %a_addr.1=load %struct.string*,%struct.string** %a_addr
	lw t0 80(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.77 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	sw t0,84(sp)
	# %.middle.77 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	lw t1 84(sp)
	lw t0 0(t1)
	# %.middle.78=load i32,i32* %.middle.77
	sw t0,88(sp)
	#  %.middle.78=load i32,i32* %.middle.77
	lw t0 88(sp)
	sw t0,20(sp)
	#  store i32 %.middle.78,i32* %alen.0
	lw t0 4(sp)
	sw t0,92(sp)
	#  %b_addr.1=load %struct.string*,%struct.string** %b_addr
	lw t0 92(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.79 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	sw t0,96(sp)
	# %.middle.79 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	lw t1 96(sp)
	lw t0 0(t1)
	# %.middle.80=load i32,i32* %.middle.79
	sw t0,100(sp)
	#  %.middle.80=load i32,i32* %.middle.79
	lw t0 100(sp)
	sw t0,24(sp)
	#  store i32 %.middle.80,i32* %blen.0
	lw t0 12(sp)
	sw t0,104(sp)
	#  %tmp.1.0=load %struct.string*,%struct.string** %tmp.1
	lw t0 104(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.81 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	sw t0,108(sp)
	# %.middle.81 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	lw t0 16(sp)
	sw t0,112(sp)
	#  %.middle.83=load i32,i32* %tmplen.1
	lw t1 108(sp)
	lw t0 112(sp)
	sw t0,0(t1)
	#  store i32 %.middle.83,i32* %.middle.81
	lw t0 12(sp)
	sw t0,116(sp)
	#  %tmp.1.1=load %struct.string*,%struct.string** %tmp.1
	lw t0 116(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.84 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	sw t0,120(sp)
	# %.middle.84 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	lw t0 16(sp)
	sw t0,124(sp)
	#  %.middle.85=load i32,i32* %tmplen.1
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,40(sp)
	call _malloc
	lw t0 40(sp)
	mv ra t0
	mv t0 a0
	sw t0,128(sp)
	# %.SizeList.3 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,132(sp)
	lw t0 132(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,132(sp)
	lw t0 128(sp)
	lw t1 132(sp)
	add t0,t0,t1
	#%.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	sw t0,136(sp)
	# %.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	lw t1 136(sp)
	lw t0 124(sp)
	sw t0,0(t1)
	#  store i32 %.middle.85,i32* %.ArrayIdx.3
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
	# %.middle.86 = call i32* @_malloc_toInt(i32* %.SizeList.3,i32 1)
	lw t0 140(sp)
	sw t0,144(sp)
	# %.new.3 = bitcast i32* %.middle.86 to i32*
	lw t1 120(sp)
	lw t0 144(sp)
	sw t0,0(t1)
	#  store i32* %.new.3,i32** %.middle.84
	li t0 0
	sw t0,28(sp)
	#  store i32 0,i32* %i.2
	j .L19
	#br label %For_Cond.34
	
.L19:
	lw t0 28(sp)
	sw t0,148(sp)
	#  %.middle.89=load i32,i32* %i.2
	lw t0 20(sp)
	sw t0,152(sp)
	#  %.middle.90=load i32,i32* %alen.0
	lw t0 148(sp)
	lw t1 152(sp)
	slt t0 t0,t1
	#%.middle.88 = icmp slt i32 %.middle.89,%.middle.90
	sw t0,156(sp)
	# %.middle.88 = icmp slt i32 %.middle.89,%.middle.90
	lw t0 156(sp)
	bnez t0 .L20
	lw t0 156(sp)
	beqz t0 .L22
	#br i1 %.middle.88,label %For_Body.36,label %For_End.35
	
.L20:
	lw t0 12(sp)
	sw t0,160(sp)
	#  %tmp.1.2=load %struct.string*,%struct.string** %tmp.1
	lw t0 160(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.91 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	sw t0,164(sp)
	# %.middle.91 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	lw t1 164(sp)
	lw t0 0(t1)
	# %.middle.92=load i32*,i32** %.middle.91
	sw t0,168(sp)
	#  %.middle.92=load i32*,i32** %.middle.91
	lw t0 28(sp)
	sw t0,172(sp)
	#  %.middle.94=load i32,i32* %i.2
	lw t0 172(sp)
	sw t0,176(sp)
	lw t0 176(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,176(sp)
	lw t0 168(sp)
	lw t1 176(sp)
	add t0,t0,t1
	#%.middle.93 = getelementptr i32,i32* %.middle.92,i32 %.middle.94
	sw t0,180(sp)
	# %.middle.93 = getelementptr i32,i32* %.middle.92,i32 %.middle.94
	lw t1 180(sp)
	lw t0 0(t1)
	# %.middle.93.0=load i32,i32* %.middle.93
	sw t0,184(sp)
	#  %.middle.93.0=load i32,i32* %.middle.93
	lw t0 0(sp)
	sw t0,188(sp)
	#  %a_addr.2=load %struct.string*,%struct.string** %a_addr
	lw t0 188(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.95 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	sw t0,192(sp)
	# %.middle.95 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	lw t1 192(sp)
	lw t0 0(t1)
	# %.middle.96=load i32*,i32** %.middle.95
	sw t0,196(sp)
	#  %.middle.96=load i32*,i32** %.middle.95
	lw t0 28(sp)
	sw t0,200(sp)
	#  %.middle.98=load i32,i32* %i.2
	lw t0 200(sp)
	sw t0,204(sp)
	lw t0 204(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,204(sp)
	lw t0 196(sp)
	lw t1 204(sp)
	add t0,t0,t1
	#%.middle.97 = getelementptr i32,i32* %.middle.96,i32 %.middle.98
	sw t0,208(sp)
	# %.middle.97 = getelementptr i32,i32* %.middle.96,i32 %.middle.98
	lw t1 208(sp)
	lw t0 0(t1)
	# %.middle.97.0=load i32,i32* %.middle.97
	sw t0,212(sp)
	#  %.middle.97.0=load i32,i32* %.middle.97
	lw t1 208(sp)
	lw t0 0(t1)
	# %.middle.100=load i32,i32* %.middle.97
	sw t0,216(sp)
	#  %.middle.100=load i32,i32* %.middle.97
	lw t1 180(sp)
	lw t0 216(sp)
	sw t0,0(t1)
	#  store i32 %.middle.100,i32* %.middle.93
	j .L21
	#br label %For_Change.37
	
.L21:
	lw t0 28(sp)
	sw t0,220(sp)
	#  %.middle.101=load i32,i32* %i.2
	lw t0 220(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.102 = add i32 %.middle.101,1
	sw t0,224(sp)
	# %.middle.102 = add i32 %.middle.101,1
	lw t0 224(sp)
	sw t0,28(sp)
	#  store i32 %.middle.102,i32* %i.2
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
	#  %.middle.104=load i32,i32* %i.3
	lw t0 24(sp)
	sw t0,232(sp)
	#  %.middle.105=load i32,i32* %blen.0
	lw t0 228(sp)
	lw t1 232(sp)
	slt t0 t0,t1
	#%.middle.103 = icmp slt i32 %.middle.104,%.middle.105
	sw t0,236(sp)
	# %.middle.103 = icmp slt i32 %.middle.104,%.middle.105
	lw t0 236(sp)
	bnez t0 .L24
	lw t0 236(sp)
	beqz t0 .L26
	#br i1 %.middle.103,label %For_Body.40,label %For_End.39
	
.L24:
	lw t0 12(sp)
	sw t0,240(sp)
	#  %tmp.1.3=load %struct.string*,%struct.string** %tmp.1
	lw t0 240(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.106 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	sw t0,244(sp)
	# %.middle.106 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	lw t1 244(sp)
	lw t0 0(t1)
	# %.middle.107=load i32*,i32** %.middle.106
	sw t0,248(sp)
	#  %.middle.107=load i32*,i32** %.middle.106
	lw t0 32(sp)
	sw t0,252(sp)
	#  %.middle.109=load i32,i32* %i.3
	lw t0 20(sp)
	sw t0,256(sp)
	#  %.middle.110=load i32,i32* %alen.0
	lw t0 252(sp)
	lw t1 256(sp)
	add t0,t0,t1
	#%.middle.108 = add i32 %.middle.109,%.middle.110
	sw t0,260(sp)
	# %.middle.108 = add i32 %.middle.109,%.middle.110
	lw t0 260(sp)
	sw t0,264(sp)
	lw t0 264(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,264(sp)
	lw t0 248(sp)
	lw t1 264(sp)
	add t0,t0,t1
	#%.middle.111 = getelementptr i32,i32* %.middle.107,i32 %.middle.108
	sw t0,268(sp)
	# %.middle.111 = getelementptr i32,i32* %.middle.107,i32 %.middle.108
	lw t1 268(sp)
	lw t0 0(t1)
	# %.middle.111.0=load i32,i32* %.middle.111
	sw t0,272(sp)
	#  %.middle.111.0=load i32,i32* %.middle.111
	lw t0 4(sp)
	sw t0,276(sp)
	#  %b_addr.2=load %struct.string*,%struct.string** %b_addr
	lw t0 276(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.112 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	sw t0,280(sp)
	# %.middle.112 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	lw t1 280(sp)
	lw t0 0(t1)
	# %.middle.113=load i32*,i32** %.middle.112
	sw t0,284(sp)
	#  %.middle.113=load i32*,i32** %.middle.112
	lw t0 32(sp)
	sw t0,288(sp)
	#  %.middle.115=load i32,i32* %i.3
	lw t0 288(sp)
	sw t0,292(sp)
	lw t0 292(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,292(sp)
	lw t0 284(sp)
	lw t1 292(sp)
	add t0,t0,t1
	#%.middle.114 = getelementptr i32,i32* %.middle.113,i32 %.middle.115
	sw t0,296(sp)
	# %.middle.114 = getelementptr i32,i32* %.middle.113,i32 %.middle.115
	lw t1 296(sp)
	lw t0 0(t1)
	# %.middle.114.0=load i32,i32* %.middle.114
	sw t0,300(sp)
	#  %.middle.114.0=load i32,i32* %.middle.114
	lw t1 296(sp)
	lw t0 0(t1)
	# %.middle.117=load i32,i32* %.middle.114
	sw t0,304(sp)
	#  %.middle.117=load i32,i32* %.middle.114
	lw t1 268(sp)
	lw t0 304(sp)
	sw t0,0(t1)
	#  store i32 %.middle.117,i32* %.middle.111
	j .L25
	#br label %For_Change.41
	
.L25:
	lw t0 32(sp)
	sw t0,308(sp)
	#  %.middle.118=load i32,i32* %i.3
	lw t0 308(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.119 = add i32 %.middle.118,1
	sw t0,312(sp)
	# %.middle.119 = add i32 %.middle.118,1
	lw t0 312(sp)
	sw t0,32(sp)
	#  store i32 %.middle.119,i32* %i.3
	j .L23
	#br label %For_Cond.38
	
.L26:
	lw t0 12(sp)
	sw t0,316(sp)
	#  %.middle.120=load %struct.string*,%struct.string** %tmp.1
	lw t0 316(sp)
	sw t0,8(sp)
	#  store %struct.string* %.middle.120,%struct.string** %.retval.p
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
	#%.middle.121 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	sw t0,32(sp)
	# %.middle.121 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.122=load i32,i32* %.middle.121
	sw t0,36(sp)
	#  %.middle.122=load i32,i32* %.middle.121
	lw t0 36(sp)
	sw t0,12(sp)
	#  store i32 %.middle.122,i32* %len.0
	j .L28
	#br label %If_Cond.45
	
.L28:
	lw t0 0(sp)
	sw t0,40(sp)
	#  %a_addr.3=load %struct.string*,%struct.string** %a_addr
	lw t0 40(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.123 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	sw t0,44(sp)
	# %.middle.123 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	lw t0 4(sp)
	sw t0,48(sp)
	#  %b_addr.4=load %struct.string*,%struct.string** %b_addr
	lw t0 48(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.124 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	sw t0,52(sp)
	# %.middle.124 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	lw t1 44(sp)
	lw t0 0(t1)
	# %.middle.126=load i32,i32* %.middle.123
	sw t0,56(sp)
	#  %.middle.126=load i32,i32* %.middle.123
	lw t1 52(sp)
	lw t0 0(t1)
	# %.middle.127=load i32,i32* %.middle.124
	sw t0,60(sp)
	#  %.middle.127=load i32,i32* %.middle.124
	lw t0 56(sp)
	lw t1 60(sp)
	slt t0 t0,t1
	#%.middle.125 = icmp slt i32 %.middle.126,%.middle.127
	sw t0,64(sp)
	# %.middle.125 = icmp slt i32 %.middle.126,%.middle.127
	lw t0 64(sp)
	bnez t0 .L29
	lw t0 64(sp)
	beqz t0 .L30
	#br i1 %.middle.125,label %If_Then.46,label %If_Else.47
	
.L29:
	lw t0 0(sp)
	sw t0,68(sp)
	#  %a_addr.4=load %struct.string*,%struct.string** %a_addr
	lw t0 68(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.128 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	sw t0,72(sp)
	# %.middle.128 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	lw t1 72(sp)
	lw t0 0(t1)
	# %.middle.130=load i32,i32* %.middle.128
	sw t0,76(sp)
	#  %.middle.130=load i32,i32* %.middle.128
	lw t0 76(sp)
	sw t0,12(sp)
	#  store i32 %.middle.130,i32* %len.0
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
	#  %.middle.132=load i32,i32* %i.4
	lw t0 12(sp)
	sw t0,84(sp)
	#  %.middle.133=load i32,i32* %len.0
	lw t0 80(sp)
	lw t1 84(sp)
	slt t0 t0,t1
	#%.middle.131 = icmp slt i32 %.middle.132,%.middle.133
	sw t0,88(sp)
	# %.middle.131 = icmp slt i32 %.middle.132,%.middle.133
	lw t0 88(sp)
	bnez t0 .L33
	lw t0 88(sp)
	beqz t0 .L43
	#br i1 %.middle.131,label %For_Body.51,label %For_End.50
	
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
	#%.middle.134 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	sw t0,96(sp)
	# %.middle.134 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	lw t1 96(sp)
	lw t0 0(t1)
	# %.middle.135=load i32*,i32** %.middle.134
	sw t0,100(sp)
	#  %.middle.135=load i32*,i32** %.middle.134
	lw t0 16(sp)
	sw t0,104(sp)
	#  %.middle.137=load i32,i32* %i.4
	lw t0 104(sp)
	sw t0,108(sp)
	lw t0 108(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,108(sp)
	lw t0 100(sp)
	lw t1 108(sp)
	add t0,t0,t1
	#%.middle.136 = getelementptr i32,i32* %.middle.135,i32 %.middle.137
	sw t0,112(sp)
	# %.middle.136 = getelementptr i32,i32* %.middle.135,i32 %.middle.137
	lw t1 112(sp)
	lw t0 0(t1)
	# %.middle.136.0=load i32,i32* %.middle.136
	sw t0,116(sp)
	#  %.middle.136.0=load i32,i32* %.middle.136
	lw t0 4(sp)
	sw t0,120(sp)
	#  %b_addr.5=load %struct.string*,%struct.string** %b_addr
	lw t0 120(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.138 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	sw t0,124(sp)
	# %.middle.138 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	lw t1 124(sp)
	lw t0 0(t1)
	# %.middle.139=load i32*,i32** %.middle.138
	sw t0,128(sp)
	#  %.middle.139=load i32*,i32** %.middle.138
	lw t0 16(sp)
	sw t0,132(sp)
	#  %.middle.141=load i32,i32* %i.4
	lw t0 132(sp)
	sw t0,136(sp)
	lw t0 136(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,136(sp)
	lw t0 128(sp)
	lw t1 136(sp)
	add t0,t0,t1
	#%.middle.140 = getelementptr i32,i32* %.middle.139,i32 %.middle.141
	sw t0,140(sp)
	# %.middle.140 = getelementptr i32,i32* %.middle.139,i32 %.middle.141
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.140.0=load i32,i32* %.middle.140
	sw t0,144(sp)
	#  %.middle.140.0=load i32,i32* %.middle.140
	lw t1 112(sp)
	lw t0 0(t1)
	# %.middle.143=load i32,i32* %.middle.136
	sw t0,148(sp)
	#  %.middle.143=load i32,i32* %.middle.136
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.144=load i32,i32* %.middle.140
	sw t0,152(sp)
	#  %.middle.144=load i32,i32* %.middle.140
	lw t0 148(sp)
	lw t1 152(sp)
	slt t0 t0,t1
	#%.middle.142 = icmp slt i32 %.middle.143,%.middle.144
	sw t0,156(sp)
	# %.middle.142 = icmp slt i32 %.middle.143,%.middle.144
	lw t0 156(sp)
	bnez t0 .L35
	lw t0 156(sp)
	beqz t0 .L36
	#br i1 %.middle.142,label %If_Then.54,label %If_Else.55
	
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
	#%.middle.145 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	sw t0,168(sp)
	# %.middle.145 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	lw t1 168(sp)
	lw t0 0(t1)
	# %.middle.146=load i32*,i32** %.middle.145
	sw t0,172(sp)
	#  %.middle.146=load i32*,i32** %.middle.145
	lw t0 16(sp)
	sw t0,176(sp)
	#  %.middle.148=load i32,i32* %i.4
	lw t0 176(sp)
	sw t0,180(sp)
	lw t0 180(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,180(sp)
	lw t0 172(sp)
	lw t1 180(sp)
	add t0,t0,t1
	#%.middle.147 = getelementptr i32,i32* %.middle.146,i32 %.middle.148
	sw t0,184(sp)
	# %.middle.147 = getelementptr i32,i32* %.middle.146,i32 %.middle.148
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.147.0=load i32,i32* %.middle.147
	sw t0,188(sp)
	#  %.middle.147.0=load i32,i32* %.middle.147
	lw t0 4(sp)
	sw t0,192(sp)
	#  %b_addr.6=load %struct.string*,%struct.string** %b_addr
	lw t0 192(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.149 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	sw t0,196(sp)
	# %.middle.149 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	lw t1 196(sp)
	lw t0 0(t1)
	# %.middle.150=load i32*,i32** %.middle.149
	sw t0,200(sp)
	#  %.middle.150=load i32*,i32** %.middle.149
	lw t0 16(sp)
	sw t0,204(sp)
	#  %.middle.152=load i32,i32* %i.4
	lw t0 204(sp)
	sw t0,208(sp)
	lw t0 208(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,208(sp)
	lw t0 200(sp)
	lw t1 208(sp)
	add t0,t0,t1
	#%.middle.151 = getelementptr i32,i32* %.middle.150,i32 %.middle.152
	sw t0,212(sp)
	# %.middle.151 = getelementptr i32,i32* %.middle.150,i32 %.middle.152
	lw t1 212(sp)
	lw t0 0(t1)
	# %.middle.151.0=load i32,i32* %.middle.151
	sw t0,216(sp)
	#  %.middle.151.0=load i32,i32* %.middle.151
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.154=load i32,i32* %.middle.147
	sw t0,220(sp)
	#  %.middle.154=load i32,i32* %.middle.147
	lw t1 212(sp)
	lw t0 0(t1)
	# %.middle.155=load i32,i32* %.middle.151
	sw t0,224(sp)
	#  %.middle.155=load i32,i32* %.middle.151
	lw t0 224(sp)
	lw t1 220(sp)
	sub t0,t0,t1
	sw t0,228(sp)
	lw t0 228(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.153 = icmp sgt i32 %.middle.154,%.middle.155
	sw t0,228(sp)
	# %.middle.153 = icmp sgt i32 %.middle.154,%.middle.155
	lw t0 228(sp)
	bnez t0 .L39
	lw t0 228(sp)
	beqz t0 .L40
	#br i1 %.middle.153,label %If_Then.58,label %If_Else.59
	
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
	#  %.middle.156=load i32,i32* %i.4
	lw t0 236(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.157 = add i32 %.middle.156,1
	sw t0,240(sp)
	# %.middle.157 = add i32 %.middle.156,1
	lw t0 240(sp)
	sw t0,16(sp)
	#  store i32 %.middle.157,i32* %i.4
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
	#%.middle.158 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	sw t0,248(sp)
	# %.middle.158 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	lw t0 4(sp)
	sw t0,252(sp)
	#  %b_addr.7=load %struct.string*,%struct.string** %b_addr
	lw t0 252(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.159 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	sw t0,256(sp)
	# %.middle.159 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	lw t1 248(sp)
	lw t0 0(t1)
	# %.middle.161=load i32,i32* %.middle.158
	sw t0,260(sp)
	#  %.middle.161=load i32,i32* %.middle.158
	lw t1 256(sp)
	lw t0 0(t1)
	# %.middle.162=load i32,i32* %.middle.159
	sw t0,264(sp)
	#  %.middle.162=load i32,i32* %.middle.159
	lw t0 264(sp)
	lw t1 260(sp)
	sub t0,t0,t1
	sw t0,268(sp)
	lw t0 268(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.160 = icmp sgt i32 %.middle.161,%.middle.162
	sw t0,268(sp)
	# %.middle.160 = icmp sgt i32 %.middle.161,%.middle.162
	lw t0 268(sp)
	bnez t0 .L45
	lw t0 268(sp)
	beqz t0 .L46
	#br i1 %.middle.160,label %If_Then.62,label %If_Else.63
	
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
	#%.middle.163 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	sw t0,32(sp)
	# %.middle.163 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	lw t0 4(sp)
	sw t0,36(sp)
	#  %b_addr.8=load %struct.string*,%struct.string** %b_addr
	lw t0 36(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.164 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	sw t0,40(sp)
	# %.middle.164 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.166=load i32,i32* %.middle.163
	sw t0,44(sp)
	#  %.middle.166=load i32,i32* %.middle.163
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.167=load i32,i32* %.middle.164
	sw t0,48(sp)
	#  %.middle.167=load i32,i32* %.middle.164
	lw t0 44(sp)
	lw t1 48(sp)
	sub t0,t0,t1
	sw t0,52(sp)
	lw t0 52(sp)
	snez t0 t0
	#%.middle.165 = icmp ne i32 %.middle.166,%.middle.167
	sw t0,52(sp)
	# %.middle.165 = icmp ne i32 %.middle.166,%.middle.167
	lw t0 52(sp)
	bnez t0 .L50
	lw t0 52(sp)
	beqz t0 .L51
	#br i1 %.middle.165,label %If_Then.69,label %If_Else.70
	
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
	#%.middle.168 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	sw t0,64(sp)
	# %.middle.168 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	lw t1 64(sp)
	lw t0 0(t1)
	# %.middle.169=load i32,i32* %.middle.168
	sw t0,68(sp)
	#  %.middle.169=load i32,i32* %.middle.168
	lw t0 68(sp)
	sw t0,12(sp)
	#  store i32 %.middle.169,i32* %len.1
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %i.5
	j .L53
	#br label %For_Cond.72
	
.L53:
	lw t0 16(sp)
	sw t0,72(sp)
	#  %.middle.171=load i32,i32* %i.5
	lw t0 12(sp)
	sw t0,76(sp)
	#  %.middle.172=load i32,i32* %len.1
	lw t0 72(sp)
	lw t1 76(sp)
	slt t0 t0,t1
	#%.middle.170 = icmp slt i32 %.middle.171,%.middle.172
	sw t0,80(sp)
	# %.middle.170 = icmp slt i32 %.middle.171,%.middle.172
	lw t0 80(sp)
	bnez t0 .L54
	lw t0 80(sp)
	beqz t0 .L60
	#br i1 %.middle.170,label %For_Body.74,label %For_End.73
	
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
	#%.middle.173 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	sw t0,88(sp)
	# %.middle.173 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	lw t1 88(sp)
	lw t0 0(t1)
	# %.middle.174=load i32*,i32** %.middle.173
	sw t0,92(sp)
	#  %.middle.174=load i32*,i32** %.middle.173
	lw t0 16(sp)
	sw t0,96(sp)
	#  %.middle.176=load i32,i32* %i.5
	lw t0 96(sp)
	sw t0,100(sp)
	lw t0 100(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,100(sp)
	lw t0 92(sp)
	lw t1 100(sp)
	add t0,t0,t1
	#%.middle.175 = getelementptr i32,i32* %.middle.174,i32 %.middle.176
	sw t0,104(sp)
	# %.middle.175 = getelementptr i32,i32* %.middle.174,i32 %.middle.176
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.175.0=load i32,i32* %.middle.175
	sw t0,108(sp)
	#  %.middle.175.0=load i32,i32* %.middle.175
	lw t0 4(sp)
	sw t0,112(sp)
	#  %b_addr.9=load %struct.string*,%struct.string** %b_addr
	lw t0 112(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.177 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	sw t0,116(sp)
	# %.middle.177 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.178=load i32*,i32** %.middle.177
	sw t0,120(sp)
	#  %.middle.178=load i32*,i32** %.middle.177
	lw t0 16(sp)
	sw t0,124(sp)
	#  %.middle.180=load i32,i32* %i.5
	lw t0 124(sp)
	sw t0,128(sp)
	lw t0 128(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,128(sp)
	lw t0 120(sp)
	lw t1 128(sp)
	add t0,t0,t1
	#%.middle.179 = getelementptr i32,i32* %.middle.178,i32 %.middle.180
	sw t0,132(sp)
	# %.middle.179 = getelementptr i32,i32* %.middle.178,i32 %.middle.180
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.179.0=load i32,i32* %.middle.179
	sw t0,136(sp)
	#  %.middle.179.0=load i32,i32* %.middle.179
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.182=load i32,i32* %.middle.175
	sw t0,140(sp)
	#  %.middle.182=load i32,i32* %.middle.175
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.183=load i32,i32* %.middle.179
	sw t0,144(sp)
	#  %.middle.183=load i32,i32* %.middle.179
	lw t0 140(sp)
	lw t1 144(sp)
	sub t0,t0,t1
	sw t0,148(sp)
	lw t0 148(sp)
	snez t0 t0
	#%.middle.181 = icmp ne i32 %.middle.182,%.middle.183
	sw t0,148(sp)
	# %.middle.181 = icmp ne i32 %.middle.182,%.middle.183
	lw t0 148(sp)
	bnez t0 .L56
	lw t0 148(sp)
	beqz t0 .L57
	#br i1 %.middle.181,label %If_Then.77,label %If_Else.78
	
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
	#  %.middle.184=load i32,i32* %i.5
	lw t0 156(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.185 = add i32 %.middle.184,1
	sw t0,160(sp)
	# %.middle.185 = add i32 %.middle.184,1
	lw t0 160(sp)
	sw t0,16(sp)
	#  store i32 %.middle.185,i32* %i.5
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
	#%.middle.186 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	sw t0,32(sp)
	# %.middle.186 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	lw t0 4(sp)
	sw t0,36(sp)
	#  %b_addr.10=load %struct.string*,%struct.string** %b_addr
	lw t0 36(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.187 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	sw t0,40(sp)
	# %.middle.187 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.189=load i32,i32* %.middle.186
	sw t0,44(sp)
	#  %.middle.189=load i32,i32* %.middle.186
	lw t1 40(sp)
	lw t0 0(t1)
	# %.middle.190=load i32,i32* %.middle.187
	sw t0,48(sp)
	#  %.middle.190=load i32,i32* %.middle.187
	lw t0 44(sp)
	lw t1 48(sp)
	sub t0,t0,t1
	sw t0,52(sp)
	lw t0 52(sp)
	snez t0 t0
	#%.middle.188 = icmp ne i32 %.middle.189,%.middle.190
	sw t0,52(sp)
	# %.middle.188 = icmp ne i32 %.middle.189,%.middle.190
	lw t0 52(sp)
	bnez t0 .L63
	lw t0 52(sp)
	beqz t0 .L64
	#br i1 %.middle.188,label %If_Then.84,label %If_Else.85
	
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
	#%.middle.191 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	sw t0,64(sp)
	# %.middle.191 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	lw t1 64(sp)
	lw t0 0(t1)
	# %.middle.192=load i32,i32* %.middle.191
	sw t0,68(sp)
	#  %.middle.192=load i32,i32* %.middle.191
	lw t0 68(sp)
	sw t0,12(sp)
	#  store i32 %.middle.192,i32* %len.2
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %i.6
	j .L66
	#br label %For_Cond.87
	
.L66:
	lw t0 16(sp)
	sw t0,72(sp)
	#  %.middle.194=load i32,i32* %i.6
	lw t0 12(sp)
	sw t0,76(sp)
	#  %.middle.195=load i32,i32* %len.2
	lw t0 72(sp)
	lw t1 76(sp)
	slt t0 t0,t1
	#%.middle.193 = icmp slt i32 %.middle.194,%.middle.195
	sw t0,80(sp)
	# %.middle.193 = icmp slt i32 %.middle.194,%.middle.195
	lw t0 80(sp)
	bnez t0 .L67
	lw t0 80(sp)
	beqz t0 .L73
	#br i1 %.middle.193,label %For_Body.89,label %For_End.88
	
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
	#%.middle.196 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	sw t0,88(sp)
	# %.middle.196 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	lw t1 88(sp)
	lw t0 0(t1)
	# %.middle.197=load i32*,i32** %.middle.196
	sw t0,92(sp)
	#  %.middle.197=load i32*,i32** %.middle.196
	lw t0 16(sp)
	sw t0,96(sp)
	#  %.middle.199=load i32,i32* %i.6
	lw t0 96(sp)
	sw t0,100(sp)
	lw t0 100(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,100(sp)
	lw t0 92(sp)
	lw t1 100(sp)
	add t0,t0,t1
	#%.middle.198 = getelementptr i32,i32* %.middle.197,i32 %.middle.199
	sw t0,104(sp)
	# %.middle.198 = getelementptr i32,i32* %.middle.197,i32 %.middle.199
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.198.0=load i32,i32* %.middle.198
	sw t0,108(sp)
	#  %.middle.198.0=load i32,i32* %.middle.198
	lw t0 4(sp)
	sw t0,112(sp)
	#  %b_addr.11=load %struct.string*,%struct.string** %b_addr
	lw t0 112(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.200 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	sw t0,116(sp)
	# %.middle.200 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.201=load i32*,i32** %.middle.200
	sw t0,120(sp)
	#  %.middle.201=load i32*,i32** %.middle.200
	lw t0 16(sp)
	sw t0,124(sp)
	#  %.middle.203=load i32,i32* %i.6
	lw t0 124(sp)
	sw t0,128(sp)
	lw t0 128(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,128(sp)
	lw t0 120(sp)
	lw t1 128(sp)
	add t0,t0,t1
	#%.middle.202 = getelementptr i32,i32* %.middle.201,i32 %.middle.203
	sw t0,132(sp)
	# %.middle.202 = getelementptr i32,i32* %.middle.201,i32 %.middle.203
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.202.0=load i32,i32* %.middle.202
	sw t0,136(sp)
	#  %.middle.202.0=load i32,i32* %.middle.202
	lw t1 104(sp)
	lw t0 0(t1)
	# %.middle.205=load i32,i32* %.middle.198
	sw t0,140(sp)
	#  %.middle.205=load i32,i32* %.middle.198
	lw t1 132(sp)
	lw t0 0(t1)
	# %.middle.206=load i32,i32* %.middle.202
	sw t0,144(sp)
	#  %.middle.206=load i32,i32* %.middle.202
	lw t0 140(sp)
	lw t1 144(sp)
	sub t0,t0,t1
	sw t0,148(sp)
	lw t0 148(sp)
	snez t0 t0
	#%.middle.204 = icmp ne i32 %.middle.205,%.middle.206
	sw t0,148(sp)
	# %.middle.204 = icmp ne i32 %.middle.205,%.middle.206
	lw t0 148(sp)
	bnez t0 .L69
	lw t0 148(sp)
	beqz t0 .L70
	#br i1 %.middle.204,label %If_Then.92,label %If_Else.93
	
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
	#  %.middle.207=load i32,i32* %i.6
	lw t0 156(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.208 = add i32 %.middle.207,1
	sw t0,160(sp)
	# %.middle.208 = add i32 %.middle.207,1
	lw t0 160(sp)
	sw t0,16(sp)
	#  store i32 %.middle.208,i32* %i.6
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
	#  %.middle.209=load %struct.string*,%struct.string** %a_addr
	lw t0 4(sp)
	sw t0,32(sp)
	#  %.middle.210=load %struct.string*,%struct.string** %b_addr
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
	# %.Func_Return.0 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.209,%struct.string* %.middle.210)
	lw t0 36(sp)
	sw t0,40(sp)
	# %.FromBool.12 = zext i1 %.Func_Return.0 to i32
	lw t0 40(sp)
	sw t0,12(sp)
	#  store i32 %.FromBool.12,i32* %.Func.Return.p.0.0
	lw t0 0(sp)
	sw t0,44(sp)
	#  %.middle.211=load %struct.string*,%struct.string** %a_addr
	lw t0 4(sp)
	sw t0,48(sp)
	#  %.middle.212=load %struct.string*,%struct.string** %b_addr
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
	# %.Func_Return.1 = call i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %.middle.211,%struct.string* %.middle.212)
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
	#%.middle.214 = trunc i32 %.ToBool.2 to i1
	sw t0,64(sp)
	# %.middle.214 = trunc i32 %.ToBool.2 to i1
	lw t0 16(sp)
	sw t0,68(sp)
	#  %.ToBool.3=load i32,i32* %.Func.Return.p.1.0
	lw t0 68(sp)
	li t1 1
	and t0,t0,t1
	#%.middle.215 = trunc i32 %.ToBool.3 to i1
	sw t0,72(sp)
	# %.middle.215 = trunc i32 %.ToBool.3 to i1
	lw t0 64(sp)
	lw t1 72(sp)
	or t0,t0,t1
	#%.middle.213 = or i1 %.middle.214,%.middle.215
	sw t0,76(sp)
	# %.middle.213 = or i1 %.middle.214,%.middle.215
	lw t0 76(sp)
	sw t0,80(sp)
	# %.FromBool.14 = zext i1 %.middle.213 to i32
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
	#  %.middle.216=load %struct.string*,%struct.string** %a_addr
	lw t0 4(sp)
	sw t0,28(sp)
	#  %.middle.217=load %struct.string*,%struct.string** %b_addr
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
	# %.Func_Return.2 = call i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.216,%struct.string* %.middle.217)
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
	#%.middle.219 = trunc i32 %.ToBool.4 to i1
	sw t0,44(sp)
	# %.middle.219 = trunc i32 %.ToBool.4 to i1
	lw t0 44(sp)
	li t1 1
	xor t0,t0,t1
	#%.middle.218 = xor i1 %.middle.219,1
	sw t0,48(sp)
	# %.middle.218 = xor i1 %.middle.219,1
	lw t0 48(sp)
	sw t0,52(sp)
	# %.FromBool.16 = zext i1 %.middle.218 to i32
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
	#  %.middle.220=load %struct.string*,%struct.string** %a_addr
	lw t0 4(sp)
	sw t0,28(sp)
	#  %.middle.221=load %struct.string*,%struct.string** %b_addr
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
	# %.Func_Return.3 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.220,%struct.string* %.middle.221)
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
	#%.middle.223 = trunc i32 %.ToBool.5 to i1
	sw t0,44(sp)
	# %.middle.223 = trunc i32 %.ToBool.5 to i1
	lw t0 44(sp)
	li t1 1
	xor t0,t0,t1
	#%.middle.222 = xor i1 %.middle.223,1
	sw t0,48(sp)
	# %.middle.222 = xor i1 %.middle.223,1
	lw t0 48(sp)
	sw t0,52(sp)
	# %.FromBool.18 = zext i1 %.middle.222 to i32
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
	#%.middle.224 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 1
	sw t0,16(sp)
	# %.middle.224 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 1
	lw t1 16(sp)
	lw t0 0(t1)
	# %.middle.225=load i32*,i32** %.middle.224
	sw t0,20(sp)
	#  %.middle.225=load i32*,i32** %.middle.224
	lw t0 0(sp)
	sw t0,24(sp)
	#  %str_addr.1=load %struct.string*,%struct.string** %str_addr
	lw t0 24(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.226 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 0
	sw t0,28(sp)
	# %.middle.226 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 0
	lw t1 28(sp)
	lw t0 0(t1)
	# %.middle.227=load i32,i32* %.middle.226
	sw t0,32(sp)
	#  %.middle.227=load i32,i32* %.middle.226
	lw t0 20(sp)
	mv a0 t0
	lw t0 32(sp)
	mv a1 t0
	mv t0 ra
	sw t0,8(sp)
	call printf_no_collision_please
	lw t0 8(sp)
	mv ra t0
	#call void @printf_no_collision_please(i32* %.middle.225,i32 %.middle.227)
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
	# %.middle.230 = call i32* @_malloc(i32 8)
	lw t0 16(sp)
	sw t0,20(sp)
	# %.middle.229 = bitcast i32* %.middle.230 to %struct.string*
	j .L78
	#br label %.block.109
	
.L78:
	lw t0 0(sp)
	sw t0,24(sp)
	#  %.middle.228=load %struct.string*,%struct.string** %str_addr
	lw t0 24(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.print
	lw t0 12(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.228)
	lw t0 20(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.string.construct
	lw t0 12(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.229)
	lw t0 20(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.229,i32 0,i32 0
	sw t0,28(sp)
	# %.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.229,i32 0,i32 0
	lw t1 28(sp)
	li t0 1
	sw t0,0(t1)
	#  store i32 1,i32* %.TmpLen.0
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.229,i32 0,i32 1
	sw t0,32(sp)
	# %.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.229,i32 0,i32 1
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
	#  store %struct.string* %.middle.229,%struct.string** %.TmpString.0.0
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.middle.231=load %struct.string*,%struct.string** %.TmpString.0.0
	lw t0 44(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.print
	lw t0 12(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.231)
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
	# %.middle.234 = call i32* @_malloc(i32 8)
	lw t0 16(sp)
	sw t0,20(sp)
	# %.middle.233 = bitcast i32* %.middle.234 to %struct.string*
	j .L79
	#br label %.block.112
	
.L79:
	lw t0 0(sp)
	sw t0,24(sp)
	#  %.middle.232=load i32,i32* %num_addr
	lw t0 24(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call printInt
	lw t0 12(sp)
	mv ra t0
	#call void @printInt(i32 %.middle.232)
	lw t0 20(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.string.construct
	lw t0 12(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.233)
	lw t0 20(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpLen.1 = getelementptr %struct.string,%struct.string* %.middle.233,i32 0,i32 0
	sw t0,28(sp)
	# %.TmpLen.1 = getelementptr %struct.string,%struct.string* %.middle.233,i32 0,i32 0
	lw t1 28(sp)
	li t0 1
	sw t0,0(t1)
	#  store i32 1,i32* %.TmpLen.1
	lw t0 20(sp)
	li t1 4
	add t0,t0,t1
	#%.TmpContent.1 = getelementptr %struct.string,%struct.string* %.middle.233,i32 0,i32 1
	sw t0,32(sp)
	# %.TmpContent.1 = getelementptr %struct.string,%struct.string* %.middle.233,i32 0,i32 1
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
	#  store %struct.string* %.middle.233,%struct.string** %.TmpString.1.0
	lw t0 4(sp)
	sw t0,44(sp)
	#  %.middle.235=load %struct.string*,%struct.string** %.TmpString.1.0
	lw t0 44(sp)
	mv a0 t0
	mv t0 ra
	sw t0,12(sp)
	call .func.print
	lw t0 12(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.235)
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
	#%.middle.236 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.0,i32 0,i32 0
	sw t0,32(sp)
	# %.middle.236 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.0,i32 0,i32 0
	lw t1 32(sp)
	lw t0 0(t1)
	# %.middle.238=load i32,i32* %.middle.236
	sw t0,36(sp)
	#  %.middle.238=load i32,i32* %.middle.236
	lw t0 36(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,40(sp)
	lw t0 40(sp)
	seqz t0 t0
	#%.middle.237 = icmp eq i32 %.middle.238,0
	sw t0,40(sp)
	# %.middle.237 = icmp eq i32 %.middle.238,0
	lw t0 40(sp)
	bnez t0 .L82
	lw t0 40(sp)
	beqz t0 .L83
	#br i1 %.middle.237,label %If_Then.117,label %If_Else.118
	
.L82:
	lw t0 tmp_no_collision_plz.0
	sw t0,44(sp)
	#  %tmp_no_collision_plz.0.1=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	lw t0 44(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.239 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.1,i32 0,i32 1
	sw t0,48(sp)
	# %.middle.239 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.1,i32 0,i32 1
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,24(sp)
	call _malloc
	lw t0 24(sp)
	mv ra t0
	mv t0 a0
	sw t0,52(sp)
	# %.SizeList.4 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,56(sp)
	lw t0 56(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,56(sp)
	lw t0 52(sp)
	lw t1 56(sp)
	add t0,t0,t1
	#%.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	sw t0,60(sp)
	# %.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	lw t1 60(sp)
	li t0 20
	sw t0,0(t1)
	#  store i32 20,i32* %.ArrayIdx.4
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
	# %.middle.240 = call i32* @_malloc_toInt(i32* %.SizeList.4,i32 1)
	lw t0 64(sp)
	sw t0,68(sp)
	# %.new.4 = bitcast i32* %.middle.240 to i32*
	lw t1 48(sp)
	lw t0 68(sp)
	sw t0,0(t1)
	#  store i32* %.new.4,i32** %.middle.239
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
	#  %.middle.243=load i32,i32* %i_addr
	lw t0 76(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,80(sp)
	lw t0 80(sp)
	seqz t0 t0
	#%.middle.242 = icmp eq i32 %.middle.243,0
	sw t0,80(sp)
	# %.middle.242 = icmp eq i32 %.middle.243,0
	lw t0 80(sp)
	bnez t0 .L86
	lw t0 80(sp)
	beqz t0 .L87
	#br i1 %.middle.242,label %If_Then.121,label %If_Else.122
	
.L86:
	li t0 1
	sw t0,8(sp)
	#  store i32 1,i32* %cnt.0
	lw t0 a_no_collison_plz.0
	sw t0,84(sp)
	#  %.middle.245=load i32*,i32** @a_no_collison_plz.0
	li t0 0
	sw t0,88(sp)
	lw t0 88(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,88(sp)
	lw t0 84(sp)
	lw t1 88(sp)
	add t0,t0,t1
	#%.middle.246 = getelementptr i32,i32* %.middle.245,i32 0
	sw t0,92(sp)
	# %.middle.246 = getelementptr i32,i32* %.middle.245,i32 0
	lw t1 92(sp)
	lw t0 0(t1)
	# %.middle.246.0=load i32,i32* %.middle.246
	sw t0,96(sp)
	#  %.middle.246.0=load i32,i32* %.middle.246
	lw t1 92(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %.middle.246
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
	#  %.middle.249=load i32,i32* %i_addr
	lw t0 100(sp)
	li t1 0
	slt t0 t0,t1
	#%.middle.248 = icmp slt i32 %.middle.249,0
	sw t0,104(sp)
	# %.middle.248 = icmp slt i32 %.middle.249,0
	lw t0 104(sp)
	bnez t0 .L90
	lw t0 104(sp)
	beqz t0 .L91
	#br i1 %.middle.248,label %If_Then.125,label %If_Else.126
	
.L90:
	li t0 1
	sw t0,108(sp)
	# %.FromBool.20 = zext i1 1 to i32
	lw t0 108(sp)
	sw t0,12(sp)
	#  store i32 %.FromBool.20,i32* %fg.0
	lw t0 0(sp)
	sw t0,112(sp)
	#  %.middle.252=load i32,i32* %i_addr
	li t0 0
	lw t1 112(sp)
	sub t0,t0,t1
	#%.middle.251 = sub i32 0,%.middle.252
	sw t0,116(sp)
	# %.middle.251 = sub i32 0,%.middle.252
	lw t0 116(sp)
	sw t0,0(sp)
	#  store i32 %.middle.251,i32* %i_addr
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
	#  %.middle.255=load i32,i32* %i_addr
	lw t0 120(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,124(sp)
	lw t0 124(sp)
	snez t0 t0
	#%.middle.254 = icmp ne i32 %.middle.255,0
	sw t0,124(sp)
	# %.middle.254 = icmp ne i32 %.middle.255,0
	lw t0 124(sp)
	bnez t0 .L94
	lw t0 124(sp)
	beqz t0 .L95
	#br i1 %.middle.254,label %While_Body.129,label %While_End.130
	
.L94:
	lw t0 a_no_collison_plz.0
	sw t0,128(sp)
	#  %.middle.256=load i32*,i32** @a_no_collison_plz.0
	lw t0 8(sp)
	sw t0,132(sp)
	#  %.middle.258=load i32,i32* %cnt.0
	lw t0 132(sp)
	sw t0,136(sp)
	lw t0 136(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,136(sp)
	lw t0 128(sp)
	lw t1 136(sp)
	add t0,t0,t1
	#%.middle.257 = getelementptr i32,i32* %.middle.256,i32 %.middle.258
	sw t0,140(sp)
	# %.middle.257 = getelementptr i32,i32* %.middle.256,i32 %.middle.258
	lw t1 140(sp)
	lw t0 0(t1)
	# %.middle.257.0=load i32,i32* %.middle.257
	sw t0,144(sp)
	#  %.middle.257.0=load i32,i32* %.middle.257
	lw t0 0(sp)
	sw t0,148(sp)
	#  %.middle.260=load i32,i32* %i_addr
	lw t0 148(sp)
	li t1 10
	rem t0,t0,t1
	#%.middle.259 = srem i32 %.middle.260,10
	sw t0,152(sp)
	# %.middle.259 = srem i32 %.middle.260,10
	lw t1 140(sp)
	lw t0 152(sp)
	sw t0,0(t1)
	#  store i32 %.middle.259,i32* %.middle.257
	lw t0 0(sp)
	sw t0,156(sp)
	#  %.middle.263=load i32,i32* %i_addr
	lw t0 156(sp)
	li t1 10
	div t0,t0,t1
	#%.middle.262 = sdiv i32 %.middle.263,10
	sw t0,160(sp)
	# %.middle.262 = sdiv i32 %.middle.263,10
	lw t0 160(sp)
	sw t0,0(sp)
	#  store i32 %.middle.262,i32* %i_addr
	lw t0 8(sp)
	sw t0,164(sp)
	#  %.middle.265=load i32,i32* %cnt.0
	lw t0 164(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.266 = add i32 %.middle.265,1
	sw t0,168(sp)
	# %.middle.266 = add i32 %.middle.265,1
	lw t0 168(sp)
	sw t0,8(sp)
	#  store i32 %.middle.266,i32* %cnt.0
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
	#%.middle.267 = trunc i32 %.ToBool.6 to i1
	sw t0,176(sp)
	# %.middle.267 = trunc i32 %.ToBool.6 to i1
	lw t0 176(sp)
	bnez t0 .L97
	lw t0 176(sp)
	beqz t0 .L98
	#br i1 %.middle.267,label %If_Then.132,label %If_Else.133
	
.L97:
	lw t0 a_no_collison_plz.0
	sw t0,180(sp)
	#  %.middle.268=load i32*,i32** @a_no_collison_plz.0
	lw t0 8(sp)
	sw t0,184(sp)
	#  %.middle.270=load i32,i32* %cnt.0
	lw t0 184(sp)
	sw t0,188(sp)
	lw t0 188(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,188(sp)
	lw t0 180(sp)
	lw t1 188(sp)
	add t0,t0,t1
	#%.middle.269 = getelementptr i32,i32* %.middle.268,i32 %.middle.270
	sw t0,192(sp)
	# %.middle.269 = getelementptr i32,i32* %.middle.268,i32 %.middle.270
	lw t1 192(sp)
	lw t0 0(t1)
	# %.middle.269.0=load i32,i32* %.middle.269
	sw t0,196(sp)
	#  %.middle.269.0=load i32,i32* %.middle.269
	li t0 0
	li t1 3
	sub t0,t0,t1
	#%.middle.271 = sub i32 0,3
	sw t0,200(sp)
	# %.middle.271 = sub i32 0,3
	lw t1 192(sp)
	lw t0 200(sp)
	sw t0,0(t1)
	#  store i32 %.middle.271,i32* %.middle.269
	lw t0 8(sp)
	sw t0,204(sp)
	#  %.middle.273=load i32,i32* %cnt.0
	lw t0 204(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.274 = add i32 %.middle.273,1
	sw t0,208(sp)
	# %.middle.274 = add i32 %.middle.273,1
	lw t0 208(sp)
	sw t0,8(sp)
	#  store i32 %.middle.274,i32* %cnt.0
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
	#%.middle.275 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.2,i32 0,i32 0
	sw t0,216(sp)
	# %.middle.275 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.2,i32 0,i32 0
	lw t0 8(sp)
	sw t0,220(sp)
	#  %.middle.277=load i32,i32* %cnt.0
	lw t1 216(sp)
	lw t0 220(sp)
	sw t0,0(t1)
	#  store i32 %.middle.277,i32* %.middle.275
	li t0 0
	sw t0,16(sp)
	#  store i32 0,i32* %i.7
	j .L100
	#br label %For_Cond.135
	
.L100:
	lw t0 16(sp)
	sw t0,224(sp)
	#  %.middle.279=load i32,i32* %i.7
	lw t0 8(sp)
	sw t0,228(sp)
	#  %.middle.280=load i32,i32* %cnt.0
	lw t0 224(sp)
	lw t1 228(sp)
	slt t0 t0,t1
	#%.middle.278 = icmp slt i32 %.middle.279,%.middle.280
	sw t0,232(sp)
	# %.middle.278 = icmp slt i32 %.middle.279,%.middle.280
	lw t0 232(sp)
	bnez t0 .L101
	lw t0 232(sp)
	beqz t0 .L103
	#br i1 %.middle.278,label %For_Body.137,label %For_End.136
	
.L101:
	lw t0 tmp_no_collision_plz.0
	sw t0,236(sp)
	#  %tmp_no_collision_plz.0.3=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	lw t0 236(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.281 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.3,i32 0,i32 1
	sw t0,240(sp)
	# %.middle.281 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.3,i32 0,i32 1
	lw t1 240(sp)
	lw t0 0(t1)
	# %.middle.282=load i32*,i32** %.middle.281
	sw t0,244(sp)
	#  %.middle.282=load i32*,i32** %.middle.281
	lw t0 16(sp)
	sw t0,248(sp)
	#  %.middle.284=load i32,i32* %i.7
	lw t0 248(sp)
	sw t0,252(sp)
	lw t0 252(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,252(sp)
	lw t0 244(sp)
	lw t1 252(sp)
	add t0,t0,t1
	#%.middle.283 = getelementptr i32,i32* %.middle.282,i32 %.middle.284
	sw t0,256(sp)
	# %.middle.283 = getelementptr i32,i32* %.middle.282,i32 %.middle.284
	lw t1 256(sp)
	lw t0 0(t1)
	# %.middle.283.0=load i32,i32* %.middle.283
	sw t0,260(sp)
	#  %.middle.283.0=load i32,i32* %.middle.283
	lw t0 a_no_collison_plz.0
	sw t0,264(sp)
	#  %.middle.285=load i32*,i32** @a_no_collison_plz.0
	lw t0 8(sp)
	sw t0,268(sp)
	#  %.middle.287=load i32,i32* %cnt.0
	lw t0 16(sp)
	sw t0,272(sp)
	#  %.middle.288=load i32,i32* %i.7
	lw t0 268(sp)
	lw t1 272(sp)
	sub t0,t0,t1
	#%.middle.286 = sub i32 %.middle.287,%.middle.288
	sw t0,276(sp)
	# %.middle.286 = sub i32 %.middle.287,%.middle.288
	lw t0 276(sp)
	li t1 1
	sub t0,t0,t1
	#%.middle.289 = sub i32 %.middle.286,1
	sw t0,280(sp)
	# %.middle.289 = sub i32 %.middle.286,1
	lw t0 280(sp)
	sw t0,284(sp)
	lw t0 284(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,284(sp)
	lw t0 264(sp)
	lw t1 284(sp)
	add t0,t0,t1
	#%.middle.290 = getelementptr i32,i32* %.middle.285,i32 %.middle.289
	sw t0,288(sp)
	# %.middle.290 = getelementptr i32,i32* %.middle.285,i32 %.middle.289
	lw t1 288(sp)
	lw t0 0(t1)
	# %.middle.290.0=load i32,i32* %.middle.290
	sw t0,292(sp)
	#  %.middle.290.0=load i32,i32* %.middle.290
	lw t1 288(sp)
	lw t0 0(t1)
	# %.middle.292=load i32,i32* %.middle.290
	sw t0,296(sp)
	#  %.middle.292=load i32,i32* %.middle.290
	lw t0 296(sp)
	li t1 48
	add t0,t0,t1
	#%.middle.291 = add i32 %.middle.292,48
	sw t0,300(sp)
	# %.middle.291 = add i32 %.middle.292,48
	lw t1 256(sp)
	lw t0 300(sp)
	sw t0,0(t1)
	#  store i32 %.middle.291,i32* %.middle.283
	j .L102
	#br label %For_Change.138
	
.L102:
	lw t0 16(sp)
	sw t0,304(sp)
	#  %.middle.294=load i32,i32* %i.7
	lw t0 304(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.295 = add i32 %.middle.294,1
	sw t0,308(sp)
	# %.middle.295 = add i32 %.middle.294,1
	lw t0 308(sp)
	sw t0,16(sp)
	#  store i32 %.middle.295,i32* %i.7
	j .L100
	#br label %For_Cond.135
	
.L103:
	lw t0 tmp_no_collision_plz.0
	sw t0,312(sp)
	#  %.middle.296=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	lw t0 312(sp)
	sw t0,4(sp)
	#  store %struct.string* %.middle.296,%struct.string** %.retval.p
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
	# %.middle.298 = call i32* @_malloc(i32 2)
	lw t0 24(sp)
	sw t0,28(sp)
	# %.middle.297 = bitcast i32* %.middle.298 to %struct.string*
	lw t0 28(sp)
	mv a0 t0
	mv t0 ra
	sw t0,20(sp)
	call .func.string.construct
	lw t0 20(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.297)
	lw t0 28(sp)
	sw t0,4(sp)
	#  store %struct.string* %.middle.297,%struct.string** %tmp.2
	lw t0 4(sp)
	sw t0,32(sp)
	#  %tmp.2.0=load %struct.string*,%struct.string** %tmp.2
	lw t0 32(sp)
	li t1 4
	add t0,t0,t1
	#%.middle.299 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 1
	sw t0,36(sp)
	# %.middle.299 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 1
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
	#  %.middle.301=load i32*,i32** %.Func.Return.p.4.0
	lw t1 36(sp)
	lw t0 44(sp)
	sw t0,0(t1)
	#  store i32* %.middle.301,i32** %.middle.299
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
	#%.middle.303 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	sw t0,52(sp)
	# %.middle.303 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	lw t1 52(sp)
	lw t0 0(t1)
	# %.middle.304=load i32*,i32** %.middle.303
	sw t0,56(sp)
	#  %.middle.304=load i32*,i32** %.middle.303
	lw t0 12(sp)
	sw t0,60(sp)
	#  %.middle.306=load i32,i32* %cnt.1
	lw t0 60(sp)
	sw t0,64(sp)
	lw t0 64(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,64(sp)
	lw t0 56(sp)
	lw t1 64(sp)
	add t0,t0,t1
	#%.middle.305 = getelementptr i32,i32* %.middle.304,i32 %.middle.306
	sw t0,68(sp)
	# %.middle.305 = getelementptr i32,i32* %.middle.304,i32 %.middle.306
	lw t1 68(sp)
	lw t0 0(t1)
	# %.middle.305.0=load i32,i32* %.middle.305
	sw t0,72(sp)
	#  %.middle.305.0=load i32,i32* %.middle.305
	lw t1 68(sp)
	lw t0 0(t1)
	# %.middle.308=load i32,i32* %.middle.305
	sw t0,76(sp)
	#  %.middle.308=load i32,i32* %.middle.305
	lw t0 76(sp)
	li t1 0
	sub t0,t0,t1
	sw t0,80(sp)
	lw t0 80(sp)
	snez t0 t0
	#%.middle.307 = icmp ne i32 %.middle.308,0
	sw t0,80(sp)
	# %.middle.307 = icmp ne i32 %.middle.308,0
	lw t0 80(sp)
	bnez t0 .L106
	lw t0 80(sp)
	beqz t0 .L108
	#br i1 %.middle.307,label %For_Body.144,label %For_End.143
	
.L106:
	j .L107
	#br label %For_Change.145
	
.L107:
	lw t0 12(sp)
	sw t0,84(sp)
	#  %.middle.309=load i32,i32* %cnt.1
	lw t0 84(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.310 = add i32 %.middle.309,1
	sw t0,88(sp)
	# %.middle.310 = add i32 %.middle.309,1
	lw t0 88(sp)
	sw t0,12(sp)
	#  store i32 %.middle.310,i32* %cnt.1
	j .L105
	#br label %For_Cond.142
	
.L108:
	lw t0 4(sp)
	sw t0,92(sp)
	#  %tmp.2.2=load %struct.string*,%struct.string** %tmp.2
	lw t0 92(sp)
	li t1 0
	add t0,t0,t1
	#%.middle.311 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 0
	sw t0,96(sp)
	# %.middle.311 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 0
	lw t0 12(sp)
	sw t0,100(sp)
	#  %.middle.313=load i32,i32* %cnt.1
	lw t1 96(sp)
	lw t0 100(sp)
	sw t0,0(t1)
	#  store i32 %.middle.313,i32* %.middle.311
	lw t0 4(sp)
	sw t0,104(sp)
	#  %.middle.314=load %struct.string*,%struct.string** %tmp.2
	lw t0 104(sp)
	sw t0,0(sp)
	#  store %struct.string* %.middle.314,%struct.string** %.retval.p
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
	

    .globl main
main:


mv s0 sp
	addi sp,sp,-584
	mv t0 s0
	sw t0,32(sp)
	mv t0 ra
	sw t0,36(sp)
	# %.TmpString.2.0=alloca %struct.string*
	li t0 8
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call _malloc
	lw t0 36(sp)
	mv ra t0
	mv t0 a0
	sw t0,40(sp)
	# %.middle.374 = call i32* @_malloc(i32 8)
	lw t0 40(sp)
	sw t0,44(sp)
	# %.Func.Return.p.8.0=alloca %struct.string*
	j .L109
	#br label %.block.148
	
.L109:
	mv t0 ra
	sw t0,36(sp)
	call .init
	lw t0 36(sp)
	mv ra t0
	#call void @.init()
	li t0 1
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call _malloc
	lw t0 36(sp)
	mv ra t0
	mv t0 a0
	sw t0,48(sp)
	# %.SizeList.5 = call i32* @_malloc(i32 1)
	li t0 0
	sw t0,52(sp)
	lw t0 52(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,52(sp)
	lw t0 48(sp)
	lw t1 52(sp)
	add t0,t0,t1
	#%.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	sw t0,56(sp)
	# %.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	lw t1 56(sp)
	li t0 4
	sw t0,0(t1)
	#  store i32 4,i32* %.ArrayIdx.5
	lw t0 48(sp)
	mv a0 t0
	li t0 1
	mv a1 t0
	mv t0 ra
	sw t0,36(sp)
	call _malloc_toInt
	lw t0 36(sp)
	mv ra t0
	mv t0 a0
	sw t0,60(sp)
	# %.middle.315 = call i32* @_malloc_toInt(i32* %.SizeList.5,i32 1)
	lw t0 60(sp)
	sw t0,64(sp)
	# %.new.5 = bitcast i32* %.middle.315 to i32**
	lw t0 64(sp)
	sw t0,4(sp)
	#  store i32** %.new.5,i32*** %b.0
	lw t0 4(sp)
	sw t0,68(sp)
	#  %.middle.316=load i32**,i32*** %b.0
	li t0 0
	sw t0,72(sp)
	lw t0 72(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,72(sp)
	lw t0 68(sp)
	lw t1 72(sp)
	add t0,t0,t1
	#%.middle.317 = getelementptr i32*,i32** %.middle.316,i32 0
	sw t0,76(sp)
	# %.middle.317 = getelementptr i32*,i32** %.middle.316,i32 0
	lw t1 76(sp)
	lw t0 0(t1)
	# %.middle.317.0=load i32*,i32** %.middle.317
	sw t0,80(sp)
	#  %.middle.317.0=load i32*,i32** %.middle.317
	lw t0 a.0
	sw t0,84(sp)
	#  %.middle.319=load i32*,i32** @a.0
	lw t1 76(sp)
	lw t0 84(sp)
	sw t0,0(t1)
	#  store i32* %.middle.319,i32** %.middle.317
	lw t0 4(sp)
	sw t0,88(sp)
	#  %.middle.320=load i32**,i32*** %b.0
	li t0 1
	sw t0,92(sp)
	lw t0 92(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,92(sp)
	lw t0 88(sp)
	lw t1 92(sp)
	add t0,t0,t1
	#%.middle.321 = getelementptr i32*,i32** %.middle.320,i32 1
	sw t0,96(sp)
	# %.middle.321 = getelementptr i32*,i32** %.middle.320,i32 1
	lw t1 96(sp)
	lw t0 0(t1)
	# %.middle.321.0=load i32*,i32** %.middle.321
	sw t0,100(sp)
	#  %.middle.321.0=load i32*,i32** %.middle.321
	lw t0 a.0
	sw t0,104(sp)
	#  %.middle.323=load i32*,i32** @a.0
	lw t1 96(sp)
	lw t0 104(sp)
	sw t0,0(t1)
	#  store i32* %.middle.323,i32** %.middle.321
	lw t0 4(sp)
	sw t0,108(sp)
	#  %.middle.324=load i32**,i32*** %b.0
	li t0 2
	sw t0,112(sp)
	lw t0 112(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,112(sp)
	lw t0 108(sp)
	lw t1 112(sp)
	add t0,t0,t1
	#%.middle.325 = getelementptr i32*,i32** %.middle.324,i32 2
	sw t0,116(sp)
	# %.middle.325 = getelementptr i32*,i32** %.middle.324,i32 2
	lw t1 116(sp)
	lw t0 0(t1)
	# %.middle.325.0=load i32*,i32** %.middle.325
	sw t0,120(sp)
	#  %.middle.325.0=load i32*,i32** %.middle.325
	lw t0 a.0
	sw t0,124(sp)
	#  %.middle.327=load i32*,i32** @a.0
	lw t1 116(sp)
	lw t0 124(sp)
	sw t0,0(t1)
	#  store i32* %.middle.327,i32** %.middle.325
	lw t0 4(sp)
	sw t0,128(sp)
	#  %.middle.328=load i32**,i32*** %b.0
	li t0 3
	sw t0,132(sp)
	lw t0 132(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,132(sp)
	lw t0 128(sp)
	lw t1 132(sp)
	add t0,t0,t1
	#%.middle.329 = getelementptr i32*,i32** %.middle.328,i32 3
	sw t0,136(sp)
	# %.middle.329 = getelementptr i32*,i32** %.middle.328,i32 3
	lw t1 136(sp)
	lw t0 0(t1)
	# %.middle.329.0=load i32*,i32** %.middle.329
	sw t0,140(sp)
	#  %.middle.329.0=load i32*,i32** %.middle.329
	lw t0 a.0
	sw t0,144(sp)
	#  %.middle.331=load i32*,i32** @a.0
	lw t1 136(sp)
	lw t0 144(sp)
	sw t0,0(t1)
	#  store i32* %.middle.331,i32** %.middle.329
	lw t0 4(sp)
	sw t0,148(sp)
	#  %.middle.333=load i32**,i32*** %b.0
	lw t0 148(sp)
	sw t0,152(sp)
	# %.middle.332 = ptrtoint i32** %.middle.333 to i32
	lw t0 152(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.334 = sub i32 %.middle.332,4
	sw t0,156(sp)
	# %.middle.334 = sub i32 %.middle.332,4
	lw t0 156(sp)
	sw t0,160(sp)
	# %.middle.335 = inttoptr i32 %.middle.334 to i32*
	lw t1 160(sp)
	lw t0 0(t1)
	# %.middle.335.0=load i32,i32* %.middle.335
	sw t0,164(sp)
	#  %.middle.335.0=load i32,i32* %.middle.335
	lw t0 164(sp)
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call .func.toString
	lw t0 36(sp)
	mv ra t0
	mv t0 a0
	sw t0,168(sp)
	# %.Func_Return.5 = call %struct.string* @.func.toString(i32 %.middle.335.0)
	lw t0 168(sp)
	sw t0,12(sp)
	#  store %struct.string* %.Func_Return.5,%struct.string** %.Func.Return.p.5.0
	lw t0 12(sp)
	sw t0,172(sp)
	#  %.middle.336=load %struct.string*,%struct.string** %.Func.Return.p.5.0
	lw t0 172(sp)
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call .func.println
	lw t0 36(sp)
	mv ra t0
	#call void @.func.println(%struct.string* %.middle.336)
	li t0 0
	sw t0,8(sp)
	#  store i32 0,i32* %i.8
	j .L110
	#br label %For_Cond.149
	
.L110:
	lw t0 4(sp)
	sw t0,176(sp)
	#  %.middle.338=load i32**,i32*** %b.0
	li t0 0
	sw t0,180(sp)
	lw t0 180(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,180(sp)
	lw t0 176(sp)
	lw t1 180(sp)
	add t0,t0,t1
	#%.middle.339 = getelementptr i32*,i32** %.middle.338,i32 0
	sw t0,184(sp)
	# %.middle.339 = getelementptr i32*,i32** %.middle.338,i32 0
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.339.0=load i32*,i32** %.middle.339
	sw t0,188(sp)
	#  %.middle.339.0=load i32*,i32** %.middle.339
	lw t1 184(sp)
	lw t0 0(t1)
	# %.middle.341=load i32*,i32** %.middle.339
	sw t0,192(sp)
	#  %.middle.341=load i32*,i32** %.middle.339
	lw t0 192(sp)
	sw t0,196(sp)
	# %.middle.340 = ptrtoint i32* %.middle.341 to i32
	lw t0 196(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.342 = sub i32 %.middle.340,4
	sw t0,200(sp)
	# %.middle.342 = sub i32 %.middle.340,4
	lw t0 200(sp)
	sw t0,204(sp)
	# %.middle.343 = inttoptr i32 %.middle.342 to i32*
	lw t1 204(sp)
	lw t0 0(t1)
	# %.middle.343.0=load i32,i32* %.middle.343
	sw t0,208(sp)
	#  %.middle.343.0=load i32,i32* %.middle.343
	lw t0 8(sp)
	sw t0,212(sp)
	#  %.middle.345=load i32,i32* %i.8
	lw t0 212(sp)
	lw t1 208(sp)
	slt t0 t0,t1
	#%.middle.344 = icmp slt i32 %.middle.345,%.middle.343.0
	sw t0,216(sp)
	# %.middle.344 = icmp slt i32 %.middle.345,%.middle.343.0
	lw t0 216(sp)
	bnez t0 .L111
	lw t0 216(sp)
	beqz t0 .L113
	#br i1 %.middle.344,label %For_Body.151,label %For_End.150
	
.L111:
	lw t0 4(sp)
	sw t0,220(sp)
	#  %.middle.346=load i32**,i32*** %b.0
	li t0 0
	sw t0,224(sp)
	lw t0 224(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,224(sp)
	lw t0 220(sp)
	lw t1 224(sp)
	add t0,t0,t1
	#%.middle.347 = getelementptr i32*,i32** %.middle.346,i32 0
	sw t0,228(sp)
	# %.middle.347 = getelementptr i32*,i32** %.middle.346,i32 0
	lw t1 228(sp)
	lw t0 0(t1)
	# %.middle.347.0=load i32*,i32** %.middle.347
	sw t0,232(sp)
	#  %.middle.347.0=load i32*,i32** %.middle.347
	lw t0 8(sp)
	sw t0,236(sp)
	#  %.middle.349=load i32,i32* %i.8
	lw t0 236(sp)
	sw t0,240(sp)
	lw t0 240(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,240(sp)
	lw t0 232(sp)
	lw t1 240(sp)
	add t0,t0,t1
	#%.middle.348 = getelementptr i32,i32* %.middle.347.0,i32 %.middle.349
	sw t0,244(sp)
	# %.middle.348 = getelementptr i32,i32* %.middle.347.0,i32 %.middle.349
	lw t1 244(sp)
	lw t0 0(t1)
	# %.middle.348.0=load i32,i32* %.middle.348
	sw t0,248(sp)
	#  %.middle.348.0=load i32,i32* %.middle.348
	mv t0 ra
	sw t0,36(sp)
	call getInt
	lw t0 36(sp)
	mv ra t0
	mv t0 a0
	sw t0,252(sp)
	# %.Func_Return.6 = call i32 @getInt()
	lw t0 252(sp)
	sw t0,16(sp)
	#  store i32 %.Func_Return.6,i32* %.Func.Return.p.6.0
	lw t0 16(sp)
	sw t0,256(sp)
	#  %.middle.351=load i32,i32* %.Func.Return.p.6.0
	lw t1 244(sp)
	lw t0 256(sp)
	sw t0,0(t1)
	#  store i32 %.middle.351,i32* %.middle.348
	j .L112
	#br label %For_Change.152
	
.L112:
	lw t0 8(sp)
	sw t0,260(sp)
	#  %.middle.352=load i32,i32* %i.8
	lw t0 8(sp)
	sw t0,264(sp)
	#  %.middle.354=load i32,i32* %i.8
	lw t0 264(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.353 = add i32 %.middle.354,1
	sw t0,268(sp)
	# %.middle.353 = add i32 %.middle.354,1
	lw t0 268(sp)
	sw t0,8(sp)
	#  store i32 %.middle.353,i32* %i.8
	j .L110
	#br label %For_Cond.149
	
.L113:
	li t0 0
	sw t0,8(sp)
	#  store i32 0,i32* %i.8
	j .L114
	#br label %For_Cond.153
	
.L114:
	lw t0 4(sp)
	sw t0,272(sp)
	#  %.middle.356=load i32**,i32*** %b.0
	li t0 1
	sw t0,276(sp)
	lw t0 276(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,276(sp)
	lw t0 272(sp)
	lw t1 276(sp)
	add t0,t0,t1
	#%.middle.357 = getelementptr i32*,i32** %.middle.356,i32 1
	sw t0,280(sp)
	# %.middle.357 = getelementptr i32*,i32** %.middle.356,i32 1
	lw t1 280(sp)
	lw t0 0(t1)
	# %.middle.357.0=load i32*,i32** %.middle.357
	sw t0,284(sp)
	#  %.middle.357.0=load i32*,i32** %.middle.357
	lw t1 280(sp)
	lw t0 0(t1)
	# %.middle.359=load i32*,i32** %.middle.357
	sw t0,288(sp)
	#  %.middle.359=load i32*,i32** %.middle.357
	lw t0 288(sp)
	sw t0,292(sp)
	# %.middle.358 = ptrtoint i32* %.middle.359 to i32
	lw t0 292(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.360 = sub i32 %.middle.358,4
	sw t0,296(sp)
	# %.middle.360 = sub i32 %.middle.358,4
	lw t0 296(sp)
	sw t0,300(sp)
	# %.middle.361 = inttoptr i32 %.middle.360 to i32*
	lw t1 300(sp)
	lw t0 0(t1)
	# %.middle.361.0=load i32,i32* %.middle.361
	sw t0,304(sp)
	#  %.middle.361.0=load i32,i32* %.middle.361
	lw t0 8(sp)
	sw t0,308(sp)
	#  %.middle.363=load i32,i32* %i.8
	lw t0 308(sp)
	lw t1 304(sp)
	slt t0 t0,t1
	#%.middle.362 = icmp slt i32 %.middle.363,%.middle.361.0
	sw t0,312(sp)
	# %.middle.362 = icmp slt i32 %.middle.363,%.middle.361.0
	lw t0 312(sp)
	bnez t0 .L115
	lw t0 312(sp)
	beqz t0 .L117
	#br i1 %.middle.362,label %For_Body.155,label %For_End.154
	
.L115:
	lw t0 4(sp)
	sw t0,316(sp)
	#  %.middle.364=load i32**,i32*** %b.0
	li t0 1
	sw t0,320(sp)
	lw t0 320(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,320(sp)
	lw t0 316(sp)
	lw t1 320(sp)
	add t0,t0,t1
	#%.middle.365 = getelementptr i32*,i32** %.middle.364,i32 1
	sw t0,324(sp)
	# %.middle.365 = getelementptr i32*,i32** %.middle.364,i32 1
	lw t1 324(sp)
	lw t0 0(t1)
	# %.middle.365.0=load i32*,i32** %.middle.365
	sw t0,328(sp)
	#  %.middle.365.0=load i32*,i32** %.middle.365
	lw t0 8(sp)
	sw t0,332(sp)
	#  %.middle.367=load i32,i32* %i.8
	lw t0 332(sp)
	sw t0,336(sp)
	lw t0 336(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,336(sp)
	lw t0 328(sp)
	lw t1 336(sp)
	add t0,t0,t1
	#%.middle.366 = getelementptr i32,i32* %.middle.365.0,i32 %.middle.367
	sw t0,340(sp)
	# %.middle.366 = getelementptr i32,i32* %.middle.365.0,i32 %.middle.367
	lw t1 340(sp)
	lw t0 0(t1)
	# %.middle.366.0=load i32,i32* %.middle.366
	sw t0,344(sp)
	#  %.middle.366.0=load i32,i32* %.middle.366
	lw t1 340(sp)
	lw t0 0(t1)
	# %.middle.368=load i32,i32* %.middle.366
	sw t0,348(sp)
	#  %.middle.368=load i32,i32* %.middle.366
	lw t0 348(sp)
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call .func.toString
	lw t0 36(sp)
	mv ra t0
	mv t0 a0
	sw t0,352(sp)
	# %.Func_Return.7 = call %struct.string* @.func.toString(i32 %.middle.368)
	lw t0 352(sp)
	sw t0,20(sp)
	#  store %struct.string* %.Func_Return.7,%struct.string** %.Func.Return.p.7.0
	lw t0 20(sp)
	sw t0,356(sp)
	#  %.middle.369=load %struct.string*,%struct.string** %.Func.Return.p.7.0
	lw t0 356(sp)
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call .func.print
	lw t0 36(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.369)
	j .L116
	#br label %For_Change.156
	
.L116:
	lw t0 8(sp)
	sw t0,360(sp)
	#  %.middle.370=load i32,i32* %i.8
	lw t0 8(sp)
	sw t0,364(sp)
	#  %.middle.372=load i32,i32* %i.8
	lw t0 364(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.371 = add i32 %.middle.372,1
	sw t0,368(sp)
	# %.middle.371 = add i32 %.middle.372,1
	lw t0 368(sp)
	sw t0,8(sp)
	#  store i32 %.middle.371,i32* %i.8
	j .L114
	#br label %For_Cond.153
	
.L117:
	lw t0 44(sp)
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call .func.string.construct
	lw t0 36(sp)
	mv ra t0
	#call void @.func.string.construct(%struct.string* %.middle.373)
	lw t0 44(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpLen.2 = getelementptr %struct.string,%struct.string* %.middle.373,i32 0,i32 0
	sw t0,372(sp)
	# %.TmpLen.2 = getelementptr %struct.string,%struct.string* %.middle.373,i32 0,i32 0
	lw t1 372(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %.TmpLen.2
	lw t0 44(sp)
	li t1 4
	add t0,t0,t1
	#%.TmpContent.2 = getelementptr %struct.string,%struct.string* %.middle.373,i32 0,i32 1
	sw t0,376(sp)
	# %.TmpContent.2 = getelementptr %struct.string,%struct.string* %.middle.373,i32 0,i32 1
	la t0 .ConstantString.2
	sw t0,380(sp)
	lw t0 380(sp)
	li t1 0
	add t0,t0,t1
	#%.TmpConstRef.2 = getelementptr [0 x i32],[0 x i32]* @.ConstantString.2,i32 0,i32 0
	sw t0,384(sp)
	# %.TmpConstRef.2 = getelementptr [0 x i32],[0 x i32]* @.ConstantString.2,i32 0,i32 0
	lw t1 376(sp)
	lw t0 384(sp)
	sw t0,0(t1)
	#  store i32* %.TmpConstRef.2,i32** %.TmpContent.2
	lw t0 44(sp)
	sw t0,24(sp)
	#  store %struct.string* %.middle.373,%struct.string** %.TmpString.2.0
	lw t0 24(sp)
	sw t0,388(sp)
	#  %.middle.375=load %struct.string*,%struct.string** %.TmpString.2.0
	lw t0 388(sp)
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call .func.println
	lw t0 36(sp)
	mv ra t0
	#call void @.func.println(%struct.string* %.middle.375)
	li t0 0
	sw t0,8(sp)
	#  store i32 0,i32* %i.8
	j .L118
	#br label %For_Cond.157
	
.L118:
	lw t0 4(sp)
	sw t0,392(sp)
	#  %.middle.377=load i32**,i32*** %b.0
	li t0 2
	sw t0,396(sp)
	lw t0 396(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,396(sp)
	lw t0 392(sp)
	lw t1 396(sp)
	add t0,t0,t1
	#%.middle.378 = getelementptr i32*,i32** %.middle.377,i32 2
	sw t0,400(sp)
	# %.middle.378 = getelementptr i32*,i32** %.middle.377,i32 2
	lw t1 400(sp)
	lw t0 0(t1)
	# %.middle.378.0=load i32*,i32** %.middle.378
	sw t0,404(sp)
	#  %.middle.378.0=load i32*,i32** %.middle.378
	lw t1 400(sp)
	lw t0 0(t1)
	# %.middle.380=load i32*,i32** %.middle.378
	sw t0,408(sp)
	#  %.middle.380=load i32*,i32** %.middle.378
	lw t0 408(sp)
	sw t0,412(sp)
	# %.middle.379 = ptrtoint i32* %.middle.380 to i32
	lw t0 412(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.381 = sub i32 %.middle.379,4
	sw t0,416(sp)
	# %.middle.381 = sub i32 %.middle.379,4
	lw t0 416(sp)
	sw t0,420(sp)
	# %.middle.382 = inttoptr i32 %.middle.381 to i32*
	lw t1 420(sp)
	lw t0 0(t1)
	# %.middle.382.0=load i32,i32* %.middle.382
	sw t0,424(sp)
	#  %.middle.382.0=load i32,i32* %.middle.382
	lw t0 8(sp)
	sw t0,428(sp)
	#  %.middle.384=load i32,i32* %i.8
	lw t0 428(sp)
	lw t1 424(sp)
	slt t0 t0,t1
	#%.middle.383 = icmp slt i32 %.middle.384,%.middle.382.0
	sw t0,432(sp)
	# %.middle.383 = icmp slt i32 %.middle.384,%.middle.382.0
	lw t0 432(sp)
	bnez t0 .L119
	lw t0 432(sp)
	beqz t0 .L121
	#br i1 %.middle.383,label %For_Body.159,label %For_End.158
	
.L119:
	lw t0 4(sp)
	sw t0,436(sp)
	#  %.middle.385=load i32**,i32*** %b.0
	li t0 2
	sw t0,440(sp)
	lw t0 440(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,440(sp)
	lw t0 436(sp)
	lw t1 440(sp)
	add t0,t0,t1
	#%.middle.386 = getelementptr i32*,i32** %.middle.385,i32 2
	sw t0,444(sp)
	# %.middle.386 = getelementptr i32*,i32** %.middle.385,i32 2
	lw t1 444(sp)
	lw t0 0(t1)
	# %.middle.386.0=load i32*,i32** %.middle.386
	sw t0,448(sp)
	#  %.middle.386.0=load i32*,i32** %.middle.386
	lw t0 8(sp)
	sw t0,452(sp)
	#  %.middle.388=load i32,i32* %i.8
	lw t0 452(sp)
	sw t0,456(sp)
	lw t0 456(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,456(sp)
	lw t0 448(sp)
	lw t1 456(sp)
	add t0,t0,t1
	#%.middle.387 = getelementptr i32,i32* %.middle.386.0,i32 %.middle.388
	sw t0,460(sp)
	# %.middle.387 = getelementptr i32,i32* %.middle.386.0,i32 %.middle.388
	lw t1 460(sp)
	lw t0 0(t1)
	# %.middle.387.0=load i32,i32* %.middle.387
	sw t0,464(sp)
	#  %.middle.387.0=load i32,i32* %.middle.387
	lw t1 460(sp)
	li t0 0
	sw t0,0(t1)
	#  store i32 0,i32* %.middle.387
	j .L120
	#br label %For_Change.160
	
.L120:
	lw t0 8(sp)
	sw t0,468(sp)
	#  %.middle.390=load i32,i32* %i.8
	lw t0 8(sp)
	sw t0,472(sp)
	#  %.middle.392=load i32,i32* %i.8
	lw t0 472(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.391 = add i32 %.middle.392,1
	sw t0,476(sp)
	# %.middle.391 = add i32 %.middle.392,1
	lw t0 476(sp)
	sw t0,8(sp)
	#  store i32 %.middle.391,i32* %i.8
	j .L118
	#br label %For_Cond.157
	
.L121:
	li t0 0
	sw t0,8(sp)
	#  store i32 0,i32* %i.8
	j .L122
	#br label %For_Cond.161
	
.L122:
	lw t0 4(sp)
	sw t0,480(sp)
	#  %.middle.394=load i32**,i32*** %b.0
	li t0 3
	sw t0,484(sp)
	lw t0 484(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,484(sp)
	lw t0 480(sp)
	lw t1 484(sp)
	add t0,t0,t1
	#%.middle.395 = getelementptr i32*,i32** %.middle.394,i32 3
	sw t0,488(sp)
	# %.middle.395 = getelementptr i32*,i32** %.middle.394,i32 3
	lw t1 488(sp)
	lw t0 0(t1)
	# %.middle.395.0=load i32*,i32** %.middle.395
	sw t0,492(sp)
	#  %.middle.395.0=load i32*,i32** %.middle.395
	lw t1 488(sp)
	lw t0 0(t1)
	# %.middle.397=load i32*,i32** %.middle.395
	sw t0,496(sp)
	#  %.middle.397=load i32*,i32** %.middle.395
	lw t0 496(sp)
	sw t0,500(sp)
	# %.middle.396 = ptrtoint i32* %.middle.397 to i32
	lw t0 500(sp)
	li t1 4
	sub t0,t0,t1
	#%.middle.398 = sub i32 %.middle.396,4
	sw t0,504(sp)
	# %.middle.398 = sub i32 %.middle.396,4
	lw t0 504(sp)
	sw t0,508(sp)
	# %.middle.399 = inttoptr i32 %.middle.398 to i32*
	lw t1 508(sp)
	lw t0 0(t1)
	# %.middle.399.0=load i32,i32* %.middle.399
	sw t0,512(sp)
	#  %.middle.399.0=load i32,i32* %.middle.399
	lw t0 8(sp)
	sw t0,516(sp)
	#  %.middle.401=load i32,i32* %i.8
	lw t0 516(sp)
	lw t1 512(sp)
	slt t0 t0,t1
	#%.middle.400 = icmp slt i32 %.middle.401,%.middle.399.0
	sw t0,520(sp)
	# %.middle.400 = icmp slt i32 %.middle.401,%.middle.399.0
	lw t0 520(sp)
	bnez t0 .L123
	lw t0 520(sp)
	beqz t0 .L125
	#br i1 %.middle.400,label %For_Body.163,label %For_End.162
	
.L123:
	lw t0 4(sp)
	sw t0,524(sp)
	#  %.middle.402=load i32**,i32*** %b.0
	li t0 3
	sw t0,528(sp)
	lw t0 528(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,528(sp)
	lw t0 524(sp)
	lw t1 528(sp)
	add t0,t0,t1
	#%.middle.403 = getelementptr i32*,i32** %.middle.402,i32 3
	sw t0,532(sp)
	# %.middle.403 = getelementptr i32*,i32** %.middle.402,i32 3
	lw t1 532(sp)
	lw t0 0(t1)
	# %.middle.403.0=load i32*,i32** %.middle.403
	sw t0,536(sp)
	#  %.middle.403.0=load i32*,i32** %.middle.403
	lw t0 8(sp)
	sw t0,540(sp)
	#  %.middle.405=load i32,i32* %i.8
	lw t0 540(sp)
	sw t0,544(sp)
	lw t0 544(sp)
	li t1 2
	sll t0,t0,t1
	sw t0,544(sp)
	lw t0 536(sp)
	lw t1 544(sp)
	add t0,t0,t1
	#%.middle.404 = getelementptr i32,i32* %.middle.403.0,i32 %.middle.405
	sw t0,548(sp)
	# %.middle.404 = getelementptr i32,i32* %.middle.403.0,i32 %.middle.405
	lw t1 548(sp)
	lw t0 0(t1)
	# %.middle.404.0=load i32,i32* %.middle.404
	sw t0,552(sp)
	#  %.middle.404.0=load i32,i32* %.middle.404
	lw t1 548(sp)
	lw t0 0(t1)
	# %.middle.406=load i32,i32* %.middle.404
	sw t0,556(sp)
	#  %.middle.406=load i32,i32* %.middle.404
	lw t0 556(sp)
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call .func.toString
	lw t0 36(sp)
	mv ra t0
	mv t0 a0
	sw t0,560(sp)
	# %.Func_Return.8 = call %struct.string* @.func.toString(i32 %.middle.406)
	lw t0 560(sp)
	sw t0,28(sp)
	#  store %struct.string* %.Func_Return.8,%struct.string** %.Func.Return.p.8.0
	lw t0 28(sp)
	sw t0,564(sp)
	#  %.middle.407=load %struct.string*,%struct.string** %.Func.Return.p.8.0
	lw t0 564(sp)
	mv a0 t0
	mv t0 ra
	sw t0,36(sp)
	call .func.print
	lw t0 36(sp)
	mv ra t0
	#call void @.func.print(%struct.string* %.middle.407)
	j .L124
	#br label %For_Change.164
	
.L124:
	lw t0 8(sp)
	sw t0,568(sp)
	#  %.middle.408=load i32,i32* %i.8
	lw t0 8(sp)
	sw t0,572(sp)
	#  %.middle.410=load i32,i32* %i.8
	lw t0 572(sp)
	li t1 1
	add t0,t0,t1
	#%.middle.409 = add i32 %.middle.410,1
	sw t0,576(sp)
	# %.middle.409 = add i32 %.middle.410,1
	lw t0 576(sp)
	sw t0,8(sp)
	#  store i32 %.middle.409,i32* %i.8
	j .L122
	#br label %For_Cond.161
	
.L125:
	li t0 0
	sw t0,0(sp)
	#  store i32 0,i32* %.retval.p
	j main.Exit
	#br label %Exit.147
	
main.Exit:
	lw t0 32(sp)
	mv s0 t0
	lw t0 0(sp)
	sw t0,580(sp)
	#  %.retval=load i32,i32* %.retval.p
	lw t0 580(sp)
	mv a0 t0
	lw t0 36(sp)
	mv ra t0
	addi sp,sp,584
	ret
	#ret i32 %.retval
	

    .section data
    .type   a.0,@object
    .global a.0
a.0:
    .zero 4
    .size a.0,4

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
.ConstantString.0:
	.word 10
	
.section data
.ConstantString.1:
	.word 10
	
.section data
.ConstantString.2:
	
