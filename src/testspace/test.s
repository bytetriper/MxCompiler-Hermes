source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
%struct.string =type {i32 ,i32* }
@.ConstantString.0 = private constant [1 x i32] [i32 10]
@.ConstantString.1 = private constant [1 x i32] [i32 10]
declare i32* @scanf_string ()
declare i32 @.func..size ()
declare i32 @getInt ()
declare void @printf_no_collision_please (i32* %null.0,i32 %null.1)
declare void @printInt (i32 %null.2)
declare i32* @_malloc (i32 %null.3)
declare i32* @_malloc_toInt (i32* %null.4,i32 %null.5)
define void @.init(){
Entry.1:
	br label %.block.3

.block.3:
	br label %Exit.2

Exit.2:
	ret void

}

define void @.func.string.construct(%struct.string* %This){
Entry.4:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	 store %struct.string* %This,%struct.string** %This_addr
	br label %.block.6

.block.6:
	br label %Exit.5

Exit.5:
	ret void

}

define i32 @.func.string.length(%struct.string* %This){
Entry.7:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	 store %struct.string* %This,%struct.string** %This_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.9

.block.9:
	 %This_addr.0=load %struct.string*,%struct.string** %This_addr
	%This_addr.len.0 = getelementptr %struct.string,%struct.string* %This_addr.0,i32 0,i32 0
	 %.middle.0=load i32,i32* %This_addr.len.0
	 store i32 %.middle.0,i32* %.retval.p
	br label %Exit.8

Exit.8:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.string.parseInt(%struct.string* %This){
Entry.10:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	 store %struct.string* %This,%struct.string** %This_addr
	%.retval.p = call i32* @_malloc(i32 1)
	%ans.0 = call i32* @_malloc(i32 1)
	%i.0 = call i32* @_malloc(i32 1)
	%RV.0.0 = call i32* @_malloc(i32 1)
	%RV.1.0 = call i32* @_malloc(i32 1)
	br label %.block.12

.block.12:
	 store i32 0,i32* %ans.0
	 store i32 0,i32* %i.0
	br label %For_Cond.13

For_Cond.13:
	 %This_addr.1=load %struct.string*,%struct.string** %This_addr
	%This_addr.len.1 = getelementptr %struct.string,%struct.string* %This_addr.1,i32 0,i32 0
	 %.middle.2=load i32,i32* %i.0
	 %.middle.3=load i32,i32* %This_addr.len.1
	%.middle.1 = icmp slt i32 %.middle.2,%.middle.3
	 store i32 0,i32* %RV.0.0
	br i1 %.middle.1,label %binary_and_rv.17,label %binary_end.18

binary_and_rv.17:
	 %This_addr.2=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.0 = getelementptr %struct.string,%struct.string* %This_addr.2,i32 0,i32 1
	 %.middle.4=load i32*,i32** %This_addr.content.0
	 %.middle.6=load i32,i32* %i.0
	%.middle.5 = getelementptr i32,i32* %.middle.4,i32 %.middle.6
	 %.middle.5.0=load i32,i32* %.middle.5
	 %.middle.8=load i32,i32* %.middle.5
	%.middle.7 = icmp sgt i32 %.middle.8,47
	%.FromBool.0 = zext i1 %.middle.7 to i32
	 store i32 %.FromBool.0,i32* %RV.0.0
	br label %binary_end.18

binary_end.18:
	 %.ToBool.0=load i32,i32* %RV.0.0
	%.middle.10 = trunc i32 %.ToBool.0 to i1
	%.middle.9 = and i1 %.middle.7,%.middle.10
	 store i32 0,i32* %RV.1.0
	br i1 %.middle.9,label %binary_and_rv.19,label %binary_end.20

binary_and_rv.19:
	 %This_addr.3=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.1 = getelementptr %struct.string,%struct.string* %This_addr.3,i32 0,i32 1
	 %.middle.11=load i32*,i32** %This_addr.content.1
	 %.middle.13=load i32,i32* %i.0
	%.middle.12 = getelementptr i32,i32* %.middle.11,i32 %.middle.13
	 %.middle.12.0=load i32,i32* %.middle.12
	 %.middle.15=load i32,i32* %.middle.12
	%.middle.14 = icmp slt i32 %.middle.15,58
	%.FromBool.1 = zext i1 %.middle.14 to i32
	 store i32 %.FromBool.1,i32* %RV.1.0
	br label %binary_end.20

binary_end.20:
	 %.ToBool.1=load i32,i32* %RV.1.0
	%.middle.17 = trunc i32 %.ToBool.1 to i1
	%.middle.16 = and i1 %.middle.14,%.middle.17
	br i1 %.middle.16,label %For_Body.15,label %For_End.14

For_Body.15:
	 %.middle.19=load i32,i32* %ans.0
	%.middle.18 = mul i32 %.middle.19,10
	 %This_addr.4=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.2 = getelementptr %struct.string,%struct.string* %This_addr.4,i32 0,i32 1
	 %.middle.20=load i32*,i32** %This_addr.content.2
	 %.middle.22=load i32,i32* %i.0
	%.middle.21 = getelementptr i32,i32* %.middle.20,i32 %.middle.22
	 %.middle.21.0=load i32,i32* %.middle.21
	 %.middle.24=load i32,i32* %.middle.21
	%.middle.23 = add i32 %.middle.18,%.middle.24
	%.middle.25 = sub i32 %.middle.23,48
	 store i32 %.middle.25,i32* %ans.0
	br label %For_Change.16

For_Change.16:
	 %.middle.27=load i32,i32* %i.0
	 %.middle.29=load i32,i32* %i.0
	%.middle.28 = add i32 %.middle.29,1
	 store i32 %.middle.28,i32* %i.0
	br label %For_Cond.13

For_End.14:
	 %.middle.30=load i32,i32* %ans.0
	 store i32 %.middle.30,i32* %.retval.p
	br label %Exit.11

Exit.11:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.string.ord(%struct.string* %This,i32 %pos){
Entry.21:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	 store %struct.string* %This,%struct.string** %This_addr
	%pos_addr = call i32* @_malloc(i32 1)
	 store i32 %pos,i32* %pos_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.23

.block.23:
	 %This_addr.5=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.3 = getelementptr %struct.string,%struct.string* %This_addr.5,i32 0,i32 1
	 %.middle.31=load i32*,i32** %This_addr.content.3
	 %.middle.33=load i32,i32* %pos_addr
	%.middle.32 = getelementptr i32,i32* %.middle.31,i32 %.middle.33
	 %.middle.32.0=load i32,i32* %.middle.32
	 %.middle.34=load i32,i32* %.middle.32
	 store i32 %.middle.34,i32* %.retval.p
	br label %Exit.22

Exit.22:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define %struct.string* @.func.string.substring(%struct.string* %This,i32 %left,i32 %right){
Entry.24:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.string**
	 store %struct.string* %This,%struct.string** %This_addr
	%left_addr = call i32* @_malloc(i32 1)
	 store i32 %left,i32* %left_addr
	%right_addr = call i32* @_malloc(i32 1)
	 store i32 %right,i32* %right_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.string**
	%.middle.35 = call i32* @_malloc(i32 1)
	%tmp.0 = bitcast i32* %.middle.35 to %struct.string**
	%tmplen.0 = call i32* @_malloc(i32 1)
	%i.1 = call i32* @_malloc(i32 1)
	br label %.block.26

.block.26:
	%.middle.37 = call i32* @_malloc(i32 2)
	%.middle.36 = bitcast i32* %.middle.37 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.36)
	 store %struct.string* %.middle.36,%struct.string** %tmp.0
	 %.middle.39=load i32,i32* %right_addr
	 %.middle.40=load i32,i32* %left_addr
	%.middle.38 = sub i32 %.middle.39,%.middle.40
	 store i32 %.middle.38,i32* %tmplen.0
	 %tmp.0.0=load %struct.string*,%struct.string** %tmp.0
	%.middle.41 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	 %.middle.42=load i32,i32* %tmplen.0
	%.SizeList.0 = call i32* @_malloc(i32 8)
	%.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0,i32 0
	 store i32 %.middle.42,i32* %.ArrayIdx.0
	%.middle.43 = call i32* @_malloc_toInt(i32* %.SizeList.0,i32 1)
	%.new.0 = bitcast i32* %.middle.43 to i32*
	 store i32* %.new.0,i32** %.middle.41
	 %tmp.0.1=load %struct.string*,%struct.string** %tmp.0
	%.middle.45 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	 %.middle.47=load i32,i32* %tmplen.0
	 store i32 %.middle.47,i32* %.middle.45
	 store i32 0,i32* %i.1
	br label %For_Cond.27

For_Cond.27:
	 %.middle.49=load i32,i32* %i.1
	 %.middle.50=load i32,i32* %tmplen.0
	%.middle.48 = icmp slt i32 %.middle.49,%.middle.50
	br i1 %.middle.48,label %For_Body.29,label %For_End.28

For_Body.29:
	 %tmp.0.2=load %struct.string*,%struct.string** %tmp.0
	%.middle.51 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	 %.middle.52=load i32*,i32** %.middle.51
	 %.middle.54=load i32,i32* %i.1
	%.middle.53 = getelementptr i32,i32* %.middle.52,i32 %.middle.54
	 %.middle.53.0=load i32,i32* %.middle.53
	 %This_addr.6=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.4 = getelementptr %struct.string,%struct.string* %This_addr.6,i32 0,i32 1
	 %.middle.55=load i32*,i32** %This_addr.content.4
	 %.middle.57=load i32,i32* %left_addr
	 %.middle.58=load i32,i32* %i.1
	%.middle.56 = add i32 %.middle.57,%.middle.58
	%.middle.59 = getelementptr i32,i32* %.middle.55,i32 %.middle.56
	 %.middle.59.0=load i32,i32* %.middle.59
	 %.middle.61=load i32,i32* %.middle.59
	 store i32 %.middle.61,i32* %.middle.53
	br label %For_Change.30

For_Change.30:
	 %.middle.62=load i32,i32* %i.1
	 %.middle.64=load i32,i32* %i.1
	%.middle.63 = add i32 %.middle.64,1
	 store i32 %.middle.63,i32* %i.1
	br label %For_Cond.27

For_End.28:
	 %.middle.65=load %struct.string*,%struct.string** %tmp.0
	 store %struct.string* %.middle.65,%struct.string** %.retval.p
	br label %Exit.25

Exit.25:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define %struct.string* @.func.Add_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.31:
	%a_addr_inttmp = call i32* @_malloc(i32 1)
	%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr_inttmp = call i32* @_malloc(i32 1)
	%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.string**
	%.middle.66 = call i32* @_malloc(i32 1)
	%tmp.1 = bitcast i32* %.middle.66 to %struct.string**
	%tmplen.1 = call i32* @_malloc(i32 1)
	%alen.0 = call i32* @_malloc(i32 1)
	%blen.0 = call i32* @_malloc(i32 1)
	%i.2 = call i32* @_malloc(i32 1)
	%i.3 = call i32* @_malloc(i32 1)
	br label %.block.33

.block.33:
	%.middle.68 = call i32* @_malloc(i32 2)
	%.middle.67 = bitcast i32* %.middle.68 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.67)
	 store %struct.string* %.middle.67,%struct.string** %tmp.1
	 %a_addr.0=load %struct.string*,%struct.string** %a_addr
	%.middle.69 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	 %b_addr.0=load %struct.string*,%struct.string** %b_addr
	%.middle.70 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	 %.middle.72=load i32,i32* %.middle.69
	 %.middle.73=load i32,i32* %.middle.70
	%.middle.71 = add i32 %.middle.72,%.middle.73
	 store i32 %.middle.71,i32* %tmplen.1
	 %a_addr.1=load %struct.string*,%struct.string** %a_addr
	%.middle.74 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	 %.middle.75=load i32,i32* %.middle.74
	 store i32 %.middle.75,i32* %alen.0
	 %b_addr.1=load %struct.string*,%struct.string** %b_addr
	%.middle.76 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	 %.middle.77=load i32,i32* %.middle.76
	 store i32 %.middle.77,i32* %blen.0
	 %tmp.1.0=load %struct.string*,%struct.string** %tmp.1
	%.middle.78 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	 %.middle.80=load i32,i32* %tmplen.1
	 store i32 %.middle.80,i32* %.middle.78
	 %tmp.1.1=load %struct.string*,%struct.string** %tmp.1
	%.middle.81 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	 %.middle.82=load i32,i32* %tmplen.1
	%.SizeList.1 = call i32* @_malloc(i32 8)
	%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	 store i32 %.middle.82,i32* %.ArrayIdx.1
	%.middle.83 = call i32* @_malloc_toInt(i32* %.SizeList.1,i32 1)
	%.new.1 = bitcast i32* %.middle.83 to i32*
	 store i32* %.new.1,i32** %.middle.81
	 store i32 0,i32* %i.2
	br label %For_Cond.34

For_Cond.34:
	 %.middle.86=load i32,i32* %i.2
	 %.middle.87=load i32,i32* %alen.0
	%.middle.85 = icmp slt i32 %.middle.86,%.middle.87
	br i1 %.middle.85,label %For_Body.36,label %For_End.35

For_Body.36:
	 %tmp.1.2=load %struct.string*,%struct.string** %tmp.1
	%.middle.88 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	 %.middle.89=load i32*,i32** %.middle.88
	 %.middle.91=load i32,i32* %i.2
	%.middle.90 = getelementptr i32,i32* %.middle.89,i32 %.middle.91
	 %.middle.90.0=load i32,i32* %.middle.90
	 %a_addr.2=load %struct.string*,%struct.string** %a_addr
	%.middle.92 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	 %.middle.93=load i32*,i32** %.middle.92
	 %.middle.95=load i32,i32* %i.2
	%.middle.94 = getelementptr i32,i32* %.middle.93,i32 %.middle.95
	 %.middle.94.0=load i32,i32* %.middle.94
	 %.middle.97=load i32,i32* %.middle.94
	 store i32 %.middle.97,i32* %.middle.90
	br label %For_Change.37

For_Change.37:
	 %.middle.98=load i32,i32* %i.2
	%.middle.99 = add i32 %.middle.98,1
	 store i32 %.middle.99,i32* %i.2
	br label %For_Cond.34

For_End.35:
	 store i32 0,i32* %i.3
	br label %For_Cond.38

For_Cond.38:
	 %.middle.101=load i32,i32* %i.3
	 %.middle.102=load i32,i32* %blen.0
	%.middle.100 = icmp slt i32 %.middle.101,%.middle.102
	br i1 %.middle.100,label %For_Body.40,label %For_End.39

For_Body.40:
	 %tmp.1.3=load %struct.string*,%struct.string** %tmp.1
	%.middle.103 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	 %.middle.104=load i32*,i32** %.middle.103
	 %.middle.106=load i32,i32* %i.3
	 %.middle.107=load i32,i32* %alen.0
	%.middle.105 = add i32 %.middle.106,%.middle.107
	%.middle.108 = getelementptr i32,i32* %.middle.104,i32 %.middle.105
	 %.middle.108.0=load i32,i32* %.middle.108
	 %b_addr.2=load %struct.string*,%struct.string** %b_addr
	%.middle.109 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	 %.middle.110=load i32*,i32** %.middle.109
	 %.middle.112=load i32,i32* %i.3
	%.middle.111 = getelementptr i32,i32* %.middle.110,i32 %.middle.112
	 %.middle.111.0=load i32,i32* %.middle.111
	 %.middle.114=load i32,i32* %.middle.111
	 store i32 %.middle.114,i32* %.middle.108
	br label %For_Change.41

For_Change.41:
	 %.middle.115=load i32,i32* %i.3
	%.middle.116 = add i32 %.middle.115,1
	 store i32 %.middle.116,i32* %i.3
	br label %For_Cond.38

For_End.39:
	 %.middle.117=load %struct.string*,%struct.string** %tmp.1
	 store %struct.string* %.middle.117,%struct.string** %.retval.p
	br label %Exit.32

Exit.32:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.42:
	%a_addr_inttmp = call i32* @_malloc(i32 1)
	%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr_inttmp = call i32* @_malloc(i32 1)
	%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p = call i32* @_malloc(i32 1)
	%len.0 = call i32* @_malloc(i32 1)
	%i.4 = call i32* @_malloc(i32 1)
	br label %.block.44

.block.44:
	 %b_addr.3=load %struct.string*,%struct.string** %b_addr
	%.middle.118 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	 %.middle.119=load i32,i32* %.middle.118
	 store i32 %.middle.119,i32* %len.0
	br label %If_Cond.45

If_Cond.45:
	 %a_addr.3=load %struct.string*,%struct.string** %a_addr
	%.middle.120 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	 %b_addr.4=load %struct.string*,%struct.string** %b_addr
	%.middle.121 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	 %.middle.123=load i32,i32* %.middle.120
	 %.middle.124=load i32,i32* %.middle.121
	%.middle.122 = icmp slt i32 %.middle.123,%.middle.124
	br i1 %.middle.122,label %If_Then.46,label %If_Else.47

If_Then.46:
	 %a_addr.4=load %struct.string*,%struct.string** %a_addr
	%.middle.125 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	 %.middle.127=load i32,i32* %.middle.125
	 store i32 %.middle.127,i32* %len.0
	br label %If_End.48

If_Else.47:
	br label %If_End.48

If_End.48:
	 store i32 0,i32* %i.4
	br label %For_Cond.49

For_Cond.49:
	 %.middle.129=load i32,i32* %i.4
	 %.middle.130=load i32,i32* %len.0
	%.middle.128 = icmp slt i32 %.middle.129,%.middle.130
	br i1 %.middle.128,label %For_Body.51,label %For_End.50

For_Body.51:
	br label %If_Cond.53

If_Cond.53:
	 %a_addr.5=load %struct.string*,%struct.string** %a_addr
	%.middle.131 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	 %.middle.132=load i32*,i32** %.middle.131
	 %.middle.134=load i32,i32* %i.4
	%.middle.133 = getelementptr i32,i32* %.middle.132,i32 %.middle.134
	 %.middle.133.0=load i32,i32* %.middle.133
	 %b_addr.5=load %struct.string*,%struct.string** %b_addr
	%.middle.135 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	 %.middle.136=load i32*,i32** %.middle.135
	 %.middle.138=load i32,i32* %i.4
	%.middle.137 = getelementptr i32,i32* %.middle.136,i32 %.middle.138
	 %.middle.137.0=load i32,i32* %.middle.137
	 %.middle.140=load i32,i32* %.middle.133
	 %.middle.141=load i32,i32* %.middle.137
	%.middle.139 = icmp slt i32 %.middle.140,%.middle.141
	br i1 %.middle.139,label %If_Then.54,label %If_Else.55

If_Then.54:
	%.FromBool.2 = zext i1 1 to i32
	 store i32 %.FromBool.2,i32* %.retval.p
	br label %Exit.43

If_Else.55:
	br label %If_End.56

If_End.56:
	br label %If_Cond.57

If_Cond.57:
	 %a_addr.6=load %struct.string*,%struct.string** %a_addr
	%.middle.142 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	 %.middle.143=load i32*,i32** %.middle.142
	 %.middle.145=load i32,i32* %i.4
	%.middle.144 = getelementptr i32,i32* %.middle.143,i32 %.middle.145
	 %.middle.144.0=load i32,i32* %.middle.144
	 %b_addr.6=load %struct.string*,%struct.string** %b_addr
	%.middle.146 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	 %.middle.147=load i32*,i32** %.middle.146
	 %.middle.149=load i32,i32* %i.4
	%.middle.148 = getelementptr i32,i32* %.middle.147,i32 %.middle.149
	 %.middle.148.0=load i32,i32* %.middle.148
	 %.middle.151=load i32,i32* %.middle.144
	 %.middle.152=load i32,i32* %.middle.148
	%.middle.150 = icmp sgt i32 %.middle.151,%.middle.152
	br i1 %.middle.150,label %If_Then.58,label %If_Else.59

If_Then.58:
	%.FromBool.3 = zext i1 0 to i32
	 store i32 %.FromBool.3,i32* %.retval.p
	br label %Exit.43

If_Else.59:
	br label %If_End.60

If_End.60:
	br label %For_Change.52

For_Change.52:
	 %.middle.153=load i32,i32* %i.4
	%.middle.154 = add i32 %.middle.153,1
	 store i32 %.middle.154,i32* %i.4
	br label %For_Cond.49

For_End.50:
	br label %If_Cond.61

If_Cond.61:
	 %a_addr.7=load %struct.string*,%struct.string** %a_addr
	%.middle.155 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	 %b_addr.7=load %struct.string*,%struct.string** %b_addr
	%.middle.156 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	 %.middle.158=load i32,i32* %.middle.155
	 %.middle.159=load i32,i32* %.middle.156
	%.middle.157 = icmp sgt i32 %.middle.158,%.middle.159
	br i1 %.middle.157,label %If_Then.62,label %If_Else.63

If_Then.62:
	%.FromBool.4 = zext i1 1 to i32
	 store i32 %.FromBool.4,i32* %.retval.p
	br label %Exit.43

If_Else.63:
	br label %If_End.64

If_End.64:
	%.FromBool.5 = zext i1 0 to i32
	 store i32 %.FromBool.5,i32* %.retval.p
	br label %Exit.43

Exit.43:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.65:
	%a_addr_inttmp = call i32* @_malloc(i32 1)
	%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr_inttmp = call i32* @_malloc(i32 1)
	%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p = call i32* @_malloc(i32 1)
	%len.1 = call i32* @_malloc(i32 1)
	%i.5 = call i32* @_malloc(i32 1)
	br label %.block.67

.block.67:
	br label %If_Cond.68

If_Cond.68:
	 %a_addr.8=load %struct.string*,%struct.string** %a_addr
	%.middle.160 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	 %b_addr.8=load %struct.string*,%struct.string** %b_addr
	%.middle.161 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	 %.middle.163=load i32,i32* %.middle.160
	 %.middle.164=load i32,i32* %.middle.161
	%.middle.162 = icmp ne i32 %.middle.163,%.middle.164
	br i1 %.middle.162,label %If_Then.69,label %If_Else.70

If_Then.69:
	%.FromBool.6 = zext i1 0 to i32
	 store i32 %.FromBool.6,i32* %.retval.p
	br label %Exit.66

If_Else.70:
	br label %If_End.71

If_End.71:
	 %a_addr.9=load %struct.string*,%struct.string** %a_addr
	%.middle.165 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	 %.middle.166=load i32,i32* %.middle.165
	 store i32 %.middle.166,i32* %len.1
	 store i32 0,i32* %i.5
	br label %For_Cond.72

For_Cond.72:
	 %.middle.168=load i32,i32* %i.5
	 %.middle.169=load i32,i32* %len.1
	%.middle.167 = icmp slt i32 %.middle.168,%.middle.169
	br i1 %.middle.167,label %For_Body.74,label %For_End.73

For_Body.74:
	br label %If_Cond.76

If_Cond.76:
	 %a_addr.10=load %struct.string*,%struct.string** %a_addr
	%.middle.170 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	 %.middle.171=load i32*,i32** %.middle.170
	 %.middle.173=load i32,i32* %i.5
	%.middle.172 = getelementptr i32,i32* %.middle.171,i32 %.middle.173
	 %.middle.172.0=load i32,i32* %.middle.172
	 %b_addr.9=load %struct.string*,%struct.string** %b_addr
	%.middle.174 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	 %.middle.175=load i32*,i32** %.middle.174
	 %.middle.177=load i32,i32* %i.5
	%.middle.176 = getelementptr i32,i32* %.middle.175,i32 %.middle.177
	 %.middle.176.0=load i32,i32* %.middle.176
	 %.middle.179=load i32,i32* %.middle.172
	 %.middle.180=load i32,i32* %.middle.176
	%.middle.178 = icmp ne i32 %.middle.179,%.middle.180
	br i1 %.middle.178,label %If_Then.77,label %If_Else.78

If_Then.77:
	%.FromBool.7 = zext i1 0 to i32
	 store i32 %.FromBool.7,i32* %.retval.p
	br label %Exit.66

If_Else.78:
	br label %If_End.79

If_End.79:
	br label %For_Change.75

For_Change.75:
	 %.middle.181=load i32,i32* %i.5
	%.middle.182 = add i32 %.middle.181,1
	 store i32 %.middle.182,i32* %i.5
	br label %For_Cond.72

For_End.73:
	%.FromBool.8 = zext i1 1 to i32
	 store i32 %.FromBool.8,i32* %.retval.p
	br label %Exit.66

Exit.66:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Not_Equal_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.80:
	%a_addr_inttmp = call i32* @_malloc(i32 1)
	%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr_inttmp = call i32* @_malloc(i32 1)
	%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p = call i32* @_malloc(i32 1)
	%len.2 = call i32* @_malloc(i32 1)
	%i.6 = call i32* @_malloc(i32 1)
	br label %.block.82

.block.82:
	br label %If_Cond.83

If_Cond.83:
	 %a_addr.11=load %struct.string*,%struct.string** %a_addr
	%.middle.183 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	 %b_addr.10=load %struct.string*,%struct.string** %b_addr
	%.middle.184 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	 %.middle.186=load i32,i32* %.middle.183
	 %.middle.187=load i32,i32* %.middle.184
	%.middle.185 = icmp ne i32 %.middle.186,%.middle.187
	br i1 %.middle.185,label %If_Then.84,label %If_Else.85

If_Then.84:
	%.FromBool.9 = zext i1 1 to i32
	 store i32 %.FromBool.9,i32* %.retval.p
	br label %Exit.81

If_Else.85:
	br label %If_End.86

If_End.86:
	 %a_addr.12=load %struct.string*,%struct.string** %a_addr
	%.middle.188 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	 %.middle.189=load i32,i32* %.middle.188
	 store i32 %.middle.189,i32* %len.2
	 store i32 0,i32* %i.6
	br label %For_Cond.87

For_Cond.87:
	 %.middle.191=load i32,i32* %i.6
	 %.middle.192=load i32,i32* %len.2
	%.middle.190 = icmp slt i32 %.middle.191,%.middle.192
	br i1 %.middle.190,label %For_Body.89,label %For_End.88

For_Body.89:
	br label %If_Cond.91

If_Cond.91:
	 %a_addr.13=load %struct.string*,%struct.string** %a_addr
	%.middle.193 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	 %.middle.194=load i32*,i32** %.middle.193
	 %.middle.196=load i32,i32* %i.6
	%.middle.195 = getelementptr i32,i32* %.middle.194,i32 %.middle.196
	 %.middle.195.0=load i32,i32* %.middle.195
	 %b_addr.11=load %struct.string*,%struct.string** %b_addr
	%.middle.197 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	 %.middle.198=load i32*,i32** %.middle.197
	 %.middle.200=load i32,i32* %i.6
	%.middle.199 = getelementptr i32,i32* %.middle.198,i32 %.middle.200
	 %.middle.199.0=load i32,i32* %.middle.199
	 %.middle.202=load i32,i32* %.middle.195
	 %.middle.203=load i32,i32* %.middle.199
	%.middle.201 = icmp ne i32 %.middle.202,%.middle.203
	br i1 %.middle.201,label %If_Then.92,label %If_Else.93

If_Then.92:
	%.FromBool.10 = zext i1 1 to i32
	 store i32 %.FromBool.10,i32* %.retval.p
	br label %Exit.81

If_Else.93:
	br label %If_End.94

If_End.94:
	br label %For_Change.90

For_Change.90:
	 %.middle.204=load i32,i32* %i.6
	%.middle.205 = add i32 %.middle.204,1
	 store i32 %.middle.205,i32* %i.6
	br label %For_Cond.87

For_End.88:
	%.FromBool.11 = zext i1 0 to i32
	 store i32 %.FromBool.11,i32* %.retval.p
	br label %Exit.81

Exit.81:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.95:
	%a_addr_inttmp = call i32* @_malloc(i32 1)
	%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr_inttmp = call i32* @_malloc(i32 1)
	%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p = call i32* @_malloc(i32 1)
	%.Func.Return.p.0.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.1.0 = call i32* @_malloc(i32 1)
	br label %.block.97

.block.97:
	 %.middle.206=load %struct.string*,%struct.string** %a_addr
	 %.middle.207=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.0 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.206,%struct.string* %.middle.207)
	%.FromBool.12 = zext i1 %.Func_Return.0 to i32
	 store i32 %.FromBool.12,i32* %.Func.Return.p.0.0
	 %.middle.208=load %struct.string*,%struct.string** %a_addr
	 %.middle.209=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.1 = call i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %.middle.208,%struct.string* %.middle.209)
	%.FromBool.13 = zext i1 %.Func_Return.1 to i32
	 store i32 %.FromBool.13,i32* %.Func.Return.p.1.0
	 %.ToBool.2=load i32,i32* %.Func.Return.p.0.0
	%.middle.211 = trunc i32 %.ToBool.2 to i1
	 %.ToBool.3=load i32,i32* %.Func.Return.p.1.0
	%.middle.212 = trunc i32 %.ToBool.3 to i1
	%.middle.210 = or i1 %.middle.211,%.middle.212
	%.FromBool.14 = zext i1 %.middle.210 to i32
	 store i32 %.FromBool.14,i32* %.retval.p
	br label %Exit.96

Exit.96:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Greater_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.98:
	%a_addr_inttmp = call i32* @_malloc(i32 1)
	%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr_inttmp = call i32* @_malloc(i32 1)
	%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p = call i32* @_malloc(i32 1)
	%.Func.Return.p.2.0 = call i32* @_malloc(i32 1)
	br label %.block.100

.block.100:
	 %.middle.213=load %struct.string*,%struct.string** %a_addr
	 %.middle.214=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.2 = call i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.213,%struct.string* %.middle.214)
	%.FromBool.15 = zext i1 %.Func_Return.2 to i32
	 store i32 %.FromBool.15,i32* %.Func.Return.p.2.0
	 %.ToBool.4=load i32,i32* %.Func.Return.p.2.0
	%.middle.216 = trunc i32 %.ToBool.4 to i1
	%.middle.215 = xor i1 %.middle.216,1
	%.FromBool.16 = zext i1 %.middle.215 to i32
	 store i32 %.FromBool.16,i32* %.retval.p
	br label %Exit.99

Exit.99:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.GE_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.101:
	%a_addr_inttmp = call i32* @_malloc(i32 1)
	%a_addr = bitcast i32* %a_addr_inttmp to %struct.string**
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr_inttmp = call i32* @_malloc(i32 1)
	%b_addr = bitcast i32* %b_addr_inttmp to %struct.string**
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p = call i32* @_malloc(i32 1)
	%.Func.Return.p.3.0 = call i32* @_malloc(i32 1)
	br label %.block.103

.block.103:
	 %.middle.217=load %struct.string*,%struct.string** %a_addr
	 %.middle.218=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.3 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.217,%struct.string* %.middle.218)
	%.FromBool.17 = zext i1 %.Func_Return.3 to i32
	 store i32 %.FromBool.17,i32* %.Func.Return.p.3.0
	 %.ToBool.5=load i32,i32* %.Func.Return.p.3.0
	%.middle.220 = trunc i32 %.ToBool.5 to i1
	%.middle.219 = xor i1 %.middle.220,1
	%.FromBool.18 = zext i1 %.middle.219 to i32
	 store i32 %.FromBool.18,i32* %.retval.p
	br label %Exit.102

Exit.102:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define void @.func.print(%struct.string* %str){
Entry.104:
	%str_addr_inttmp = call i32* @_malloc(i32 1)
	%str_addr = bitcast i32* %str_addr_inttmp to %struct.string**
	 store %struct.string* %str,%struct.string** %str_addr
	br label %.block.106

.block.106:
	 %str_addr.0=load %struct.string*,%struct.string** %str_addr
	%.middle.221 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 1
	 %.middle.222=load i32*,i32** %.middle.221
	 %str_addr.1=load %struct.string*,%struct.string** %str_addr
	%.middle.223 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 0
	 %.middle.224=load i32,i32* %.middle.223
	call void @printf_no_collision_please(i32* %.middle.222,i32 %.middle.224)
	br label %Exit.105

Exit.105:
	ret void

}

define void @.func.println(%struct.string* %str){
Entry.107:
	%str_addr_inttmp = call i32* @_malloc(i32 1)
	%str_addr = bitcast i32* %str_addr_inttmp to %struct.string**
	 store %struct.string* %str,%struct.string** %str_addr
	%.middle.226 = call i32* @_malloc(i32 1)
	%.TmpString.0.0 = bitcast i32* %.middle.226 to %struct.string**
	%.middle.228 = call i32* @_malloc(i32 8)
	%.middle.227 = bitcast i32* %.middle.228 to %struct.string*
	br label %.block.109

.block.109:
	 %.middle.225=load %struct.string*,%struct.string** %str_addr
	call void @.func.print(%struct.string* %.middle.225)
	call void @.func.string.construct(%struct.string* %.middle.227)
	%.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.227,i32 0,i32 0
	 store i32 1,i32* %.TmpLen.0
	%.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.227,i32 0,i32 1
	%.TmpConstRef.0 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.0,i32 0,i32 0
	 store i32* %.TmpConstRef.0,i32** %.TmpContent.0
	 store %struct.string* %.middle.227,%struct.string** %.TmpString.0.0
	 %.middle.229=load %struct.string*,%struct.string** %.TmpString.0.0
	call void @.func.print(%struct.string* %.middle.229)
	br label %Exit.108

Exit.108:
	ret void

}

define void @.func.printlnInt(i32 %num){
Entry.110:
	%num_addr = call i32* @_malloc(i32 1)
	 store i32 %num,i32* %num_addr
	%.middle.231 = call i32* @_malloc(i32 1)
	%.TmpString.1.0 = bitcast i32* %.middle.231 to %struct.string**
	%.middle.233 = call i32* @_malloc(i32 8)
	%.middle.232 = bitcast i32* %.middle.233 to %struct.string*
	br label %.block.112

.block.112:
	 %.middle.230=load i32,i32* %num_addr
	call void @printInt(i32 %.middle.230)
	call void @.func.string.construct(%struct.string* %.middle.232)
	%.TmpLen.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 0
	 store i32 1,i32* %.TmpLen.1
	%.TmpContent.1 = getelementptr %struct.string,%struct.string* %.middle.232,i32 0,i32 1
	%.TmpConstRef.1 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.1,i32 0,i32 0
	 store i32* %.TmpConstRef.1,i32** %.TmpContent.1
	 store %struct.string* %.middle.232,%struct.string** %.TmpString.1.0
	 %.middle.234=load %struct.string*,%struct.string** %.TmpString.1.0
	call void @.func.print(%struct.string* %.middle.234)
	br label %Exit.111

Exit.111:
	ret void

}

define %struct.string* @.func.toString(i32 %i){
Entry.113:
	%i_addr = call i32* @_malloc(i32 1)
	 store i32 %i,i32* %i_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.string**
	%.middle.235 = call i32* @_malloc(i32 1)
	%a.0 = bitcast i32* %.middle.235 to i32**
	%cnt.0 = call i32* @_malloc(i32 1)
	%fg.0 = call i32* @_malloc(i32 1)
	%.middle.270 = call i32* @_malloc(i32 1)
	%tmp.2 = bitcast i32* %.middle.270 to %struct.string**
	%i.7 = call i32* @_malloc(i32 1)
	br label %.block.115

.block.115:
	%.SizeList.2 = call i32* @_malloc(i32 8)
	%.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	 store i32 20,i32* %.ArrayIdx.2
	%.middle.236 = call i32* @_malloc_toInt(i32* %.SizeList.2,i32 1)
	%.new.2 = bitcast i32* %.middle.236 to i32*
	 store i32* %.new.2,i32** %a.0
	 store i32 0,i32* %cnt.0
	%.FromBool.19 = zext i1 0 to i32
	 store i32 %.FromBool.19,i32* %fg.0
	br label %If_Cond.116

If_Cond.116:
	 %.middle.238=load i32,i32* %i_addr
	%.middle.237 = icmp eq i32 %.middle.238,0
	br i1 %.middle.237,label %If_Then.117,label %If_Else.118

If_Then.117:
	 store i32 1,i32* %cnt.0
	 %.middle.240=load i32*,i32** %a.0
	%.middle.241 = getelementptr i32,i32* %.middle.240,i32 0
	 %.middle.241.0=load i32,i32* %.middle.241
	 store i32 0,i32* %.middle.241
	br label %If_End.119

If_Else.118:
	br label %If_End.119

If_End.119:
	br label %If_Cond.120

If_Cond.120:
	 %.middle.244=load i32,i32* %i_addr
	%.middle.243 = icmp slt i32 %.middle.244,0
	br i1 %.middle.243,label %If_Then.121,label %If_Else.122

If_Then.121:
	%.FromBool.20 = zext i1 1 to i32
	 store i32 %.FromBool.20,i32* %fg.0
	 %.middle.247=load i32,i32* %i_addr
	%.middle.246 = sub i32 0,%.middle.247
	 store i32 %.middle.246,i32* %i_addr
	br label %If_End.123

If_Else.122:
	br label %If_End.123

If_End.123:
	br label %While_Cond.124

While_Cond.124:
	 %.middle.250=load i32,i32* %i_addr
	%.middle.249 = icmp ne i32 %.middle.250,0
	br i1 %.middle.249,label %While_Body.125,label %While_End.126

While_Body.125:
	 %.middle.251=load i32*,i32** %a.0
	 %.middle.253=load i32,i32* %cnt.0
	%.middle.252 = getelementptr i32,i32* %.middle.251,i32 %.middle.253
	 %.middle.252.0=load i32,i32* %.middle.252
	 %.middle.255=load i32,i32* %i_addr
	%.middle.254 = srem i32 %.middle.255,10
	 store i32 %.middle.254,i32* %.middle.252
	 %.middle.258=load i32,i32* %i_addr
	%.middle.257 = sdiv i32 %.middle.258,10
	 store i32 %.middle.257,i32* %i_addr
	 %.middle.260=load i32,i32* %cnt.0
	%.middle.261 = add i32 %.middle.260,1
	 store i32 %.middle.261,i32* %cnt.0
	br label %While_Cond.124

While_End.126:
	br label %If_Cond.127

If_Cond.127:
	 %.ToBool.6=load i32,i32* %fg.0
	%.middle.262 = trunc i32 %.ToBool.6 to i1
	br i1 %.middle.262,label %If_Then.128,label %If_Else.129

If_Then.128:
	 %.middle.263=load i32*,i32** %a.0
	 %.middle.265=load i32,i32* %cnt.0
	%.middle.264 = getelementptr i32,i32* %.middle.263,i32 %.middle.265
	 %.middle.264.0=load i32,i32* %.middle.264
	%.middle.266 = sub i32 0,3
	 store i32 %.middle.266,i32* %.middle.264
	 %.middle.268=load i32,i32* %cnt.0
	%.middle.269 = add i32 %.middle.268,1
	 store i32 %.middle.269,i32* %cnt.0
	br label %If_End.130

If_Else.129:
	br label %If_End.130

If_End.130:
	%.middle.272 = call i32* @_malloc(i32 2)
	%.middle.271 = bitcast i32* %.middle.272 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.271)
	 store %struct.string* %.middle.271,%struct.string** %tmp.2
	 %tmp.2.0=load %struct.string*,%struct.string** %tmp.2
	%.middle.273 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 0
	 %.middle.275=load i32,i32* %cnt.0
	 store i32 %.middle.275,i32* %.middle.273
	 %tmp.2.1=load %struct.string*,%struct.string** %tmp.2
	%.middle.276 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	 %.middle.277=load i32,i32* %cnt.0
	%.SizeList.3 = call i32* @_malloc(i32 8)
	%.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	 store i32 %.middle.277,i32* %.ArrayIdx.3
	%.middle.278 = call i32* @_malloc_toInt(i32* %.SizeList.3,i32 1)
	%.new.3 = bitcast i32* %.middle.278 to i32*
	 store i32* %.new.3,i32** %.middle.276
	 store i32 0,i32* %i.7
	br label %For_Cond.131

For_Cond.131:
	 %.middle.281=load i32,i32* %i.7
	 %.middle.282=load i32,i32* %cnt.0
	%.middle.280 = icmp slt i32 %.middle.281,%.middle.282
	br i1 %.middle.280,label %For_Body.133,label %For_End.132

For_Body.133:
	 %tmp.2.2=load %struct.string*,%struct.string** %tmp.2
	%.middle.283 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 1
	 %.middle.284=load i32*,i32** %.middle.283
	 %.middle.286=load i32,i32* %i.7
	%.middle.285 = getelementptr i32,i32* %.middle.284,i32 %.middle.286
	 %.middle.285.0=load i32,i32* %.middle.285
	 %.middle.287=load i32*,i32** %a.0
	 %.middle.289=load i32,i32* %cnt.0
	 %.middle.290=load i32,i32* %i.7
	%.middle.288 = sub i32 %.middle.289,%.middle.290
	%.middle.291 = sub i32 %.middle.288,1
	%.middle.292 = getelementptr i32,i32* %.middle.287,i32 %.middle.291
	 %.middle.292.0=load i32,i32* %.middle.292
	 %.middle.294=load i32,i32* %.middle.292
	%.middle.293 = add i32 %.middle.294,48
	 store i32 %.middle.293,i32* %.middle.285
	br label %For_Change.134

For_Change.134:
	 %.middle.296=load i32,i32* %i.7
	%.middle.297 = add i32 %.middle.296,1
	 store i32 %.middle.297,i32* %i.7
	br label %For_Cond.131

For_End.132:
	 %.middle.298=load %struct.string*,%struct.string** %tmp.2
	 store %struct.string* %.middle.298,%struct.string** %.retval.p
	br label %Exit.114

Exit.114:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define %struct.string* @.func.getString(){
Entry.135:
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.string**
	%.middle.299 = call i32* @_malloc(i32 1)
	%tmp.3 = bitcast i32* %.middle.299 to %struct.string**
	%.middle.303 = call i32* @_malloc(i32 1)
	%.Func.Return.p.4.0 = bitcast i32* %.middle.303 to i32**
	%cnt.1 = call i32* @_malloc(i32 1)
	br label %.block.137

.block.137:
	%.middle.301 = call i32* @_malloc(i32 2)
	%.middle.300 = bitcast i32* %.middle.301 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.300)
	 store %struct.string* %.middle.300,%struct.string** %tmp.3
	 %tmp.3.0=load %struct.string*,%struct.string** %tmp.3
	%.middle.302 = getelementptr %struct.string,%struct.string* %tmp.3.0,i32 0,i32 1
	%.Func_Return.4 = call i32* @scanf_string()
	 store i32* %.Func_Return.4,i32** %.Func.Return.p.4.0
	 %.middle.305=load i32*,i32** %.Func.Return.p.4.0
	 store i32* %.middle.305,i32** %.middle.302
	 store i32 0,i32* %cnt.1
	br label %For_Cond.138

For_Cond.138:
	 %tmp.3.1=load %struct.string*,%struct.string** %tmp.3
	%.middle.307 = getelementptr %struct.string,%struct.string* %tmp.3.1,i32 0,i32 1
	 %.middle.308=load i32*,i32** %.middle.307
	 %.middle.310=load i32,i32* %cnt.1
	%.middle.309 = getelementptr i32,i32* %.middle.308,i32 %.middle.310
	 %.middle.309.0=load i32,i32* %.middle.309
	 %.middle.312=load i32,i32* %.middle.309
	%.middle.311 = icmp ne i32 %.middle.312,0
	br i1 %.middle.311,label %For_Body.140,label %For_End.139

For_Body.140:
	br label %For_Change.141

For_Change.141:
	 %.middle.313=load i32,i32* %cnt.1
	%.middle.314 = add i32 %.middle.313,1
	 store i32 %.middle.314,i32* %cnt.1
	br label %For_Cond.138

For_End.139:
	 %tmp.3.2=load %struct.string*,%struct.string** %tmp.3
	%.middle.315 = getelementptr %struct.string,%struct.string* %tmp.3.2,i32 0,i32 0
	 %.middle.317=load i32,i32* %cnt.1
	 store i32 %.middle.317,i32* %.middle.315
	 %.middle.318=load %struct.string*,%struct.string** %tmp.3
	 store %struct.string* %.middle.318,%struct.string** %.retval.p
	br label %Exit.136

Exit.136:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define i32 @main(){
Entry.142:
	%.retval.p = call i32* @_malloc(i32 1)
	%.middle.319 = call i32* @_malloc(i32 1)
	%a.1 = bitcast i32* %.middle.319 to i32**
	%i.8 = call i32* @_malloc(i32 1)
	br label %.block.144

.block.144:
	call void @.init()
	%.SizeList.4 = call i32* @_malloc(i32 8)
	%.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	 store i32 300000,i32* %.ArrayIdx.4
	%.middle.320 = call i32* @_malloc_toInt(i32* %.SizeList.4,i32 1)
	%.new.4 = bitcast i32* %.middle.320 to i32*
	 store i32* %.new.4,i32** %a.1
	 store i32 1,i32* %i.8
	br label %While_Cond.145

While_Cond.145:
	 %.middle.322=load i32,i32* %i.8
	%.middle.321 = icmp slt i32 %.middle.322,1000
	br i1 %.middle.321,label %While_Body.146,label %While_End.147

While_Body.146:
	 %.middle.323=load i32,i32* %i.8
	%.middle.324 = add i32 %.middle.323,1
	 store i32 %.middle.324,i32* %i.8
	%.SizeList.5 = call i32* @_malloc(i32 8)
	%.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	 store i32 30000,i32* %.ArrayIdx.5
	%.middle.325 = call i32* @_malloc_toInt(i32* %.SizeList.5,i32 1)
	%.new.5 = bitcast i32* %.middle.325 to i32*
	 store i32* %.new.5,i32** %a.1
	 %.middle.327=load i32,i32* %i.8
	call void @printInt(i32 %.middle.327)
	br label %While_Cond.145

While_End.147:
	 store i32 0,i32* %.retval.p
	br label %Exit.143

Exit.143:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

