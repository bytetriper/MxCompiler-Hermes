.text
    .globl .init
.init:


addi sp,sp,-4
	addi s10,sp,0
	addi s11,sp,4
	sw ra,0(s10)
	j .L0
	#br label %.block.3
	
.L0:
	li t0 10000000
	sw t0,INF.0,t6
	# store i32 10000000,i32* @INF.0
	j .init.Exit
	#br label %Exit.2
	
.init.Exit:
	lw ra 0(s10)
	addi sp,sp,4
	ret
	#ret void
	

    .globl .func.string.construct
.func.string.construct:


addi sp,sp,-16
	addi s10,sp,0
	addi s11,sp,16
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,16
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.string* %This,%struct.string** %This_addr
	j .L1
	#br label %.block.6
	
.L1:
	j .func.string.construct.Exit
	#br label %Exit.5
	
.func.string.construct.Exit:
	lw ra 0(s10)
	addi sp,sp,16
	ret
	#ret void
	

    .globl .func.string.length
.func.string.length:


addi sp,sp,-36
	addi s10,sp,0
	addi s11,sp,36
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,36
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.string* %This,%struct.string** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,36
	sw a0,16(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L2
	#br label %.block.9
	
.L2:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,20(s10)
	# %This_addr.0=load %struct.string*,%struct.string** %This_addr
	lw t0 20(s10)
	li t1 0
	add t0,t0,t1
	sw t0,24(s10)
	#%This_addr.len.0 = getelementptr %struct.string,%struct.string* %This_addr.0,i32 0,i32 0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.0=load i32,i32* %This_addr.len.0
	lw t0 28(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32 %.middle.0,i32* %.retval.p
	j .func.string.length.Exit
	#br label %Exit.8
	
.func.string.length.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 32(s10)
	lw ra 0(s10)
	addi sp,sp,36
	ret
	#ret i32 %.retval
	

    .globl .func.string.parseInt
.func.string.parseInt:


addi sp,sp,-216
	addi s10,sp,0
	addi s11,sp,216
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.string* %This,%struct.string** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,16(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,20(s10)
	#%ans.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,24(s10)
	#%i.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,28(s10)
	#%RV.0.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,32(s10)
	#%RV.1.0 = call i32* @_malloc(i32 1)
	j .L3
	#br label %.block.12
	
.L3:
	li t0 0
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 0,i32* %ans.0
	li t0 0
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.0
	j .L4
	#br label %For_Cond.13
	
.L4:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %This_addr.1=load %struct.string*,%struct.string** %This_addr
	lw t0 36(s10)
	li t1 0
	add t0,t0,t1
	sw t0,40(s10)
	#%This_addr.len.1 = getelementptr %struct.string,%struct.string* %This_addr.1,i32 0,i32 0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.2=load i32,i32* %i.0
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.3=load i32,i32* %This_addr.len.1
	lw t1 44(s10)
	lw t2 48(s10)
	slt t0 t1,t2
	sw t0,52(s10)
	#%.middle.1 = icmp slt i32 %.middle.2,%.middle.3
	li t0 0
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 0,i32* %RV.0.0
	lw t0 52(s10)
	bnez t0 .L5
	beqz t0 .L6
	#br i1 %.middle.1,label %binary_and_rv.17,label %binary_end.18
	
.L5:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %This_addr.2=load %struct.string*,%struct.string** %This_addr
	lw t0 56(s10)
	li t1 4
	add t0,t0,t1
	sw t0,60(s10)
	#%This_addr.content.0 = getelementptr %struct.string,%struct.string* %This_addr.2,i32 0,i32 1
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %.middle.4=load i32*,i32** %This_addr.content.0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.6=load i32,i32* %i.0
	lw t1 68(s10)
	lw t0 64(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,72(s10)
	#%.middle.5 = getelementptr i32,i32* %.middle.4,i32 %.middle.6
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.5.0=load i32,i32* %.middle.5
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %.middle.8=load i32,i32* %.middle.5
	lw t1 80(s10)
	li t2 47
	slt t0 t2,t1
	sw t0,84(s10)
	#%.middle.7 = icmp sgt i32 %.middle.8,47
	lw t0 84(s10)
	sw t0,88(s10)
	#%.FromBool.0 = zext i1 %.middle.7 to i32
	lw t0 88(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.0,i32* %RV.0.0
	j .L6
	#br label %binary_end.18
	
.L6:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %.ToBool.0=load i32,i32* %RV.0.0
	lw t1 92(s10)
	li t2 1
	and t0,t1,t2
	sw t0,96(s10)
	#%.middle.10 = trunc i32 %.ToBool.0 to i1
	lw t1 84(s10)
	lw t2 96(s10)
	and t0,t1,t2
	sw t0,100(s10)
	#%.middle.9 = and i1 %.middle.7,%.middle.10
	li t0 0
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 0,i32* %RV.1.0
	lw t0 100(s10)
	bnez t0 .L7
	beqz t0 .L8
	#br i1 %.middle.9,label %binary_and_rv.19,label %binary_end.20
	
.L7:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,104(s10)
	# %This_addr.3=load %struct.string*,%struct.string** %This_addr
	lw t0 104(s10)
	li t1 4
	add t0,t0,t1
	sw t0,108(s10)
	#%This_addr.content.1 = getelementptr %struct.string,%struct.string* %This_addr.3,i32 0,i32 1
	lw t1 108(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.11=load i32*,i32** %This_addr.content.1
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.13=load i32,i32* %i.0
	lw t1 116(s10)
	lw t0 112(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,120(s10)
	#%.middle.12 = getelementptr i32,i32* %.middle.11,i32 %.middle.13
	lw t1 120(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.middle.12.0=load i32,i32* %.middle.12
	lw t1 120(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %.middle.15=load i32,i32* %.middle.12
	lw t1 128(s10)
	li t2 58
	slt t0 t1,t2
	sw t0,132(s10)
	#%.middle.14 = icmp slt i32 %.middle.15,58
	lw t0 132(s10)
	sw t0,136(s10)
	#%.FromBool.1 = zext i1 %.middle.14 to i32
	lw t0 136(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.1,i32* %RV.1.0
	j .L8
	#br label %binary_end.20
	
.L8:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.ToBool.1=load i32,i32* %RV.1.0
	lw t1 140(s10)
	li t2 1
	and t0,t1,t2
	sw t0,144(s10)
	#%.middle.17 = trunc i32 %.ToBool.1 to i1
	lw t1 132(s10)
	lw t2 144(s10)
	and t0,t1,t2
	sw t0,148(s10)
	#%.middle.16 = and i1 %.middle.14,%.middle.17
	lw t0 148(s10)
	bnez t0 .L9
	beqz t0 .L11
	#br i1 %.middle.16,label %For_Body.15,label %For_End.14
	
.L9:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,152(s10)
	# %.middle.19=load i32,i32* %ans.0
	lw t1 152(s10)
	li t2 10
	mul t0,t1,t2
	sw t0,156(s10)
	#%.middle.18 = mul i32 %.middle.19,10
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %This_addr.4=load %struct.string*,%struct.string** %This_addr
	lw t0 160(s10)
	li t1 4
	add t0,t0,t1
	sw t0,164(s10)
	#%This_addr.content.2 = getelementptr %struct.string,%struct.string* %This_addr.4,i32 0,i32 1
	lw t1 164(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %.middle.20=load i32*,i32** %This_addr.content.2
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.middle.22=load i32,i32* %i.0
	lw t1 172(s10)
	lw t0 168(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,176(s10)
	#%.middle.21 = getelementptr i32,i32* %.middle.20,i32 %.middle.22
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %.middle.21.0=load i32,i32* %.middle.21
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.24=load i32,i32* %.middle.21
	lw t1 156(s10)
	lw t2 184(s10)
	add t0,t1,t2
	sw t0,188(s10)
	#%.middle.23 = add i32 %.middle.18,%.middle.24
	lw t1 188(s10)
	li t2 48
	sub t0,t1,t2
	sw t0,192(s10)
	#%.middle.25 = sub i32 %.middle.23,48
	lw t0 192(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %.middle.25,i32* %ans.0
	j .L10
	#br label %For_Change.16
	
.L10:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,196(s10)
	# %.middle.27=load i32,i32* %i.0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %.middle.29=load i32,i32* %i.0
	lw t1 200(s10)
	li t2 1
	add t0,t1,t2
	sw t0,204(s10)
	#%.middle.28 = add i32 %.middle.29,1
	lw t0 204(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %.middle.28,i32* %i.0
	j .L4
	#br label %For_Cond.13
	
.L11:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,208(s10)
	# %.middle.30=load i32,i32* %ans.0
	lw t0 208(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32 %.middle.30,i32* %.retval.p
	j .func.string.parseInt.Exit
	#br label %Exit.11
	
.func.string.parseInt.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,212(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 212(s10)
	lw ra 0(s10)
	addi sp,sp,216
	ret
	#ret i32 %.retval
	

    .globl .func.string.ord
.func.string.ord:


addi sp,sp,-60
	addi s10,sp,0
	addi s11,sp,60
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,60
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %This,%struct.string** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,60
	sw a0,20(s10)
	#%pos_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %pos,i32* %pos_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,60
	sw a0,24(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L12
	#br label %.block.23
	
.L12:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %This_addr.5=load %struct.string*,%struct.string** %This_addr
	lw t0 28(s10)
	li t1 4
	add t0,t0,t1
	sw t0,32(s10)
	#%This_addr.content.3 = getelementptr %struct.string,%struct.string* %This_addr.5,i32 0,i32 1
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %.middle.31=load i32*,i32** %This_addr.content.3
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.middle.33=load i32,i32* %pos_addr
	lw t1 40(s10)
	lw t0 36(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,44(s10)
	#%.middle.32 = getelementptr i32,i32* %.middle.31,i32 %.middle.33
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.32.0=load i32,i32* %.middle.32
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.middle.34=load i32,i32* %.middle.32
	lw t0 52(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %.middle.34,i32* %.retval.p
	j .func.string.ord.Exit
	#br label %Exit.22
	
.func.string.ord.Exit:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 56(s10)
	lw ra 0(s10)
	addi sp,sp,60
	ret
	#ret i32 %.retval
	

    .globl .func.string.substring
.func.string.substring:


addi sp,sp,-208
	addi s10,sp,0
	addi s11,sp,208
	sw ra,0(s10)
	sw a2,12(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,16(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.string* %This,%struct.string** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,24(s10)
	#%left_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %left,i32* %left_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,28(s10)
	#%right_addr = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %right,i32* %right_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,32(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 32(s10)
	sw t0,36(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,40(s10)
	#%.middle.35 = call i32* @_malloc(i32 1)
	lw t0 40(s10)
	sw t0,44(s10)
	#%tmp.0 = bitcast i32* %.middle.35 to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,48(s10)
	#%tmplen.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,52(s10)
	#%i.1 = call i32* @_malloc(i32 1)
	j .L13
	#br label %.block.26
	
.L13:
	li a0 2
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,56(s10)
	#%.middle.37 = call i32* @_malloc(i32 2)
	lw t0 56(s10)
	sw t0,60(s10)
	#%.middle.36 = bitcast i32* %.middle.37 to %struct.string*
	lw a0 60(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.36)
	addi s11,sp,208
	lw t0 60(s10)
	lw t1 44(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.36,%struct.string** %tmp.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %.middle.39=load i32,i32* %right_addr
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.40=load i32,i32* %left_addr
	lw t1 64(s10)
	lw t2 68(s10)
	sub t0,t1,t2
	sw t0,72(s10)
	#%.middle.38 = sub i32 %.middle.39,%.middle.40
	lw t0 72(s10)
	lw t1 48(s10)
	sw t0,0(t1)
	# store i32 %.middle.38,i32* %tmplen.0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %tmp.0.0=load %struct.string*,%struct.string** %tmp.0
	lw t0 76(s10)
	li t1 4
	add t0,t0,t1
	sw t0,80(s10)
	#%.middle.41 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,84(s10)
	# %.middle.42=load i32,i32* %tmplen.0
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,208
	sw a0,88(s10)
	#%.SizeList.0 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 88(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,92(s10)
	#%.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0,i32 0
	lw t0 84(s10)
	lw t1 92(s10)
	sw t0,0(t1)
	# store i32 %.middle.42,i32* %.ArrayIdx.0
	lw a0 88(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,208
	sw a0,96(s10)
	#%.middle.43 = call i32* @_malloc_toInt(i32* %.SizeList.0,i32 1)
	lw t0 96(s10)
	sw t0,100(s10)
	#%.new.0 = bitcast i32* %.middle.43 to i32*
	lw t0 100(s10)
	lw t1 80(s10)
	sw t0,0(t1)
	# store i32* %.new.0,i32** %.middle.41
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,104(s10)
	# %tmp.0.1=load %struct.string*,%struct.string** %tmp.0
	lw t0 104(s10)
	li t1 0
	add t0,t0,t1
	sw t0,108(s10)
	#%.middle.45 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.47=load i32,i32* %tmplen.0
	lw t0 112(s10)
	lw t1 108(s10)
	sw t0,0(t1)
	# store i32 %.middle.47,i32* %.middle.45
	li t0 0
	lw t1 52(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.1
	j .L14
	#br label %For_Cond.27
	
.L14:
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.49=load i32,i32* %i.1
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.50=load i32,i32* %tmplen.0
	lw t1 116(s10)
	lw t2 120(s10)
	slt t0 t1,t2
	sw t0,124(s10)
	#%.middle.48 = icmp slt i32 %.middle.49,%.middle.50
	lw t0 124(s10)
	bnez t0 .L15
	beqz t0 .L17
	#br i1 %.middle.48,label %For_Body.29,label %For_End.28
	
.L15:
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %tmp.0.2=load %struct.string*,%struct.string** %tmp.0
	lw t0 128(s10)
	li t1 4
	add t0,t0,t1
	sw t0,132(s10)
	#%.middle.51 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	lw t1 132(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %.middle.52=load i32*,i32** %.middle.51
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.54=load i32,i32* %i.1
	lw t1 140(s10)
	lw t0 136(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,144(s10)
	#%.middle.53 = getelementptr i32,i32* %.middle.52,i32 %.middle.54
	lw t1 144(s10)
	lw t0 0(t1)
	sw t0,148(s10)
	# %.middle.53.0=load i32,i32* %.middle.53
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,152(s10)
	# %This_addr.6=load %struct.string*,%struct.string** %This_addr
	lw t0 152(s10)
	li t1 4
	add t0,t0,t1
	sw t0,156(s10)
	#%This_addr.content.4 = getelementptr %struct.string,%struct.string* %This_addr.6,i32 0,i32 1
	lw t1 156(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %.middle.55=load i32*,i32** %This_addr.content.4
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,164(s10)
	# %.middle.57=load i32,i32* %left_addr
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %.middle.58=load i32,i32* %i.1
	lw t1 164(s10)
	lw t2 168(s10)
	add t0,t1,t2
	sw t0,172(s10)
	#%.middle.56 = add i32 %.middle.57,%.middle.58
	lw t1 172(s10)
	lw t0 160(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,176(s10)
	#%.middle.59 = getelementptr i32,i32* %.middle.55,i32 %.middle.56
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %.middle.59.0=load i32,i32* %.middle.59
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.61=load i32,i32* %.middle.59
	lw t0 184(s10)
	lw t1 144(s10)
	sw t0,0(t1)
	# store i32 %.middle.61,i32* %.middle.53
	j .L16
	#br label %For_Change.30
	
.L16:
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,188(s10)
	# %.middle.62=load i32,i32* %i.1
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,192(s10)
	# %.middle.64=load i32,i32* %i.1
	lw t1 192(s10)
	li t2 1
	add t0,t1,t2
	sw t0,196(s10)
	#%.middle.63 = add i32 %.middle.64,1
	lw t0 196(s10)
	lw t1 52(s10)
	sw t0,0(t1)
	# store i32 %.middle.63,i32* %i.1
	j .L14
	#br label %For_Cond.27
	
.L17:
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %.middle.65=load %struct.string*,%struct.string** %tmp.0
	lw t0 200(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.65,%struct.string** %.retval.p
	j .func.string.substring.Exit
	#br label %Exit.25
	
.func.string.substring.Exit:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,204(s10)
	# %.retval=load %struct.string*,%struct.string** %.retval.p
	lw a0 204(s10)
	lw ra 0(s10)
	addi sp,sp,208
	ret
	#ret %struct.string* %.retval
	

    .globl .func.Add_String_Together_No_Collision_Please
.func.Add_String_Together_No_Collision_Please:


addi sp,sp,-324
	addi s10,sp,0
	addi s11,sp,324
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,12(s10)
	#%a_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %a,%struct.string** %a_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,20(s10)
	#%b_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.string* %b,%struct.string** %b_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,28(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 28(s10)
	sw t0,32(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,36(s10)
	#%.middle.66 = call i32* @_malloc(i32 1)
	lw t0 36(s10)
	sw t0,40(s10)
	#%tmp.1 = bitcast i32* %.middle.66 to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,44(s10)
	#%tmplen.1 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,48(s10)
	#%alen.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,52(s10)
	#%blen.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,56(s10)
	#%i.2 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,60(s10)
	#%i.3 = call i32* @_malloc(i32 1)
	j .L18
	#br label %.block.33
	
.L18:
	li a0 2
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,64(s10)
	#%.middle.68 = call i32* @_malloc(i32 2)
	lw t0 64(s10)
	sw t0,68(s10)
	#%.middle.67 = bitcast i32* %.middle.68 to %struct.string*
	lw a0 68(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.67)
	addi s11,sp,324
	lw t0 68(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.67,%struct.string** %tmp.1
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %a_addr.0=load %struct.string*,%struct.string** %a_addr
	lw t0 72(s10)
	li t1 0
	add t0,t0,t1
	sw t0,76(s10)
	#%.middle.69 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %b_addr.0=load %struct.string*,%struct.string** %b_addr
	lw t0 80(s10)
	li t1 0
	add t0,t0,t1
	sw t0,84(s10)
	#%.middle.70 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.72=load i32,i32* %.middle.69
	lw t1 84(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %.middle.73=load i32,i32* %.middle.70
	lw t1 88(s10)
	lw t2 92(s10)
	add t0,t1,t2
	sw t0,96(s10)
	#%.middle.71 = add i32 %.middle.72,%.middle.73
	lw t0 96(s10)
	lw t1 44(s10)
	sw t0,0(t1)
	# store i32 %.middle.71,i32* %tmplen.1
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %a_addr.1=load %struct.string*,%struct.string** %a_addr
	lw t0 100(s10)
	li t1 0
	add t0,t0,t1
	sw t0,104(s10)
	#%.middle.74 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	lw t1 104(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.75=load i32,i32* %.middle.74
	lw t0 108(s10)
	lw t1 48(s10)
	sw t0,0(t1)
	# store i32 %.middle.75,i32* %alen.0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %b_addr.1=load %struct.string*,%struct.string** %b_addr
	lw t0 112(s10)
	li t1 0
	add t0,t0,t1
	sw t0,116(s10)
	#%.middle.76 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	lw t1 116(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.77=load i32,i32* %.middle.76
	lw t0 120(s10)
	lw t1 52(s10)
	sw t0,0(t1)
	# store i32 %.middle.77,i32* %blen.0
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %tmp.1.0=load %struct.string*,%struct.string** %tmp.1
	lw t0 124(s10)
	li t1 0
	add t0,t0,t1
	sw t0,128(s10)
	#%.middle.78 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,132(s10)
	# %.middle.80=load i32,i32* %tmplen.1
	lw t0 132(s10)
	lw t1 128(s10)
	sw t0,0(t1)
	# store i32 %.middle.80,i32* %.middle.78
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %tmp.1.1=load %struct.string*,%struct.string** %tmp.1
	lw t0 136(s10)
	li t1 4
	add t0,t0,t1
	sw t0,140(s10)
	#%.middle.81 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,144(s10)
	# %.middle.82=load i32,i32* %tmplen.1
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,324
	sw a0,148(s10)
	#%.SizeList.1 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 148(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,152(s10)
	#%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	lw t0 144(s10)
	lw t1 152(s10)
	sw t0,0(t1)
	# store i32 %.middle.82,i32* %.ArrayIdx.1
	lw a0 148(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,324
	sw a0,156(s10)
	#%.middle.83 = call i32* @_malloc_toInt(i32* %.SizeList.1,i32 1)
	lw t0 156(s10)
	sw t0,160(s10)
	#%.new.1 = bitcast i32* %.middle.83 to i32*
	lw t0 160(s10)
	lw t1 140(s10)
	sw t0,0(t1)
	# store i32* %.new.1,i32** %.middle.81
	li t0 0
	lw t1 56(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.2
	j .L19
	#br label %For_Cond.34
	
.L19:
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,164(s10)
	# %.middle.86=load i32,i32* %i.2
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %.middle.87=load i32,i32* %alen.0
	lw t1 164(s10)
	lw t2 168(s10)
	slt t0 t1,t2
	sw t0,172(s10)
	#%.middle.85 = icmp slt i32 %.middle.86,%.middle.87
	lw t0 172(s10)
	bnez t0 .L20
	beqz t0 .L22
	#br i1 %.middle.85,label %For_Body.36,label %For_End.35
	
.L20:
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,176(s10)
	# %tmp.1.2=load %struct.string*,%struct.string** %tmp.1
	lw t0 176(s10)
	li t1 4
	add t0,t0,t1
	sw t0,180(s10)
	#%.middle.88 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	lw t1 180(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.89=load i32*,i32** %.middle.88
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,188(s10)
	# %.middle.91=load i32,i32* %i.2
	lw t1 188(s10)
	lw t0 184(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,192(s10)
	#%.middle.90 = getelementptr i32,i32* %.middle.89,i32 %.middle.91
	lw t1 192(s10)
	lw t0 0(t1)
	sw t0,196(s10)
	# %.middle.90.0=load i32,i32* %.middle.90
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %a_addr.2=load %struct.string*,%struct.string** %a_addr
	lw t0 200(s10)
	li t1 4
	add t0,t0,t1
	sw t0,204(s10)
	#%.middle.92 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	lw t1 204(s10)
	lw t0 0(t1)
	sw t0,208(s10)
	# %.middle.93=load i32*,i32** %.middle.92
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,212(s10)
	# %.middle.95=load i32,i32* %i.2
	lw t1 212(s10)
	lw t0 208(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,216(s10)
	#%.middle.94 = getelementptr i32,i32* %.middle.93,i32 %.middle.95
	lw t1 216(s10)
	lw t0 0(t1)
	sw t0,220(s10)
	# %.middle.94.0=load i32,i32* %.middle.94
	lw t1 216(s10)
	lw t0 0(t1)
	sw t0,224(s10)
	# %.middle.97=load i32,i32* %.middle.94
	lw t0 224(s10)
	lw t1 192(s10)
	sw t0,0(t1)
	# store i32 %.middle.97,i32* %.middle.90
	j .L21
	#br label %For_Change.37
	
.L21:
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,228(s10)
	# %.middle.98=load i32,i32* %i.2
	lw t1 228(s10)
	li t2 1
	add t0,t1,t2
	sw t0,232(s10)
	#%.middle.99 = add i32 %.middle.98,1
	lw t0 232(s10)
	lw t1 56(s10)
	sw t0,0(t1)
	# store i32 %.middle.99,i32* %i.2
	j .L19
	#br label %For_Cond.34
	
.L22:
	li t0 0
	lw t1 60(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.3
	j .L23
	#br label %For_Cond.38
	
.L23:
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,236(s10)
	# %.middle.101=load i32,i32* %i.3
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,240(s10)
	# %.middle.102=load i32,i32* %blen.0
	lw t1 236(s10)
	lw t2 240(s10)
	slt t0 t1,t2
	sw t0,244(s10)
	#%.middle.100 = icmp slt i32 %.middle.101,%.middle.102
	lw t0 244(s10)
	bnez t0 .L24
	beqz t0 .L26
	#br i1 %.middle.100,label %For_Body.40,label %For_End.39
	
.L24:
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,248(s10)
	# %tmp.1.3=load %struct.string*,%struct.string** %tmp.1
	lw t0 248(s10)
	li t1 4
	add t0,t0,t1
	sw t0,252(s10)
	#%.middle.103 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	lw t1 252(s10)
	lw t0 0(t1)
	sw t0,256(s10)
	# %.middle.104=load i32*,i32** %.middle.103
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,260(s10)
	# %.middle.106=load i32,i32* %i.3
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,264(s10)
	# %.middle.107=load i32,i32* %alen.0
	lw t1 260(s10)
	lw t2 264(s10)
	add t0,t1,t2
	sw t0,268(s10)
	#%.middle.105 = add i32 %.middle.106,%.middle.107
	lw t1 268(s10)
	lw t0 256(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,272(s10)
	#%.middle.108 = getelementptr i32,i32* %.middle.104,i32 %.middle.105
	lw t1 272(s10)
	lw t0 0(t1)
	sw t0,276(s10)
	# %.middle.108.0=load i32,i32* %.middle.108
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,280(s10)
	# %b_addr.2=load %struct.string*,%struct.string** %b_addr
	lw t0 280(s10)
	li t1 4
	add t0,t0,t1
	sw t0,284(s10)
	#%.middle.109 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	lw t1 284(s10)
	lw t0 0(t1)
	sw t0,288(s10)
	# %.middle.110=load i32*,i32** %.middle.109
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,292(s10)
	# %.middle.112=load i32,i32* %i.3
	lw t1 292(s10)
	lw t0 288(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,296(s10)
	#%.middle.111 = getelementptr i32,i32* %.middle.110,i32 %.middle.112
	lw t1 296(s10)
	lw t0 0(t1)
	sw t0,300(s10)
	# %.middle.111.0=load i32,i32* %.middle.111
	lw t1 296(s10)
	lw t0 0(t1)
	sw t0,304(s10)
	# %.middle.114=load i32,i32* %.middle.111
	lw t0 304(s10)
	lw t1 272(s10)
	sw t0,0(t1)
	# store i32 %.middle.114,i32* %.middle.108
	j .L25
	#br label %For_Change.41
	
.L25:
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,308(s10)
	# %.middle.115=load i32,i32* %i.3
	lw t1 308(s10)
	li t2 1
	add t0,t1,t2
	sw t0,312(s10)
	#%.middle.116 = add i32 %.middle.115,1
	lw t0 312(s10)
	lw t1 60(s10)
	sw t0,0(t1)
	# store i32 %.middle.116,i32* %i.3
	j .L23
	#br label %For_Cond.38
	
.L26:
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,316(s10)
	# %.middle.117=load %struct.string*,%struct.string** %tmp.1
	lw t0 316(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.117,%struct.string** %.retval.p
	j .func.Add_String_Together_No_Collision_Please.Exit
	#br label %Exit.32
	
.func.Add_String_Together_No_Collision_Please.Exit:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,320(s10)
	# %.retval=load %struct.string*,%struct.string** %.retval.p
	lw a0 320(s10)
	lw ra 0(s10)
	addi sp,sp,324
	ret
	#ret %struct.string* %.retval
	

    .globl .func.Less_Compare_String_Together_No_Collision_Please
.func.Less_Compare_String_Together_No_Collision_Please:


addi sp,sp,-284
	addi s10,sp,0
	addi s11,sp,284
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,284
	sw a0,12(s10)
	#%a_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %a,%struct.string** %a_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,284
	sw a0,20(s10)
	#%b_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.string* %b,%struct.string** %b_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,284
	sw a0,28(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,284
	sw a0,32(s10)
	#%len.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,284
	sw a0,36(s10)
	#%i.4 = call i32* @_malloc(i32 1)
	j .L27
	#br label %.block.44
	
.L27:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %b_addr.3=load %struct.string*,%struct.string** %b_addr
	lw t0 40(s10)
	li t1 0
	add t0,t0,t1
	sw t0,44(s10)
	#%.middle.118 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.119=load i32,i32* %.middle.118
	lw t0 48(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.middle.119,i32* %len.0
	j .L28
	#br label %If_Cond.45
	
.L28:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %a_addr.3=load %struct.string*,%struct.string** %a_addr
	lw t0 52(s10)
	li t1 0
	add t0,t0,t1
	sw t0,56(s10)
	#%.middle.120 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %b_addr.4=load %struct.string*,%struct.string** %b_addr
	lw t0 60(s10)
	li t1 0
	add t0,t0,t1
	sw t0,64(s10)
	#%.middle.121 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.123=load i32,i32* %.middle.120
	lw t1 64(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %.middle.124=load i32,i32* %.middle.121
	lw t1 68(s10)
	lw t2 72(s10)
	slt t0 t1,t2
	sw t0,76(s10)
	#%.middle.122 = icmp slt i32 %.middle.123,%.middle.124
	lw t0 76(s10)
	bnez t0 .L29
	beqz t0 .L30
	#br i1 %.middle.122,label %If_Then.46,label %If_Else.47
	
.L29:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %a_addr.4=load %struct.string*,%struct.string** %a_addr
	lw t0 80(s10)
	li t1 0
	add t0,t0,t1
	sw t0,84(s10)
	#%.middle.125 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	lw t1 84(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.127=load i32,i32* %.middle.125
	lw t0 88(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.middle.127,i32* %len.0
	j .L31
	#br label %If_End.48
	
.L30:
	j .L31
	#br label %If_End.48
	
.L31:
	li t0 0
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.4
	j .L32
	#br label %For_Cond.49
	
.L32:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %.middle.129=load i32,i32* %i.4
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,96(s10)
	# %.middle.130=load i32,i32* %len.0
	lw t1 92(s10)
	lw t2 96(s10)
	slt t0 t1,t2
	sw t0,100(s10)
	#%.middle.128 = icmp slt i32 %.middle.129,%.middle.130
	lw t0 100(s10)
	bnez t0 .L33
	beqz t0 .L43
	#br i1 %.middle.128,label %For_Body.51,label %For_End.50
	
.L33:
	j .L34
	#br label %If_Cond.53
	
.L34:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,104(s10)
	# %a_addr.5=load %struct.string*,%struct.string** %a_addr
	lw t0 104(s10)
	li t1 4
	add t0,t0,t1
	sw t0,108(s10)
	#%.middle.131 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	lw t1 108(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.132=load i32*,i32** %.middle.131
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.134=load i32,i32* %i.4
	lw t1 116(s10)
	lw t0 112(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,120(s10)
	#%.middle.133 = getelementptr i32,i32* %.middle.132,i32 %.middle.134
	lw t1 120(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.middle.133.0=load i32,i32* %.middle.133
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %b_addr.5=load %struct.string*,%struct.string** %b_addr
	lw t0 128(s10)
	li t1 4
	add t0,t0,t1
	sw t0,132(s10)
	#%.middle.135 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	lw t1 132(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %.middle.136=load i32*,i32** %.middle.135
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.138=load i32,i32* %i.4
	lw t1 140(s10)
	lw t0 136(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,144(s10)
	#%.middle.137 = getelementptr i32,i32* %.middle.136,i32 %.middle.138
	lw t1 144(s10)
	lw t0 0(t1)
	sw t0,148(s10)
	# %.middle.137.0=load i32,i32* %.middle.137
	lw t1 120(s10)
	lw t0 0(t1)
	sw t0,152(s10)
	# %.middle.140=load i32,i32* %.middle.133
	lw t1 144(s10)
	lw t0 0(t1)
	sw t0,156(s10)
	# %.middle.141=load i32,i32* %.middle.137
	lw t1 152(s10)
	lw t2 156(s10)
	slt t0 t1,t2
	sw t0,160(s10)
	#%.middle.139 = icmp slt i32 %.middle.140,%.middle.141
	lw t0 160(s10)
	bnez t0 .L35
	beqz t0 .L36
	#br i1 %.middle.139,label %If_Then.54,label %If_Else.55
	
.L35:
	li t0 1
	sw t0,164(s10)
	#%.FromBool.2 = zext i1 1 to i32
	lw t0 164(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.2,i32* %.retval.p
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.L36:
	j .L37
	#br label %If_End.56
	
.L37:
	j .L38
	#br label %If_Cond.57
	
.L38:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %a_addr.6=load %struct.string*,%struct.string** %a_addr
	lw t0 168(s10)
	li t1 4
	add t0,t0,t1
	sw t0,172(s10)
	#%.middle.142 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	lw t1 172(s10)
	lw t0 0(t1)
	sw t0,176(s10)
	# %.middle.143=load i32*,i32** %.middle.142
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %.middle.145=load i32,i32* %i.4
	lw t1 180(s10)
	lw t0 176(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,184(s10)
	#%.middle.144 = getelementptr i32,i32* %.middle.143,i32 %.middle.145
	lw t1 184(s10)
	lw t0 0(t1)
	sw t0,188(s10)
	# %.middle.144.0=load i32,i32* %.middle.144
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,192(s10)
	# %b_addr.6=load %struct.string*,%struct.string** %b_addr
	lw t0 192(s10)
	li t1 4
	add t0,t0,t1
	sw t0,196(s10)
	#%.middle.146 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	lw t1 196(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %.middle.147=load i32*,i32** %.middle.146
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,204(s10)
	# %.middle.149=load i32,i32* %i.4
	lw t1 204(s10)
	lw t0 200(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,208(s10)
	#%.middle.148 = getelementptr i32,i32* %.middle.147,i32 %.middle.149
	lw t1 208(s10)
	lw t0 0(t1)
	sw t0,212(s10)
	# %.middle.148.0=load i32,i32* %.middle.148
	lw t1 184(s10)
	lw t0 0(t1)
	sw t0,216(s10)
	# %.middle.151=load i32,i32* %.middle.144
	lw t1 208(s10)
	lw t0 0(t1)
	sw t0,220(s10)
	# %.middle.152=load i32,i32* %.middle.148
	lw t1 216(s10)
	lw t2 220(s10)
	slt t0 t2,t1
	sw t0,224(s10)
	#%.middle.150 = icmp sgt i32 %.middle.151,%.middle.152
	lw t0 224(s10)
	bnez t0 .L39
	beqz t0 .L40
	#br i1 %.middle.150,label %If_Then.58,label %If_Else.59
	
.L39:
	li t0 0
	sw t0,228(s10)
	#%.FromBool.3 = zext i1 0 to i32
	lw t0 228(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.3,i32* %.retval.p
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.L40:
	j .L41
	#br label %If_End.60
	
.L41:
	j .L42
	#br label %For_Change.52
	
.L42:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,232(s10)
	# %.middle.153=load i32,i32* %i.4
	lw t1 232(s10)
	li t2 1
	add t0,t1,t2
	sw t0,236(s10)
	#%.middle.154 = add i32 %.middle.153,1
	lw t0 236(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %.middle.154,i32* %i.4
	j .L32
	#br label %For_Cond.49
	
.L43:
	j .L44
	#br label %If_Cond.61
	
.L44:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,240(s10)
	# %a_addr.7=load %struct.string*,%struct.string** %a_addr
	lw t0 240(s10)
	li t1 0
	add t0,t0,t1
	sw t0,244(s10)
	#%.middle.155 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,248(s10)
	# %b_addr.7=load %struct.string*,%struct.string** %b_addr
	lw t0 248(s10)
	li t1 0
	add t0,t0,t1
	sw t0,252(s10)
	#%.middle.156 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	lw t1 244(s10)
	lw t0 0(t1)
	sw t0,256(s10)
	# %.middle.158=load i32,i32* %.middle.155
	lw t1 252(s10)
	lw t0 0(t1)
	sw t0,260(s10)
	# %.middle.159=load i32,i32* %.middle.156
	lw t1 256(s10)
	lw t2 260(s10)
	slt t0 t2,t1
	sw t0,264(s10)
	#%.middle.157 = icmp sgt i32 %.middle.158,%.middle.159
	lw t0 264(s10)
	bnez t0 .L45
	beqz t0 .L46
	#br i1 %.middle.157,label %If_Then.62,label %If_Else.63
	
.L45:
	li t0 1
	sw t0,268(s10)
	#%.FromBool.4 = zext i1 1 to i32
	lw t0 268(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.4,i32* %.retval.p
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.L46:
	j .L47
	#br label %If_End.64
	
.L47:
	li t0 0
	sw t0,272(s10)
	#%.FromBool.5 = zext i1 0 to i32
	lw t0 272(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.5,i32* %.retval.p
	j .func.Less_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.43
	
.func.Less_Compare_String_Together_No_Collision_Please.Exit:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,276(s10)
	# %.retval.Tobool=load i32,i32* %.retval.p
	lw t1 276(s10)
	li t2 1
	and t0,t1,t2
	sw t0,280(s10)
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw a0 280(s10)
	lw ra 0(s10)
	addi sp,sp,284
	ret
	#ret i1 %.retval
	

    .globl .func.Equal_String_Together_No_Collision_Please
.func.Equal_String_Together_No_Collision_Please:


addi sp,sp,-180
	addi s10,sp,0
	addi s11,sp,180
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,12(s10)
	#%a_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %a,%struct.string** %a_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,20(s10)
	#%b_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.string* %b,%struct.string** %b_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,28(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,32(s10)
	#%len.1 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,36(s10)
	#%i.5 = call i32* @_malloc(i32 1)
	j .L48
	#br label %.block.67
	
.L48:
	j .L49
	#br label %If_Cond.68
	
.L49:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %a_addr.8=load %struct.string*,%struct.string** %a_addr
	lw t0 40(s10)
	li t1 0
	add t0,t0,t1
	sw t0,44(s10)
	#%.middle.160 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %b_addr.8=load %struct.string*,%struct.string** %b_addr
	lw t0 48(s10)
	li t1 0
	add t0,t0,t1
	sw t0,52(s10)
	#%.middle.161 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %.middle.163=load i32,i32* %.middle.160
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.164=load i32,i32* %.middle.161
	lw t1 56(s10)
	lw t2 60(s10)
	sub t1,t1,t2
	snez t0 t1
	sw t0,64(s10)
	#%.middle.162 = icmp ne i32 %.middle.163,%.middle.164
	lw t0 64(s10)
	bnez t0 .L50
	beqz t0 .L51
	#br i1 %.middle.162,label %If_Then.69,label %If_Else.70
	
.L50:
	li t0 0
	sw t0,68(s10)
	#%.FromBool.6 = zext i1 0 to i32
	lw t0 68(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.6,i32* %.retval.p
	j .func.Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.66
	
.L51:
	j .L52
	#br label %If_End.71
	
.L52:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %a_addr.9=load %struct.string*,%struct.string** %a_addr
	lw t0 72(s10)
	li t1 0
	add t0,t0,t1
	sw t0,76(s10)
	#%.middle.165 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %.middle.166=load i32,i32* %.middle.165
	lw t0 80(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.middle.166,i32* %len.1
	li t0 0
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.5
	j .L53
	#br label %For_Cond.72
	
.L53:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,84(s10)
	# %.middle.168=load i32,i32* %i.5
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.169=load i32,i32* %len.1
	lw t1 84(s10)
	lw t2 88(s10)
	slt t0 t1,t2
	sw t0,92(s10)
	#%.middle.167 = icmp slt i32 %.middle.168,%.middle.169
	lw t0 92(s10)
	bnez t0 .L54
	beqz t0 .L60
	#br i1 %.middle.167,label %For_Body.74,label %For_End.73
	
.L54:
	j .L55
	#br label %If_Cond.76
	
.L55:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,96(s10)
	# %a_addr.10=load %struct.string*,%struct.string** %a_addr
	lw t0 96(s10)
	li t1 4
	add t0,t0,t1
	sw t0,100(s10)
	#%.middle.170 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	lw t1 100(s10)
	lw t0 0(t1)
	sw t0,104(s10)
	# %.middle.171=load i32*,i32** %.middle.170
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.173=load i32,i32* %i.5
	lw t1 108(s10)
	lw t0 104(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,112(s10)
	#%.middle.172 = getelementptr i32,i32* %.middle.171,i32 %.middle.173
	lw t1 112(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.172.0=load i32,i32* %.middle.172
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %b_addr.9=load %struct.string*,%struct.string** %b_addr
	lw t0 120(s10)
	li t1 4
	add t0,t0,t1
	sw t0,124(s10)
	#%.middle.174 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	lw t1 124(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %.middle.175=load i32*,i32** %.middle.174
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,132(s10)
	# %.middle.177=load i32,i32* %i.5
	lw t1 132(s10)
	lw t0 128(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,136(s10)
	#%.middle.176 = getelementptr i32,i32* %.middle.175,i32 %.middle.177
	lw t1 136(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.176.0=load i32,i32* %.middle.176
	lw t1 112(s10)
	lw t0 0(t1)
	sw t0,144(s10)
	# %.middle.179=load i32,i32* %.middle.172
	lw t1 136(s10)
	lw t0 0(t1)
	sw t0,148(s10)
	# %.middle.180=load i32,i32* %.middle.176
	lw t1 144(s10)
	lw t2 148(s10)
	sub t1,t1,t2
	snez t0 t1
	sw t0,152(s10)
	#%.middle.178 = icmp ne i32 %.middle.179,%.middle.180
	lw t0 152(s10)
	bnez t0 .L56
	beqz t0 .L57
	#br i1 %.middle.178,label %If_Then.77,label %If_Else.78
	
.L56:
	li t0 0
	sw t0,156(s10)
	#%.FromBool.7 = zext i1 0 to i32
	lw t0 156(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.7,i32* %.retval.p
	j .func.Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.66
	
.L57:
	j .L58
	#br label %If_End.79
	
.L58:
	j .L59
	#br label %For_Change.75
	
.L59:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %.middle.181=load i32,i32* %i.5
	lw t1 160(s10)
	li t2 1
	add t0,t1,t2
	sw t0,164(s10)
	#%.middle.182 = add i32 %.middle.181,1
	lw t0 164(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %.middle.182,i32* %i.5
	j .L53
	#br label %For_Cond.72
	
.L60:
	li t0 1
	sw t0,168(s10)
	#%.FromBool.8 = zext i1 1 to i32
	lw t0 168(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.8,i32* %.retval.p
	j .func.Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.66
	
.func.Equal_String_Together_No_Collision_Please.Exit:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.retval.Tobool=load i32,i32* %.retval.p
	lw t1 172(s10)
	li t2 1
	and t0,t1,t2
	sw t0,176(s10)
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw a0 176(s10)
	lw ra 0(s10)
	addi sp,sp,180
	ret
	#ret i1 %.retval
	

    .globl .func.Not_Equal_String_Together_No_Collision_Please
.func.Not_Equal_String_Together_No_Collision_Please:


addi sp,sp,-180
	addi s10,sp,0
	addi s11,sp,180
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,12(s10)
	#%a_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %a,%struct.string** %a_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,20(s10)
	#%b_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.string* %b,%struct.string** %b_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,28(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,32(s10)
	#%len.2 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,180
	sw a0,36(s10)
	#%i.6 = call i32* @_malloc(i32 1)
	j .L61
	#br label %.block.82
	
.L61:
	j .L62
	#br label %If_Cond.83
	
.L62:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %a_addr.11=load %struct.string*,%struct.string** %a_addr
	lw t0 40(s10)
	li t1 0
	add t0,t0,t1
	sw t0,44(s10)
	#%.middle.183 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %b_addr.10=load %struct.string*,%struct.string** %b_addr
	lw t0 48(s10)
	li t1 0
	add t0,t0,t1
	sw t0,52(s10)
	#%.middle.184 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %.middle.186=load i32,i32* %.middle.183
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.187=load i32,i32* %.middle.184
	lw t1 56(s10)
	lw t2 60(s10)
	sub t1,t1,t2
	snez t0 t1
	sw t0,64(s10)
	#%.middle.185 = icmp ne i32 %.middle.186,%.middle.187
	lw t0 64(s10)
	bnez t0 .L63
	beqz t0 .L64
	#br i1 %.middle.185,label %If_Then.84,label %If_Else.85
	
.L63:
	li t0 1
	sw t0,68(s10)
	#%.FromBool.9 = zext i1 1 to i32
	lw t0 68(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.9,i32* %.retval.p
	j .func.Not_Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.81
	
.L64:
	j .L65
	#br label %If_End.86
	
.L65:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %a_addr.12=load %struct.string*,%struct.string** %a_addr
	lw t0 72(s10)
	li t1 0
	add t0,t0,t1
	sw t0,76(s10)
	#%.middle.188 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %.middle.189=load i32,i32* %.middle.188
	lw t0 80(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.middle.189,i32* %len.2
	li t0 0
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.6
	j .L66
	#br label %For_Cond.87
	
.L66:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,84(s10)
	# %.middle.191=load i32,i32* %i.6
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.192=load i32,i32* %len.2
	lw t1 84(s10)
	lw t2 88(s10)
	slt t0 t1,t2
	sw t0,92(s10)
	#%.middle.190 = icmp slt i32 %.middle.191,%.middle.192
	lw t0 92(s10)
	bnez t0 .L67
	beqz t0 .L73
	#br i1 %.middle.190,label %For_Body.89,label %For_End.88
	
.L67:
	j .L68
	#br label %If_Cond.91
	
.L68:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,96(s10)
	# %a_addr.13=load %struct.string*,%struct.string** %a_addr
	lw t0 96(s10)
	li t1 4
	add t0,t0,t1
	sw t0,100(s10)
	#%.middle.193 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	lw t1 100(s10)
	lw t0 0(t1)
	sw t0,104(s10)
	# %.middle.194=load i32*,i32** %.middle.193
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.196=load i32,i32* %i.6
	lw t1 108(s10)
	lw t0 104(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,112(s10)
	#%.middle.195 = getelementptr i32,i32* %.middle.194,i32 %.middle.196
	lw t1 112(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.195.0=load i32,i32* %.middle.195
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %b_addr.11=load %struct.string*,%struct.string** %b_addr
	lw t0 120(s10)
	li t1 4
	add t0,t0,t1
	sw t0,124(s10)
	#%.middle.197 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	lw t1 124(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %.middle.198=load i32*,i32** %.middle.197
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,132(s10)
	# %.middle.200=load i32,i32* %i.6
	lw t1 132(s10)
	lw t0 128(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,136(s10)
	#%.middle.199 = getelementptr i32,i32* %.middle.198,i32 %.middle.200
	lw t1 136(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.199.0=load i32,i32* %.middle.199
	lw t1 112(s10)
	lw t0 0(t1)
	sw t0,144(s10)
	# %.middle.202=load i32,i32* %.middle.195
	lw t1 136(s10)
	lw t0 0(t1)
	sw t0,148(s10)
	# %.middle.203=load i32,i32* %.middle.199
	lw t1 144(s10)
	lw t2 148(s10)
	sub t1,t1,t2
	snez t0 t1
	sw t0,152(s10)
	#%.middle.201 = icmp ne i32 %.middle.202,%.middle.203
	lw t0 152(s10)
	bnez t0 .L69
	beqz t0 .L70
	#br i1 %.middle.201,label %If_Then.92,label %If_Else.93
	
.L69:
	li t0 1
	sw t0,156(s10)
	#%.FromBool.10 = zext i1 1 to i32
	lw t0 156(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.10,i32* %.retval.p
	j .func.Not_Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.81
	
.L70:
	j .L71
	#br label %If_End.94
	
.L71:
	j .L72
	#br label %For_Change.90
	
.L72:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %.middle.204=load i32,i32* %i.6
	lw t1 160(s10)
	li t2 1
	add t0,t1,t2
	sw t0,164(s10)
	#%.middle.205 = add i32 %.middle.204,1
	lw t0 164(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %.middle.205,i32* %i.6
	j .L66
	#br label %For_Cond.87
	
.L73:
	li t0 0
	sw t0,168(s10)
	#%.FromBool.11 = zext i1 0 to i32
	lw t0 168(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.11,i32* %.retval.p
	j .func.Not_Equal_String_Together_No_Collision_Please.Exit
	#br label %Exit.81
	
.func.Not_Equal_String_Together_No_Collision_Please.Exit:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.retval.Tobool=load i32,i32* %.retval.p
	lw t1 172(s10)
	li t2 1
	and t0,t1,t2
	sw t0,176(s10)
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw a0 176(s10)
	lw ra 0(s10)
	addi sp,sp,180
	ret
	#ret i1 %.retval
	

    .globl .func.LE_Compare_String_Together_No_Collision_Please
.func.LE_Compare_String_Together_No_Collision_Please:


addi sp,sp,-104
	addi s10,sp,0
	addi s11,sp,104
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,104
	sw a0,12(s10)
	#%a_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %a,%struct.string** %a_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,104
	sw a0,20(s10)
	#%b_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.string* %b,%struct.string** %b_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,104
	sw a0,28(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,104
	sw a0,32(s10)
	#%.Func.Return.p.0.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,104
	sw a0,36(s10)
	#%.Func.Return.p.1.0 = call i32* @_malloc(i32 1)
	j .L74
	#br label %.block.97
	
.L74:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.middle.206=load %struct.string*,%struct.string** %a_addr
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.207=load %struct.string*,%struct.string** %b_addr
	lw a0 40(s10)
	lw a1 44(s10)
	call .func.Less_Compare_String_Together_No_Collision_Please
	addi s10,sp,0
	addi s11,sp,104
	sw a0,48(s10)
	#%.Func_Return.0 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.206,%struct.string* %.middle.207)
	lw t0 48(s10)
	sw t0,52(s10)
	#%.FromBool.12 = zext i1 %.Func_Return.0 to i32
	lw t0 52(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.12,i32* %.Func.Return.p.0.0
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %.middle.208=load %struct.string*,%struct.string** %a_addr
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.209=load %struct.string*,%struct.string** %b_addr
	lw a0 56(s10)
	lw a1 60(s10)
	call .func.Equal_String_Together_No_Collision_Please
	addi s10,sp,0
	addi s11,sp,104
	sw a0,64(s10)
	#%.Func_Return.1 = call i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %.middle.208,%struct.string* %.middle.209)
	lw t0 64(s10)
	sw t0,68(s10)
	#%.FromBool.13 = zext i1 %.Func_Return.1 to i32
	lw t0 68(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.13,i32* %.Func.Return.p.1.0
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %.ToBool.2=load i32,i32* %.Func.Return.p.0.0
	lw t1 72(s10)
	li t2 1
	and t0,t1,t2
	sw t0,76(s10)
	#%.middle.211 = trunc i32 %.ToBool.2 to i1
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %.ToBool.3=load i32,i32* %.Func.Return.p.1.0
	lw t1 80(s10)
	li t2 1
	and t0,t1,t2
	sw t0,84(s10)
	#%.middle.212 = trunc i32 %.ToBool.3 to i1
	lw t1 76(s10)
	lw t2 84(s10)
	or t0,t1,t2
	sw t0,88(s10)
	#%.middle.210 = or i1 %.middle.211,%.middle.212
	lw t0 88(s10)
	sw t0,92(s10)
	#%.FromBool.14 = zext i1 %.middle.210 to i32
	lw t0 92(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.14,i32* %.retval.p
	j .func.LE_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.96
	
.func.LE_Compare_String_Together_No_Collision_Please.Exit:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,96(s10)
	# %.retval.Tobool=load i32,i32* %.retval.p
	lw t1 96(s10)
	li t2 1
	and t0,t1,t2
	sw t0,100(s10)
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw a0 100(s10)
	lw ra 0(s10)
	addi sp,sp,104
	ret
	#ret i1 %.retval
	

    .globl .func.Greater_Compare_String_Together_No_Collision_Please
.func.Greater_Compare_String_Together_No_Collision_Please:


addi sp,sp,-76
	addi s10,sp,0
	addi s11,sp,76
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,12(s10)
	#%a_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %a,%struct.string** %a_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,20(s10)
	#%b_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.string* %b,%struct.string** %b_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,28(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,32(s10)
	#%.Func.Return.p.2.0 = call i32* @_malloc(i32 1)
	j .L75
	#br label %.block.100
	
.L75:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %.middle.213=load %struct.string*,%struct.string** %a_addr
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.middle.214=load %struct.string*,%struct.string** %b_addr
	lw a0 36(s10)
	lw a1 40(s10)
	call .func.LE_Compare_String_Together_No_Collision_Please
	addi s10,sp,0
	addi s11,sp,76
	sw a0,44(s10)
	#%.Func_Return.2 = call i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.213,%struct.string* %.middle.214)
	lw t0 44(s10)
	sw t0,48(s10)
	#%.FromBool.15 = zext i1 %.Func_Return.2 to i32
	lw t0 48(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.15,i32* %.Func.Return.p.2.0
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.ToBool.4=load i32,i32* %.Func.Return.p.2.0
	lw t1 52(s10)
	li t2 1
	and t0,t1,t2
	sw t0,56(s10)
	#%.middle.216 = trunc i32 %.ToBool.4 to i1
	lw t1 56(s10)
	li t2 1
	xor t0,t1,t2
	sw t0,60(s10)
	#%.middle.215 = xor i1 %.middle.216,1
	lw t0 60(s10)
	sw t0,64(s10)
	#%.FromBool.16 = zext i1 %.middle.215 to i32
	lw t0 64(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.16,i32* %.retval.p
	j .func.Greater_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.99
	
.func.Greater_Compare_String_Together_No_Collision_Please.Exit:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.retval.Tobool=load i32,i32* %.retval.p
	lw t1 68(s10)
	li t2 1
	and t0,t1,t2
	sw t0,72(s10)
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw a0 72(s10)
	lw ra 0(s10)
	addi sp,sp,76
	ret
	#ret i1 %.retval
	

    .globl .func.GE_Compare_String_Together_No_Collision_Please
.func.GE_Compare_String_Together_No_Collision_Please:


addi sp,sp,-76
	addi s10,sp,0
	addi s11,sp,76
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,12(s10)
	#%a_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %a,%struct.string** %a_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,20(s10)
	#%b_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.string* %b,%struct.string** %b_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,28(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,32(s10)
	#%.Func.Return.p.3.0 = call i32* @_malloc(i32 1)
	j .L76
	#br label %.block.103
	
.L76:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %.middle.217=load %struct.string*,%struct.string** %a_addr
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.middle.218=load %struct.string*,%struct.string** %b_addr
	lw a0 36(s10)
	lw a1 40(s10)
	call .func.Less_Compare_String_Together_No_Collision_Please
	addi s10,sp,0
	addi s11,sp,76
	sw a0,44(s10)
	#%.Func_Return.3 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.217,%struct.string* %.middle.218)
	lw t0 44(s10)
	sw t0,48(s10)
	#%.FromBool.17 = zext i1 %.Func_Return.3 to i32
	lw t0 48(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.17,i32* %.Func.Return.p.3.0
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.ToBool.5=load i32,i32* %.Func.Return.p.3.0
	lw t1 52(s10)
	li t2 1
	and t0,t1,t2
	sw t0,56(s10)
	#%.middle.220 = trunc i32 %.ToBool.5 to i1
	lw t1 56(s10)
	li t2 1
	xor t0,t1,t2
	sw t0,60(s10)
	#%.middle.219 = xor i1 %.middle.220,1
	lw t0 60(s10)
	sw t0,64(s10)
	#%.FromBool.18 = zext i1 %.middle.219 to i32
	lw t0 64(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.18,i32* %.retval.p
	j .func.GE_Compare_String_Together_No_Collision_Please.Exit
	#br label %Exit.102
	
.func.GE_Compare_String_Together_No_Collision_Please.Exit:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.retval.Tobool=load i32,i32* %.retval.p
	lw t1 68(s10)
	li t2 1
	and t0,t1,t2
	sw t0,72(s10)
	#%.retval = trunc i32 %.retval.Tobool to i1
	lw a0 72(s10)
	lw ra 0(s10)
	addi sp,sp,76
	ret
	#ret i1 %.retval
	

    .globl .func.print
.func.print:


addi sp,sp,-40
	addi s10,sp,0
	addi s11,sp,40
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,40
	sw a0,8(s10)
	#%str_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%str_addr = bitcast i32* %str_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.string* %str,%struct.string** %str_addr
	j .L77
	#br label %.block.106
	
.L77:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,16(s10)
	# %str_addr.0=load %struct.string*,%struct.string** %str_addr
	lw t0 16(s10)
	li t1 4
	add t0,t0,t1
	sw t0,20(s10)
	#%.middle.221 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 1
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,24(s10)
	# %.middle.222=load i32*,i32** %.middle.221
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %str_addr.1=load %struct.string*,%struct.string** %str_addr
	lw t0 28(s10)
	li t1 0
	add t0,t0,t1
	sw t0,32(s10)
	#%.middle.223 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 0
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %.middle.224=load i32,i32* %.middle.223
	lw a0 24(s10)
	lw a1 36(s10)
	call printf_no_collision_please
	addi s10,sp,0
	#call void @printf_no_collision_please(i32* %.middle.222,i32 %.middle.224)
	addi s11,sp,40
	j .func.print.Exit
	#br label %Exit.105
	
.func.print.Exit:
	lw ra 0(s10)
	addi sp,sp,40
	ret
	#ret void
	

    .globl .func.println
.func.println:


addi sp,sp,-52
	addi s10,sp,0
	addi s11,sp,52
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,8(s10)
	#%str_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%str_addr = bitcast i32* %str_addr_inttmp to %struct.string**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.string* %str,%struct.string** %str_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,16(s10)
	#%.middle.226 = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%.TmpString.0.0 = bitcast i32* %.middle.226 to %struct.string**
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,24(s10)
	#%.middle.228 = call i32* @_malloc(i32 8)
	lw t0 24(s10)
	sw t0,28(s10)
	#%.middle.227 = bitcast i32* %.middle.228 to %struct.string*
	j .L78
	#br label %.block.109
	
.L78:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.middle.225=load %struct.string*,%struct.string** %str_addr
	lw a0 32(s10)
	call .func.print
	addi s10,sp,0
	#call void @.func.print(%struct.string* %.middle.225)
	addi s11,sp,52
	lw a0 28(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.227)
	addi s11,sp,52
	lw t0 28(s10)
	li t1 0
	add t0,t0,t1
	sw t0,36(s10)
	#%.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.227,i32 0,i32 0
	li t0 1
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 1,i32* %.TmpLen.0
	lw t0 28(s10)
	li t1 4
	add t0,t0,t1
	sw t0,40(s10)
	#%.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.227,i32 0,i32 1
	la t0 .ConstantString.0
	li t1 0
	add t0,t0,t1
	sw t0,44(s10)
	#%.TmpConstRef.0 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.0,i32 0,i32 0
	lw t0 44(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store i32* %.TmpConstRef.0,i32** %.TmpContent.0
	lw t0 28(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.227,%struct.string** %.TmpString.0.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.229=load %struct.string*,%struct.string** %.TmpString.0.0
	lw a0 48(s10)
	call .func.print
	addi s10,sp,0
	#call void @.func.print(%struct.string* %.middle.229)
	addi s11,sp,52
	j .func.println.Exit
	#br label %Exit.108
	
.func.println.Exit:
	lw ra 0(s10)
	addi sp,sp,52
	ret
	#ret void
	

    .globl .func.printlnInt
.func.printlnInt:


addi sp,sp,-48
	addi s10,sp,0
	addi s11,sp,48
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,48
	sw a0,8(s10)
	#%num_addr = call i32* @_malloc(i32 1)
	lw t0 4(s10)
	lw t1 8(s10)
	sw t0,0(t1)
	# store i32 %num,i32* %num_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,48
	sw a0,12(s10)
	#%.middle.231 = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%.TmpString.1.0 = bitcast i32* %.middle.231 to %struct.string**
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,48
	sw a0,20(s10)
	#%.middle.233 = call i32* @_malloc(i32 8)
	lw t0 20(s10)
	sw t0,24(s10)
	#%.middle.232 = bitcast i32* %.middle.233 to %struct.string*
	j .L79
	#br label %.block.112
	
.L79:
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.230=load i32,i32* %num_addr
	lw a0 28(s10)
	call printInt
	addi s10,sp,0
	#call void @printInt(i32 %.middle.230)
	addi s11,sp,48
	lw a0 24(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.232)
	addi s11,sp,48
	lw t0 24(s10)
	li t1 0
	add t0,t0,t1
	sw t0,32(s10)
	#%.TmpLen.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 0
	li t0 1
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 1,i32* %.TmpLen.1
	lw t0 24(s10)
	li t1 4
	add t0,t0,t1
	sw t0,36(s10)
	#%.TmpContent.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 1
	la t0 .ConstantString.1
	li t1 0
	add t0,t0,t1
	sw t0,40(s10)
	#%.TmpConstRef.1 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.1,i32 0,i32 0
	lw t0 40(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32* %.TmpConstRef.1,i32** %.TmpContent.1
	lw t0 24(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.232,%struct.string** %.TmpString.1.0
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.234=load %struct.string*,%struct.string** %.TmpString.1.0
	lw a0 44(s10)
	call .func.print
	addi s10,sp,0
	#call void @.func.print(%struct.string* %.middle.234)
	addi s11,sp,48
	j .func.printlnInt.Exit
	#br label %Exit.111
	
.func.printlnInt.Exit:
	lw ra 0(s10)
	addi sp,sp,48
	ret
	#ret void
	

    .globl .func.toString
.func.toString:


addi sp,sp,-328
	addi s10,sp,0
	addi s11,sp,328
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,8(s10)
	#%i_addr = call i32* @_malloc(i32 1)
	lw t0 4(s10)
	lw t1 8(s10)
	sw t0,0(t1)
	# store i32 %i,i32* %i_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,12(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,20(s10)
	#%.middle.235 = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%a.0 = bitcast i32* %.middle.235 to i32**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,28(s10)
	#%cnt.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,32(s10)
	#%fg.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,36(s10)
	#%.middle.270 = call i32* @_malloc(i32 1)
	lw t0 36(s10)
	sw t0,40(s10)
	#%tmp.2 = bitcast i32* %.middle.270 to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,44(s10)
	#%i.7 = call i32* @_malloc(i32 1)
	j .L80
	#br label %.block.115
	
.L80:
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,48(s10)
	#%.SizeList.2 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 48(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,52(s10)
	#%.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	li t0 20
	lw t1 52(s10)
	sw t0,0(t1)
	# store i32 20,i32* %.ArrayIdx.2
	lw a0 48(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,328
	sw a0,56(s10)
	#%.middle.236 = call i32* @_malloc_toInt(i32* %.SizeList.2,i32 1)
	lw t0 56(s10)
	sw t0,60(s10)
	#%.new.2 = bitcast i32* %.middle.236 to i32*
	lw t0 60(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32* %.new.2,i32** %a.0
	li t0 0
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 0,i32* %cnt.0
	li t0 0
	sw t0,64(s10)
	#%.FromBool.19 = zext i1 0 to i32
	lw t0 64(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.19,i32* %fg.0
	j .L81
	#br label %If_Cond.116
	
.L81:
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.238=load i32,i32* %i_addr
	lw t1 68(s10)
	li t2 0
	sub t1,t1,t2
	seqz t0 t1
	sw t0,72(s10)
	#%.middle.237 = icmp eq i32 %.middle.238,0
	lw t0 72(s10)
	bnez t0 .L82
	beqz t0 .L83
	#br i1 %.middle.237,label %If_Then.117,label %If_Else.118
	
.L82:
	li t0 1
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 1,i32* %cnt.0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.240=load i32*,i32** %a.0
	li t1 0
	lw t0 76(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,80(s10)
	#%.middle.241 = getelementptr i32,i32* %.middle.240,i32 0
	lw t1 80(s10)
	lw t0 0(t1)
	sw t0,84(s10)
	# %.middle.241.0=load i32,i32* %.middle.241
	li t0 0
	lw t1 80(s10)
	sw t0,0(t1)
	# store i32 0,i32* %.middle.241
	j .L84
	#br label %If_End.119
	
.L83:
	j .L84
	#br label %If_End.119
	
.L84:
	j .L85
	#br label %If_Cond.120
	
.L85:
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.244=load i32,i32* %i_addr
	lw t1 88(s10)
	li t2 0
	slt t0 t1,t2
	sw t0,92(s10)
	#%.middle.243 = icmp slt i32 %.middle.244,0
	lw t0 92(s10)
	bnez t0 .L86
	beqz t0 .L87
	#br i1 %.middle.243,label %If_Then.121,label %If_Else.122
	
.L86:
	li t0 1
	sw t0,96(s10)
	#%.FromBool.20 = zext i1 1 to i32
	lw t0 96(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.20,i32* %fg.0
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %.middle.247=load i32,i32* %i_addr
	li t1 0
	lw t2 100(s10)
	sub t0,t1,t2
	sw t0,104(s10)
	#%.middle.246 = sub i32 0,%.middle.247
	lw t0 104(s10)
	lw t1 8(s10)
	sw t0,0(t1)
	# store i32 %.middle.246,i32* %i_addr
	j .L88
	#br label %If_End.123
	
.L87:
	j .L88
	#br label %If_End.123
	
.L88:
	j .L89
	#br label %While_Cond.124
	
.L89:
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.250=load i32,i32* %i_addr
	lw t1 108(s10)
	li t2 0
	sub t1,t1,t2
	snez t0 t1
	sw t0,112(s10)
	#%.middle.249 = icmp ne i32 %.middle.250,0
	lw t0 112(s10)
	bnez t0 .L90
	beqz t0 .L91
	#br i1 %.middle.249,label %While_Body.125,label %While_End.126
	
.L90:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.251=load i32*,i32** %a.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.253=load i32,i32* %cnt.0
	lw t1 120(s10)
	lw t0 116(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,124(s10)
	#%.middle.252 = getelementptr i32,i32* %.middle.251,i32 %.middle.253
	lw t1 124(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %.middle.252.0=load i32,i32* %.middle.252
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,132(s10)
	# %.middle.255=load i32,i32* %i_addr
	lw t1 132(s10)
	li t2 10
	rem t0,t1,t2
	sw t0,136(s10)
	#%.middle.254 = srem i32 %.middle.255,10
	lw t0 136(s10)
	lw t1 124(s10)
	sw t0,0(t1)
	# store i32 %.middle.254,i32* %.middle.252
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.258=load i32,i32* %i_addr
	lw t1 140(s10)
	li t2 10
	div t0,t1,t2
	sw t0,144(s10)
	#%.middle.257 = sdiv i32 %.middle.258,10
	lw t0 144(s10)
	lw t1 8(s10)
	sw t0,0(t1)
	# store i32 %.middle.257,i32* %i_addr
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,148(s10)
	# %.middle.260=load i32,i32* %cnt.0
	lw t1 148(s10)
	li t2 1
	add t0,t1,t2
	sw t0,152(s10)
	#%.middle.261 = add i32 %.middle.260,1
	lw t0 152(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.middle.261,i32* %cnt.0
	j .L89
	#br label %While_Cond.124
	
.L91:
	j .L92
	#br label %If_Cond.127
	
.L92:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,156(s10)
	# %.ToBool.6=load i32,i32* %fg.0
	lw t1 156(s10)
	li t2 1
	and t0,t1,t2
	sw t0,160(s10)
	#%.middle.262 = trunc i32 %.ToBool.6 to i1
	lw t0 160(s10)
	bnez t0 .L93
	beqz t0 .L94
	#br i1 %.middle.262,label %If_Then.128,label %If_Else.129
	
.L93:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,164(s10)
	# %.middle.263=load i32*,i32** %a.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %.middle.265=load i32,i32* %cnt.0
	lw t1 168(s10)
	lw t0 164(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,172(s10)
	#%.middle.264 = getelementptr i32,i32* %.middle.263,i32 %.middle.265
	lw t1 172(s10)
	lw t0 0(t1)
	sw t0,176(s10)
	# %.middle.264.0=load i32,i32* %.middle.264
	li t1 0
	li t2 3
	sub t0,t1,t2
	sw t0,180(s10)
	#%.middle.266 = sub i32 0,3
	lw t0 180(s10)
	lw t1 172(s10)
	sw t0,0(t1)
	# store i32 %.middle.266,i32* %.middle.264
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.268=load i32,i32* %cnt.0
	lw t1 184(s10)
	li t2 1
	add t0,t1,t2
	sw t0,188(s10)
	#%.middle.269 = add i32 %.middle.268,1
	lw t0 188(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.middle.269,i32* %cnt.0
	j .L95
	#br label %If_End.130
	
.L94:
	j .L95
	#br label %If_End.130
	
.L95:
	li a0 2
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,192(s10)
	#%.middle.272 = call i32* @_malloc(i32 2)
	lw t0 192(s10)
	sw t0,196(s10)
	#%.middle.271 = bitcast i32* %.middle.272 to %struct.string*
	lw a0 196(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.271)
	addi s11,sp,328
	lw t0 196(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.271,%struct.string** %tmp.2
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %tmp.2.0=load %struct.string*,%struct.string** %tmp.2
	lw t0 200(s10)
	li t1 0
	add t0,t0,t1
	sw t0,204(s10)
	#%.middle.273 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,208(s10)
	# %.middle.275=load i32,i32* %cnt.0
	lw t0 208(s10)
	lw t1 204(s10)
	sw t0,0(t1)
	# store i32 %.middle.275,i32* %.middle.273
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,212(s10)
	# %tmp.2.1=load %struct.string*,%struct.string** %tmp.2
	lw t0 212(s10)
	li t1 4
	add t0,t0,t1
	sw t0,216(s10)
	#%.middle.276 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,220(s10)
	# %.middle.277=load i32,i32* %cnt.0
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,328
	sw a0,224(s10)
	#%.SizeList.3 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 224(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,228(s10)
	#%.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	lw t0 220(s10)
	lw t1 228(s10)
	sw t0,0(t1)
	# store i32 %.middle.277,i32* %.ArrayIdx.3
	lw a0 224(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,328
	sw a0,232(s10)
	#%.middle.278 = call i32* @_malloc_toInt(i32* %.SizeList.3,i32 1)
	lw t0 232(s10)
	sw t0,236(s10)
	#%.new.3 = bitcast i32* %.middle.278 to i32*
	lw t0 236(s10)
	lw t1 216(s10)
	sw t0,0(t1)
	# store i32* %.new.3,i32** %.middle.276
	li t0 0
	lw t1 44(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.7
	j .L96
	#br label %For_Cond.131
	
.L96:
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,240(s10)
	# %.middle.281=load i32,i32* %i.7
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,244(s10)
	# %.middle.282=load i32,i32* %cnt.0
	lw t1 240(s10)
	lw t2 244(s10)
	slt t0 t1,t2
	sw t0,248(s10)
	#%.middle.280 = icmp slt i32 %.middle.281,%.middle.282
	lw t0 248(s10)
	bnez t0 .L97
	beqz t0 .L99
	#br i1 %.middle.280,label %For_Body.133,label %For_End.132
	
.L97:
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,252(s10)
	# %tmp.2.2=load %struct.string*,%struct.string** %tmp.2
	lw t0 252(s10)
	li t1 4
	add t0,t0,t1
	sw t0,256(s10)
	#%.middle.283 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 1
	lw t1 256(s10)
	lw t0 0(t1)
	sw t0,260(s10)
	# %.middle.284=load i32*,i32** %.middle.283
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,264(s10)
	# %.middle.286=load i32,i32* %i.7
	lw t1 264(s10)
	lw t0 260(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,268(s10)
	#%.middle.285 = getelementptr i32,i32* %.middle.284,i32 %.middle.286
	lw t1 268(s10)
	lw t0 0(t1)
	sw t0,272(s10)
	# %.middle.285.0=load i32,i32* %.middle.285
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,276(s10)
	# %.middle.287=load i32*,i32** %a.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,280(s10)
	# %.middle.289=load i32,i32* %cnt.0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,284(s10)
	# %.middle.290=load i32,i32* %i.7
	lw t1 280(s10)
	lw t2 284(s10)
	sub t0,t1,t2
	sw t0,288(s10)
	#%.middle.288 = sub i32 %.middle.289,%.middle.290
	lw t1 288(s10)
	li t2 1
	sub t0,t1,t2
	sw t0,292(s10)
	#%.middle.291 = sub i32 %.middle.288,1
	lw t1 292(s10)
	lw t0 276(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,296(s10)
	#%.middle.292 = getelementptr i32,i32* %.middle.287,i32 %.middle.291
	lw t1 296(s10)
	lw t0 0(t1)
	sw t0,300(s10)
	# %.middle.292.0=load i32,i32* %.middle.292
	lw t1 296(s10)
	lw t0 0(t1)
	sw t0,304(s10)
	# %.middle.294=load i32,i32* %.middle.292
	lw t1 304(s10)
	li t2 48
	add t0,t1,t2
	sw t0,308(s10)
	#%.middle.293 = add i32 %.middle.294,48
	lw t0 308(s10)
	lw t1 268(s10)
	sw t0,0(t1)
	# store i32 %.middle.293,i32* %.middle.285
	j .L98
	#br label %For_Change.134
	
.L98:
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,312(s10)
	# %.middle.296=load i32,i32* %i.7
	lw t1 312(s10)
	li t2 1
	add t0,t1,t2
	sw t0,316(s10)
	#%.middle.297 = add i32 %.middle.296,1
	lw t0 316(s10)
	lw t1 44(s10)
	sw t0,0(t1)
	# store i32 %.middle.297,i32* %i.7
	j .L96
	#br label %For_Cond.131
	
.L99:
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,320(s10)
	# %.middle.298=load %struct.string*,%struct.string** %tmp.2
	lw t0 320(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.298,%struct.string** %.retval.p
	j .func.toString.Exit
	#br label %Exit.114
	
.func.toString.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,324(s10)
	# %.retval=load %struct.string*,%struct.string** %.retval.p
	lw a0 324(s10)
	lw ra 0(s10)
	addi sp,sp,328
	ret
	#ret %struct.string* %.retval
	

    .globl .func.getString
.func.getString:


addi sp,sp,-116
	addi s10,sp,0
	addi s11,sp,116
	sw ra,0(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,116
	sw a0,4(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 4(s10)
	sw t0,8(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,116
	sw a0,12(s10)
	#%.middle.299 = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%tmp.3 = bitcast i32* %.middle.299 to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,116
	sw a0,20(s10)
	#%.middle.303 = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%.Func.Return.p.4.0 = bitcast i32* %.middle.303 to i32**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,116
	sw a0,28(s10)
	#%cnt.1 = call i32* @_malloc(i32 1)
	j .L100
	#br label %.block.137
	
.L100:
	li a0 2
	call _malloc
	addi s10,sp,0
	addi s11,sp,116
	sw a0,32(s10)
	#%.middle.301 = call i32* @_malloc(i32 2)
	lw t0 32(s10)
	sw t0,36(s10)
	#%.middle.300 = bitcast i32* %.middle.301 to %struct.string*
	lw a0 36(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.300)
	addi s11,sp,116
	lw t0 36(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.300,%struct.string** %tmp.3
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %tmp.3.0=load %struct.string*,%struct.string** %tmp.3
	lw t0 40(s10)
	li t1 4
	add t0,t0,t1
	sw t0,44(s10)
	#%.middle.302 = getelementptr %struct.string,%struct.string* %tmp.3.0,i32 0,i32 1
	call scanf_string
	addi s10,sp,0
	addi s11,sp,116
	sw a0,48(s10)
	#%.Func_Return.4 = call i32* @scanf_string()
	lw t0 48(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32* %.Func_Return.4,i32** %.Func.Return.p.4.0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.middle.305=load i32*,i32** %.Func.Return.p.4.0
	lw t0 52(s10)
	lw t1 44(s10)
	sw t0,0(t1)
	# store i32* %.middle.305,i32** %.middle.302
	li t0 0
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 0,i32* %cnt.1
	j .L101
	#br label %For_Cond.138
	
.L101:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %tmp.3.1=load %struct.string*,%struct.string** %tmp.3
	lw t0 56(s10)
	li t1 4
	add t0,t0,t1
	sw t0,60(s10)
	#%.middle.307 = getelementptr %struct.string,%struct.string* %tmp.3.1,i32 0,i32 1
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %.middle.308=load i32*,i32** %.middle.307
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.310=load i32,i32* %cnt.1
	lw t1 68(s10)
	lw t0 64(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,72(s10)
	#%.middle.309 = getelementptr i32,i32* %.middle.308,i32 %.middle.310
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.309.0=load i32,i32* %.middle.309
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %.middle.312=load i32,i32* %.middle.309
	lw t1 80(s10)
	li t2 0
	sub t1,t1,t2
	snez t0 t1
	sw t0,84(s10)
	#%.middle.311 = icmp ne i32 %.middle.312,0
	lw t0 84(s10)
	bnez t0 .L102
	beqz t0 .L104
	#br i1 %.middle.311,label %For_Body.140,label %For_End.139
	
.L102:
	j .L103
	#br label %For_Change.141
	
.L103:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.313=load i32,i32* %cnt.1
	lw t1 88(s10)
	li t2 1
	add t0,t1,t2
	sw t0,92(s10)
	#%.middle.314 = add i32 %.middle.313,1
	lw t0 92(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.middle.314,i32* %cnt.1
	j .L101
	#br label %For_Cond.138
	
.L104:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,96(s10)
	# %tmp.3.2=load %struct.string*,%struct.string** %tmp.3
	lw t0 96(s10)
	li t1 0
	add t0,t0,t1
	sw t0,100(s10)
	#%.middle.315 = getelementptr %struct.string,%struct.string* %tmp.3.2,i32 0,i32 0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,104(s10)
	# %.middle.317=load i32,i32* %cnt.1
	lw t0 104(s10)
	lw t1 100(s10)
	sw t0,0(t1)
	# store i32 %.middle.317,i32* %.middle.315
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.318=load %struct.string*,%struct.string** %tmp.3
	lw t0 108(s10)
	lw t1 8(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.318,%struct.string** %.retval.p
	j .func.getString.Exit
	#br label %Exit.136
	
.func.getString.Exit:
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.retval=load %struct.string*,%struct.string** %.retval.p
	lw a0 112(s10)
	lw ra 0(s10)
	addi sp,sp,116
	ret
	#ret %struct.string* %.retval
	

    .globl .func.Edge.construct
.func.Edge.construct:


addi sp,sp,-16
	addi s10,sp,0
	addi s11,sp,16
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,16
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Edge**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Edge* %This,%struct.Edge** %This_addr
	j .L105
	#br label %.block.144
	
.L105:
	j .func.Edge.construct.Exit
	#br label %Exit.143
	
.func.Edge.construct.Exit:
	lw ra 0(s10)
	addi sp,sp,16
	ret
	#ret void
	

    .globl .func.EdgeList.init
.func.EdgeList.init:


addi sp,sp,-224
	addi s10,sp,0
	addi s11,sp,224
	sw ra,0(s10)
	sw a2,12(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,224
	sw a0,16(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	lw t0 4(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,224
	sw a0,24(s10)
	#%n_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %n,i32* %n_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,224
	sw a0,28(s10)
	#%m_addr = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %m,i32* %m_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,224
	sw a0,32(s10)
	#%i.8 = call i32* @_malloc(i32 1)
	j .L106
	#br label %.block.147
	
.L106:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %This_addr.7=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 36(s10)
	li t1 8
	add t0,t0,t1
	sw t0,40(s10)
	#%This_addr.edges.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.7,i32 0,i32 2
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.319=load i32,i32* %m_addr
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,224
	sw a0,48(s10)
	#%.SizeList.4 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 48(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,52(s10)
	#%.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	lw t0 44(s10)
	lw t1 52(s10)
	sw t0,0(t1)
	# store i32 %.middle.319,i32* %.ArrayIdx.4
	lw a0 48(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,224
	sw a0,56(s10)
	#%.middle.320 = call i32* @_malloc_toInt(i32* %.SizeList.4,i32 1)
	lw t0 56(s10)
	sw t0,60(s10)
	#%.new.4 = bitcast i32* %.middle.320 to %struct.Edge**
	lw t0 60(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store %struct.Edge** %.new.4,%struct.Edge*** %This_addr.edges.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %This_addr.8=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 64(s10)
	li t1 0
	add t0,t0,t1
	sw t0,68(s10)
	#%This_addr.next.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.8,i32 0,i32 0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %.middle.322=load i32,i32* %m_addr
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,224
	sw a0,76(s10)
	#%.SizeList.5 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 76(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,80(s10)
	#%.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	lw t0 72(s10)
	lw t1 80(s10)
	sw t0,0(t1)
	# store i32 %.middle.322,i32* %.ArrayIdx.5
	lw a0 76(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,224
	sw a0,84(s10)
	#%.middle.323 = call i32* @_malloc_toInt(i32* %.SizeList.5,i32 1)
	lw t0 84(s10)
	sw t0,88(s10)
	#%.new.5 = bitcast i32* %.middle.323 to i32*
	lw t0 88(s10)
	lw t1 68(s10)
	sw t0,0(t1)
	# store i32* %.new.5,i32** %This_addr.next.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %This_addr.9=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 92(s10)
	li t1 12
	add t0,t0,t1
	sw t0,96(s10)
	#%This_addr.first.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.9,i32 0,i32 3
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %.middle.325=load i32,i32* %n_addr
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,224
	sw a0,104(s10)
	#%.SizeList.6 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 104(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,108(s10)
	#%.ArrayIdx.6 = getelementptr i32,i32* %.SizeList.6,i32 0
	lw t0 100(s10)
	lw t1 108(s10)
	sw t0,0(t1)
	# store i32 %.middle.325,i32* %.ArrayIdx.6
	lw a0 104(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,224
	sw a0,112(s10)
	#%.middle.326 = call i32* @_malloc_toInt(i32* %.SizeList.6,i32 1)
	lw t0 112(s10)
	sw t0,116(s10)
	#%.new.6 = bitcast i32* %.middle.326 to i32*
	lw t0 116(s10)
	lw t1 96(s10)
	sw t0,0(t1)
	# store i32* %.new.6,i32** %This_addr.first.0
	li t0 0
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.8
	j .L107
	#br label %For_Cond.148
	
.L107:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.330=load i32,i32* %i.8
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.middle.331=load i32,i32* %m_addr
	lw t1 120(s10)
	lw t2 124(s10)
	slt t0 t1,t2
	sw t0,128(s10)
	#%.middle.329 = icmp slt i32 %.middle.330,%.middle.331
	lw t0 128(s10)
	bnez t0 .L108
	beqz t0 .L110
	#br i1 %.middle.329,label %For_Body.150,label %For_End.149
	
.L108:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,132(s10)
	# %This_addr.10=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 132(s10)
	li t1 0
	add t0,t0,t1
	sw t0,136(s10)
	#%This_addr.next.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.10,i32 0,i32 0
	lw t1 136(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.332=load i32*,i32** %This_addr.next.1
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,144(s10)
	# %.middle.334=load i32,i32* %i.8
	lw t1 144(s10)
	lw t0 140(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,148(s10)
	#%.middle.333 = getelementptr i32,i32* %.middle.332,i32 %.middle.334
	lw t1 148(s10)
	lw t0 0(t1)
	sw t0,152(s10)
	# %.middle.333.0=load i32,i32* %.middle.333
	li t1 0
	li t2 1
	sub t0,t1,t2
	sw t0,156(s10)
	#%.middle.335 = sub i32 0,1
	lw t0 156(s10)
	lw t1 148(s10)
	sw t0,0(t1)
	# store i32 %.middle.335,i32* %.middle.333
	j .L109
	#br label %For_Change.151
	
.L109:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %.middle.337=load i32,i32* %i.8
	lw t1 160(s10)
	li t2 1
	add t0,t1,t2
	sw t0,164(s10)
	#%.middle.338 = add i32 %.middle.337,1
	lw t0 164(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.middle.338,i32* %i.8
	j .L107
	#br label %For_Cond.148
	
.L110:
	li t0 0
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.8
	j .L111
	#br label %For_Cond.152
	
.L111:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %.middle.341=load i32,i32* %i.8
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.middle.342=load i32,i32* %n_addr
	lw t1 168(s10)
	lw t2 172(s10)
	slt t0 t1,t2
	sw t0,176(s10)
	#%.middle.340 = icmp slt i32 %.middle.341,%.middle.342
	lw t0 176(s10)
	bnez t0 .L112
	beqz t0 .L114
	#br i1 %.middle.340,label %For_Body.154,label %For_End.153
	
.L112:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %This_addr.11=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 180(s10)
	li t1 12
	add t0,t0,t1
	sw t0,184(s10)
	#%This_addr.first.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.11,i32 0,i32 3
	lw t1 184(s10)
	lw t0 0(t1)
	sw t0,188(s10)
	# %.middle.343=load i32*,i32** %This_addr.first.1
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,192(s10)
	# %.middle.345=load i32,i32* %i.8
	lw t1 192(s10)
	lw t0 188(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,196(s10)
	#%.middle.344 = getelementptr i32,i32* %.middle.343,i32 %.middle.345
	lw t1 196(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %.middle.344.0=load i32,i32* %.middle.344
	li t1 0
	li t2 1
	sub t0,t1,t2
	sw t0,204(s10)
	#%.middle.346 = sub i32 0,1
	lw t0 204(s10)
	lw t1 196(s10)
	sw t0,0(t1)
	# store i32 %.middle.346,i32* %.middle.344
	j .L113
	#br label %For_Change.155
	
.L113:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,208(s10)
	# %.middle.348=load i32,i32* %i.8
	lw t1 208(s10)
	li t2 1
	add t0,t1,t2
	sw t0,212(s10)
	#%.middle.349 = add i32 %.middle.348,1
	lw t0 212(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.middle.349,i32* %i.8
	j .L111
	#br label %For_Cond.152
	
.L114:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,216(s10)
	# %This_addr.12=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 216(s10)
	li t1 4
	add t0,t0,t1
	sw t0,220(s10)
	#%This_addr.size.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.12,i32 0,i32 1
	li t0 0
	lw t1 220(s10)
	sw t0,0(t1)
	# store i32 0,i32* %This_addr.size.0
	j .func.EdgeList.init.Exit
	#br label %Exit.146
	
.func.EdgeList.init.Exit:
	lw ra 0(s10)
	addi sp,sp,224
	ret
	#ret void
	

    .globl .func.EdgeList.addEdge
.func.EdgeList.addEdge:


addi sp,sp,-240
	addi s10,sp,0
	addi s11,sp,240
	sw ra,0(s10)
	sw a3,16(s10)
	sw a2,12(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,240
	sw a0,20(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	lw t0 4(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,240
	sw a0,28(s10)
	#%u_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %u,i32* %u_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,240
	sw a0,32(s10)
	#%v_addr = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %v,i32* %v_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,240
	sw a0,36(s10)
	#%w_addr = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %w,i32* %w_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,240
	sw a0,40(s10)
	#%.middle.351 = call i32* @_malloc(i32 1)
	lw t0 40(s10)
	sw t0,44(s10)
	#%e.0 = bitcast i32* %.middle.351 to %struct.Edge**
	j .L115
	#br label %.block.158
	
.L115:
	li a0 3
	call _malloc
	addi s10,sp,0
	addi s11,sp,240
	sw a0,48(s10)
	#%.middle.353 = call i32* @_malloc(i32 3)
	lw t0 48(s10)
	sw t0,52(s10)
	#%.middle.352 = bitcast i32* %.middle.353 to %struct.Edge*
	lw a0 52(s10)
	call .func.Edge.construct
	addi s10,sp,0
	#call void @.func.Edge.construct(%struct.Edge* %.middle.352)
	addi s11,sp,240
	lw t0 52(s10)
	lw t1 44(s10)
	sw t0,0(t1)
	# store %struct.Edge* %.middle.352,%struct.Edge** %e.0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %e.0.0=load %struct.Edge*,%struct.Edge** %e.0
	lw t0 56(s10)
	li t1 4
	add t0,t0,t1
	sw t0,60(s10)
	#%.middle.354 = getelementptr %struct.Edge,%struct.Edge* %e.0.0,i32 0,i32 1
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %.middle.356=load i32,i32* %u_addr
	lw t0 64(s10)
	lw t1 60(s10)
	sw t0,0(t1)
	# store i32 %.middle.356,i32* %.middle.354
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %e.0.1=load %struct.Edge*,%struct.Edge** %e.0
	lw t0 68(s10)
	li t1 8
	add t0,t0,t1
	sw t0,72(s10)
	#%.middle.357 = getelementptr %struct.Edge,%struct.Edge* %e.0.1,i32 0,i32 2
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.359=load i32,i32* %v_addr
	lw t0 76(s10)
	lw t1 72(s10)
	sw t0,0(t1)
	# store i32 %.middle.359,i32* %.middle.357
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %e.0.2=load %struct.Edge*,%struct.Edge** %e.0
	lw t0 80(s10)
	li t1 0
	add t0,t0,t1
	sw t0,84(s10)
	#%.middle.360 = getelementptr %struct.Edge,%struct.Edge* %e.0.2,i32 0,i32 0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.362=load i32,i32* %w_addr
	lw t0 88(s10)
	lw t1 84(s10)
	sw t0,0(t1)
	# store i32 %.middle.362,i32* %.middle.360
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %This_addr.13=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 92(s10)
	li t1 8
	add t0,t0,t1
	sw t0,96(s10)
	#%This_addr.edges.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.13,i32 0,i32 2
	lw t1 96(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %.middle.363=load %struct.Edge**,%struct.Edge*** %This_addr.edges.1
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,104(s10)
	# %This_addr.14=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 104(s10)
	li t1 4
	add t0,t0,t1
	sw t0,108(s10)
	#%This_addr.size.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.14,i32 0,i32 1
	lw t1 108(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.365=load i32,i32* %This_addr.size.1
	lw t1 112(s10)
	lw t0 100(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,116(s10)
	#%.middle.364 = getelementptr %struct.Edge*,%struct.Edge** %.middle.363,i32 %.middle.365
	lw t1 116(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.364.0=load %struct.Edge*,%struct.Edge** %.middle.364
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.middle.367=load %struct.Edge*,%struct.Edge** %e.0
	lw t0 124(s10)
	lw t1 116(s10)
	sw t0,0(t1)
	# store %struct.Edge* %.middle.367,%struct.Edge** %.middle.364
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %This_addr.15=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 128(s10)
	li t1 0
	add t0,t0,t1
	sw t0,132(s10)
	#%This_addr.next.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.15,i32 0,i32 0
	lw t1 132(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %.middle.368=load i32*,i32** %This_addr.next.2
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %This_addr.16=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 140(s10)
	li t1 4
	add t0,t0,t1
	sw t0,144(s10)
	#%This_addr.size.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.16,i32 0,i32 1
	lw t1 144(s10)
	lw t0 0(t1)
	sw t0,148(s10)
	# %.middle.370=load i32,i32* %This_addr.size.2
	lw t1 148(s10)
	lw t0 136(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,152(s10)
	#%.middle.369 = getelementptr i32,i32* %.middle.368,i32 %.middle.370
	lw t1 152(s10)
	lw t0 0(t1)
	sw t0,156(s10)
	# %.middle.369.0=load i32,i32* %.middle.369
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %This_addr.17=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 160(s10)
	li t1 12
	add t0,t0,t1
	sw t0,164(s10)
	#%This_addr.first.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.17,i32 0,i32 3
	lw t1 164(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %.middle.371=load i32*,i32** %This_addr.first.2
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.middle.373=load i32,i32* %u_addr
	lw t1 172(s10)
	lw t0 168(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,176(s10)
	#%.middle.372 = getelementptr i32,i32* %.middle.371,i32 %.middle.373
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %.middle.372.0=load i32,i32* %.middle.372
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.375=load i32,i32* %.middle.372
	lw t0 184(s10)
	lw t1 152(s10)
	sw t0,0(t1)
	# store i32 %.middle.375,i32* %.middle.369
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,188(s10)
	# %This_addr.18=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 188(s10)
	li t1 12
	add t0,t0,t1
	sw t0,192(s10)
	#%This_addr.first.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.18,i32 0,i32 3
	lw t1 192(s10)
	lw t0 0(t1)
	sw t0,196(s10)
	# %.middle.376=load i32*,i32** %This_addr.first.3
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %.middle.378=load i32,i32* %u_addr
	lw t1 200(s10)
	lw t0 196(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,204(s10)
	#%.middle.377 = getelementptr i32,i32* %.middle.376,i32 %.middle.378
	lw t1 204(s10)
	lw t0 0(t1)
	sw t0,208(s10)
	# %.middle.377.0=load i32,i32* %.middle.377
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,212(s10)
	# %This_addr.19=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 212(s10)
	li t1 4
	add t0,t0,t1
	sw t0,216(s10)
	#%This_addr.size.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.19,i32 0,i32 1
	lw t1 216(s10)
	lw t0 0(t1)
	sw t0,220(s10)
	# %.middle.380=load i32,i32* %This_addr.size.3
	lw t0 220(s10)
	lw t1 204(s10)
	sw t0,0(t1)
	# store i32 %.middle.380,i32* %.middle.377
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,224(s10)
	# %This_addr.20=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 224(s10)
	li t1 4
	add t0,t0,t1
	sw t0,228(s10)
	#%This_addr.size.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.20,i32 0,i32 1
	lw t1 228(s10)
	lw t0 0(t1)
	sw t0,232(s10)
	# %.middle.381=load i32,i32* %This_addr.size.4
	lw t1 232(s10)
	li t2 1
	add t0,t1,t2
	sw t0,236(s10)
	#%.middle.382 = add i32 %.middle.381,1
	lw t0 236(s10)
	lw t1 228(s10)
	sw t0,0(t1)
	# store i32 %.middle.382,i32* %This_addr.size.4
	j .func.EdgeList.addEdge.Exit
	#br label %Exit.157
	
.func.EdgeList.addEdge.Exit:
	lw ra 0(s10)
	addi sp,sp,240
	ret
	#ret void
	

    .globl .func.EdgeList.nVertices
.func.EdgeList.nVertices:


addi sp,sp,-52
	addi s10,sp,0
	addi s11,sp,52
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,16(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L116
	#br label %.block.161
	
.L116:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,20(s10)
	# %This_addr.21=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 20(s10)
	li t1 12
	add t0,t0,t1
	sw t0,24(s10)
	#%This_addr.first.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.21,i32 0,i32 3
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.384=load i32*,i32** %This_addr.first.4
	lw t0 28(s10)
	sw t0,32(s10)
	#%.middle.383 = ptrtoint i32* %.middle.384 to i32
	lw t1 32(s10)
	li t2 4
	sub t0,t1,t2
	sw t0,36(s10)
	#%.middle.385 = sub i32 %.middle.383,4
	lw t0 36(s10)
	sw t0,40(s10)
	#%.middle.386 = inttoptr i32 %.middle.385 to i32*
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.386.0=load i32,i32* %.middle.386
	lw t0 44(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32 %.middle.386.0,i32* %.retval.p
	j .func.EdgeList.nVertices.Exit
	#br label %Exit.160
	
.func.EdgeList.nVertices.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 48(s10)
	lw ra 0(s10)
	addi sp,sp,52
	ret
	#ret i32 %.retval
	

    .globl .func.EdgeList.nEdges
.func.EdgeList.nEdges:


addi sp,sp,-52
	addi s10,sp,0
	addi s11,sp,52
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,16(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L117
	#br label %.block.164
	
.L117:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,20(s10)
	# %This_addr.22=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	lw t0 20(s10)
	li t1 8
	add t0,t0,t1
	sw t0,24(s10)
	#%This_addr.edges.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.22,i32 0,i32 2
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.388=load %struct.Edge**,%struct.Edge*** %This_addr.edges.2
	lw t0 28(s10)
	sw t0,32(s10)
	#%.middle.387 = ptrtoint %struct.Edge** %.middle.388 to i32
	lw t1 32(s10)
	li t2 4
	sub t0,t1,t2
	sw t0,36(s10)
	#%.middle.389 = sub i32 %.middle.387,4
	lw t0 36(s10)
	sw t0,40(s10)
	#%.middle.390 = inttoptr i32 %.middle.389 to i32*
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.390.0=load i32,i32* %.middle.390
	lw t0 44(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32 %.middle.390.0,i32* %.retval.p
	j .func.EdgeList.nEdges.Exit
	#br label %Exit.163
	
.func.EdgeList.nEdges.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 48(s10)
	lw ra 0(s10)
	addi sp,sp,52
	ret
	#ret i32 %.retval
	

    .globl .func.EdgeList.construct
.func.EdgeList.construct:


addi sp,sp,-16
	addi s10,sp,0
	addi s11,sp,16
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,16
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	j .L118
	#br label %.block.167
	
.L118:
	j .func.EdgeList.construct.Exit
	#br label %Exit.166
	
.func.EdgeList.construct.Exit:
	lw ra 0(s10)
	addi sp,sp,16
	ret
	#ret void
	

    .globl .func.Array_Node.construct
.func.Array_Node.construct:


addi sp,sp,-48
	addi s10,sp,0
	addi s11,sp,48
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,48
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	j .L119
	#br label %.block.170
	
.L119:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,16(s10)
	# %This_addr.23=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 16(s10)
	li t1 0
	add t0,t0,t1
	sw t0,20(s10)
	#%This_addr.sz.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.23,i32 0,i32 0
	li t0 0
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 0,i32* %This_addr.sz.0
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,24(s10)
	# %This_addr.24=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 24(s10)
	li t1 4
	add t0,t0,t1
	sw t0,28(s10)
	#%This_addr.storage.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.24,i32 0,i32 1
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,48
	sw a0,32(s10)
	#%.SizeList.7 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 32(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,36(s10)
	#%.ArrayIdx.7 = getelementptr i32,i32* %.SizeList.7,i32 0
	li t0 16
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 16,i32* %.ArrayIdx.7
	lw a0 32(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,48
	sw a0,40(s10)
	#%.middle.392 = call i32* @_malloc_toInt(i32* %.SizeList.7,i32 1)
	lw t0 40(s10)
	sw t0,44(s10)
	#%.new.7 = bitcast i32* %.middle.392 to %struct.Node**
	lw t0 44(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store %struct.Node** %.new.7,%struct.Node*** %This_addr.storage.0
	j .func.Array_Node.construct.Exit
	#br label %Exit.169
	
.func.Array_Node.construct.Exit:
	lw ra 0(s10)
	addi sp,sp,48
	ret
	#ret void
	

    .globl .func.Array_Node.push_back
.func.Array_Node.push_back:


addi sp,sp,-132
	addi s10,sp,0
	addi s11,sp,132
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,132
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,132
	sw a0,20(s10)
	#%v_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%v_addr = bitcast i32* %v_addr_inttmp to %struct.Node**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.Node* %v,%struct.Node** %v_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,132
	sw a0,28(s10)
	#%.Func.Return.p.5.0 = call i32* @_malloc(i32 1)
	j .L120
	#br label %.block.173
	
.L120:
	j .L121
	#br label %If_Cond.174
	
.L121:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.middle.394=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw a0 32(s10)
	call .func.Array_Node.size
	addi s10,sp,0
	addi s11,sp,132
	sw a0,36(s10)
	#%.Func_Return.5 = call i32 @.func.Array_Node.size(%struct.Array_Node* %.middle.394)
	lw t0 36(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.5,i32* %.Func.Return.p.5.0
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %This_addr.25=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 40(s10)
	li t1 4
	add t0,t0,t1
	sw t0,44(s10)
	#%This_addr.storage.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.25,i32 0,i32 1
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.396=load %struct.Node**,%struct.Node*** %This_addr.storage.1
	lw t0 48(s10)
	sw t0,52(s10)
	#%.middle.395 = ptrtoint %struct.Node** %.middle.396 to i32
	lw t1 52(s10)
	li t2 4
	sub t0,t1,t2
	sw t0,56(s10)
	#%.middle.397 = sub i32 %.middle.395,4
	lw t0 56(s10)
	sw t0,60(s10)
	#%.middle.398 = inttoptr i32 %.middle.397 to i32*
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %.middle.398.0=load i32,i32* %.middle.398
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.400=load i32,i32* %.Func.Return.p.5.0
	lw t1 68(s10)
	lw t2 64(s10)
	sub t1,t1,t2
	seqz t0 t1
	sw t0,72(s10)
	#%.middle.399 = icmp eq i32 %.middle.400,%.middle.398.0
	lw t0 72(s10)
	bnez t0 .L122
	beqz t0 .L123
	#br i1 %.middle.399,label %If_Then.175,label %If_Else.176
	
.L122:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.401=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw a0 76(s10)
	call .func.Array_Node.doubleStorage
	addi s10,sp,0
	#call void @.func.Array_Node.doubleStorage(%struct.Array_Node* %.middle.401)
	addi s11,sp,132
	j .L124
	#br label %If_End.177
	
.L123:
	j .L124
	#br label %If_End.177
	
.L124:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %This_addr.26=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 80(s10)
	li t1 4
	add t0,t0,t1
	sw t0,84(s10)
	#%This_addr.storage.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.26,i32 0,i32 1
	lw t1 84(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.402=load %struct.Node**,%struct.Node*** %This_addr.storage.2
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %This_addr.27=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 92(s10)
	li t1 0
	add t0,t0,t1
	sw t0,96(s10)
	#%This_addr.sz.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.27,i32 0,i32 0
	lw t1 96(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %.middle.404=load i32,i32* %This_addr.sz.1
	lw t1 100(s10)
	lw t0 88(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,104(s10)
	#%.middle.403 = getelementptr %struct.Node*,%struct.Node** %.middle.402,i32 %.middle.404
	lw t1 104(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.403.0=load %struct.Node*,%struct.Node** %.middle.403
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.406=load %struct.Node*,%struct.Node** %v_addr
	lw t0 112(s10)
	lw t1 104(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.406,%struct.Node** %.middle.403
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %This_addr.28=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 116(s10)
	li t1 0
	add t0,t0,t1
	sw t0,120(s10)
	#%This_addr.sz.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.28,i32 0,i32 0
	lw t1 120(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.middle.407=load i32,i32* %This_addr.sz.2
	lw t1 124(s10)
	li t2 1
	add t0,t1,t2
	sw t0,128(s10)
	#%.middle.408 = add i32 %.middle.407,1
	lw t0 128(s10)
	lw t1 120(s10)
	sw t0,0(t1)
	# store i32 %.middle.408,i32* %This_addr.sz.2
	j .func.Array_Node.push_back.Exit
	#br label %Exit.172
	
.func.Array_Node.push_back.Exit:
	lw ra 0(s10)
	addi sp,sp,132
	ret
	#ret void
	

    .globl .func.Array_Node.pop_back
.func.Array_Node.pop_back:


addi sp,sp,-80
	addi s10,sp,0
	addi s11,sp,80
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,80
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,80
	sw a0,16(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	j .L125
	#br label %.block.180
	
.L125:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,24(s10)
	# %This_addr.29=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 24(s10)
	li t1 0
	add t0,t0,t1
	sw t0,28(s10)
	#%This_addr.sz.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.29,i32 0,i32 0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.middle.409=load i32,i32* %This_addr.sz.3
	lw t1 32(s10)
	li t2 1
	sub t0,t1,t2
	sw t0,36(s10)
	#%.middle.410 = sub i32 %.middle.409,1
	lw t0 36(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.middle.410,i32* %This_addr.sz.3
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %This_addr.30=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 40(s10)
	li t1 4
	add t0,t0,t1
	sw t0,44(s10)
	#%This_addr.storage.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.30,i32 0,i32 1
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.411=load %struct.Node**,%struct.Node*** %This_addr.storage.3
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %This_addr.31=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 52(s10)
	li t1 0
	add t0,t0,t1
	sw t0,56(s10)
	#%This_addr.sz.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.31,i32 0,i32 0
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.413=load i32,i32* %This_addr.sz.4
	lw t1 60(s10)
	lw t0 48(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,64(s10)
	#%.middle.412 = getelementptr %struct.Node*,%struct.Node** %.middle.411,i32 %.middle.413
	lw t1 64(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.412.0=load %struct.Node*,%struct.Node** %.middle.412
	lw t1 64(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %.middle.414=load %struct.Node*,%struct.Node** %.middle.412
	lw t0 72(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.414,%struct.Node** %.retval.p
	j .func.Array_Node.pop_back.Exit
	#br label %Exit.179
	
.func.Array_Node.pop_back.Exit:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw a0 76(s10)
	lw ra 0(s10)
	addi sp,sp,80
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Array_Node.back
.func.Array_Node.back:


addi sp,sp,-68
	addi s10,sp,0
	addi s11,sp,68
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,68
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,68
	sw a0,16(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	j .L126
	#br label %.block.183
	
.L126:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,24(s10)
	# %This_addr.32=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 24(s10)
	li t1 4
	add t0,t0,t1
	sw t0,28(s10)
	#%This_addr.storage.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.32,i32 0,i32 1
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.middle.415=load %struct.Node**,%struct.Node*** %This_addr.storage.4
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %This_addr.33=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 36(s10)
	li t1 0
	add t0,t0,t1
	sw t0,40(s10)
	#%This_addr.sz.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.33,i32 0,i32 0
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.417=load i32,i32* %This_addr.sz.5
	lw t1 44(s10)
	li t2 1
	sub t0,t1,t2
	sw t0,48(s10)
	#%.middle.416 = sub i32 %.middle.417,1
	lw t1 48(s10)
	lw t0 32(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,52(s10)
	#%.middle.418 = getelementptr %struct.Node*,%struct.Node** %.middle.415,i32 %.middle.416
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %.middle.418.0=load %struct.Node*,%struct.Node** %.middle.418
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.419=load %struct.Node*,%struct.Node** %.middle.418
	lw t0 60(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.419,%struct.Node** %.retval.p
	j .func.Array_Node.back.Exit
	#br label %Exit.182
	
.func.Array_Node.back.Exit:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw a0 64(s10)
	lw ra 0(s10)
	addi sp,sp,68
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Array_Node.front
.func.Array_Node.front:


addi sp,sp,-52
	addi s10,sp,0
	addi s11,sp,52
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,52
	sw a0,16(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	j .L127
	#br label %.block.186
	
.L127:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,24(s10)
	# %This_addr.34=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 24(s10)
	li t1 4
	add t0,t0,t1
	sw t0,28(s10)
	#%This_addr.storage.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.34,i32 0,i32 1
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.middle.420=load %struct.Node**,%struct.Node*** %This_addr.storage.5
	li t1 0
	lw t0 32(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,36(s10)
	#%.middle.421 = getelementptr %struct.Node*,%struct.Node** %.middle.420,i32 0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.middle.421.0=load %struct.Node*,%struct.Node** %.middle.421
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.422=load %struct.Node*,%struct.Node** %.middle.421
	lw t0 44(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.422,%struct.Node** %.retval.p
	j .func.Array_Node.front.Exit
	#br label %Exit.185
	
.func.Array_Node.front.Exit:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw a0 48(s10)
	lw ra 0(s10)
	addi sp,sp,52
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Array_Node.size
.func.Array_Node.size:


addi sp,sp,-36
	addi s10,sp,0
	addi s11,sp,36
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,36
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,36
	sw a0,16(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L128
	#br label %.block.189
	
.L128:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,20(s10)
	# %This_addr.35=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 20(s10)
	li t1 0
	add t0,t0,t1
	sw t0,24(s10)
	#%This_addr.sz.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.35,i32 0,i32 0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.423=load i32,i32* %This_addr.sz.6
	lw t0 28(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32 %.middle.423,i32* %.retval.p
	j .func.Array_Node.size.Exit
	#br label %Exit.188
	
.func.Array_Node.size.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 32(s10)
	lw ra 0(s10)
	addi sp,sp,36
	ret
	#ret i32 %.retval
	

    .globl .func.Array_Node.resize
.func.Array_Node.resize:


addi sp,sp,-76
	addi s10,sp,0
	addi s11,sp,76
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,76
	sw a0,20(s10)
	#%newSize_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %newSize,i32* %newSize_addr
	j .L129
	#br label %.block.192
	
.L129:
	j .L130
	#br label %While_Cond.193
	
.L130:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,24(s10)
	# %This_addr.36=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 24(s10)
	li t1 4
	add t0,t0,t1
	sw t0,28(s10)
	#%This_addr.storage.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.36,i32 0,i32 1
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.middle.425=load %struct.Node**,%struct.Node*** %This_addr.storage.6
	lw t0 32(s10)
	sw t0,36(s10)
	#%.middle.424 = ptrtoint %struct.Node** %.middle.425 to i32
	lw t1 36(s10)
	li t2 4
	sub t0,t1,t2
	sw t0,40(s10)
	#%.middle.426 = sub i32 %.middle.424,4
	lw t0 40(s10)
	sw t0,44(s10)
	#%.middle.427 = inttoptr i32 %.middle.426 to i32*
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.427.0=load i32,i32* %.middle.427
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.middle.429=load i32,i32* %newSize_addr
	lw t1 48(s10)
	lw t2 52(s10)
	slt t0 t1,t2
	sw t0,56(s10)
	#%.middle.428 = icmp slt i32 %.middle.427.0,%.middle.429
	lw t0 56(s10)
	bnez t0 .L131
	beqz t0 .L132
	#br i1 %.middle.428,label %While_Body.194,label %While_End.195
	
.L131:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.430=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw a0 60(s10)
	call .func.Array_Node.doubleStorage
	addi s10,sp,0
	#call void @.func.Array_Node.doubleStorage(%struct.Array_Node* %.middle.430)
	addi s11,sp,76
	j .L130
	#br label %While_Cond.193
	
.L132:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %This_addr.37=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 64(s10)
	li t1 0
	add t0,t0,t1
	sw t0,68(s10)
	#%This_addr.sz.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.37,i32 0,i32 0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %.middle.432=load i32,i32* %newSize_addr
	lw t0 72(s10)
	lw t1 68(s10)
	sw t0,0(t1)
	# store i32 %.middle.432,i32* %This_addr.sz.7
	j .func.Array_Node.resize.Exit
	#br label %Exit.191
	
.func.Array_Node.resize.Exit:
	lw ra 0(s10)
	addi sp,sp,76
	ret
	#ret void
	

    .globl .func.Array_Node.get
.func.Array_Node.get:


addi sp,sp,-64
	addi s10,sp,0
	addi s11,sp,64
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,64
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,64
	sw a0,20(s10)
	#%i_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %i,i32* %i_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,64
	sw a0,24(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 24(s10)
	sw t0,28(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	j .L133
	#br label %.block.198
	
.L133:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %This_addr.38=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 32(s10)
	li t1 4
	add t0,t0,t1
	sw t0,36(s10)
	#%This_addr.storage.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.38,i32 0,i32 1
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.middle.433=load %struct.Node**,%struct.Node*** %This_addr.storage.7
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.435=load i32,i32* %i_addr
	lw t1 44(s10)
	lw t0 40(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,48(s10)
	#%.middle.434 = getelementptr %struct.Node*,%struct.Node** %.middle.433,i32 %.middle.435
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.middle.434.0=load %struct.Node*,%struct.Node** %.middle.434
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %.middle.436=load %struct.Node*,%struct.Node** %.middle.434
	lw t0 56(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.436,%struct.Node** %.retval.p
	j .func.Array_Node.get.Exit
	#br label %Exit.197
	
.func.Array_Node.get.Exit:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw a0 60(s10)
	lw ra 0(s10)
	addi sp,sp,64
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Array_Node.set
.func.Array_Node.set:


addi sp,sp,-64
	addi s10,sp,0
	addi s11,sp,64
	sw ra,0(s10)
	sw a2,12(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,64
	sw a0,16(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,64
	sw a0,24(s10)
	#%i_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %i,i32* %i_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,64
	sw a0,28(s10)
	#%v_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 28(s10)
	sw t0,32(s10)
	#%v_addr = bitcast i32* %v_addr_inttmp to %struct.Node**
	lw t0 12(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store %struct.Node* %v,%struct.Node** %v_addr
	j .L134
	#br label %.block.201
	
.L134:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %This_addr.39=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 36(s10)
	li t1 4
	add t0,t0,t1
	sw t0,40(s10)
	#%This_addr.storage.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.39,i32 0,i32 1
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.437=load %struct.Node**,%struct.Node*** %This_addr.storage.8
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.439=load i32,i32* %i_addr
	lw t1 48(s10)
	lw t0 44(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,52(s10)
	#%.middle.438 = getelementptr %struct.Node*,%struct.Node** %.middle.437,i32 %.middle.439
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,56(s10)
	# %.middle.438.0=load %struct.Node*,%struct.Node** %.middle.438
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.441=load %struct.Node*,%struct.Node** %v_addr
	lw t0 60(s10)
	lw t1 52(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.441,%struct.Node** %.middle.438
	j .func.Array_Node.set.Exit
	#br label %Exit.200
	
.func.Array_Node.set.Exit:
	lw ra 0(s10)
	addi sp,sp,64
	ret
	#ret void
	

    .globl .func.Array_Node.swap
.func.Array_Node.swap:


addi sp,sp,-148
	addi s10,sp,0
	addi s11,sp,148
	sw ra,0(s10)
	sw a2,12(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,148
	sw a0,16(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,148
	sw a0,24(s10)
	#%i_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %i,i32* %i_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,148
	sw a0,28(s10)
	#%j_addr = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %j,i32* %j_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,148
	sw a0,32(s10)
	#%.middle.442 = call i32* @_malloc(i32 1)
	lw t0 32(s10)
	sw t0,36(s10)
	#%t.0 = bitcast i32* %.middle.442 to %struct.Node**
	j .L135
	#br label %.block.204
	
.L135:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %This_addr.40=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 40(s10)
	li t1 4
	add t0,t0,t1
	sw t0,44(s10)
	#%This_addr.storage.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.40,i32 0,i32 1
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.443=load %struct.Node**,%struct.Node*** %This_addr.storage.9
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.middle.445=load i32,i32* %i_addr
	lw t1 52(s10)
	lw t0 48(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,56(s10)
	#%.middle.444 = getelementptr %struct.Node*,%struct.Node** %.middle.443,i32 %.middle.445
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.444.0=load %struct.Node*,%struct.Node** %.middle.444
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,64(s10)
	# %.middle.446=load %struct.Node*,%struct.Node** %.middle.444
	lw t0 64(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.446,%struct.Node** %t.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %This_addr.41=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 68(s10)
	li t1 4
	add t0,t0,t1
	sw t0,72(s10)
	#%This_addr.storage.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.41,i32 0,i32 1
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.447=load %struct.Node**,%struct.Node*** %This_addr.storage.10
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %.middle.449=load i32,i32* %i_addr
	lw t1 80(s10)
	lw t0 76(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,84(s10)
	#%.middle.448 = getelementptr %struct.Node*,%struct.Node** %.middle.447,i32 %.middle.449
	lw t1 84(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.448.0=load %struct.Node*,%struct.Node** %.middle.448
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %This_addr.42=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 92(s10)
	li t1 4
	add t0,t0,t1
	sw t0,96(s10)
	#%This_addr.storage.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.42,i32 0,i32 1
	lw t1 96(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %.middle.450=load %struct.Node**,%struct.Node*** %This_addr.storage.11
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,104(s10)
	# %.middle.452=load i32,i32* %j_addr
	lw t1 104(s10)
	lw t0 100(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,108(s10)
	#%.middle.451 = getelementptr %struct.Node*,%struct.Node** %.middle.450,i32 %.middle.452
	lw t1 108(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.451.0=load %struct.Node*,%struct.Node** %.middle.451
	lw t1 108(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.454=load %struct.Node*,%struct.Node** %.middle.451
	lw t0 116(s10)
	lw t1 84(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.454,%struct.Node** %.middle.448
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %This_addr.43=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 120(s10)
	li t1 4
	add t0,t0,t1
	sw t0,124(s10)
	#%This_addr.storage.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.43,i32 0,i32 1
	lw t1 124(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %.middle.455=load %struct.Node**,%struct.Node*** %This_addr.storage.12
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,132(s10)
	# %.middle.457=load i32,i32* %j_addr
	lw t1 132(s10)
	lw t0 128(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,136(s10)
	#%.middle.456 = getelementptr %struct.Node*,%struct.Node** %.middle.455,i32 %.middle.457
	lw t1 136(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.456.0=load %struct.Node*,%struct.Node** %.middle.456
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,144(s10)
	# %.middle.459=load %struct.Node*,%struct.Node** %t.0
	lw t0 144(s10)
	lw t1 136(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.459,%struct.Node** %.middle.456
	j .func.Array_Node.swap.Exit
	#br label %Exit.203
	
.func.Array_Node.swap.Exit:
	lw ra 0(s10)
	addi sp,sp,148
	ret
	#ret void
	

    .globl .func.Array_Node.doubleStorage
.func.Array_Node.doubleStorage:


addi sp,sp,-204
	addi s10,sp,0
	addi s11,sp,204
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,204
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,204
	sw a0,16(s10)
	#%.middle.460 = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%copy.0 = bitcast i32* %.middle.460 to %struct.Node***
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,204
	sw a0,24(s10)
	#%szCopy.0 = call i32* @_malloc(i32 1)
	j .L136
	#br label %.block.207
	
.L136:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %This_addr.44=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 28(s10)
	li t1 4
	add t0,t0,t1
	sw t0,32(s10)
	#%This_addr.storage.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.44,i32 0,i32 1
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %.middle.461=load %struct.Node**,%struct.Node*** %This_addr.storage.13
	lw t0 36(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Node** %.middle.461,%struct.Node*** %copy.0
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %This_addr.45=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 40(s10)
	li t1 0
	add t0,t0,t1
	sw t0,44(s10)
	#%This_addr.sz.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.45,i32 0,i32 0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.462=load i32,i32* %This_addr.sz.8
	lw t0 48(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %.middle.462,i32* %szCopy.0
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %This_addr.46=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 52(s10)
	li t1 4
	add t0,t0,t1
	sw t0,56(s10)
	#%This_addr.storage.14 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.46,i32 0,i32 1
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.464=load %struct.Node**,%struct.Node*** %copy.0
	lw t0 60(s10)
	sw t0,64(s10)
	#%.middle.463 = ptrtoint %struct.Node** %.middle.464 to i32
	lw t1 64(s10)
	li t2 4
	sub t0,t1,t2
	sw t0,68(s10)
	#%.middle.465 = sub i32 %.middle.463,4
	lw t0 68(s10)
	sw t0,72(s10)
	#%.middle.466 = inttoptr i32 %.middle.465 to i32*
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.466.0=load i32,i32* %.middle.466
	lw t1 76(s10)
	li t2 2
	mul t0,t1,t2
	sw t0,80(s10)
	#%.middle.467 = mul i32 %.middle.466.0,2
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,204
	sw a0,84(s10)
	#%.SizeList.8 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 84(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,88(s10)
	#%.ArrayIdx.8 = getelementptr i32,i32* %.SizeList.8,i32 0
	lw t0 80(s10)
	lw t1 88(s10)
	sw t0,0(t1)
	# store i32 %.middle.467,i32* %.ArrayIdx.8
	lw a0 84(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,204
	sw a0,92(s10)
	#%.middle.468 = call i32* @_malloc_toInt(i32* %.SizeList.8,i32 1)
	lw t0 92(s10)
	sw t0,96(s10)
	#%.new.8 = bitcast i32* %.middle.468 to %struct.Node**
	lw t0 96(s10)
	lw t1 56(s10)
	sw t0,0(t1)
	# store %struct.Node** %.new.8,%struct.Node*** %This_addr.storage.14
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %This_addr.47=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 100(s10)
	li t1 0
	add t0,t0,t1
	sw t0,104(s10)
	#%This_addr.sz.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.47,i32 0,i32 0
	li t0 0
	lw t1 104(s10)
	sw t0,0(t1)
	# store i32 0,i32* %This_addr.sz.9
	j .L137
	#br label %For_Cond.208
	
.L137:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %This_addr.48=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 108(s10)
	li t1 0
	add t0,t0,t1
	sw t0,112(s10)
	#%This_addr.sz.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.48,i32 0,i32 0
	lw t1 112(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.472=load i32,i32* %This_addr.sz.10
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.473=load i32,i32* %szCopy.0
	lw t1 116(s10)
	lw t2 120(s10)
	sub t1,t1,t2
	snez t0 t1
	sw t0,124(s10)
	#%.middle.471 = icmp ne i32 %.middle.472,%.middle.473
	lw t0 124(s10)
	bnez t0 .L138
	beqz t0 .L140
	#br i1 %.middle.471,label %For_Body.210,label %For_End.209
	
.L138:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %This_addr.49=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 128(s10)
	li t1 4
	add t0,t0,t1
	sw t0,132(s10)
	#%This_addr.storage.15 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.49,i32 0,i32 1
	lw t1 132(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %.middle.474=load %struct.Node**,%struct.Node*** %This_addr.storage.15
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %This_addr.50=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 140(s10)
	li t1 0
	add t0,t0,t1
	sw t0,144(s10)
	#%This_addr.sz.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.50,i32 0,i32 0
	lw t1 144(s10)
	lw t0 0(t1)
	sw t0,148(s10)
	# %.middle.476=load i32,i32* %This_addr.sz.11
	lw t1 148(s10)
	lw t0 136(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,152(s10)
	#%.middle.475 = getelementptr %struct.Node*,%struct.Node** %.middle.474,i32 %.middle.476
	lw t1 152(s10)
	lw t0 0(t1)
	sw t0,156(s10)
	# %.middle.475.0=load %struct.Node*,%struct.Node** %.middle.475
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %.middle.477=load %struct.Node**,%struct.Node*** %copy.0
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,164(s10)
	# %This_addr.51=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 164(s10)
	li t1 0
	add t0,t0,t1
	sw t0,168(s10)
	#%This_addr.sz.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.51,i32 0,i32 0
	lw t1 168(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.middle.479=load i32,i32* %This_addr.sz.12
	lw t1 172(s10)
	lw t0 160(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,176(s10)
	#%.middle.478 = getelementptr %struct.Node*,%struct.Node** %.middle.477,i32 %.middle.479
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %.middle.478.0=load %struct.Node*,%struct.Node** %.middle.478
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.481=load %struct.Node*,%struct.Node** %.middle.478
	lw t0 184(s10)
	lw t1 152(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.481,%struct.Node** %.middle.475
	j .L139
	#br label %For_Change.211
	
.L139:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,188(s10)
	# %This_addr.52=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	lw t0 188(s10)
	li t1 0
	add t0,t0,t1
	sw t0,192(s10)
	#%This_addr.sz.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.52,i32 0,i32 0
	lw t1 192(s10)
	lw t0 0(t1)
	sw t0,196(s10)
	# %.middle.482=load i32,i32* %This_addr.sz.13
	lw t1 196(s10)
	li t2 1
	add t0,t1,t2
	sw t0,200(s10)
	#%.middle.483 = add i32 %.middle.482,1
	lw t0 200(s10)
	lw t1 192(s10)
	sw t0,0(t1)
	# store i32 %.middle.483,i32* %This_addr.sz.13
	j .L137
	#br label %For_Cond.208
	
.L140:
	j .func.Array_Node.doubleStorage.Exit
	#br label %Exit.206
	
.func.Array_Node.doubleStorage.Exit:
	lw ra 0(s10)
	addi sp,sp,204
	ret
	#ret void
	

    .globl .func.Heap_Node.construct
.func.Heap_Node.construct:


addi sp,sp,-32
	addi s10,sp,0
	addi s11,sp,32
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,32
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	j .L141
	#br label %.block.214
	
.L141:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,16(s10)
	# %This_addr.53=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 16(s10)
	li t1 0
	add t0,t0,t1
	sw t0,20(s10)
	#%This_addr.storage.16 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.53,i32 0,i32 0
	li a0 2
	call _malloc
	addi s10,sp,0
	addi s11,sp,32
	sw a0,24(s10)
	#%.middle.485 = call i32* @_malloc(i32 2)
	lw t0 24(s10)
	sw t0,28(s10)
	#%.middle.484 = bitcast i32* %.middle.485 to %struct.Array_Node*
	lw a0 28(s10)
	call .func.Array_Node.construct
	addi s10,sp,0
	#call void @.func.Array_Node.construct(%struct.Array_Node* %.middle.484)
	addi s11,sp,32
	lw t0 28(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Array_Node* %.middle.484,%struct.Array_Node** %This_addr.storage.16
	j .func.Heap_Node.construct.Exit
	#br label %Exit.213
	
.func.Heap_Node.construct.Exit:
	lw ra 0(s10)
	addi sp,sp,32
	ret
	#ret void
	

    .globl .func.Heap_Node.push
.func.Heap_Node.push:


addi sp,sp,-216
	addi s10,sp,0
	addi s11,sp,216
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,20(s10)
	#%v_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%v_addr = bitcast i32* %v_addr_inttmp to %struct.Node**
	lw t0 8(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store %struct.Node* %v,%struct.Node** %v_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,28(s10)
	#%x.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,32(s10)
	#%.Func.Return.p.6.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,36(s10)
	#%p.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,40(s10)
	#%.Func.Return.p.7.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,44(s10)
	#%.middle.499 = call i32* @_malloc(i32 1)
	lw t0 44(s10)
	sw t0,48(s10)
	#%.Func.Return.p.8.0 = bitcast i32* %.middle.499 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,52(s10)
	#%.Func.Return.p.9.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,56(s10)
	#%.middle.503 = call i32* @_malloc(i32 1)
	lw t0 56(s10)
	sw t0,60(s10)
	#%.Func.Return.p.10.0 = bitcast i32* %.middle.503 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,216
	sw a0,64(s10)
	#%.Func.Return.p.11.0 = call i32* @_malloc(i32 1)
	j .L142
	#br label %.block.217
	
.L142:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %This_addr.54=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 68(s10)
	li t1 0
	add t0,t0,t1
	sw t0,72(s10)
	#%This_addr.storage.17 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.54,i32 0,i32 0
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.487=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.17
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %.middle.488=load %struct.Node*,%struct.Node** %v_addr
	lw a0 76(s10)
	lw a1 80(s10)
	call .func.Array_Node.push_back
	addi s10,sp,0
	#call void @.func.Array_Node.push_back(%struct.Array_Node* %.middle.487,%struct.Node* %.middle.488)
	addi s11,sp,216
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,84(s10)
	# %.middle.489=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw a0 84(s10)
	call .func.Heap_Node.size
	addi s10,sp,0
	addi s11,sp,216
	sw a0,88(s10)
	#%.Func_Return.6 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.489)
	lw t0 88(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.6,i32* %.Func.Return.p.6.0
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %.middle.491=load i32,i32* %.Func.Return.p.6.0
	lw t1 92(s10)
	li t2 1
	sub t0,t1,t2
	sw t0,96(s10)
	#%.middle.490 = sub i32 %.middle.491,1
	lw t0 96(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.middle.490,i32* %x.0
	j .L143
	#br label %While_Cond.218
	
.L143:
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %.middle.493=load i32,i32* %x.0
	lw t1 100(s10)
	li t2 0
	slt t0 t2,t1
	sw t0,104(s10)
	#%.middle.492 = icmp sgt i32 %.middle.493,0
	lw t0 104(s10)
	bnez t0 .L144
	beqz t0 .L149
	#br i1 %.middle.492,label %While_Body.219,label %While_End.220
	
.L144:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.494=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.495=load i32,i32* %x.0
	lw a0 108(s10)
	lw a1 112(s10)
	call .func.Heap_Node.pnt
	addi s10,sp,0
	addi s11,sp,216
	sw a0,116(s10)
	#%.Func_Return.7 = call i32 @.func.Heap_Node.pnt(%struct.Heap_Node* %.middle.494,i32 %.middle.495)
	lw t0 116(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.7,i32* %.Func.Return.p.7.0
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.496=load i32,i32* %.Func.Return.p.7.0
	lw t0 120(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %.middle.496,i32* %p.0
	j .L145
	#br label %If_Cond.221
	
.L145:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %This_addr.55=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 124(s10)
	li t1 0
	add t0,t0,t1
	sw t0,128(s10)
	#%This_addr.storage.18 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.55,i32 0,i32 0
	lw t1 128(s10)
	lw t0 0(t1)
	sw t0,132(s10)
	# %.middle.497=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.18
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %.middle.498=load i32,i32* %p.0
	lw a0 132(s10)
	lw a1 136(s10)
	call .func.Array_Node.get
	addi s10,sp,0
	addi s11,sp,216
	sw a0,140(s10)
	#%.Func_Return.8 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.497,i32 %.middle.498)
	lw t0 140(s10)
	lw t1 48(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.8,%struct.Node** %.Func.Return.p.8.0
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,144(s10)
	# %.middle.500=load %struct.Node*,%struct.Node** %.Func.Return.p.8.0
	lw a0 144(s10)
	call .func.Node.key_
	addi s10,sp,0
	addi s11,sp,216
	sw a0,148(s10)
	#%.Func_Return.9 = call i32 @.func.Node.key_(%struct.Node* %.middle.500)
	lw t0 148(s10)
	lw t1 52(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.9,i32* %.Func.Return.p.9.0
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,152(s10)
	# %This_addr.56=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 152(s10)
	li t1 0
	add t0,t0,t1
	sw t0,156(s10)
	#%This_addr.storage.19 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.56,i32 0,i32 0
	lw t1 156(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %.middle.501=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.19
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,164(s10)
	# %.middle.502=load i32,i32* %x.0
	lw a0 160(s10)
	lw a1 164(s10)
	call .func.Array_Node.get
	addi s10,sp,0
	addi s11,sp,216
	sw a0,168(s10)
	#%.Func_Return.10 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.501,i32 %.middle.502)
	lw t0 168(s10)
	lw t1 60(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.10,%struct.Node** %.Func.Return.p.10.0
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.middle.504=load %struct.Node*,%struct.Node** %.Func.Return.p.10.0
	lw a0 172(s10)
	call .func.Node.key_
	addi s10,sp,0
	addi s11,sp,216
	sw a0,176(s10)
	#%.Func_Return.11 = call i32 @.func.Node.key_(%struct.Node* %.middle.504)
	lw t0 176(s10)
	lw t1 64(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.11,i32* %.Func.Return.p.11.0
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %.middle.506=load i32,i32* %.Func.Return.p.9.0
	lw t1 64(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.507=load i32,i32* %.Func.Return.p.11.0
	lw t1 180(s10)
	lw t2 184(s10)
	sub t1,t2,t1
	slti t0 t1,1
	sw t0,188(s10)
	#%.middle.505 = icmp sge i32 %.middle.506,%.middle.507
	lw t0 188(s10)
	bnez t0 .L146
	beqz t0 .L147
	#br i1 %.middle.505,label %If_Then.222,label %If_Else.223
	
.L146:
	j .L149
	#br label %While_End.220
	
.L147:
	j .L148
	#br label %If_End.224
	
.L148:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,192(s10)
	# %This_addr.57=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 192(s10)
	li t1 0
	add t0,t0,t1
	sw t0,196(s10)
	#%This_addr.storage.20 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.57,i32 0,i32 0
	lw t1 196(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %.middle.508=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.20
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,204(s10)
	# %.middle.509=load i32,i32* %p.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,208(s10)
	# %.middle.510=load i32,i32* %x.0
	lw a0 200(s10)
	lw a1 204(s10)
	lw a2 208(s10)
	call .func.Array_Node.swap
	addi s10,sp,0
	#call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.508,i32 %.middle.509,i32 %.middle.510)
	addi s11,sp,216
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,212(s10)
	# %.middle.512=load i32,i32* %p.0
	lw t0 212(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.middle.512,i32* %x.0
	j .L143
	#br label %While_Cond.218
	
.L149:
	j .func.Heap_Node.push.Exit
	#br label %Exit.216
	
.func.Heap_Node.push.Exit:
	lw ra 0(s10)
	addi sp,sp,216
	ret
	#ret void
	

    .globl .func.Heap_Node.pop
.func.Heap_Node.pop:


addi sp,sp,-128
	addi s10,sp,0
	addi s11,sp,128
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,128
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,128
	sw a0,16(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,128
	sw a0,24(s10)
	#%.middle.513 = call i32* @_malloc(i32 1)
	lw t0 24(s10)
	sw t0,28(s10)
	#%res.0 = bitcast i32* %.middle.513 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,128
	sw a0,32(s10)
	#%.middle.515 = call i32* @_malloc(i32 1)
	lw t0 32(s10)
	sw t0,36(s10)
	#%.Func.Return.p.12.0 = bitcast i32* %.middle.515 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,128
	sw a0,40(s10)
	#%.Func.Return.p.13.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,128
	sw a0,44(s10)
	#%.middle.522 = call i32* @_malloc(i32 1)
	lw t0 44(s10)
	sw t0,48(s10)
	#%.Func.Return.p.14.0 = bitcast i32* %.middle.522 to %struct.Node**
	j .L150
	#br label %.block.227
	
.L150:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %This_addr.58=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 52(s10)
	li t1 0
	add t0,t0,t1
	sw t0,56(s10)
	#%This_addr.storage.21 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.58,i32 0,i32 0
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,60(s10)
	# %.middle.514=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.21
	lw a0 60(s10)
	call .func.Array_Node.front
	addi s10,sp,0
	addi s11,sp,128
	sw a0,64(s10)
	#%.Func_Return.12 = call %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %.middle.514)
	lw t0 64(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.12,%struct.Node** %.Func.Return.p.12.0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.516=load %struct.Node*,%struct.Node** %.Func.Return.p.12.0
	lw t0 68(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.516,%struct.Node** %res.0
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,72(s10)
	# %This_addr.59=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 72(s10)
	li t1 0
	add t0,t0,t1
	sw t0,76(s10)
	#%This_addr.storage.22 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.59,i32 0,i32 0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,80(s10)
	# %.middle.517=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.22
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,84(s10)
	# %.middle.518=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw a0 84(s10)
	call .func.Heap_Node.size
	addi s10,sp,0
	addi s11,sp,128
	sw a0,88(s10)
	#%.Func_Return.13 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.518)
	lw t0 88(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.13,i32* %.Func.Return.p.13.0
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %.middle.520=load i32,i32* %.Func.Return.p.13.0
	lw t1 92(s10)
	li t2 1
	sub t0,t1,t2
	sw t0,96(s10)
	#%.middle.519 = sub i32 %.middle.520,1
	lw a0 80(s10)
	li a1 0
	lw a2 96(s10)
	call .func.Array_Node.swap
	addi s10,sp,0
	#call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.517,i32 0,i32 %.middle.519)
	addi s11,sp,128
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %This_addr.60=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 100(s10)
	li t1 0
	add t0,t0,t1
	sw t0,104(s10)
	#%This_addr.storage.23 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.60,i32 0,i32 0
	lw t1 104(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.521=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.23
	lw a0 108(s10)
	call .func.Array_Node.pop_back
	addi s10,sp,0
	addi s11,sp,128
	sw a0,112(s10)
	#%.Func_Return.14 = call %struct.Node* @.func.Array_Node.pop_back(%struct.Array_Node* %.middle.521)
	lw t0 112(s10)
	lw t1 48(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.14,%struct.Node** %.Func.Return.p.14.0
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.523=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw a0 116(s10)
	li a1 0
	call .func.Heap_Node.maxHeapify
	addi s10,sp,0
	#call void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %.middle.523,i32 0)
	addi s11,sp,128
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.524=load %struct.Node*,%struct.Node** %res.0
	lw t0 120(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.524,%struct.Node** %.retval.p
	j .func.Heap_Node.pop.Exit
	#br label %Exit.226
	
.func.Heap_Node.pop.Exit:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw a0 124(s10)
	lw ra 0(s10)
	addi sp,sp,128
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Heap_Node.top
.func.Heap_Node.top:


addi sp,sp,-56
	addi s10,sp,0
	addi s11,sp,56
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,56
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,56
	sw a0,16(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,56
	sw a0,24(s10)
	#%.middle.526 = call i32* @_malloc(i32 1)
	lw t0 24(s10)
	sw t0,28(s10)
	#%.Func.Return.p.15.0 = bitcast i32* %.middle.526 to %struct.Node**
	j .L151
	#br label %.block.230
	
.L151:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %This_addr.61=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 32(s10)
	li t1 0
	add t0,t0,t1
	sw t0,36(s10)
	#%This_addr.storage.24 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.61,i32 0,i32 0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.middle.525=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.24
	lw a0 40(s10)
	call .func.Array_Node.front
	addi s10,sp,0
	addi s11,sp,56
	sw a0,44(s10)
	#%.Func_Return.15 = call %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %.middle.525)
	lw t0 44(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.15,%struct.Node** %.Func.Return.p.15.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,48(s10)
	# %.middle.527=load %struct.Node*,%struct.Node** %.Func.Return.p.15.0
	lw t0 48(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.527,%struct.Node** %.retval.p
	j .func.Heap_Node.top.Exit
	#br label %Exit.229
	
.func.Heap_Node.top.Exit:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.retval=load %struct.Node*,%struct.Node** %.retval.p
	lw a0 52(s10)
	lw ra 0(s10)
	addi sp,sp,56
	ret
	#ret %struct.Node* %.retval
	

    .globl .func.Heap_Node.size
.func.Heap_Node.size:


addi sp,sp,-48
	addi s10,sp,0
	addi s11,sp,48
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,48
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,48
	sw a0,16(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,48
	sw a0,20(s10)
	#%.Func.Return.p.16.0 = call i32* @_malloc(i32 1)
	j .L152
	#br label %.block.233
	
.L152:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,24(s10)
	# %This_addr.62=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 24(s10)
	li t1 0
	add t0,t0,t1
	sw t0,28(s10)
	#%This_addr.storage.25 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.62,i32 0,i32 0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.middle.528=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.25
	lw a0 32(s10)
	call .func.Array_Node.size
	addi s10,sp,0
	addi s11,sp,48
	sw a0,36(s10)
	#%.Func_Return.16 = call i32 @.func.Array_Node.size(%struct.Array_Node* %.middle.528)
	lw t0 36(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.16,i32* %.Func.Return.p.16.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.middle.529=load i32,i32* %.Func.Return.p.16.0
	lw t0 40(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32 %.middle.529,i32* %.retval.p
	j .func.Heap_Node.size.Exit
	#br label %Exit.232
	
.func.Heap_Node.size.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 44(s10)
	lw ra 0(s10)
	addi sp,sp,48
	ret
	#ret i32 %.retval
	

    .globl .func.Heap_Node.lchild
.func.Heap_Node.lchild:


addi sp,sp,-44
	addi s10,sp,0
	addi s11,sp,44
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,20(s10)
	#%x_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %x,i32* %x_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,24(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L153
	#br label %.block.236
	
.L153:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.531=load i32,i32* %x_addr
	lw t1 28(s10)
	li t2 2
	mul t0,t1,t2
	sw t0,32(s10)
	#%.middle.530 = mul i32 %.middle.531,2
	lw t1 32(s10)
	li t2 1
	add t0,t1,t2
	sw t0,36(s10)
	#%.middle.532 = add i32 %.middle.530,1
	lw t0 36(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %.middle.532,i32* %.retval.p
	j .func.Heap_Node.lchild.Exit
	#br label %Exit.235
	
.func.Heap_Node.lchild.Exit:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 40(s10)
	lw ra 0(s10)
	addi sp,sp,44
	ret
	#ret i32 %.retval
	

    .globl .func.Heap_Node.rchild
.func.Heap_Node.rchild:


addi sp,sp,-44
	addi s10,sp,0
	addi s11,sp,44
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,20(s10)
	#%x_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %x,i32* %x_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,24(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L154
	#br label %.block.239
	
.L154:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.534=load i32,i32* %x_addr
	lw t1 28(s10)
	li t2 2
	mul t0,t1,t2
	sw t0,32(s10)
	#%.middle.533 = mul i32 %.middle.534,2
	lw t1 32(s10)
	li t2 2
	add t0,t1,t2
	sw t0,36(s10)
	#%.middle.535 = add i32 %.middle.533,2
	lw t0 36(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %.middle.535,i32* %.retval.p
	j .func.Heap_Node.rchild.Exit
	#br label %Exit.238
	
.func.Heap_Node.rchild.Exit:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 40(s10)
	lw ra 0(s10)
	addi sp,sp,44
	ret
	#ret i32 %.retval
	

    .globl .func.Heap_Node.pnt
.func.Heap_Node.pnt:


addi sp,sp,-44
	addi s10,sp,0
	addi s11,sp,44
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,20(s10)
	#%x_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %x,i32* %x_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,44
	sw a0,24(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L155
	#br label %.block.242
	
.L155:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.537=load i32,i32* %x_addr
	lw t1 28(s10)
	li t2 1
	sub t0,t1,t2
	sw t0,32(s10)
	#%.middle.536 = sub i32 %.middle.537,1
	lw t1 32(s10)
	li t2 2
	div t0,t1,t2
	sw t0,36(s10)
	#%.middle.538 = sdiv i32 %.middle.536,2
	lw t0 36(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %.middle.538,i32* %.retval.p
	j .func.Heap_Node.pnt.Exit
	#br label %Exit.241
	
.func.Heap_Node.pnt.Exit:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,40(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 40(s10)
	lw ra 0(s10)
	addi sp,sp,44
	ret
	#ret i32 %.retval
	

    .globl .func.Heap_Node.maxHeapify
.func.Heap_Node.maxHeapify:


addi sp,sp,-400
	addi s10,sp,0
	addi s11,sp,400
	sw ra,0(s10)
	sw a1,8(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,12(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	lw t0 4(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,20(s10)
	#%x_addr = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %x,i32* %x_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,24(s10)
	#%l.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,28(s10)
	#%.Func.Return.p.17.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,32(s10)
	#%r.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,36(s10)
	#%.Func.Return.p.18.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,40(s10)
	#%largest.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,44(s10)
	#%.Func.Return.p.19.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,48(s10)
	#%RV.2.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,52(s10)
	#%.middle.552 = call i32* @_malloc(i32 1)
	lw t0 52(s10)
	sw t0,56(s10)
	#%.Func.Return.p.20.0 = bitcast i32* %.middle.552 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,60(s10)
	#%.Func.Return.p.21.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,64(s10)
	#%.middle.556 = call i32* @_malloc(i32 1)
	lw t0 64(s10)
	sw t0,68(s10)
	#%.Func.Return.p.22.0 = bitcast i32* %.middle.556 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,72(s10)
	#%.Func.Return.p.23.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,76(s10)
	#%.Func.Return.p.24.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,80(s10)
	#%RV.3.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,84(s10)
	#%.middle.571 = call i32* @_malloc(i32 1)
	lw t0 84(s10)
	sw t0,88(s10)
	#%.Func.Return.p.25.0 = bitcast i32* %.middle.571 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,92(s10)
	#%.Func.Return.p.26.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,96(s10)
	#%.middle.575 = call i32* @_malloc(i32 1)
	lw t0 96(s10)
	sw t0,100(s10)
	#%.Func.Return.p.27.0 = bitcast i32* %.middle.575 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,400
	sw a0,104(s10)
	#%.Func.Return.p.28.0 = call i32* @_malloc(i32 1)
	j .L156
	#br label %.block.245
	
.L156:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.539=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.540=load i32,i32* %x_addr
	lw a0 108(s10)
	lw a1 112(s10)
	call .func.Heap_Node.lchild
	addi s10,sp,0
	addi s11,sp,400
	sw a0,116(s10)
	#%.Func_Return.17 = call i32 @.func.Heap_Node.lchild(%struct.Heap_Node* %.middle.539,i32 %.middle.540)
	lw t0 116(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.17,i32* %.Func.Return.p.17.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.541=load i32,i32* %.Func.Return.p.17.0
	lw t0 120(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %.middle.541,i32* %l.0
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.middle.542=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %.middle.543=load i32,i32* %x_addr
	lw a0 124(s10)
	lw a1 128(s10)
	call .func.Heap_Node.rchild
	addi s10,sp,0
	addi s11,sp,400
	sw a0,132(s10)
	#%.Func_Return.18 = call i32 @.func.Heap_Node.rchild(%struct.Heap_Node* %.middle.542,i32 %.middle.543)
	lw t0 132(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.18,i32* %.Func.Return.p.18.0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %.middle.544=load i32,i32* %.Func.Return.p.18.0
	lw t0 136(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.middle.544,i32* %r.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.545=load i32,i32* %x_addr
	lw t0 140(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store i32 %.middle.545,i32* %largest.0
	j .L157
	#br label %If_Cond.246
	
.L157:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,144(s10)
	# %.middle.546=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw a0 144(s10)
	call .func.Heap_Node.size
	addi s10,sp,0
	addi s11,sp,400
	sw a0,148(s10)
	#%.Func_Return.19 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.546)
	lw t0 148(s10)
	lw t1 44(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.19,i32* %.Func.Return.p.19.0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,152(s10)
	# %.middle.548=load i32,i32* %l.0
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,156(s10)
	# %.middle.549=load i32,i32* %.Func.Return.p.19.0
	lw t1 152(s10)
	lw t2 156(s10)
	slt t0 t1,t2
	sw t0,160(s10)
	#%.middle.547 = icmp slt i32 %.middle.548,%.middle.549
	li t0 0
	lw t1 48(s10)
	sw t0,0(t1)
	# store i32 0,i32* %RV.2.0
	lw t0 160(s10)
	bnez t0 .L158
	beqz t0 .L159
	#br i1 %.middle.547,label %binary_and_rv.250,label %binary_end.251
	
.L158:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,164(s10)
	# %This_addr.63=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 164(s10)
	li t1 0
	add t0,t0,t1
	sw t0,168(s10)
	#%This_addr.storage.26 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.63,i32 0,i32 0
	lw t1 168(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.middle.550=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.26
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,176(s10)
	# %.middle.551=load i32,i32* %l.0
	lw a0 172(s10)
	lw a1 176(s10)
	call .func.Array_Node.get
	addi s10,sp,0
	addi s11,sp,400
	sw a0,180(s10)
	#%.Func_Return.20 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.550,i32 %.middle.551)
	lw t0 180(s10)
	lw t1 56(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.20,%struct.Node** %.Func.Return.p.20.0
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.553=load %struct.Node*,%struct.Node** %.Func.Return.p.20.0
	lw a0 184(s10)
	call .func.Node.key_
	addi s10,sp,0
	addi s11,sp,400
	sw a0,188(s10)
	#%.Func_Return.21 = call i32 @.func.Node.key_(%struct.Node* %.middle.553)
	lw t0 188(s10)
	lw t1 60(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.21,i32* %.Func.Return.p.21.0
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,192(s10)
	# %This_addr.64=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 192(s10)
	li t1 0
	add t0,t0,t1
	sw t0,196(s10)
	#%This_addr.storage.27 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.64,i32 0,i32 0
	lw t1 196(s10)
	lw t0 0(t1)
	sw t0,200(s10)
	# %.middle.554=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.27
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,204(s10)
	# %.middle.555=load i32,i32* %largest.0
	lw a0 200(s10)
	lw a1 204(s10)
	call .func.Array_Node.get
	addi s10,sp,0
	addi s11,sp,400
	sw a0,208(s10)
	#%.Func_Return.22 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.554,i32 %.middle.555)
	lw t0 208(s10)
	lw t1 68(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.22,%struct.Node** %.Func.Return.p.22.0
	lw t1 68(s10)
	lw t0 0(t1)
	sw t0,212(s10)
	# %.middle.557=load %struct.Node*,%struct.Node** %.Func.Return.p.22.0
	lw a0 212(s10)
	call .func.Node.key_
	addi s10,sp,0
	addi s11,sp,400
	sw a0,216(s10)
	#%.Func_Return.23 = call i32 @.func.Node.key_(%struct.Node* %.middle.557)
	lw t0 216(s10)
	lw t1 72(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.23,i32* %.Func.Return.p.23.0
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,220(s10)
	# %.middle.559=load i32,i32* %.Func.Return.p.21.0
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,224(s10)
	# %.middle.560=load i32,i32* %.Func.Return.p.23.0
	lw t1 220(s10)
	lw t2 224(s10)
	slt t0 t2,t1
	sw t0,228(s10)
	#%.middle.558 = icmp sgt i32 %.middle.559,%.middle.560
	lw t0 228(s10)
	sw t0,232(s10)
	#%.FromBool.21 = zext i1 %.middle.558 to i32
	lw t0 232(s10)
	lw t1 48(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.21,i32* %RV.2.0
	j .L159
	#br label %binary_end.251
	
.L159:
	lw t1 48(s10)
	lw t0 0(t1)
	sw t0,236(s10)
	# %.ToBool.7=load i32,i32* %RV.2.0
	lw t1 236(s10)
	li t2 1
	and t0,t1,t2
	sw t0,240(s10)
	#%.middle.562 = trunc i32 %.ToBool.7 to i1
	lw t1 228(s10)
	lw t2 240(s10)
	and t0,t1,t2
	sw t0,244(s10)
	#%.middle.561 = and i1 %.middle.558,%.middle.562
	lw t0 244(s10)
	bnez t0 .L160
	beqz t0 .L161
	#br i1 %.middle.561,label %If_Then.247,label %If_Else.248
	
.L160:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,248(s10)
	# %.middle.564=load i32,i32* %l.0
	lw t0 248(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store i32 %.middle.564,i32* %largest.0
	j .L162
	#br label %If_End.249
	
.L161:
	j .L162
	#br label %If_End.249
	
.L162:
	j .L163
	#br label %If_Cond.252
	
.L163:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,252(s10)
	# %.middle.565=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw a0 252(s10)
	call .func.Heap_Node.size
	addi s10,sp,0
	addi s11,sp,400
	sw a0,256(s10)
	#%.Func_Return.24 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.565)
	lw t0 256(s10)
	lw t1 76(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.24,i32* %.Func.Return.p.24.0
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,260(s10)
	# %.middle.567=load i32,i32* %r.0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,264(s10)
	# %.middle.568=load i32,i32* %.Func.Return.p.24.0
	lw t1 260(s10)
	lw t2 264(s10)
	slt t0 t1,t2
	sw t0,268(s10)
	#%.middle.566 = icmp slt i32 %.middle.567,%.middle.568
	li t0 0
	lw t1 80(s10)
	sw t0,0(t1)
	# store i32 0,i32* %RV.3.0
	lw t0 268(s10)
	bnez t0 .L164
	beqz t0 .L165
	#br i1 %.middle.566,label %binary_and_rv.256,label %binary_end.257
	
.L164:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,272(s10)
	# %This_addr.65=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 272(s10)
	li t1 0
	add t0,t0,t1
	sw t0,276(s10)
	#%This_addr.storage.28 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.65,i32 0,i32 0
	lw t1 276(s10)
	lw t0 0(t1)
	sw t0,280(s10)
	# %.middle.569=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.28
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,284(s10)
	# %.middle.570=load i32,i32* %r.0
	lw a0 280(s10)
	lw a1 284(s10)
	call .func.Array_Node.get
	addi s10,sp,0
	addi s11,sp,400
	sw a0,288(s10)
	#%.Func_Return.25 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.569,i32 %.middle.570)
	lw t0 288(s10)
	lw t1 88(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.25,%struct.Node** %.Func.Return.p.25.0
	lw t1 88(s10)
	lw t0 0(t1)
	sw t0,292(s10)
	# %.middle.572=load %struct.Node*,%struct.Node** %.Func.Return.p.25.0
	lw a0 292(s10)
	call .func.Node.key_
	addi s10,sp,0
	addi s11,sp,400
	sw a0,296(s10)
	#%.Func_Return.26 = call i32 @.func.Node.key_(%struct.Node* %.middle.572)
	lw t0 296(s10)
	lw t1 92(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.26,i32* %.Func.Return.p.26.0
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,300(s10)
	# %This_addr.66=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 300(s10)
	li t1 0
	add t0,t0,t1
	sw t0,304(s10)
	#%This_addr.storage.29 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.66,i32 0,i32 0
	lw t1 304(s10)
	lw t0 0(t1)
	sw t0,308(s10)
	# %.middle.573=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.29
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,312(s10)
	# %.middle.574=load i32,i32* %largest.0
	lw a0 308(s10)
	lw a1 312(s10)
	call .func.Array_Node.get
	addi s10,sp,0
	addi s11,sp,400
	sw a0,316(s10)
	#%.Func_Return.27 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.573,i32 %.middle.574)
	lw t0 316(s10)
	lw t1 100(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.27,%struct.Node** %.Func.Return.p.27.0
	lw t1 100(s10)
	lw t0 0(t1)
	sw t0,320(s10)
	# %.middle.576=load %struct.Node*,%struct.Node** %.Func.Return.p.27.0
	lw a0 320(s10)
	call .func.Node.key_
	addi s10,sp,0
	addi s11,sp,400
	sw a0,324(s10)
	#%.Func_Return.28 = call i32 @.func.Node.key_(%struct.Node* %.middle.576)
	lw t0 324(s10)
	lw t1 104(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.28,i32* %.Func.Return.p.28.0
	lw t1 92(s10)
	lw t0 0(t1)
	sw t0,328(s10)
	# %.middle.578=load i32,i32* %.Func.Return.p.26.0
	lw t1 104(s10)
	lw t0 0(t1)
	sw t0,332(s10)
	# %.middle.579=load i32,i32* %.Func.Return.p.28.0
	lw t1 328(s10)
	lw t2 332(s10)
	slt t0 t2,t1
	sw t0,336(s10)
	#%.middle.577 = icmp sgt i32 %.middle.578,%.middle.579
	lw t0 336(s10)
	sw t0,340(s10)
	#%.FromBool.22 = zext i1 %.middle.577 to i32
	lw t0 340(s10)
	lw t1 80(s10)
	sw t0,0(t1)
	# store i32 %.FromBool.22,i32* %RV.3.0
	j .L165
	#br label %binary_end.257
	
.L165:
	lw t1 80(s10)
	lw t0 0(t1)
	sw t0,344(s10)
	# %.ToBool.8=load i32,i32* %RV.3.0
	lw t1 344(s10)
	li t2 1
	and t0,t1,t2
	sw t0,348(s10)
	#%.middle.581 = trunc i32 %.ToBool.8 to i1
	lw t1 336(s10)
	lw t2 348(s10)
	and t0,t1,t2
	sw t0,352(s10)
	#%.middle.580 = and i1 %.middle.577,%.middle.581
	lw t0 352(s10)
	bnez t0 .L166
	beqz t0 .L167
	#br i1 %.middle.580,label %If_Then.253,label %If_Else.254
	
.L166:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,356(s10)
	# %.middle.583=load i32,i32* %r.0
	lw t0 356(s10)
	lw t1 40(s10)
	sw t0,0(t1)
	# store i32 %.middle.583,i32* %largest.0
	j .L168
	#br label %If_End.255
	
.L167:
	j .L168
	#br label %If_End.255
	
.L168:
	j .L169
	#br label %If_Cond.258
	
.L169:
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,360(s10)
	# %.middle.585=load i32,i32* %largest.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,364(s10)
	# %.middle.586=load i32,i32* %x_addr
	lw t1 360(s10)
	lw t2 364(s10)
	sub t1,t1,t2
	seqz t0 t1
	sw t0,368(s10)
	#%.middle.584 = icmp eq i32 %.middle.585,%.middle.586
	lw t0 368(s10)
	bnez t0 .L170
	beqz t0 .L171
	#br i1 %.middle.584,label %If_Then.259,label %If_Else.260
	
.L170:
	j .func.Heap_Node.maxHeapify.Exit
	#br label %Exit.244
	
.L171:
	j .L172
	#br label %If_End.261
	
.L172:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,372(s10)
	# %This_addr.67=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t0 372(s10)
	li t1 0
	add t0,t0,t1
	sw t0,376(s10)
	#%This_addr.storage.30 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.67,i32 0,i32 0
	lw t1 376(s10)
	lw t0 0(t1)
	sw t0,380(s10)
	# %.middle.587=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.30
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,384(s10)
	# %.middle.588=load i32,i32* %x_addr
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,388(s10)
	# %.middle.589=load i32,i32* %largest.0
	lw a0 380(s10)
	lw a1 384(s10)
	lw a2 388(s10)
	call .func.Array_Node.swap
	addi s10,sp,0
	#call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.587,i32 %.middle.588,i32 %.middle.589)
	addi s11,sp,400
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,392(s10)
	# %.middle.590=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	lw t1 40(s10)
	lw t0 0(t1)
	sw t0,396(s10)
	# %.middle.591=load i32,i32* %largest.0
	lw a0 392(s10)
	lw a1 396(s10)
	call .func.Heap_Node.maxHeapify
	addi s10,sp,0
	#call void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %.middle.590,i32 %.middle.591)
	addi s11,sp,400
	j .func.Heap_Node.maxHeapify.Exit
	#br label %Exit.244
	
.func.Heap_Node.maxHeapify.Exit:
	lw ra 0(s10)
	addi sp,sp,400
	ret
	#ret void
	

    .globl .func.init
.func.init:


addi sp,sp,-136
	addi s10,sp,0
	addi s11,sp,136
	sw ra,0(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,4(s10)
	#%.Func.Return.p.29.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,8(s10)
	#%.Func.Return.p.30.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,12(s10)
	#%i.9 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,16(s10)
	#%u.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,20(s10)
	#%.Func.Return.p.31.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,24(s10)
	#%v.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,28(s10)
	#%.Func.Return.p.32.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,32(s10)
	#%w.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,36(s10)
	#%.Func.Return.p.33.0 = call i32* @_malloc(i32 1)
	j .L173
	#br label %.block.264
	
.L173:
	call getInt
	addi s10,sp,0
	addi s11,sp,136
	sw a0,40(s10)
	#%.Func_Return.29 = call i32 @getInt()
	lw t0 40(s10)
	lw t1 4(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.29,i32* %.Func.Return.p.29.0
	lw t1 4(s10)
	lw t0 0(t1)
	sw t0,44(s10)
	# %.middle.593=load i32,i32* %.Func.Return.p.29.0
	lw t0 44(s10)
	sw t0,n.0,t6
	# store i32 %.middle.593,i32* @n.0
	call getInt
	addi s10,sp,0
	addi s11,sp,136
	sw a0,48(s10)
	#%.Func_Return.30 = call i32 @getInt()
	lw t0 48(s10)
	lw t1 8(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.30,i32* %.Func.Return.p.30.0
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,52(s10)
	# %.middle.595=load i32,i32* %.Func.Return.p.30.0
	lw t0 52(s10)
	sw t0,m.0,t6
	# store i32 %.middle.595,i32* @m.0
	li a0 4
	call _malloc
	addi s10,sp,0
	addi s11,sp,136
	sw a0,56(s10)
	#%.middle.597 = call i32* @_malloc(i32 4)
	lw t0 56(s10)
	sw t0,60(s10)
	#%.middle.596 = bitcast i32* %.middle.597 to %struct.EdgeList*
	lw a0 60(s10)
	call .func.EdgeList.construct
	addi s10,sp,0
	#call void @.func.EdgeList.construct(%struct.EdgeList* %.middle.596)
	addi s11,sp,136
	lw t0 60(s10)
	sw t0,g.0,t6
	# store %struct.EdgeList* %.middle.596,%struct.EdgeList** @g.0
	la t1 g.0
	lw t0 0(t1)
	sw t0,64(s10)
	# %.middle.599=load %struct.EdgeList*,%struct.EdgeList** @g.0
	la t1 n.0
	lw t0 0(t1)
	sw t0,68(s10)
	# %.middle.600=load i32,i32* @n.0
	la t1 m.0
	lw t0 0(t1)
	sw t0,72(s10)
	# %.middle.601=load i32,i32* @m.0
	lw a0 64(s10)
	lw a1 68(s10)
	lw a2 72(s10)
	call .func.EdgeList.init
	addi s10,sp,0
	#call void @.func.EdgeList.init(%struct.EdgeList* %.middle.599,i32 %.middle.600,i32 %.middle.601)
	addi s11,sp,136
	li t0 0
	lw t1 12(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.9
	j .L174
	#br label %For_Cond.265
	
.L174:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,76(s10)
	# %.middle.604=load i32,i32* %i.9
	la t1 m.0
	lw t0 0(t1)
	sw t0,80(s10)
	# %.middle.605=load i32,i32* @m.0
	lw t1 76(s10)
	lw t2 80(s10)
	slt t0 t1,t2
	sw t0,84(s10)
	#%.middle.603 = icmp slt i32 %.middle.604,%.middle.605
	lw t0 84(s10)
	bnez t0 .L175
	beqz t0 .L177
	#br i1 %.middle.603,label %For_Body.267,label %For_End.266
	
.L175:
	call getInt
	addi s10,sp,0
	addi s11,sp,136
	sw a0,88(s10)
	#%.Func_Return.31 = call i32 @getInt()
	lw t0 88(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.31,i32* %.Func.Return.p.31.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,92(s10)
	# %.middle.606=load i32,i32* %.Func.Return.p.31.0
	lw t0 92(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32 %.middle.606,i32* %u.0
	call getInt
	addi s10,sp,0
	addi s11,sp,136
	sw a0,96(s10)
	#%.Func_Return.32 = call i32 @getInt()
	lw t0 96(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.32,i32* %.Func.Return.p.32.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %.middle.607=load i32,i32* %.Func.Return.p.32.0
	lw t0 100(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32 %.middle.607,i32* %v.0
	call getInt
	addi s10,sp,0
	addi s11,sp,136
	sw a0,104(s10)
	#%.Func_Return.33 = call i32 @getInt()
	lw t0 104(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.33,i32* %.Func.Return.p.33.0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.608=load i32,i32* %.Func.Return.p.33.0
	lw t0 108(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32 %.middle.608,i32* %w.0
	la t1 g.0
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.609=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.610=load i32,i32* %u.0
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,120(s10)
	# %.middle.611=load i32,i32* %v.0
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.middle.612=load i32,i32* %w.0
	lw a0 112(s10)
	lw a1 116(s10)
	lw a2 120(s10)
	lw a3 124(s10)
	call .func.EdgeList.addEdge
	addi s10,sp,0
	#call void @.func.EdgeList.addEdge(%struct.EdgeList* %.middle.609,i32 %.middle.610,i32 %.middle.611,i32 %.middle.612)
	addi s11,sp,136
	j .L176
	#br label %For_Change.268
	
.L176:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %.middle.613=load i32,i32* %i.9
	lw t1 128(s10)
	li t2 1
	add t0,t1,t2
	sw t0,132(s10)
	#%.middle.614 = add i32 %.middle.613,1
	lw t0 132(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store i32 %.middle.614,i32* %i.9
	j .L174
	#br label %For_Cond.265
	
.L177:
	j .func.init.Exit
	#br label %Exit.263
	
.func.init.Exit:
	lw ra 0(s10)
	addi sp,sp,136
	ret
	#ret void
	

    .globl .func.Node.key_
.func.Node.key_:


addi sp,sp,-40
	addi s10,sp,0
	addi s11,sp,40
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,40
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Node* %This,%struct.Node** %This_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,40
	sw a0,16(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	j .L178
	#br label %.block.271
	
.L178:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,20(s10)
	# %This_addr.68=load %struct.Node*,%struct.Node** %This_addr
	lw t0 20(s10)
	li t1 4
	add t0,t0,t1
	sw t0,24(s10)
	#%This_addr.dist.0 = getelementptr %struct.Node,%struct.Node* %This_addr.68,i32 0,i32 1
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.616=load i32,i32* %This_addr.dist.0
	li t1 0
	lw t2 28(s10)
	sub t0,t1,t2
	sw t0,32(s10)
	#%.middle.615 = sub i32 0,%.middle.616
	lw t0 32(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32 %.middle.615,i32* %.retval.p
	j .func.Node.key_.Exit
	#br label %Exit.270
	
.func.Node.key_.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 36(s10)
	lw ra 0(s10)
	addi sp,sp,40
	ret
	#ret i32 %.retval
	

    .globl .func.Node.construct
.func.Node.construct:


addi sp,sp,-16
	addi s10,sp,0
	addi s11,sp,16
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,16
	sw a0,8(s10)
	#%This_addr_inttmp = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%This_addr = bitcast i32* %This_addr_inttmp to %struct.Node**
	lw t0 4(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.Node* %This,%struct.Node** %This_addr
	j .L179
	#br label %.block.274
	
.L179:
	j .func.Node.construct.Exit
	#br label %Exit.273
	
.func.Node.construct.Exit:
	lw ra 0(s10)
	addi sp,sp,16
	ret
	#ret void
	

    .globl .func.dijkstra
.func.dijkstra:


addi sp,sp,-612
	addi s10,sp,0
	addi s11,sp,612
	sw ra,0(s10)
	sw a0,4(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,8(s10)
	#%s_addr = call i32* @_malloc(i32 1)
	lw t0 4(s10)
	lw t1 8(s10)
	sw t0,0(t1)
	# store i32 %s,i32* %s_addr
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,12(s10)
	#%.retval.ptmp = call i32* @_malloc(i32 1)
	lw t0 12(s10)
	sw t0,16(s10)
	#%.retval.p = bitcast i32* %.retval.ptmp to i32**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,20(s10)
	#%.middle.617 = call i32* @_malloc(i32 1)
	lw t0 20(s10)
	sw t0,24(s10)
	#%visited.0 = bitcast i32* %.middle.617 to i32**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,28(s10)
	#%.middle.620 = call i32* @_malloc(i32 1)
	lw t0 28(s10)
	sw t0,32(s10)
	#%d.0 = bitcast i32* %.middle.620 to i32**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,36(s10)
	#%i.10 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,40(s10)
	#%.middle.642 = call i32* @_malloc(i32 1)
	lw t0 40(s10)
	sw t0,44(s10)
	#%q.0 = bitcast i32* %.middle.642 to %struct.Heap_Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,48(s10)
	#%.middle.645 = call i32* @_malloc(i32 1)
	lw t0 48(s10)
	sw t0,52(s10)
	#%src.0 = bitcast i32* %.middle.645 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,56(s10)
	#%.Func.Return.p.34.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,60(s10)
	#%.middle.658 = call i32* @_malloc(i32 1)
	lw t0 60(s10)
	sw t0,64(s10)
	#%node.0 = bitcast i32* %.middle.658 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,68(s10)
	#%.middle.660 = call i32* @_malloc(i32 1)
	lw t0 68(s10)
	sw t0,72(s10)
	#%.Func.Return.p.35.0 = bitcast i32* %.middle.660 to %struct.Node**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,76(s10)
	#%u.1 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,80(s10)
	#%k.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,84(s10)
	#%v.1 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,88(s10)
	#%w.1 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,92(s10)
	#%alt.0 = call i32* @_malloc(i32 1)
	j .L180
	#br label %.block.277
	
.L180:
	la t1 n.0
	lw t0 0(t1)
	sw t0,96(s10)
	# %.middle.618=load i32,i32* @n.0
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,100(s10)
	#%.SizeList.9 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 100(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,104(s10)
	#%.ArrayIdx.9 = getelementptr i32,i32* %.SizeList.9,i32 0
	lw t0 96(s10)
	lw t1 104(s10)
	sw t0,0(t1)
	# store i32 %.middle.618,i32* %.ArrayIdx.9
	lw a0 100(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,612
	sw a0,108(s10)
	#%.middle.619 = call i32* @_malloc_toInt(i32* %.SizeList.9,i32 1)
	lw t0 108(s10)
	sw t0,112(s10)
	#%.new.9 = bitcast i32* %.middle.619 to i32*
	lw t0 112(s10)
	lw t1 24(s10)
	sw t0,0(t1)
	# store i32* %.new.9,i32** %visited.0
	la t1 n.0
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.621=load i32,i32* @n.0
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,120(s10)
	#%.SizeList.10 = call i32* @_malloc(i32 8)
	li t1 0
	lw t0 120(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,124(s10)
	#%.ArrayIdx.10 = getelementptr i32,i32* %.SizeList.10,i32 0
	lw t0 116(s10)
	lw t1 124(s10)
	sw t0,0(t1)
	# store i32 %.middle.621,i32* %.ArrayIdx.10
	lw a0 120(s10)
	li a1 1
	call _malloc_toInt
	addi s10,sp,0
	addi s11,sp,612
	sw a0,128(s10)
	#%.middle.622 = call i32* @_malloc_toInt(i32* %.SizeList.10,i32 1)
	lw t0 128(s10)
	sw t0,132(s10)
	#%.new.10 = bitcast i32* %.middle.622 to i32*
	lw t0 132(s10)
	lw t1 32(s10)
	sw t0,0(t1)
	# store i32* %.new.10,i32** %d.0
	li t0 0
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.10
	j .L181
	#br label %For_Cond.278
	
.L181:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %.middle.625=load i32,i32* %i.10
	la t1 n.0
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.626=load i32,i32* @n.0
	lw t1 136(s10)
	lw t2 140(s10)
	slt t0 t1,t2
	sw t0,144(s10)
	#%.middle.624 = icmp slt i32 %.middle.625,%.middle.626
	lw t0 144(s10)
	bnez t0 .L182
	beqz t0 .L184
	#br i1 %.middle.624,label %For_Body.280,label %For_End.279
	
.L182:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,148(s10)
	# %.middle.627=load i32*,i32** %d.0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,152(s10)
	# %.middle.629=load i32,i32* %i.10
	lw t1 152(s10)
	lw t0 148(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,156(s10)
	#%.middle.628 = getelementptr i32,i32* %.middle.627,i32 %.middle.629
	lw t1 156(s10)
	lw t0 0(t1)
	sw t0,160(s10)
	# %.middle.628.0=load i32,i32* %.middle.628
	la t1 INF.0
	lw t0 0(t1)
	sw t0,164(s10)
	# %.middle.631=load i32,i32* @INF.0
	lw t0 164(s10)
	lw t1 156(s10)
	sw t0,0(t1)
	# store i32 %.middle.631,i32* %.middle.628
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %.middle.632=load i32*,i32** %visited.0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.middle.634=load i32,i32* %i.10
	lw t1 172(s10)
	lw t0 168(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,176(s10)
	#%.middle.633 = getelementptr i32,i32* %.middle.632,i32 %.middle.634
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %.middle.633.0=load i32,i32* %.middle.633
	li t0 0
	lw t1 176(s10)
	sw t0,0(t1)
	# store i32 0,i32* %.middle.633
	j .L183
	#br label %For_Change.281
	
.L183:
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.636=load i32,i32* %i.10
	lw t1 184(s10)
	li t2 1
	add t0,t1,t2
	sw t0,188(s10)
	#%.middle.637 = add i32 %.middle.636,1
	lw t0 188(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store i32 %.middle.637,i32* %i.10
	j .L181
	#br label %For_Cond.278
	
.L184:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,192(s10)
	# %.middle.638=load i32*,i32** %d.0
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,196(s10)
	# %.middle.640=load i32,i32* %s_addr
	lw t1 196(s10)
	lw t0 192(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,200(s10)
	#%.middle.639 = getelementptr i32,i32* %.middle.638,i32 %.middle.640
	lw t1 200(s10)
	lw t0 0(t1)
	sw t0,204(s10)
	# %.middle.639.0=load i32,i32* %.middle.639
	li t0 0
	lw t1 200(s10)
	sw t0,0(t1)
	# store i32 0,i32* %.middle.639
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,208(s10)
	#%.middle.644 = call i32* @_malloc(i32 1)
	lw t0 208(s10)
	sw t0,212(s10)
	#%.middle.643 = bitcast i32* %.middle.644 to %struct.Heap_Node*
	lw a0 212(s10)
	call .func.Heap_Node.construct
	addi s10,sp,0
	#call void @.func.Heap_Node.construct(%struct.Heap_Node* %.middle.643)
	addi s11,sp,612
	lw t0 212(s10)
	lw t1 44(s10)
	sw t0,0(t1)
	# store %struct.Heap_Node* %.middle.643,%struct.Heap_Node** %q.0
	li a0 2
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,216(s10)
	#%.middle.647 = call i32* @_malloc(i32 2)
	lw t0 216(s10)
	sw t0,220(s10)
	#%.middle.646 = bitcast i32* %.middle.647 to %struct.Node*
	lw a0 220(s10)
	call .func.Node.construct
	addi s10,sp,0
	#call void @.func.Node.construct(%struct.Node* %.middle.646)
	addi s11,sp,612
	lw t0 220(s10)
	lw t1 52(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.646,%struct.Node** %src.0
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,224(s10)
	# %src.0.0=load %struct.Node*,%struct.Node** %src.0
	lw t0 224(s10)
	li t1 4
	add t0,t0,t1
	sw t0,228(s10)
	#%.middle.648 = getelementptr %struct.Node,%struct.Node* %src.0.0,i32 0,i32 1
	li t0 0
	lw t1 228(s10)
	sw t0,0(t1)
	# store i32 0,i32* %.middle.648
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,232(s10)
	# %src.0.1=load %struct.Node*,%struct.Node** %src.0
	lw t0 232(s10)
	li t1 0
	add t0,t0,t1
	sw t0,236(s10)
	#%.middle.650 = getelementptr %struct.Node,%struct.Node* %src.0.1,i32 0,i32 0
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,240(s10)
	# %.middle.652=load i32,i32* %s_addr
	lw t0 240(s10)
	lw t1 236(s10)
	sw t0,0(t1)
	# store i32 %.middle.652,i32* %.middle.650
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,244(s10)
	# %.middle.653=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,248(s10)
	# %.middle.654=load %struct.Node*,%struct.Node** %src.0
	lw a0 244(s10)
	lw a1 248(s10)
	call .func.Heap_Node.push
	addi s10,sp,0
	#call void @.func.Heap_Node.push(%struct.Heap_Node* %.middle.653,%struct.Node* %.middle.654)
	addi s11,sp,612
	j .L185
	#br label %While_Cond.282
	
.L185:
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,252(s10)
	# %.middle.655=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	lw a0 252(s10)
	call .func.Heap_Node.size
	addi s10,sp,0
	addi s11,sp,612
	sw a0,256(s10)
	#%.Func_Return.34 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.655)
	lw t0 256(s10)
	lw t1 56(s10)
	sw t0,0(t1)
	# store i32 %.Func_Return.34,i32* %.Func.Return.p.34.0
	lw t1 56(s10)
	lw t0 0(t1)
	sw t0,260(s10)
	# %.middle.657=load i32,i32* %.Func.Return.p.34.0
	lw t1 260(s10)
	li t2 0
	sub t1,t1,t2
	snez t0 t1
	sw t0,264(s10)
	#%.middle.656 = icmp ne i32 %.middle.657,0
	lw t0 264(s10)
	bnez t0 .L186
	beqz t0 .L199
	#br i1 %.middle.656,label %While_Body.283,label %While_End.284
	
.L186:
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,268(s10)
	# %.middle.659=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	lw a0 268(s10)
	call .func.Heap_Node.pop
	addi s10,sp,0
	addi s11,sp,612
	sw a0,272(s10)
	#%.Func_Return.35 = call %struct.Node* @.func.Heap_Node.pop(%struct.Heap_Node* %.middle.659)
	lw t0 272(s10)
	lw t1 72(s10)
	sw t0,0(t1)
	# store %struct.Node* %.Func_Return.35,%struct.Node** %.Func.Return.p.35.0
	lw t1 72(s10)
	lw t0 0(t1)
	sw t0,276(s10)
	# %.middle.661=load %struct.Node*,%struct.Node** %.Func.Return.p.35.0
	lw t0 276(s10)
	lw t1 64(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.661,%struct.Node** %node.0
	lw t1 64(s10)
	lw t0 0(t1)
	sw t0,280(s10)
	# %node.0.0=load %struct.Node*,%struct.Node** %node.0
	lw t0 280(s10)
	li t1 0
	add t0,t0,t1
	sw t0,284(s10)
	#%.middle.662 = getelementptr %struct.Node,%struct.Node* %node.0.0,i32 0,i32 0
	lw t1 284(s10)
	lw t0 0(t1)
	sw t0,288(s10)
	# %.middle.663=load i32,i32* %.middle.662
	lw t0 288(s10)
	lw t1 76(s10)
	sw t0,0(t1)
	# store i32 %.middle.663,i32* %u.1
	j .L187
	#br label %If_Cond.285
	
.L187:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,292(s10)
	# %.middle.664=load i32*,i32** %visited.0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,296(s10)
	# %.middle.666=load i32,i32* %u.1
	lw t1 296(s10)
	lw t0 292(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,300(s10)
	#%.middle.665 = getelementptr i32,i32* %.middle.664,i32 %.middle.666
	lw t1 300(s10)
	lw t0 0(t1)
	sw t0,304(s10)
	# %.middle.665.0=load i32,i32* %.middle.665
	lw t1 300(s10)
	lw t0 0(t1)
	sw t0,308(s10)
	# %.middle.668=load i32,i32* %.middle.665
	lw t1 308(s10)
	li t2 1
	sub t1,t1,t2
	seqz t0 t1
	sw t0,312(s10)
	#%.middle.667 = icmp eq i32 %.middle.668,1
	lw t0 312(s10)
	bnez t0 .L188
	beqz t0 .L189
	#br i1 %.middle.667,label %If_Then.286,label %If_Else.287
	
.L188:
	j .L185
	#br label %While_Cond.282
	
.L189:
	j .L190
	#br label %If_End.288
	
.L190:
	lw t1 24(s10)
	lw t0 0(t1)
	sw t0,316(s10)
	# %.middle.669=load i32*,i32** %visited.0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,320(s10)
	# %.middle.671=load i32,i32* %u.1
	lw t1 320(s10)
	lw t0 316(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,324(s10)
	#%.middle.670 = getelementptr i32,i32* %.middle.669,i32 %.middle.671
	lw t1 324(s10)
	lw t0 0(t1)
	sw t0,328(s10)
	# %.middle.670.0=load i32,i32* %.middle.670
	li t0 1
	lw t1 324(s10)
	sw t0,0(t1)
	# store i32 1,i32* %.middle.670
	la t1 g.0
	lw t0 0(t1)
	sw t0,332(s10)
	# %g.0.0=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 332(s10)
	li t1 12
	add t0,t0,t1
	sw t0,336(s10)
	#%.middle.673 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.0,i32 0,i32 3
	lw t1 336(s10)
	lw t0 0(t1)
	sw t0,340(s10)
	# %.middle.674=load i32*,i32** %.middle.673
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,344(s10)
	# %.middle.676=load i32,i32* %u.1
	lw t1 344(s10)
	lw t0 340(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,348(s10)
	#%.middle.675 = getelementptr i32,i32* %.middle.674,i32 %.middle.676
	lw t1 348(s10)
	lw t0 0(t1)
	sw t0,352(s10)
	# %.middle.675.0=load i32,i32* %.middle.675
	lw t1 348(s10)
	lw t0 0(t1)
	sw t0,356(s10)
	# %.middle.678=load i32,i32* %.middle.675
	lw t0 356(s10)
	lw t1 80(s10)
	sw t0,0(t1)
	# store i32 %.middle.678,i32* %k.0
	j .L191
	#br label %For_Cond.289
	
.L191:
	li t1 0
	li t2 1
	sub t0,t1,t2
	sw t0,360(s10)
	#%.middle.679 = sub i32 0,1
	lw t1 80(s10)
	lw t0 0(t1)
	sw t0,364(s10)
	# %.middle.681=load i32,i32* %k.0
	lw t1 364(s10)
	lw t2 360(s10)
	sub t1,t1,t2
	snez t0 t1
	sw t0,368(s10)
	#%.middle.680 = icmp ne i32 %.middle.681,%.middle.679
	lw t0 368(s10)
	bnez t0 .L192
	beqz t0 .L198
	#br i1 %.middle.680,label %For_Body.291,label %For_End.290
	
.L192:
	la t1 g.0
	lw t0 0(t1)
	sw t0,372(s10)
	# %g.0.1=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 372(s10)
	li t1 8
	add t0,t0,t1
	sw t0,376(s10)
	#%.middle.682 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.1,i32 0,i32 2
	lw t1 376(s10)
	lw t0 0(t1)
	sw t0,380(s10)
	# %.middle.683=load %struct.Edge**,%struct.Edge*** %.middle.682
	lw t1 80(s10)
	lw t0 0(t1)
	sw t0,384(s10)
	# %.middle.685=load i32,i32* %k.0
	lw t1 384(s10)
	lw t0 380(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,388(s10)
	#%.middle.684 = getelementptr %struct.Edge*,%struct.Edge** %.middle.683,i32 %.middle.685
	lw t1 388(s10)
	lw t0 0(t1)
	sw t0,392(s10)
	# %.middle.684.0=load %struct.Edge*,%struct.Edge** %.middle.684
	lw t1 388(s10)
	lw t0 0(t1)
	sw t0,396(s10)
	# %.middle.684.1=load %struct.Edge*,%struct.Edge** %.middle.684
	lw t0 396(s10)
	li t1 8
	add t0,t0,t1
	sw t0,400(s10)
	#%.middle.686 = getelementptr %struct.Edge,%struct.Edge* %.middle.684.1,i32 0,i32 2
	lw t1 400(s10)
	lw t0 0(t1)
	sw t0,404(s10)
	# %.middle.687=load i32,i32* %.middle.686
	lw t0 404(s10)
	lw t1 84(s10)
	sw t0,0(t1)
	# store i32 %.middle.687,i32* %v.1
	la t1 g.0
	lw t0 0(t1)
	sw t0,408(s10)
	# %g.0.2=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 408(s10)
	li t1 8
	add t0,t0,t1
	sw t0,412(s10)
	#%.middle.688 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.2,i32 0,i32 2
	lw t1 412(s10)
	lw t0 0(t1)
	sw t0,416(s10)
	# %.middle.689=load %struct.Edge**,%struct.Edge*** %.middle.688
	lw t1 80(s10)
	lw t0 0(t1)
	sw t0,420(s10)
	# %.middle.691=load i32,i32* %k.0
	lw t1 420(s10)
	lw t0 416(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,424(s10)
	#%.middle.690 = getelementptr %struct.Edge*,%struct.Edge** %.middle.689,i32 %.middle.691
	lw t1 424(s10)
	lw t0 0(t1)
	sw t0,428(s10)
	# %.middle.690.0=load %struct.Edge*,%struct.Edge** %.middle.690
	lw t1 424(s10)
	lw t0 0(t1)
	sw t0,432(s10)
	# %.middle.690.1=load %struct.Edge*,%struct.Edge** %.middle.690
	lw t0 432(s10)
	li t1 0
	add t0,t0,t1
	sw t0,436(s10)
	#%.middle.692 = getelementptr %struct.Edge,%struct.Edge* %.middle.690.1,i32 0,i32 0
	lw t1 436(s10)
	lw t0 0(t1)
	sw t0,440(s10)
	# %.middle.693=load i32,i32* %.middle.692
	lw t0 440(s10)
	lw t1 88(s10)
	sw t0,0(t1)
	# store i32 %.middle.693,i32* %w.1
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,444(s10)
	# %.middle.694=load i32*,i32** %d.0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,448(s10)
	# %.middle.696=load i32,i32* %u.1
	lw t1 448(s10)
	lw t0 444(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,452(s10)
	#%.middle.695 = getelementptr i32,i32* %.middle.694,i32 %.middle.696
	lw t1 452(s10)
	lw t0 0(t1)
	sw t0,456(s10)
	# %.middle.695.0=load i32,i32* %.middle.695
	lw t1 452(s10)
	lw t0 0(t1)
	sw t0,460(s10)
	# %.middle.698=load i32,i32* %.middle.695
	lw t1 88(s10)
	lw t0 0(t1)
	sw t0,464(s10)
	# %.middle.699=load i32,i32* %w.1
	lw t1 460(s10)
	lw t2 464(s10)
	add t0,t1,t2
	sw t0,468(s10)
	#%.middle.697 = add i32 %.middle.698,%.middle.699
	lw t0 468(s10)
	lw t1 92(s10)
	sw t0,0(t1)
	# store i32 %.middle.697,i32* %alt.0
	j .L193
	#br label %If_Cond.293
	
.L193:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,472(s10)
	# %.middle.700=load i32*,i32** %d.0
	lw t1 84(s10)
	lw t0 0(t1)
	sw t0,476(s10)
	# %.middle.702=load i32,i32* %v.1
	lw t1 476(s10)
	lw t0 472(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,480(s10)
	#%.middle.701 = getelementptr i32,i32* %.middle.700,i32 %.middle.702
	lw t1 480(s10)
	lw t0 0(t1)
	sw t0,484(s10)
	# %.middle.701.0=load i32,i32* %.middle.701
	lw t1 92(s10)
	lw t0 0(t1)
	sw t0,488(s10)
	# %.middle.704=load i32,i32* %alt.0
	lw t1 480(s10)
	lw t0 0(t1)
	sw t0,492(s10)
	# %.middle.705=load i32,i32* %.middle.701
	lw t1 488(s10)
	lw t2 492(s10)
	sub t1,t2,t1
	slti t0 t1,1
	sw t0,496(s10)
	#%.middle.703 = icmp sge i32 %.middle.704,%.middle.705
	lw t0 496(s10)
	bnez t0 .L194
	beqz t0 .L195
	#br i1 %.middle.703,label %If_Then.294,label %If_Else.295
	
.L194:
	j .L197
	#br label %For_Change.292
	
.L195:
	j .L196
	#br label %If_End.296
	
.L196:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,500(s10)
	# %.middle.706=load i32*,i32** %d.0
	lw t1 84(s10)
	lw t0 0(t1)
	sw t0,504(s10)
	# %.middle.708=load i32,i32* %v.1
	lw t1 504(s10)
	lw t0 500(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,508(s10)
	#%.middle.707 = getelementptr i32,i32* %.middle.706,i32 %.middle.708
	lw t1 508(s10)
	lw t0 0(t1)
	sw t0,512(s10)
	# %.middle.707.0=load i32,i32* %.middle.707
	lw t1 92(s10)
	lw t0 0(t1)
	sw t0,516(s10)
	# %.middle.710=load i32,i32* %alt.0
	lw t0 516(s10)
	lw t1 508(s10)
	sw t0,0(t1)
	# store i32 %.middle.710,i32* %.middle.707
	li a0 2
	call _malloc
	addi s10,sp,0
	addi s11,sp,612
	sw a0,520(s10)
	#%.middle.712 = call i32* @_malloc(i32 2)
	lw t0 520(s10)
	sw t0,524(s10)
	#%.middle.711 = bitcast i32* %.middle.712 to %struct.Node*
	lw a0 524(s10)
	call .func.Node.construct
	addi s10,sp,0
	#call void @.func.Node.construct(%struct.Node* %.middle.711)
	addi s11,sp,612
	lw t0 524(s10)
	lw t1 64(s10)
	sw t0,0(t1)
	# store %struct.Node* %.middle.711,%struct.Node** %node.0
	lw t1 64(s10)
	lw t0 0(t1)
	sw t0,528(s10)
	# %node.0.1=load %struct.Node*,%struct.Node** %node.0
	lw t0 528(s10)
	li t1 0
	add t0,t0,t1
	sw t0,532(s10)
	#%.middle.714 = getelementptr %struct.Node,%struct.Node* %node.0.1,i32 0,i32 0
	lw t1 84(s10)
	lw t0 0(t1)
	sw t0,536(s10)
	# %.middle.716=load i32,i32* %v.1
	lw t0 536(s10)
	lw t1 532(s10)
	sw t0,0(t1)
	# store i32 %.middle.716,i32* %.middle.714
	lw t1 64(s10)
	lw t0 0(t1)
	sw t0,540(s10)
	# %node.0.2=load %struct.Node*,%struct.Node** %node.0
	lw t0 540(s10)
	li t1 4
	add t0,t0,t1
	sw t0,544(s10)
	#%.middle.717 = getelementptr %struct.Node,%struct.Node* %node.0.2,i32 0,i32 1
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,548(s10)
	# %.middle.718=load i32*,i32** %d.0
	lw t1 84(s10)
	lw t0 0(t1)
	sw t0,552(s10)
	# %.middle.720=load i32,i32* %v.1
	lw t1 552(s10)
	lw t0 548(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,556(s10)
	#%.middle.719 = getelementptr i32,i32* %.middle.718,i32 %.middle.720
	lw t1 556(s10)
	lw t0 0(t1)
	sw t0,560(s10)
	# %.middle.719.0=load i32,i32* %.middle.719
	lw t1 556(s10)
	lw t0 0(t1)
	sw t0,564(s10)
	# %.middle.722=load i32,i32* %.middle.719
	lw t0 564(s10)
	lw t1 544(s10)
	sw t0,0(t1)
	# store i32 %.middle.722,i32* %.middle.717
	lw t1 44(s10)
	lw t0 0(t1)
	sw t0,568(s10)
	# %.middle.723=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	lw t1 64(s10)
	lw t0 0(t1)
	sw t0,572(s10)
	# %.middle.724=load %struct.Node*,%struct.Node** %node.0
	lw a0 568(s10)
	lw a1 572(s10)
	call .func.Heap_Node.push
	addi s10,sp,0
	#call void @.func.Heap_Node.push(%struct.Heap_Node* %.middle.723,%struct.Node* %.middle.724)
	addi s11,sp,612
	j .L197
	#br label %For_Change.292
	
.L197:
	la t1 g.0
	lw t0 0(t1)
	sw t0,576(s10)
	# %g.0.3=load %struct.EdgeList*,%struct.EdgeList** @g.0
	lw t0 576(s10)
	li t1 0
	add t0,t0,t1
	sw t0,580(s10)
	#%.middle.725 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.3,i32 0,i32 0
	lw t1 580(s10)
	lw t0 0(t1)
	sw t0,584(s10)
	# %.middle.726=load i32*,i32** %.middle.725
	lw t1 80(s10)
	lw t0 0(t1)
	sw t0,588(s10)
	# %.middle.728=load i32,i32* %k.0
	lw t1 588(s10)
	lw t0 584(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,592(s10)
	#%.middle.727 = getelementptr i32,i32* %.middle.726,i32 %.middle.728
	lw t1 592(s10)
	lw t0 0(t1)
	sw t0,596(s10)
	# %.middle.727.0=load i32,i32* %.middle.727
	lw t1 592(s10)
	lw t0 0(t1)
	sw t0,600(s10)
	# %.middle.730=load i32,i32* %.middle.727
	lw t0 600(s10)
	lw t1 80(s10)
	sw t0,0(t1)
	# store i32 %.middle.730,i32* %k.0
	j .L191
	#br label %For_Cond.289
	
.L198:
	j .L185
	#br label %While_Cond.282
	
.L199:
	lw t1 32(s10)
	lw t0 0(t1)
	sw t0,604(s10)
	# %.middle.731=load i32*,i32** %d.0
	lw t0 604(s10)
	lw t1 16(s10)
	sw t0,0(t1)
	# store i32* %.middle.731,i32** %.retval.p
	j .func.dijkstra.Exit
	#br label %Exit.276
	
.func.dijkstra.Exit:
	lw t1 16(s10)
	lw t0 0(t1)
	sw t0,608(s10)
	# %.retval=load i32*,i32** %.retval.p
	lw a0 608(s10)
	lw ra 0(s10)
	addi sp,sp,612
	ret
	#ret i32* %.retval
	

    .globl main
main:


addi sp,sp,-248
	addi s10,sp,0
	addi s11,sp,248
	sw ra,0(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,4(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,8(s10)
	#%i.11 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,12(s10)
	#%j.0 = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,16(s10)
	#%.middle.736 = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%d.1 = bitcast i32* %.middle.736 to i32**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,24(s10)
	#%.middle.738 = call i32* @_malloc(i32 1)
	lw t0 24(s10)
	sw t0,28(s10)
	#%.Func.Return.p.36.0 = bitcast i32* %.middle.738 to i32**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,32(s10)
	#%.middle.750 = call i32* @_malloc(i32 1)
	lw t0 32(s10)
	sw t0,36(s10)
	#%.TmpString.2.0 = bitcast i32* %.middle.750 to %struct.string**
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,40(s10)
	#%.middle.752 = call i32* @_malloc(i32 8)
	lw t0 40(s10)
	sw t0,44(s10)
	#%.middle.751 = bitcast i32* %.middle.752 to %struct.string*
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,48(s10)
	#%.middle.758 = call i32* @_malloc(i32 1)
	lw t0 48(s10)
	sw t0,52(s10)
	#%.Func.Return.p.37.0 = bitcast i32* %.middle.758 to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,56(s10)
	#%.middle.760 = call i32* @_malloc(i32 1)
	lw t0 56(s10)
	sw t0,60(s10)
	#%.TmpString.3.0 = bitcast i32* %.middle.760 to %struct.string**
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,64(s10)
	#%.middle.762 = call i32* @_malloc(i32 8)
	lw t0 64(s10)
	sw t0,68(s10)
	#%.middle.761 = bitcast i32* %.middle.762 to %struct.string*
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,72(s10)
	#%.middle.766 = call i32* @_malloc(i32 1)
	lw t0 72(s10)
	sw t0,76(s10)
	#%.TmpString.4.0 = bitcast i32* %.middle.766 to %struct.string**
	li a0 8
	call _malloc
	addi s10,sp,0
	addi s11,sp,248
	sw a0,80(s10)
	#%.middle.768 = call i32* @_malloc(i32 8)
	lw t0 80(s10)
	sw t0,84(s10)
	#%.middle.767 = bitcast i32* %.middle.768 to %struct.string*
	j .L200
	#br label %.block.299
	
.L200:
	call .init
	addi s10,sp,0
	#call void @.init()
	addi s11,sp,248
	call .func.init
	addi s10,sp,0
	#call void @.func.init()
	addi s11,sp,248
	li t0 0
	lw t1 8(s10)
	sw t0,0(t1)
	# store i32 0,i32* %i.11
	j .L201
	#br label %For_Cond.300
	
.L201:
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,88(s10)
	# %.middle.734=load i32,i32* %i.11
	la t1 n.0
	lw t0 0(t1)
	sw t0,92(s10)
	# %.middle.735=load i32,i32* @n.0
	lw t1 88(s10)
	lw t2 92(s10)
	slt t0 t1,t2
	sw t0,96(s10)
	#%.middle.733 = icmp slt i32 %.middle.734,%.middle.735
	lw t0 96(s10)
	bnez t0 .L202
	beqz t0 .L212
	#br i1 %.middle.733,label %For_Body.302,label %For_End.301
	
.L202:
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,100(s10)
	# %.middle.737=load i32,i32* %i.11
	lw a0 100(s10)
	call .func.dijkstra
	addi s10,sp,0
	addi s11,sp,248
	sw a0,104(s10)
	#%.Func_Return.36 = call i32* @.func.dijkstra(i32 %.middle.737)
	lw t0 104(s10)
	lw t1 28(s10)
	sw t0,0(t1)
	# store i32* %.Func_Return.36,i32** %.Func.Return.p.36.0
	lw t1 28(s10)
	lw t0 0(t1)
	sw t0,108(s10)
	# %.middle.739=load i32*,i32** %.Func.Return.p.36.0
	lw t0 108(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store i32* %.middle.739,i32** %d.1
	li t0 0
	lw t1 12(s10)
	sw t0,0(t1)
	# store i32 0,i32* %j.0
	j .L203
	#br label %For_Cond.304
	
.L203:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,112(s10)
	# %.middle.742=load i32,i32* %j.0
	la t1 n.0
	lw t0 0(t1)
	sw t0,116(s10)
	# %.middle.743=load i32,i32* @n.0
	lw t1 112(s10)
	lw t2 116(s10)
	slt t0 t1,t2
	sw t0,120(s10)
	#%.middle.741 = icmp slt i32 %.middle.742,%.middle.743
	lw t0 120(s10)
	bnez t0 .L204
	beqz t0 .L210
	#br i1 %.middle.741,label %For_Body.306,label %For_End.305
	
.L204:
	j .L205
	#br label %If_Cond.308
	
.L205:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,124(s10)
	# %.middle.744=load i32*,i32** %d.1
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,128(s10)
	# %.middle.746=load i32,i32* %j.0
	lw t1 128(s10)
	lw t0 124(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,132(s10)
	#%.middle.745 = getelementptr i32,i32* %.middle.744,i32 %.middle.746
	lw t1 132(s10)
	lw t0 0(t1)
	sw t0,136(s10)
	# %.middle.745.0=load i32,i32* %.middle.745
	lw t1 132(s10)
	lw t0 0(t1)
	sw t0,140(s10)
	# %.middle.748=load i32,i32* %.middle.745
	la t1 INF.0
	lw t0 0(t1)
	sw t0,144(s10)
	# %.middle.749=load i32,i32* @INF.0
	lw t1 140(s10)
	lw t2 144(s10)
	sub t1,t1,t2
	seqz t0 t1
	sw t0,148(s10)
	#%.middle.747 = icmp eq i32 %.middle.748,%.middle.749
	lw t0 148(s10)
	bnez t0 .L206
	beqz t0 .L207
	#br i1 %.middle.747,label %If_Then.309,label %If_Else.310
	
.L206:
	lw a0 44(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.751)
	addi s11,sp,248
	lw t0 44(s10)
	li t1 0
	add t0,t0,t1
	sw t0,152(s10)
	#%.TmpLen.2 = getelementptr %struct.string,%struct.string* %.middle.751,i32 0,i32 0
	li t0 2
	lw t1 152(s10)
	sw t0,0(t1)
	# store i32 2,i32* %.TmpLen.2
	lw t0 44(s10)
	li t1 4
	add t0,t0,t1
	sw t0,156(s10)
	#%.TmpContent.2 = getelementptr %struct.string,%struct.string* %.middle.751,i32 0,i32 1
	la t0 .ConstantString.2
	li t1 0
	add t0,t0,t1
	sw t0,160(s10)
	#%.TmpConstRef.2 = getelementptr [2 x i32],[2 x i32]* @.ConstantString.2,i32 0,i32 0
	lw t0 160(s10)
	lw t1 156(s10)
	sw t0,0(t1)
	# store i32* %.TmpConstRef.2,i32** %.TmpContent.2
	lw t0 44(s10)
	lw t1 36(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.751,%struct.string** %.TmpString.2.0
	lw t1 36(s10)
	lw t0 0(t1)
	sw t0,164(s10)
	# %.middle.753=load %struct.string*,%struct.string** %.TmpString.2.0
	lw a0 164(s10)
	call .func.print
	addi s10,sp,0
	#call void @.func.print(%struct.string* %.middle.753)
	addi s11,sp,248
	j .L208
	#br label %If_End.311
	
.L207:
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,168(s10)
	# %.middle.754=load i32*,i32** %d.1
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,172(s10)
	# %.middle.756=load i32,i32* %j.0
	lw t1 172(s10)
	lw t0 168(s10)
	slli t1,t1,2
	add t0,t0,t1
	sw t0,176(s10)
	#%.middle.755 = getelementptr i32,i32* %.middle.754,i32 %.middle.756
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,180(s10)
	# %.middle.755.0=load i32,i32* %.middle.755
	lw t1 176(s10)
	lw t0 0(t1)
	sw t0,184(s10)
	# %.middle.757=load i32,i32* %.middle.755
	lw a0 184(s10)
	call .func.toString
	addi s10,sp,0
	addi s11,sp,248
	sw a0,188(s10)
	#%.Func_Return.37 = call %struct.string* @.func.toString(i32 %.middle.757)
	lw t0 188(s10)
	lw t1 52(s10)
	sw t0,0(t1)
	# store %struct.string* %.Func_Return.37,%struct.string** %.Func.Return.p.37.0
	lw t1 52(s10)
	lw t0 0(t1)
	sw t0,192(s10)
	# %.middle.759=load %struct.string*,%struct.string** %.Func.Return.p.37.0
	lw a0 192(s10)
	call .func.print
	addi s10,sp,0
	#call void @.func.print(%struct.string* %.middle.759)
	addi s11,sp,248
	j .L208
	#br label %If_End.311
	
.L208:
	lw a0 68(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.761)
	addi s11,sp,248
	lw t0 68(s10)
	li t1 0
	add t0,t0,t1
	sw t0,196(s10)
	#%.TmpLen.3 = getelementptr %struct.string,%struct.string* %.middle.761,i32 0,i32 0
	li t0 1
	lw t1 196(s10)
	sw t0,0(t1)
	# store i32 1,i32* %.TmpLen.3
	lw t0 68(s10)
	li t1 4
	add t0,t0,t1
	sw t0,200(s10)
	#%.TmpContent.3 = getelementptr %struct.string,%struct.string* %.middle.761,i32 0,i32 1
	la t0 .ConstantString.3
	li t1 0
	add t0,t0,t1
	sw t0,204(s10)
	#%.TmpConstRef.3 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.3,i32 0,i32 0
	lw t0 204(s10)
	lw t1 200(s10)
	sw t0,0(t1)
	# store i32* %.TmpConstRef.3,i32** %.TmpContent.3
	lw t0 68(s10)
	lw t1 60(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.761,%struct.string** %.TmpString.3.0
	lw t1 60(s10)
	lw t0 0(t1)
	sw t0,208(s10)
	# %.middle.763=load %struct.string*,%struct.string** %.TmpString.3.0
	lw a0 208(s10)
	call .func.print
	addi s10,sp,0
	#call void @.func.print(%struct.string* %.middle.763)
	addi s11,sp,248
	j .L209
	#br label %For_Change.307
	
.L209:
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,212(s10)
	# %.middle.764=load i32,i32* %j.0
	lw t1 212(s10)
	li t2 1
	add t0,t1,t2
	sw t0,216(s10)
	#%.middle.765 = add i32 %.middle.764,1
	lw t0 216(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store i32 %.middle.765,i32* %j.0
	j .L203
	#br label %For_Cond.304
	
.L210:
	lw a0 84(s10)
	call .func.string.construct
	addi s10,sp,0
	#call void @.func.string.construct(%struct.string* %.middle.767)
	addi s11,sp,248
	lw t0 84(s10)
	li t1 0
	add t0,t0,t1
	sw t0,220(s10)
	#%.TmpLen.4 = getelementptr %struct.string,%struct.string* %.middle.767,i32 0,i32 0
	li t0 0
	lw t1 220(s10)
	sw t0,0(t1)
	# store i32 0,i32* %.TmpLen.4
	lw t0 84(s10)
	li t1 4
	add t0,t0,t1
	sw t0,224(s10)
	#%.TmpContent.4 = getelementptr %struct.string,%struct.string* %.middle.767,i32 0,i32 1
	la t0 .ConstantString.4
	li t1 0
	add t0,t0,t1
	sw t0,228(s10)
	#%.TmpConstRef.4 = getelementptr [0 x i32],[0 x i32]* @.ConstantString.4,i32 0,i32 0
	lw t0 228(s10)
	lw t1 224(s10)
	sw t0,0(t1)
	# store i32* %.TmpConstRef.4,i32** %.TmpContent.4
	lw t0 84(s10)
	lw t1 76(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.767,%struct.string** %.TmpString.4.0
	lw t1 76(s10)
	lw t0 0(t1)
	sw t0,232(s10)
	# %.middle.769=load %struct.string*,%struct.string** %.TmpString.4.0
	lw a0 232(s10)
	call .func.println
	addi s10,sp,0
	#call void @.func.println(%struct.string* %.middle.769)
	addi s11,sp,248
	j .L211
	#br label %For_Change.303
	
.L211:
	lw t1 8(s10)
	lw t0 0(t1)
	sw t0,236(s10)
	# %.middle.770=load i32,i32* %i.11
	lw t1 236(s10)
	li t2 1
	add t0,t1,t2
	sw t0,240(s10)
	#%.middle.771 = add i32 %.middle.770,1
	lw t0 240(s10)
	lw t1 8(s10)
	sw t0,0(t1)
	# store i32 %.middle.771,i32* %i.11
	j .L201
	#br label %For_Cond.300
	
.L212:
	li t0 0
	lw t1 4(s10)
	sw t0,0(t1)
	# store i32 0,i32* %.retval.p
	j main.Exit
	#br label %Exit.298
	
main.Exit:
	lw t1 4(s10)
	lw t0 0(t1)
	sw t0,244(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 244(s10)
	lw ra 0(s10)
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
    .type   g.0,@object
    .global g.0
g.0:
    .zero 4
    .size g.0,4

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
	
