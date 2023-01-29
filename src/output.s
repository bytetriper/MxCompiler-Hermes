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
	

    .globl main
main:


addi sp,sp,-40
	addi s10,sp,0
	addi s11,sp,40
	sw ra,0(s10)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,40
	sw a0,4(s10)
	#%.retval.p = call i32* @_malloc(i32 1)
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,40
	sw a0,8(s10)
	#%.middle.319 = call i32* @_malloc(i32 1)
	lw t0 8(s10)
	sw t0,12(s10)
	#%s.0 = bitcast i32* %.middle.319 to %struct.string**
	li a0 1
	call _malloc
	addi s10,sp,0
	addi s11,sp,40
	sw a0,16(s10)
	#%.middle.320 = call i32* @_malloc(i32 1)
	lw t0 16(s10)
	sw t0,20(s10)
	#%.Func.Return.p.5.0 = bitcast i32* %.middle.320 to %struct.string**
	j .L105
	#br label %.block.144
	
.L105:
	call .init
	addi s10,sp,0
	#call void @.init()
	addi s11,sp,40
	call .func.getString
	addi s10,sp,0
	addi s11,sp,40
	sw a0,24(s10)
	#%.Func_Return.5 = call %struct.string* @.func.getString()
	lw t0 24(s10)
	lw t1 20(s10)
	sw t0,0(t1)
	# store %struct.string* %.Func_Return.5,%struct.string** %.Func.Return.p.5.0
	lw t1 20(s10)
	lw t0 0(t1)
	sw t0,28(s10)
	# %.middle.321=load %struct.string*,%struct.string** %.Func.Return.p.5.0
	lw t0 28(s10)
	lw t1 12(s10)
	sw t0,0(t1)
	# store %struct.string* %.middle.321,%struct.string** %s.0
	lw t1 12(s10)
	lw t0 0(t1)
	sw t0,32(s10)
	# %.middle.322=load %struct.string*,%struct.string** %s.0
	lw a0 32(s10)
	call .func.print
	addi s10,sp,0
	#call void @.func.print(%struct.string* %.middle.322)
	addi s11,sp,40
	li t0 0
	lw t1 4(s10)
	sw t0,0(t1)
	# store i32 0,i32* %.retval.p
	j main.Exit
	#br label %Exit.143
	
main.Exit:
	lw t1 4(s10)
	lw t0 0(t1)
	sw t0,36(s10)
	# %.retval=load i32,i32* %.retval.p
	lw a0 36(s10)
	lw ra 0(s10)
	addi sp,sp,40
	ret
	#ret i32 %.retval
	

.section data
.ConstantString.0:
	.word 10
	
.section data
.ConstantString.1:
	.word 10
	
