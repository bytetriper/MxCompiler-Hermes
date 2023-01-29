source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@INF.0 = global i32 0
@g.0 = global %struct.EdgeList* zeroinitializer
@m.0 = global i32 0
@n.0 = global i32 0
%struct.Array_Node =type {i32 ,%struct.Node** }
%struct.string =type {i32 ,i32* }
%struct.Heap_Node =type {%struct.Array_Node* }
%struct.Node =type {i32 ,i32 }
%struct.Edge =type {i32 ,i32 ,i32 }
%struct.EdgeList =type {i32* ,i32 ,%struct.Edge** ,i32* }
@.ConstantString.0 = private constant [1 x i32] [i32 10]
@.ConstantString.1 = private constant [1 x i32] [i32 10]
@.ConstantString.2 = private constant [2 x i32] [i32 45,i32 49]
@.ConstantString.3 = private constant [1 x i32] [i32 32]
@.ConstantString.4 = private constant [0 x i32] []
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
	 store i32 10000000,i32* @INF.0
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

define void @.func.Edge.construct(%struct.Edge* %This){
Entry.142:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Edge**
	 store %struct.Edge* %This,%struct.Edge** %This_addr
	br label %.block.144

.block.144:
	br label %Exit.143

Exit.143:
	ret void

}

define void @.func.EdgeList.init(%struct.EdgeList* %This,i32 %n,i32 %m){
Entry.145:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	%n_addr = call i32* @_malloc(i32 1)
	 store i32 %n,i32* %n_addr
	%m_addr = call i32* @_malloc(i32 1)
	 store i32 %m,i32* %m_addr
	%i.8 = call i32* @_malloc(i32 1)
	br label %.block.147

.block.147:
	 %This_addr.7=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.edges.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.7,i32 0,i32 2
	 %.middle.319=load i32,i32* %m_addr
	%.SizeList.4 = call i32* @_malloc(i32 8)
	%.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	 store i32 %.middle.319,i32* %.ArrayIdx.4
	%.middle.320 = call i32* @_malloc_toInt(i32* %.SizeList.4,i32 1)
	%.new.4 = bitcast i32* %.middle.320 to %struct.Edge**
	 store %struct.Edge** %.new.4,%struct.Edge*** %This_addr.edges.0
	 %This_addr.8=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.next.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.8,i32 0,i32 0
	 %.middle.322=load i32,i32* %m_addr
	%.SizeList.5 = call i32* @_malloc(i32 8)
	%.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	 store i32 %.middle.322,i32* %.ArrayIdx.5
	%.middle.323 = call i32* @_malloc_toInt(i32* %.SizeList.5,i32 1)
	%.new.5 = bitcast i32* %.middle.323 to i32*
	 store i32* %.new.5,i32** %This_addr.next.0
	 %This_addr.9=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.9,i32 0,i32 3
	 %.middle.325=load i32,i32* %n_addr
	%.SizeList.6 = call i32* @_malloc(i32 8)
	%.ArrayIdx.6 = getelementptr i32,i32* %.SizeList.6,i32 0
	 store i32 %.middle.325,i32* %.ArrayIdx.6
	%.middle.326 = call i32* @_malloc_toInt(i32* %.SizeList.6,i32 1)
	%.new.6 = bitcast i32* %.middle.326 to i32*
	 store i32* %.new.6,i32** %This_addr.first.0
	 store i32 0,i32* %i.8
	br label %For_Cond.148

For_Cond.148:
	 %.middle.330=load i32,i32* %i.8
	 %.middle.331=load i32,i32* %m_addr
	%.middle.329 = icmp slt i32 %.middle.330,%.middle.331
	br i1 %.middle.329,label %For_Body.150,label %For_End.149

For_Body.150:
	 %This_addr.10=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.next.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.10,i32 0,i32 0
	 %.middle.332=load i32*,i32** %This_addr.next.1
	 %.middle.334=load i32,i32* %i.8
	%.middle.333 = getelementptr i32,i32* %.middle.332,i32 %.middle.334
	 %.middle.333.0=load i32,i32* %.middle.333
	%.middle.335 = sub i32 0,1
	 store i32 %.middle.335,i32* %.middle.333
	br label %For_Change.151

For_Change.151:
	 %.middle.337=load i32,i32* %i.8
	%.middle.338 = add i32 %.middle.337,1
	 store i32 %.middle.338,i32* %i.8
	br label %For_Cond.148

For_End.149:
	 store i32 0,i32* %i.8
	br label %For_Cond.152

For_Cond.152:
	 %.middle.341=load i32,i32* %i.8
	 %.middle.342=load i32,i32* %n_addr
	%.middle.340 = icmp slt i32 %.middle.341,%.middle.342
	br i1 %.middle.340,label %For_Body.154,label %For_End.153

For_Body.154:
	 %This_addr.11=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.11,i32 0,i32 3
	 %.middle.343=load i32*,i32** %This_addr.first.1
	 %.middle.345=load i32,i32* %i.8
	%.middle.344 = getelementptr i32,i32* %.middle.343,i32 %.middle.345
	 %.middle.344.0=load i32,i32* %.middle.344
	%.middle.346 = sub i32 0,1
	 store i32 %.middle.346,i32* %.middle.344
	br label %For_Change.155

For_Change.155:
	 %.middle.348=load i32,i32* %i.8
	%.middle.349 = add i32 %.middle.348,1
	 store i32 %.middle.349,i32* %i.8
	br label %For_Cond.152

For_End.153:
	 %This_addr.12=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.12,i32 0,i32 1
	 store i32 0,i32* %This_addr.size.0
	br label %Exit.146

Exit.146:
	ret void

}

define void @.func.EdgeList.addEdge(%struct.EdgeList* %This,i32 %u,i32 %v,i32 %w){
Entry.156:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	%u_addr = call i32* @_malloc(i32 1)
	 store i32 %u,i32* %u_addr
	%v_addr = call i32* @_malloc(i32 1)
	 store i32 %v,i32* %v_addr
	%w_addr = call i32* @_malloc(i32 1)
	 store i32 %w,i32* %w_addr
	%.middle.351 = call i32* @_malloc(i32 1)
	%e.0 = bitcast i32* %.middle.351 to %struct.Edge**
	br label %.block.158

.block.158:
	%.middle.353 = call i32* @_malloc(i32 3)
	%.middle.352 = bitcast i32* %.middle.353 to %struct.Edge*
	call void @.func.Edge.construct(%struct.Edge* %.middle.352)
	 store %struct.Edge* %.middle.352,%struct.Edge** %e.0
	 %e.0.0=load %struct.Edge*,%struct.Edge** %e.0
	%.middle.354 = getelementptr %struct.Edge,%struct.Edge* %e.0.0,i32 0,i32 1
	 %.middle.356=load i32,i32* %u_addr
	 store i32 %.middle.356,i32* %.middle.354
	 %e.0.1=load %struct.Edge*,%struct.Edge** %e.0
	%.middle.357 = getelementptr %struct.Edge,%struct.Edge* %e.0.1,i32 0,i32 2
	 %.middle.359=load i32,i32* %v_addr
	 store i32 %.middle.359,i32* %.middle.357
	 %e.0.2=load %struct.Edge*,%struct.Edge** %e.0
	%.middle.360 = getelementptr %struct.Edge,%struct.Edge* %e.0.2,i32 0,i32 0
	 %.middle.362=load i32,i32* %w_addr
	 store i32 %.middle.362,i32* %.middle.360
	 %This_addr.13=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.edges.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.13,i32 0,i32 2
	 %.middle.363=load %struct.Edge**,%struct.Edge*** %This_addr.edges.1
	 %This_addr.14=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.14,i32 0,i32 1
	 %.middle.365=load i32,i32* %This_addr.size.1
	%.middle.364 = getelementptr %struct.Edge*,%struct.Edge** %.middle.363,i32 %.middle.365
	 %.middle.364.0=load %struct.Edge*,%struct.Edge** %.middle.364
	 %.middle.367=load %struct.Edge*,%struct.Edge** %e.0
	 store %struct.Edge* %.middle.367,%struct.Edge** %.middle.364
	 %This_addr.15=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.next.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.15,i32 0,i32 0
	 %.middle.368=load i32*,i32** %This_addr.next.2
	 %This_addr.16=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.16,i32 0,i32 1
	 %.middle.370=load i32,i32* %This_addr.size.2
	%.middle.369 = getelementptr i32,i32* %.middle.368,i32 %.middle.370
	 %.middle.369.0=load i32,i32* %.middle.369
	 %This_addr.17=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.17,i32 0,i32 3
	 %.middle.371=load i32*,i32** %This_addr.first.2
	 %.middle.373=load i32,i32* %u_addr
	%.middle.372 = getelementptr i32,i32* %.middle.371,i32 %.middle.373
	 %.middle.372.0=load i32,i32* %.middle.372
	 %.middle.375=load i32,i32* %.middle.372
	 store i32 %.middle.375,i32* %.middle.369
	 %This_addr.18=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.18,i32 0,i32 3
	 %.middle.376=load i32*,i32** %This_addr.first.3
	 %.middle.378=load i32,i32* %u_addr
	%.middle.377 = getelementptr i32,i32* %.middle.376,i32 %.middle.378
	 %.middle.377.0=load i32,i32* %.middle.377
	 %This_addr.19=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.19,i32 0,i32 1
	 %.middle.380=load i32,i32* %This_addr.size.3
	 store i32 %.middle.380,i32* %.middle.377
	 %This_addr.20=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.20,i32 0,i32 1
	 %.middle.381=load i32,i32* %This_addr.size.4
	%.middle.382 = add i32 %.middle.381,1
	 store i32 %.middle.382,i32* %This_addr.size.4
	br label %Exit.157

Exit.157:
	ret void

}

define i32 @.func.EdgeList.nVertices(%struct.EdgeList* %This){
Entry.159:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.161

.block.161:
	 %This_addr.21=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.21,i32 0,i32 3
	 %.middle.384=load i32*,i32** %This_addr.first.4
	%.middle.383 = ptrtoint i32* %.middle.384 to i32
	%.middle.385 = sub i32 %.middle.383,4
	%.middle.386 = inttoptr i32 %.middle.385 to i32*
	 %.middle.386.0=load i32,i32* %.middle.386
	 store i32 %.middle.386.0,i32* %.retval.p
	br label %Exit.160

Exit.160:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.EdgeList.nEdges(%struct.EdgeList* %This){
Entry.162:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.164

.block.164:
	 %This_addr.22=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.edges.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.22,i32 0,i32 2
	 %.middle.388=load %struct.Edge**,%struct.Edge*** %This_addr.edges.2
	%.middle.387 = ptrtoint %struct.Edge** %.middle.388 to i32
	%.middle.389 = sub i32 %.middle.387,4
	%.middle.390 = inttoptr i32 %.middle.389 to i32*
	 %.middle.390.0=load i32,i32* %.middle.390
	 store i32 %.middle.390.0,i32* %.retval.p
	br label %Exit.163

Exit.163:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define void @.func.EdgeList.construct(%struct.EdgeList* %This){
Entry.165:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.EdgeList**
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	br label %.block.167

.block.167:
	br label %Exit.166

Exit.166:
	ret void

}

define void @.func.Array_Node.construct(%struct.Array_Node* %This){
Entry.168:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	br label %.block.170

.block.170:
	 %This_addr.23=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.23,i32 0,i32 0
	 store i32 0,i32* %This_addr.sz.0
	 %This_addr.24=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.24,i32 0,i32 1
	%.SizeList.7 = call i32* @_malloc(i32 8)
	%.ArrayIdx.7 = getelementptr i32,i32* %.SizeList.7,i32 0
	 store i32 16,i32* %.ArrayIdx.7
	%.middle.392 = call i32* @_malloc_toInt(i32* %.SizeList.7,i32 1)
	%.new.7 = bitcast i32* %.middle.392 to %struct.Node**
	 store %struct.Node** %.new.7,%struct.Node*** %This_addr.storage.0
	br label %Exit.169

Exit.169:
	ret void

}

define void @.func.Array_Node.push_back(%struct.Array_Node* %This,%struct.Node* %v){
Entry.171:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%v_addr_inttmp = call i32* @_malloc(i32 1)
	%v_addr = bitcast i32* %v_addr_inttmp to %struct.Node**
	 store %struct.Node* %v,%struct.Node** %v_addr
	%.Func.Return.p.5.0 = call i32* @_malloc(i32 1)
	br label %.block.173

.block.173:
	br label %If_Cond.174

If_Cond.174:
	 %.middle.394=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%.Func_Return.5 = call i32 @.func.Array_Node.size(%struct.Array_Node* %.middle.394)
	 store i32 %.Func_Return.5,i32* %.Func.Return.p.5.0
	 %This_addr.25=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.25,i32 0,i32 1
	 %.middle.396=load %struct.Node**,%struct.Node*** %This_addr.storage.1
	%.middle.395 = ptrtoint %struct.Node** %.middle.396 to i32
	%.middle.397 = sub i32 %.middle.395,4
	%.middle.398 = inttoptr i32 %.middle.397 to i32*
	 %.middle.398.0=load i32,i32* %.middle.398
	 %.middle.400=load i32,i32* %.Func.Return.p.5.0
	%.middle.399 = icmp eq i32 %.middle.400,%.middle.398.0
	br i1 %.middle.399,label %If_Then.175,label %If_Else.176

If_Then.175:
	 %.middle.401=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	call void @.func.Array_Node.doubleStorage(%struct.Array_Node* %.middle.401)
	br label %If_End.177

If_Else.176:
	br label %If_End.177

If_End.177:
	 %This_addr.26=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.26,i32 0,i32 1
	 %.middle.402=load %struct.Node**,%struct.Node*** %This_addr.storage.2
	 %This_addr.27=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.27,i32 0,i32 0
	 %.middle.404=load i32,i32* %This_addr.sz.1
	%.middle.403 = getelementptr %struct.Node*,%struct.Node** %.middle.402,i32 %.middle.404
	 %.middle.403.0=load %struct.Node*,%struct.Node** %.middle.403
	 %.middle.406=load %struct.Node*,%struct.Node** %v_addr
	 store %struct.Node* %.middle.406,%struct.Node** %.middle.403
	 %This_addr.28=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.28,i32 0,i32 0
	 %.middle.407=load i32,i32* %This_addr.sz.2
	%.middle.408 = add i32 %.middle.407,1
	 store i32 %.middle.408,i32* %This_addr.sz.2
	br label %Exit.172

Exit.172:
	ret void

}

define %struct.Node* @.func.Array_Node.pop_back(%struct.Array_Node* %This){
Entry.178:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	br label %.block.180

.block.180:
	 %This_addr.29=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.29,i32 0,i32 0
	 %.middle.409=load i32,i32* %This_addr.sz.3
	%.middle.410 = sub i32 %.middle.409,1
	 store i32 %.middle.410,i32* %This_addr.sz.3
	 %This_addr.30=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.30,i32 0,i32 1
	 %.middle.411=load %struct.Node**,%struct.Node*** %This_addr.storage.3
	 %This_addr.31=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.31,i32 0,i32 0
	 %.middle.413=load i32,i32* %This_addr.sz.4
	%.middle.412 = getelementptr %struct.Node*,%struct.Node** %.middle.411,i32 %.middle.413
	 %.middle.412.0=load %struct.Node*,%struct.Node** %.middle.412
	 %.middle.414=load %struct.Node*,%struct.Node** %.middle.412
	 store %struct.Node* %.middle.414,%struct.Node** %.retval.p
	br label %Exit.179

Exit.179:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define %struct.Node* @.func.Array_Node.back(%struct.Array_Node* %This){
Entry.181:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	br label %.block.183

.block.183:
	 %This_addr.32=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.32,i32 0,i32 1
	 %.middle.415=load %struct.Node**,%struct.Node*** %This_addr.storage.4
	 %This_addr.33=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.33,i32 0,i32 0
	 %.middle.417=load i32,i32* %This_addr.sz.5
	%.middle.416 = sub i32 %.middle.417,1
	%.middle.418 = getelementptr %struct.Node*,%struct.Node** %.middle.415,i32 %.middle.416
	 %.middle.418.0=load %struct.Node*,%struct.Node** %.middle.418
	 %.middle.419=load %struct.Node*,%struct.Node** %.middle.418
	 store %struct.Node* %.middle.419,%struct.Node** %.retval.p
	br label %Exit.182

Exit.182:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %This){
Entry.184:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	br label %.block.186

.block.186:
	 %This_addr.34=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.34,i32 0,i32 1
	 %.middle.420=load %struct.Node**,%struct.Node*** %This_addr.storage.5
	%.middle.421 = getelementptr %struct.Node*,%struct.Node** %.middle.420,i32 0
	 %.middle.421.0=load %struct.Node*,%struct.Node** %.middle.421
	 %.middle.422=load %struct.Node*,%struct.Node** %.middle.421
	 store %struct.Node* %.middle.422,%struct.Node** %.retval.p
	br label %Exit.185

Exit.185:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define i32 @.func.Array_Node.size(%struct.Array_Node* %This){
Entry.187:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.189

.block.189:
	 %This_addr.35=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.35,i32 0,i32 0
	 %.middle.423=load i32,i32* %This_addr.sz.6
	 store i32 %.middle.423,i32* %.retval.p
	br label %Exit.188

Exit.188:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define void @.func.Array_Node.resize(%struct.Array_Node* %This,i32 %newSize){
Entry.190:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%newSize_addr = call i32* @_malloc(i32 1)
	 store i32 %newSize,i32* %newSize_addr
	br label %.block.192

.block.192:
	br label %While_Cond.193

While_Cond.193:
	 %This_addr.36=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.36,i32 0,i32 1
	 %.middle.425=load %struct.Node**,%struct.Node*** %This_addr.storage.6
	%.middle.424 = ptrtoint %struct.Node** %.middle.425 to i32
	%.middle.426 = sub i32 %.middle.424,4
	%.middle.427 = inttoptr i32 %.middle.426 to i32*
	 %.middle.427.0=load i32,i32* %.middle.427
	 %.middle.429=load i32,i32* %newSize_addr
	%.middle.428 = icmp slt i32 %.middle.427.0,%.middle.429
	br i1 %.middle.428,label %While_Body.194,label %While_End.195

While_Body.194:
	 %.middle.430=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	call void @.func.Array_Node.doubleStorage(%struct.Array_Node* %.middle.430)
	br label %While_Cond.193

While_End.195:
	 %This_addr.37=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.37,i32 0,i32 0
	 %.middle.432=load i32,i32* %newSize_addr
	 store i32 %.middle.432,i32* %This_addr.sz.7
	br label %Exit.191

Exit.191:
	ret void

}

define %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %This,i32 %i){
Entry.196:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%i_addr = call i32* @_malloc(i32 1)
	 store i32 %i,i32* %i_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	br label %.block.198

.block.198:
	 %This_addr.38=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.38,i32 0,i32 1
	 %.middle.433=load %struct.Node**,%struct.Node*** %This_addr.storage.7
	 %.middle.435=load i32,i32* %i_addr
	%.middle.434 = getelementptr %struct.Node*,%struct.Node** %.middle.433,i32 %.middle.435
	 %.middle.434.0=load %struct.Node*,%struct.Node** %.middle.434
	 %.middle.436=load %struct.Node*,%struct.Node** %.middle.434
	 store %struct.Node* %.middle.436,%struct.Node** %.retval.p
	br label %Exit.197

Exit.197:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define void @.func.Array_Node.set(%struct.Array_Node* %This,i32 %i,%struct.Node* %v){
Entry.199:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%i_addr = call i32* @_malloc(i32 1)
	 store i32 %i,i32* %i_addr
	%v_addr_inttmp = call i32* @_malloc(i32 1)
	%v_addr = bitcast i32* %v_addr_inttmp to %struct.Node**
	 store %struct.Node* %v,%struct.Node** %v_addr
	br label %.block.201

.block.201:
	 %This_addr.39=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.39,i32 0,i32 1
	 %.middle.437=load %struct.Node**,%struct.Node*** %This_addr.storage.8
	 %.middle.439=load i32,i32* %i_addr
	%.middle.438 = getelementptr %struct.Node*,%struct.Node** %.middle.437,i32 %.middle.439
	 %.middle.438.0=load %struct.Node*,%struct.Node** %.middle.438
	 %.middle.441=load %struct.Node*,%struct.Node** %v_addr
	 store %struct.Node* %.middle.441,%struct.Node** %.middle.438
	br label %Exit.200

Exit.200:
	ret void

}

define void @.func.Array_Node.swap(%struct.Array_Node* %This,i32 %i,i32 %j){
Entry.202:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%i_addr = call i32* @_malloc(i32 1)
	 store i32 %i,i32* %i_addr
	%j_addr = call i32* @_malloc(i32 1)
	 store i32 %j,i32* %j_addr
	%.middle.442 = call i32* @_malloc(i32 1)
	%t.0 = bitcast i32* %.middle.442 to %struct.Node**
	br label %.block.204

.block.204:
	 %This_addr.40=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.40,i32 0,i32 1
	 %.middle.443=load %struct.Node**,%struct.Node*** %This_addr.storage.9
	 %.middle.445=load i32,i32* %i_addr
	%.middle.444 = getelementptr %struct.Node*,%struct.Node** %.middle.443,i32 %.middle.445
	 %.middle.444.0=load %struct.Node*,%struct.Node** %.middle.444
	 %.middle.446=load %struct.Node*,%struct.Node** %.middle.444
	 store %struct.Node* %.middle.446,%struct.Node** %t.0
	 %This_addr.41=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.41,i32 0,i32 1
	 %.middle.447=load %struct.Node**,%struct.Node*** %This_addr.storage.10
	 %.middle.449=load i32,i32* %i_addr
	%.middle.448 = getelementptr %struct.Node*,%struct.Node** %.middle.447,i32 %.middle.449
	 %.middle.448.0=load %struct.Node*,%struct.Node** %.middle.448
	 %This_addr.42=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.42,i32 0,i32 1
	 %.middle.450=load %struct.Node**,%struct.Node*** %This_addr.storage.11
	 %.middle.452=load i32,i32* %j_addr
	%.middle.451 = getelementptr %struct.Node*,%struct.Node** %.middle.450,i32 %.middle.452
	 %.middle.451.0=load %struct.Node*,%struct.Node** %.middle.451
	 %.middle.454=load %struct.Node*,%struct.Node** %.middle.451
	 store %struct.Node* %.middle.454,%struct.Node** %.middle.448
	 %This_addr.43=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.43,i32 0,i32 1
	 %.middle.455=load %struct.Node**,%struct.Node*** %This_addr.storage.12
	 %.middle.457=load i32,i32* %j_addr
	%.middle.456 = getelementptr %struct.Node*,%struct.Node** %.middle.455,i32 %.middle.457
	 %.middle.456.0=load %struct.Node*,%struct.Node** %.middle.456
	 %.middle.459=load %struct.Node*,%struct.Node** %t.0
	 store %struct.Node* %.middle.459,%struct.Node** %.middle.456
	br label %Exit.203

Exit.203:
	ret void

}

define void @.func.Array_Node.doubleStorage(%struct.Array_Node* %This){
Entry.205:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Array_Node**
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.middle.460 = call i32* @_malloc(i32 1)
	%copy.0 = bitcast i32* %.middle.460 to %struct.Node***
	%szCopy.0 = call i32* @_malloc(i32 1)
	br label %.block.207

.block.207:
	 %This_addr.44=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.44,i32 0,i32 1
	 %.middle.461=load %struct.Node**,%struct.Node*** %This_addr.storage.13
	 store %struct.Node** %.middle.461,%struct.Node*** %copy.0
	 %This_addr.45=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.45,i32 0,i32 0
	 %.middle.462=load i32,i32* %This_addr.sz.8
	 store i32 %.middle.462,i32* %szCopy.0
	 %This_addr.46=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.14 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.46,i32 0,i32 1
	 %.middle.464=load %struct.Node**,%struct.Node*** %copy.0
	%.middle.463 = ptrtoint %struct.Node** %.middle.464 to i32
	%.middle.465 = sub i32 %.middle.463,4
	%.middle.466 = inttoptr i32 %.middle.465 to i32*
	 %.middle.466.0=load i32,i32* %.middle.466
	%.middle.467 = mul i32 %.middle.466.0,2
	%.SizeList.8 = call i32* @_malloc(i32 8)
	%.ArrayIdx.8 = getelementptr i32,i32* %.SizeList.8,i32 0
	 store i32 %.middle.467,i32* %.ArrayIdx.8
	%.middle.468 = call i32* @_malloc_toInt(i32* %.SizeList.8,i32 1)
	%.new.8 = bitcast i32* %.middle.468 to %struct.Node**
	 store %struct.Node** %.new.8,%struct.Node*** %This_addr.storage.14
	 %This_addr.47=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.47,i32 0,i32 0
	 store i32 0,i32* %This_addr.sz.9
	br label %For_Cond.208

For_Cond.208:
	 %This_addr.48=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.48,i32 0,i32 0
	 %.middle.472=load i32,i32* %This_addr.sz.10
	 %.middle.473=load i32,i32* %szCopy.0
	%.middle.471 = icmp ne i32 %.middle.472,%.middle.473
	br i1 %.middle.471,label %For_Body.210,label %For_End.209

For_Body.210:
	 %This_addr.49=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.15 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.49,i32 0,i32 1
	 %.middle.474=load %struct.Node**,%struct.Node*** %This_addr.storage.15
	 %This_addr.50=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.50,i32 0,i32 0
	 %.middle.476=load i32,i32* %This_addr.sz.11
	%.middle.475 = getelementptr %struct.Node*,%struct.Node** %.middle.474,i32 %.middle.476
	 %.middle.475.0=load %struct.Node*,%struct.Node** %.middle.475
	 %.middle.477=load %struct.Node**,%struct.Node*** %copy.0
	 %This_addr.51=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.51,i32 0,i32 0
	 %.middle.479=load i32,i32* %This_addr.sz.12
	%.middle.478 = getelementptr %struct.Node*,%struct.Node** %.middle.477,i32 %.middle.479
	 %.middle.478.0=load %struct.Node*,%struct.Node** %.middle.478
	 %.middle.481=load %struct.Node*,%struct.Node** %.middle.478
	 store %struct.Node* %.middle.481,%struct.Node** %.middle.475
	br label %For_Change.211

For_Change.211:
	 %This_addr.52=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.52,i32 0,i32 0
	 %.middle.482=load i32,i32* %This_addr.sz.13
	%.middle.483 = add i32 %.middle.482,1
	 store i32 %.middle.483,i32* %This_addr.sz.13
	br label %For_Cond.208

For_End.209:
	br label %Exit.206

Exit.206:
	ret void

}

define void @.func.Heap_Node.construct(%struct.Heap_Node* %This){
Entry.212:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	br label %.block.214

.block.214:
	 %This_addr.53=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.16 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.53,i32 0,i32 0
	%.middle.485 = call i32* @_malloc(i32 2)
	%.middle.484 = bitcast i32* %.middle.485 to %struct.Array_Node*
	call void @.func.Array_Node.construct(%struct.Array_Node* %.middle.484)
	 store %struct.Array_Node* %.middle.484,%struct.Array_Node** %This_addr.storage.16
	br label %Exit.213

Exit.213:
	ret void

}

define void @.func.Heap_Node.push(%struct.Heap_Node* %This,%struct.Node* %v){
Entry.215:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%v_addr_inttmp = call i32* @_malloc(i32 1)
	%v_addr = bitcast i32* %v_addr_inttmp to %struct.Node**
	 store %struct.Node* %v,%struct.Node** %v_addr
	%x.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.6.0 = call i32* @_malloc(i32 1)
	%p.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.7.0 = call i32* @_malloc(i32 1)
	%.middle.499 = call i32* @_malloc(i32 1)
	%.Func.Return.p.8.0 = bitcast i32* %.middle.499 to %struct.Node**
	%.Func.Return.p.9.0 = call i32* @_malloc(i32 1)
	%.middle.503 = call i32* @_malloc(i32 1)
	%.Func.Return.p.10.0 = bitcast i32* %.middle.503 to %struct.Node**
	%.Func.Return.p.11.0 = call i32* @_malloc(i32 1)
	br label %.block.217

.block.217:
	 %This_addr.54=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.17 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.54,i32 0,i32 0
	 %.middle.487=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.17
	 %.middle.488=load %struct.Node*,%struct.Node** %v_addr
	call void @.func.Array_Node.push_back(%struct.Array_Node* %.middle.487,%struct.Node* %.middle.488)
	 %.middle.489=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%.Func_Return.6 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.489)
	 store i32 %.Func_Return.6,i32* %.Func.Return.p.6.0
	 %.middle.491=load i32,i32* %.Func.Return.p.6.0
	%.middle.490 = sub i32 %.middle.491,1
	 store i32 %.middle.490,i32* %x.0
	br label %While_Cond.218

While_Cond.218:
	 %.middle.493=load i32,i32* %x.0
	%.middle.492 = icmp sgt i32 %.middle.493,0
	br i1 %.middle.492,label %While_Body.219,label %While_End.220

While_Body.219:
	 %.middle.494=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	 %.middle.495=load i32,i32* %x.0
	%.Func_Return.7 = call i32 @.func.Heap_Node.pnt(%struct.Heap_Node* %.middle.494,i32 %.middle.495)
	 store i32 %.Func_Return.7,i32* %.Func.Return.p.7.0
	 %.middle.496=load i32,i32* %.Func.Return.p.7.0
	 store i32 %.middle.496,i32* %p.0
	br label %If_Cond.221

If_Cond.221:
	 %This_addr.55=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.18 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.55,i32 0,i32 0
	 %.middle.497=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.18
	 %.middle.498=load i32,i32* %p.0
	%.Func_Return.8 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.497,i32 %.middle.498)
	 store %struct.Node* %.Func_Return.8,%struct.Node** %.Func.Return.p.8.0
	 %.middle.500=load %struct.Node*,%struct.Node** %.Func.Return.p.8.0
	%.Func_Return.9 = call i32 @.func.Node.key_(%struct.Node* %.middle.500)
	 store i32 %.Func_Return.9,i32* %.Func.Return.p.9.0
	 %This_addr.56=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.19 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.56,i32 0,i32 0
	 %.middle.501=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.19
	 %.middle.502=load i32,i32* %x.0
	%.Func_Return.10 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.501,i32 %.middle.502)
	 store %struct.Node* %.Func_Return.10,%struct.Node** %.Func.Return.p.10.0
	 %.middle.504=load %struct.Node*,%struct.Node** %.Func.Return.p.10.0
	%.Func_Return.11 = call i32 @.func.Node.key_(%struct.Node* %.middle.504)
	 store i32 %.Func_Return.11,i32* %.Func.Return.p.11.0
	 %.middle.506=load i32,i32* %.Func.Return.p.9.0
	 %.middle.507=load i32,i32* %.Func.Return.p.11.0
	%.middle.505 = icmp sge i32 %.middle.506,%.middle.507
	br i1 %.middle.505,label %If_Then.222,label %If_Else.223

If_Then.222:
	br label %While_End.220

If_Else.223:
	br label %If_End.224

If_End.224:
	 %This_addr.57=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.20 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.57,i32 0,i32 0
	 %.middle.508=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.20
	 %.middle.509=load i32,i32* %p.0
	 %.middle.510=load i32,i32* %x.0
	call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.508,i32 %.middle.509,i32 %.middle.510)
	 %.middle.512=load i32,i32* %p.0
	 store i32 %.middle.512,i32* %x.0
	br label %While_Cond.218

While_End.220:
	br label %Exit.216

Exit.216:
	ret void

}

define %struct.Node* @.func.Heap_Node.pop(%struct.Heap_Node* %This){
Entry.225:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	%.middle.513 = call i32* @_malloc(i32 1)
	%res.0 = bitcast i32* %.middle.513 to %struct.Node**
	%.middle.515 = call i32* @_malloc(i32 1)
	%.Func.Return.p.12.0 = bitcast i32* %.middle.515 to %struct.Node**
	%.Func.Return.p.13.0 = call i32* @_malloc(i32 1)
	%.middle.522 = call i32* @_malloc(i32 1)
	%.Func.Return.p.14.0 = bitcast i32* %.middle.522 to %struct.Node**
	br label %.block.227

.block.227:
	 %This_addr.58=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.21 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.58,i32 0,i32 0
	 %.middle.514=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.21
	%.Func_Return.12 = call %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %.middle.514)
	 store %struct.Node* %.Func_Return.12,%struct.Node** %.Func.Return.p.12.0
	 %.middle.516=load %struct.Node*,%struct.Node** %.Func.Return.p.12.0
	 store %struct.Node* %.middle.516,%struct.Node** %res.0
	 %This_addr.59=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.22 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.59,i32 0,i32 0
	 %.middle.517=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.22
	 %.middle.518=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%.Func_Return.13 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.518)
	 store i32 %.Func_Return.13,i32* %.Func.Return.p.13.0
	 %.middle.520=load i32,i32* %.Func.Return.p.13.0
	%.middle.519 = sub i32 %.middle.520,1
	call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.517,i32 0,i32 %.middle.519)
	 %This_addr.60=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.23 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.60,i32 0,i32 0
	 %.middle.521=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.23
	%.Func_Return.14 = call %struct.Node* @.func.Array_Node.pop_back(%struct.Array_Node* %.middle.521)
	 store %struct.Node* %.Func_Return.14,%struct.Node** %.Func.Return.p.14.0
	 %.middle.523=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	call void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %.middle.523,i32 0)
	 %.middle.524=load %struct.Node*,%struct.Node** %res.0
	 store %struct.Node* %.middle.524,%struct.Node** %.retval.p
	br label %Exit.226

Exit.226:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define %struct.Node* @.func.Heap_Node.top(%struct.Heap_Node* %This){
Entry.228:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to %struct.Node**
	%.middle.526 = call i32* @_malloc(i32 1)
	%.Func.Return.p.15.0 = bitcast i32* %.middle.526 to %struct.Node**
	br label %.block.230

.block.230:
	 %This_addr.61=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.24 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.61,i32 0,i32 0
	 %.middle.525=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.24
	%.Func_Return.15 = call %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %.middle.525)
	 store %struct.Node* %.Func_Return.15,%struct.Node** %.Func.Return.p.15.0
	 %.middle.527=load %struct.Node*,%struct.Node** %.Func.Return.p.15.0
	 store %struct.Node* %.middle.527,%struct.Node** %.retval.p
	br label %Exit.229

Exit.229:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define i32 @.func.Heap_Node.size(%struct.Heap_Node* %This){
Entry.231:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%.retval.p = call i32* @_malloc(i32 1)
	%.Func.Return.p.16.0 = call i32* @_malloc(i32 1)
	br label %.block.233

.block.233:
	 %This_addr.62=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.25 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.62,i32 0,i32 0
	 %.middle.528=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.25
	%.Func_Return.16 = call i32 @.func.Array_Node.size(%struct.Array_Node* %.middle.528)
	 store i32 %.Func_Return.16,i32* %.Func.Return.p.16.0
	 %.middle.529=load i32,i32* %.Func.Return.p.16.0
	 store i32 %.middle.529,i32* %.retval.p
	br label %Exit.232

Exit.232:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.Heap_Node.lchild(%struct.Heap_Node* %This,i32 %x){
Entry.234:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%x_addr = call i32* @_malloc(i32 1)
	 store i32 %x,i32* %x_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.236

.block.236:
	 %.middle.531=load i32,i32* %x_addr
	%.middle.530 = mul i32 %.middle.531,2
	%.middle.532 = add i32 %.middle.530,1
	 store i32 %.middle.532,i32* %.retval.p
	br label %Exit.235

Exit.235:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.Heap_Node.rchild(%struct.Heap_Node* %This,i32 %x){
Entry.237:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%x_addr = call i32* @_malloc(i32 1)
	 store i32 %x,i32* %x_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.239

.block.239:
	 %.middle.534=load i32,i32* %x_addr
	%.middle.533 = mul i32 %.middle.534,2
	%.middle.535 = add i32 %.middle.533,2
	 store i32 %.middle.535,i32* %.retval.p
	br label %Exit.238

Exit.238:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.Heap_Node.pnt(%struct.Heap_Node* %This,i32 %x){
Entry.240:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%x_addr = call i32* @_malloc(i32 1)
	 store i32 %x,i32* %x_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.242

.block.242:
	 %.middle.537=load i32,i32* %x_addr
	%.middle.536 = sub i32 %.middle.537,1
	%.middle.538 = sdiv i32 %.middle.536,2
	 store i32 %.middle.538,i32* %.retval.p
	br label %Exit.241

Exit.241:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %This,i32 %x){
Entry.243:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Heap_Node**
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%x_addr = call i32* @_malloc(i32 1)
	 store i32 %x,i32* %x_addr
	%l.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.17.0 = call i32* @_malloc(i32 1)
	%r.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.18.0 = call i32* @_malloc(i32 1)
	%largest.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.19.0 = call i32* @_malloc(i32 1)
	%RV.2.0 = call i32* @_malloc(i32 1)
	%.middle.552 = call i32* @_malloc(i32 1)
	%.Func.Return.p.20.0 = bitcast i32* %.middle.552 to %struct.Node**
	%.Func.Return.p.21.0 = call i32* @_malloc(i32 1)
	%.middle.556 = call i32* @_malloc(i32 1)
	%.Func.Return.p.22.0 = bitcast i32* %.middle.556 to %struct.Node**
	%.Func.Return.p.23.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.24.0 = call i32* @_malloc(i32 1)
	%RV.3.0 = call i32* @_malloc(i32 1)
	%.middle.571 = call i32* @_malloc(i32 1)
	%.Func.Return.p.25.0 = bitcast i32* %.middle.571 to %struct.Node**
	%.Func.Return.p.26.0 = call i32* @_malloc(i32 1)
	%.middle.575 = call i32* @_malloc(i32 1)
	%.Func.Return.p.27.0 = bitcast i32* %.middle.575 to %struct.Node**
	%.Func.Return.p.28.0 = call i32* @_malloc(i32 1)
	br label %.block.245

.block.245:
	 %.middle.539=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	 %.middle.540=load i32,i32* %x_addr
	%.Func_Return.17 = call i32 @.func.Heap_Node.lchild(%struct.Heap_Node* %.middle.539,i32 %.middle.540)
	 store i32 %.Func_Return.17,i32* %.Func.Return.p.17.0
	 %.middle.541=load i32,i32* %.Func.Return.p.17.0
	 store i32 %.middle.541,i32* %l.0
	 %.middle.542=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	 %.middle.543=load i32,i32* %x_addr
	%.Func_Return.18 = call i32 @.func.Heap_Node.rchild(%struct.Heap_Node* %.middle.542,i32 %.middle.543)
	 store i32 %.Func_Return.18,i32* %.Func.Return.p.18.0
	 %.middle.544=load i32,i32* %.Func.Return.p.18.0
	 store i32 %.middle.544,i32* %r.0
	 %.middle.545=load i32,i32* %x_addr
	 store i32 %.middle.545,i32* %largest.0
	br label %If_Cond.246

If_Cond.246:
	 %.middle.546=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%.Func_Return.19 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.546)
	 store i32 %.Func_Return.19,i32* %.Func.Return.p.19.0
	 %.middle.548=load i32,i32* %l.0
	 %.middle.549=load i32,i32* %.Func.Return.p.19.0
	%.middle.547 = icmp slt i32 %.middle.548,%.middle.549
	 store i32 0,i32* %RV.2.0
	br i1 %.middle.547,label %binary_and_rv.250,label %binary_end.251

binary_and_rv.250:
	 %This_addr.63=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.26 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.63,i32 0,i32 0
	 %.middle.550=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.26
	 %.middle.551=load i32,i32* %l.0
	%.Func_Return.20 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.550,i32 %.middle.551)
	 store %struct.Node* %.Func_Return.20,%struct.Node** %.Func.Return.p.20.0
	 %.middle.553=load %struct.Node*,%struct.Node** %.Func.Return.p.20.0
	%.Func_Return.21 = call i32 @.func.Node.key_(%struct.Node* %.middle.553)
	 store i32 %.Func_Return.21,i32* %.Func.Return.p.21.0
	 %This_addr.64=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.27 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.64,i32 0,i32 0
	 %.middle.554=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.27
	 %.middle.555=load i32,i32* %largest.0
	%.Func_Return.22 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.554,i32 %.middle.555)
	 store %struct.Node* %.Func_Return.22,%struct.Node** %.Func.Return.p.22.0
	 %.middle.557=load %struct.Node*,%struct.Node** %.Func.Return.p.22.0
	%.Func_Return.23 = call i32 @.func.Node.key_(%struct.Node* %.middle.557)
	 store i32 %.Func_Return.23,i32* %.Func.Return.p.23.0
	 %.middle.559=load i32,i32* %.Func.Return.p.21.0
	 %.middle.560=load i32,i32* %.Func.Return.p.23.0
	%.middle.558 = icmp sgt i32 %.middle.559,%.middle.560
	%.FromBool.21 = zext i1 %.middle.558 to i32
	 store i32 %.FromBool.21,i32* %RV.2.0
	br label %binary_end.251

binary_end.251:
	 %.ToBool.7=load i32,i32* %RV.2.0
	%.middle.562 = trunc i32 %.ToBool.7 to i1
	%.middle.561 = and i1 %.middle.558,%.middle.562
	br i1 %.middle.561,label %If_Then.247,label %If_Else.248

If_Then.247:
	 %.middle.564=load i32,i32* %l.0
	 store i32 %.middle.564,i32* %largest.0
	br label %If_End.249

If_Else.248:
	br label %If_End.249

If_End.249:
	br label %If_Cond.252

If_Cond.252:
	 %.middle.565=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%.Func_Return.24 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.565)
	 store i32 %.Func_Return.24,i32* %.Func.Return.p.24.0
	 %.middle.567=load i32,i32* %r.0
	 %.middle.568=load i32,i32* %.Func.Return.p.24.0
	%.middle.566 = icmp slt i32 %.middle.567,%.middle.568
	 store i32 0,i32* %RV.3.0
	br i1 %.middle.566,label %binary_and_rv.256,label %binary_end.257

binary_and_rv.256:
	 %This_addr.65=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.28 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.65,i32 0,i32 0
	 %.middle.569=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.28
	 %.middle.570=load i32,i32* %r.0
	%.Func_Return.25 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.569,i32 %.middle.570)
	 store %struct.Node* %.Func_Return.25,%struct.Node** %.Func.Return.p.25.0
	 %.middle.572=load %struct.Node*,%struct.Node** %.Func.Return.p.25.0
	%.Func_Return.26 = call i32 @.func.Node.key_(%struct.Node* %.middle.572)
	 store i32 %.Func_Return.26,i32* %.Func.Return.p.26.0
	 %This_addr.66=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.29 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.66,i32 0,i32 0
	 %.middle.573=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.29
	 %.middle.574=load i32,i32* %largest.0
	%.Func_Return.27 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.573,i32 %.middle.574)
	 store %struct.Node* %.Func_Return.27,%struct.Node** %.Func.Return.p.27.0
	 %.middle.576=load %struct.Node*,%struct.Node** %.Func.Return.p.27.0
	%.Func_Return.28 = call i32 @.func.Node.key_(%struct.Node* %.middle.576)
	 store i32 %.Func_Return.28,i32* %.Func.Return.p.28.0
	 %.middle.578=load i32,i32* %.Func.Return.p.26.0
	 %.middle.579=load i32,i32* %.Func.Return.p.28.0
	%.middle.577 = icmp sgt i32 %.middle.578,%.middle.579
	%.FromBool.22 = zext i1 %.middle.577 to i32
	 store i32 %.FromBool.22,i32* %RV.3.0
	br label %binary_end.257

binary_end.257:
	 %.ToBool.8=load i32,i32* %RV.3.0
	%.middle.581 = trunc i32 %.ToBool.8 to i1
	%.middle.580 = and i1 %.middle.577,%.middle.581
	br i1 %.middle.580,label %If_Then.253,label %If_Else.254

If_Then.253:
	 %.middle.583=load i32,i32* %r.0
	 store i32 %.middle.583,i32* %largest.0
	br label %If_End.255

If_Else.254:
	br label %If_End.255

If_End.255:
	br label %If_Cond.258

If_Cond.258:
	 %.middle.585=load i32,i32* %largest.0
	 %.middle.586=load i32,i32* %x_addr
	%.middle.584 = icmp eq i32 %.middle.585,%.middle.586
	br i1 %.middle.584,label %If_Then.259,label %If_Else.260

If_Then.259:
	br label %Exit.244

If_Else.260:
	br label %If_End.261

If_End.261:
	 %This_addr.67=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.30 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.67,i32 0,i32 0
	 %.middle.587=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.30
	 %.middle.588=load i32,i32* %x_addr
	 %.middle.589=load i32,i32* %largest.0
	call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.587,i32 %.middle.588,i32 %.middle.589)
	 %.middle.590=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	 %.middle.591=load i32,i32* %largest.0
	call void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %.middle.590,i32 %.middle.591)
	br label %Exit.244

Exit.244:
	ret void

}

define void @.func.init(){
Entry.262:
	%.Func.Return.p.29.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.30.0 = call i32* @_malloc(i32 1)
	%i.9 = call i32* @_malloc(i32 1)
	%u.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.31.0 = call i32* @_malloc(i32 1)
	%v.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.32.0 = call i32* @_malloc(i32 1)
	%w.0 = call i32* @_malloc(i32 1)
	%.Func.Return.p.33.0 = call i32* @_malloc(i32 1)
	br label %.block.264

.block.264:
	%.Func_Return.29 = call i32 @getInt()
	 store i32 %.Func_Return.29,i32* %.Func.Return.p.29.0
	 %.middle.593=load i32,i32* %.Func.Return.p.29.0
	 store i32 %.middle.593,i32* @n.0
	%.Func_Return.30 = call i32 @getInt()
	 store i32 %.Func_Return.30,i32* %.Func.Return.p.30.0
	 %.middle.595=load i32,i32* %.Func.Return.p.30.0
	 store i32 %.middle.595,i32* @m.0
	%.middle.597 = call i32* @_malloc(i32 4)
	%.middle.596 = bitcast i32* %.middle.597 to %struct.EdgeList*
	call void @.func.EdgeList.construct(%struct.EdgeList* %.middle.596)
	 store %struct.EdgeList* %.middle.596,%struct.EdgeList** @g.0
	 %.middle.599=load %struct.EdgeList*,%struct.EdgeList** @g.0
	 %.middle.600=load i32,i32* @n.0
	 %.middle.601=load i32,i32* @m.0
	call void @.func.EdgeList.init(%struct.EdgeList* %.middle.599,i32 %.middle.600,i32 %.middle.601)
	 store i32 0,i32* %i.9
	br label %For_Cond.265

For_Cond.265:
	 %.middle.604=load i32,i32* %i.9
	 %.middle.605=load i32,i32* @m.0
	%.middle.603 = icmp slt i32 %.middle.604,%.middle.605
	br i1 %.middle.603,label %For_Body.267,label %For_End.266

For_Body.267:
	%.Func_Return.31 = call i32 @getInt()
	 store i32 %.Func_Return.31,i32* %.Func.Return.p.31.0
	 %.middle.606=load i32,i32* %.Func.Return.p.31.0
	 store i32 %.middle.606,i32* %u.0
	%.Func_Return.32 = call i32 @getInt()
	 store i32 %.Func_Return.32,i32* %.Func.Return.p.32.0
	 %.middle.607=load i32,i32* %.Func.Return.p.32.0
	 store i32 %.middle.607,i32* %v.0
	%.Func_Return.33 = call i32 @getInt()
	 store i32 %.Func_Return.33,i32* %.Func.Return.p.33.0
	 %.middle.608=load i32,i32* %.Func.Return.p.33.0
	 store i32 %.middle.608,i32* %w.0
	 %.middle.609=load %struct.EdgeList*,%struct.EdgeList** @g.0
	 %.middle.610=load i32,i32* %u.0
	 %.middle.611=load i32,i32* %v.0
	 %.middle.612=load i32,i32* %w.0
	call void @.func.EdgeList.addEdge(%struct.EdgeList* %.middle.609,i32 %.middle.610,i32 %.middle.611,i32 %.middle.612)
	br label %For_Change.268

For_Change.268:
	 %.middle.613=load i32,i32* %i.9
	%.middle.614 = add i32 %.middle.613,1
	 store i32 %.middle.614,i32* %i.9
	br label %For_Cond.265

For_End.266:
	br label %Exit.263

Exit.263:
	ret void

}

define i32 @.func.Node.key_(%struct.Node* %This){
Entry.269:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Node**
	 store %struct.Node* %This,%struct.Node** %This_addr
	%.retval.p = call i32* @_malloc(i32 1)
	br label %.block.271

.block.271:
	 %This_addr.68=load %struct.Node*,%struct.Node** %This_addr
	%This_addr.dist.0 = getelementptr %struct.Node,%struct.Node* %This_addr.68,i32 0,i32 1
	 %.middle.616=load i32,i32* %This_addr.dist.0
	%.middle.615 = sub i32 0,%.middle.616
	 store i32 %.middle.615,i32* %.retval.p
	br label %Exit.270

Exit.270:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define void @.func.Node.construct(%struct.Node* %This){
Entry.272:
	%This_addr_inttmp = call i32* @_malloc(i32 1)
	%This_addr = bitcast i32* %This_addr_inttmp to %struct.Node**
	 store %struct.Node* %This,%struct.Node** %This_addr
	br label %.block.274

.block.274:
	br label %Exit.273

Exit.273:
	ret void

}

define i32* @.func.dijkstra(i32 %s){
Entry.275:
	%s_addr = call i32* @_malloc(i32 1)
	 store i32 %s,i32* %s_addr
	%.retval.ptmp = call i32* @_malloc(i32 1)
	%.retval.p = bitcast i32* %.retval.ptmp to i32**
	%.middle.617 = call i32* @_malloc(i32 1)
	%visited.0 = bitcast i32* %.middle.617 to i32**
	%.middle.620 = call i32* @_malloc(i32 1)
	%d.0 = bitcast i32* %.middle.620 to i32**
	%i.10 = call i32* @_malloc(i32 1)
	%.middle.642 = call i32* @_malloc(i32 1)
	%q.0 = bitcast i32* %.middle.642 to %struct.Heap_Node**
	%.middle.645 = call i32* @_malloc(i32 1)
	%src.0 = bitcast i32* %.middle.645 to %struct.Node**
	%.Func.Return.p.34.0 = call i32* @_malloc(i32 1)
	%.middle.658 = call i32* @_malloc(i32 1)
	%node.0 = bitcast i32* %.middle.658 to %struct.Node**
	%.middle.660 = call i32* @_malloc(i32 1)
	%.Func.Return.p.35.0 = bitcast i32* %.middle.660 to %struct.Node**
	%u.1 = call i32* @_malloc(i32 1)
	%k.0 = call i32* @_malloc(i32 1)
	%v.1 = call i32* @_malloc(i32 1)
	%w.1 = call i32* @_malloc(i32 1)
	%alt.0 = call i32* @_malloc(i32 1)
	br label %.block.277

.block.277:
	 %.middle.618=load i32,i32* @n.0
	%.SizeList.9 = call i32* @_malloc(i32 8)
	%.ArrayIdx.9 = getelementptr i32,i32* %.SizeList.9,i32 0
	 store i32 %.middle.618,i32* %.ArrayIdx.9
	%.middle.619 = call i32* @_malloc_toInt(i32* %.SizeList.9,i32 1)
	%.new.9 = bitcast i32* %.middle.619 to i32*
	 store i32* %.new.9,i32** %visited.0
	 %.middle.621=load i32,i32* @n.0
	%.SizeList.10 = call i32* @_malloc(i32 8)
	%.ArrayIdx.10 = getelementptr i32,i32* %.SizeList.10,i32 0
	 store i32 %.middle.621,i32* %.ArrayIdx.10
	%.middle.622 = call i32* @_malloc_toInt(i32* %.SizeList.10,i32 1)
	%.new.10 = bitcast i32* %.middle.622 to i32*
	 store i32* %.new.10,i32** %d.0
	 store i32 0,i32* %i.10
	br label %For_Cond.278

For_Cond.278:
	 %.middle.625=load i32,i32* %i.10
	 %.middle.626=load i32,i32* @n.0
	%.middle.624 = icmp slt i32 %.middle.625,%.middle.626
	br i1 %.middle.624,label %For_Body.280,label %For_End.279

For_Body.280:
	 %.middle.627=load i32*,i32** %d.0
	 %.middle.629=load i32,i32* %i.10
	%.middle.628 = getelementptr i32,i32* %.middle.627,i32 %.middle.629
	 %.middle.628.0=load i32,i32* %.middle.628
	 %.middle.631=load i32,i32* @INF.0
	 store i32 %.middle.631,i32* %.middle.628
	 %.middle.632=load i32*,i32** %visited.0
	 %.middle.634=load i32,i32* %i.10
	%.middle.633 = getelementptr i32,i32* %.middle.632,i32 %.middle.634
	 %.middle.633.0=load i32,i32* %.middle.633
	 store i32 0,i32* %.middle.633
	br label %For_Change.281

For_Change.281:
	 %.middle.636=load i32,i32* %i.10
	%.middle.637 = add i32 %.middle.636,1
	 store i32 %.middle.637,i32* %i.10
	br label %For_Cond.278

For_End.279:
	 %.middle.638=load i32*,i32** %d.0
	 %.middle.640=load i32,i32* %s_addr
	%.middle.639 = getelementptr i32,i32* %.middle.638,i32 %.middle.640
	 %.middle.639.0=load i32,i32* %.middle.639
	 store i32 0,i32* %.middle.639
	%.middle.644 = call i32* @_malloc(i32 1)
	%.middle.643 = bitcast i32* %.middle.644 to %struct.Heap_Node*
	call void @.func.Heap_Node.construct(%struct.Heap_Node* %.middle.643)
	 store %struct.Heap_Node* %.middle.643,%struct.Heap_Node** %q.0
	%.middle.647 = call i32* @_malloc(i32 2)
	%.middle.646 = bitcast i32* %.middle.647 to %struct.Node*
	call void @.func.Node.construct(%struct.Node* %.middle.646)
	 store %struct.Node* %.middle.646,%struct.Node** %src.0
	 %src.0.0=load %struct.Node*,%struct.Node** %src.0
	%.middle.648 = getelementptr %struct.Node,%struct.Node* %src.0.0,i32 0,i32 1
	 store i32 0,i32* %.middle.648
	 %src.0.1=load %struct.Node*,%struct.Node** %src.0
	%.middle.650 = getelementptr %struct.Node,%struct.Node* %src.0.1,i32 0,i32 0
	 %.middle.652=load i32,i32* %s_addr
	 store i32 %.middle.652,i32* %.middle.650
	 %.middle.653=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	 %.middle.654=load %struct.Node*,%struct.Node** %src.0
	call void @.func.Heap_Node.push(%struct.Heap_Node* %.middle.653,%struct.Node* %.middle.654)
	br label %While_Cond.282

While_Cond.282:
	 %.middle.655=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	%.Func_Return.34 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.655)
	 store i32 %.Func_Return.34,i32* %.Func.Return.p.34.0
	 %.middle.657=load i32,i32* %.Func.Return.p.34.0
	%.middle.656 = icmp ne i32 %.middle.657,0
	br i1 %.middle.656,label %While_Body.283,label %While_End.284

While_Body.283:
	 %.middle.659=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	%.Func_Return.35 = call %struct.Node* @.func.Heap_Node.pop(%struct.Heap_Node* %.middle.659)
	 store %struct.Node* %.Func_Return.35,%struct.Node** %.Func.Return.p.35.0
	 %.middle.661=load %struct.Node*,%struct.Node** %.Func.Return.p.35.0
	 store %struct.Node* %.middle.661,%struct.Node** %node.0
	 %node.0.0=load %struct.Node*,%struct.Node** %node.0
	%.middle.662 = getelementptr %struct.Node,%struct.Node* %node.0.0,i32 0,i32 0
	 %.middle.663=load i32,i32* %.middle.662
	 store i32 %.middle.663,i32* %u.1
	br label %If_Cond.285

If_Cond.285:
	 %.middle.664=load i32*,i32** %visited.0
	 %.middle.666=load i32,i32* %u.1
	%.middle.665 = getelementptr i32,i32* %.middle.664,i32 %.middle.666
	 %.middle.665.0=load i32,i32* %.middle.665
	 %.middle.668=load i32,i32* %.middle.665
	%.middle.667 = icmp eq i32 %.middle.668,1
	br i1 %.middle.667,label %If_Then.286,label %If_Else.287

If_Then.286:
	br label %While_Cond.282

If_Else.287:
	br label %If_End.288

If_End.288:
	 %.middle.669=load i32*,i32** %visited.0
	 %.middle.671=load i32,i32* %u.1
	%.middle.670 = getelementptr i32,i32* %.middle.669,i32 %.middle.671
	 %.middle.670.0=load i32,i32* %.middle.670
	 store i32 1,i32* %.middle.670
	 %g.0.0=load %struct.EdgeList*,%struct.EdgeList** @g.0
	%.middle.673 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.0,i32 0,i32 3
	 %.middle.674=load i32*,i32** %.middle.673
	 %.middle.676=load i32,i32* %u.1
	%.middle.675 = getelementptr i32,i32* %.middle.674,i32 %.middle.676
	 %.middle.675.0=load i32,i32* %.middle.675
	 %.middle.678=load i32,i32* %.middle.675
	 store i32 %.middle.678,i32* %k.0
	br label %For_Cond.289

For_Cond.289:
	%.middle.679 = sub i32 0,1
	 %.middle.681=load i32,i32* %k.0
	%.middle.680 = icmp ne i32 %.middle.681,%.middle.679
	br i1 %.middle.680,label %For_Body.291,label %For_End.290

For_Body.291:
	 %g.0.1=load %struct.EdgeList*,%struct.EdgeList** @g.0
	%.middle.682 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.1,i32 0,i32 2
	 %.middle.683=load %struct.Edge**,%struct.Edge*** %.middle.682
	 %.middle.685=load i32,i32* %k.0
	%.middle.684 = getelementptr %struct.Edge*,%struct.Edge** %.middle.683,i32 %.middle.685
	 %.middle.684.0=load %struct.Edge*,%struct.Edge** %.middle.684
	 %.middle.684.1=load %struct.Edge*,%struct.Edge** %.middle.684
	%.middle.686 = getelementptr %struct.Edge,%struct.Edge* %.middle.684.1,i32 0,i32 2
	 %.middle.687=load i32,i32* %.middle.686
	 store i32 %.middle.687,i32* %v.1
	 %g.0.2=load %struct.EdgeList*,%struct.EdgeList** @g.0
	%.middle.688 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.2,i32 0,i32 2
	 %.middle.689=load %struct.Edge**,%struct.Edge*** %.middle.688
	 %.middle.691=load i32,i32* %k.0
	%.middle.690 = getelementptr %struct.Edge*,%struct.Edge** %.middle.689,i32 %.middle.691
	 %.middle.690.0=load %struct.Edge*,%struct.Edge** %.middle.690
	 %.middle.690.1=load %struct.Edge*,%struct.Edge** %.middle.690
	%.middle.692 = getelementptr %struct.Edge,%struct.Edge* %.middle.690.1,i32 0,i32 0
	 %.middle.693=load i32,i32* %.middle.692
	 store i32 %.middle.693,i32* %w.1
	 %.middle.694=load i32*,i32** %d.0
	 %.middle.696=load i32,i32* %u.1
	%.middle.695 = getelementptr i32,i32* %.middle.694,i32 %.middle.696
	 %.middle.695.0=load i32,i32* %.middle.695
	 %.middle.698=load i32,i32* %.middle.695
	 %.middle.699=load i32,i32* %w.1
	%.middle.697 = add i32 %.middle.698,%.middle.699
	 store i32 %.middle.697,i32* %alt.0
	br label %If_Cond.293

If_Cond.293:
	 %.middle.700=load i32*,i32** %d.0
	 %.middle.702=load i32,i32* %v.1
	%.middle.701 = getelementptr i32,i32* %.middle.700,i32 %.middle.702
	 %.middle.701.0=load i32,i32* %.middle.701
	 %.middle.704=load i32,i32* %alt.0
	 %.middle.705=load i32,i32* %.middle.701
	%.middle.703 = icmp sge i32 %.middle.704,%.middle.705
	br i1 %.middle.703,label %If_Then.294,label %If_Else.295

If_Then.294:
	br label %For_Change.292

If_Else.295:
	br label %If_End.296

If_End.296:
	 %.middle.706=load i32*,i32** %d.0
	 %.middle.708=load i32,i32* %v.1
	%.middle.707 = getelementptr i32,i32* %.middle.706,i32 %.middle.708
	 %.middle.707.0=load i32,i32* %.middle.707
	 %.middle.710=load i32,i32* %alt.0
	 store i32 %.middle.710,i32* %.middle.707
	%.middle.712 = call i32* @_malloc(i32 2)
	%.middle.711 = bitcast i32* %.middle.712 to %struct.Node*
	call void @.func.Node.construct(%struct.Node* %.middle.711)
	 store %struct.Node* %.middle.711,%struct.Node** %node.0
	 %node.0.1=load %struct.Node*,%struct.Node** %node.0
	%.middle.714 = getelementptr %struct.Node,%struct.Node* %node.0.1,i32 0,i32 0
	 %.middle.716=load i32,i32* %v.1
	 store i32 %.middle.716,i32* %.middle.714
	 %node.0.2=load %struct.Node*,%struct.Node** %node.0
	%.middle.717 = getelementptr %struct.Node,%struct.Node* %node.0.2,i32 0,i32 1
	 %.middle.718=load i32*,i32** %d.0
	 %.middle.720=load i32,i32* %v.1
	%.middle.719 = getelementptr i32,i32* %.middle.718,i32 %.middle.720
	 %.middle.719.0=load i32,i32* %.middle.719
	 %.middle.722=load i32,i32* %.middle.719
	 store i32 %.middle.722,i32* %.middle.717
	 %.middle.723=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	 %.middle.724=load %struct.Node*,%struct.Node** %node.0
	call void @.func.Heap_Node.push(%struct.Heap_Node* %.middle.723,%struct.Node* %.middle.724)
	br label %For_Change.292

For_Change.292:
	 %g.0.3=load %struct.EdgeList*,%struct.EdgeList** @g.0
	%.middle.725 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.3,i32 0,i32 0
	 %.middle.726=load i32*,i32** %.middle.725
	 %.middle.728=load i32,i32* %k.0
	%.middle.727 = getelementptr i32,i32* %.middle.726,i32 %.middle.728
	 %.middle.727.0=load i32,i32* %.middle.727
	 %.middle.730=load i32,i32* %.middle.727
	 store i32 %.middle.730,i32* %k.0
	br label %For_Cond.289

For_End.290:
	br label %While_Cond.282

While_End.284:
	 %.middle.731=load i32*,i32** %d.0
	 store i32* %.middle.731,i32** %.retval.p
	br label %Exit.276

Exit.276:
	 %.retval=load i32*,i32** %.retval.p
	ret i32* %.retval

}

define i32 @main(){
Entry.297:
	%.retval.p = call i32* @_malloc(i32 1)
	%i.11 = call i32* @_malloc(i32 1)
	%j.0 = call i32* @_malloc(i32 1)
	%.middle.736 = call i32* @_malloc(i32 1)
	%d.1 = bitcast i32* %.middle.736 to i32**
	%.middle.738 = call i32* @_malloc(i32 1)
	%.Func.Return.p.36.0 = bitcast i32* %.middle.738 to i32**
	%.middle.750 = call i32* @_malloc(i32 1)
	%.TmpString.2.0 = bitcast i32* %.middle.750 to %struct.string**
	%.middle.752 = call i32* @_malloc(i32 8)
	%.middle.751 = bitcast i32* %.middle.752 to %struct.string*
	%.middle.758 = call i32* @_malloc(i32 1)
	%.Func.Return.p.37.0 = bitcast i32* %.middle.758 to %struct.string**
	%.middle.760 = call i32* @_malloc(i32 1)
	%.TmpString.3.0 = bitcast i32* %.middle.760 to %struct.string**
	%.middle.762 = call i32* @_malloc(i32 8)
	%.middle.761 = bitcast i32* %.middle.762 to %struct.string*
	%.middle.766 = call i32* @_malloc(i32 1)
	%.TmpString.4.0 = bitcast i32* %.middle.766 to %struct.string**
	%.middle.768 = call i32* @_malloc(i32 8)
	%.middle.767 = bitcast i32* %.middle.768 to %struct.string*
	br label %.block.299

.block.299:
	call void @.init()
	call void @.func.init()
	 store i32 0,i32* %i.11
	br label %For_Cond.300

For_Cond.300:
	 %.middle.734=load i32,i32* %i.11
	 %.middle.735=load i32,i32* @n.0
	%.middle.733 = icmp slt i32 %.middle.734,%.middle.735
	br i1 %.middle.733,label %For_Body.302,label %For_End.301

For_Body.302:
	 %.middle.737=load i32,i32* %i.11
	%.Func_Return.36 = call i32* @.func.dijkstra(i32 %.middle.737)
	 store i32* %.Func_Return.36,i32** %.Func.Return.p.36.0
	 %.middle.739=load i32*,i32** %.Func.Return.p.36.0
	 store i32* %.middle.739,i32** %d.1
	 store i32 0,i32* %j.0
	br label %For_Cond.304

For_Cond.304:
	 %.middle.742=load i32,i32* %j.0
	 %.middle.743=load i32,i32* @n.0
	%.middle.741 = icmp slt i32 %.middle.742,%.middle.743
	br i1 %.middle.741,label %For_Body.306,label %For_End.305

For_Body.306:
	br label %If_Cond.308

If_Cond.308:
	 %.middle.744=load i32*,i32** %d.1
	 %.middle.746=load i32,i32* %j.0
	%.middle.745 = getelementptr i32,i32* %.middle.744,i32 %.middle.746
	 %.middle.745.0=load i32,i32* %.middle.745
	 %.middle.748=load i32,i32* %.middle.745
	 %.middle.749=load i32,i32* @INF.0
	%.middle.747 = icmp eq i32 %.middle.748,%.middle.749
	br i1 %.middle.747,label %If_Then.309,label %If_Else.310

If_Then.309:
	call void @.func.string.construct(%struct.string* %.middle.751)
	%.TmpLen.2 = getelementptr %struct.string,%struct.string* %.middle.751,i32 0,i32 0
	 store i32 2,i32* %.TmpLen.2
	%.TmpContent.2 = getelementptr %struct.string,%struct.string* %.middle.751,i32 0,i32 1
	%.TmpConstRef.2 = getelementptr [2 x i32],[2 x i32]* @.ConstantString.2,i32 0,i32 0
	 store i32* %.TmpConstRef.2,i32** %.TmpContent.2
	 store %struct.string* %.middle.751,%struct.string** %.TmpString.2.0
	 %.middle.753=load %struct.string*,%struct.string** %.TmpString.2.0
	call void @.func.print(%struct.string* %.middle.753)
	br label %If_End.311

If_Else.310:
	 %.middle.754=load i32*,i32** %d.1
	 %.middle.756=load i32,i32* %j.0
	%.middle.755 = getelementptr i32,i32* %.middle.754,i32 %.middle.756
	 %.middle.755.0=load i32,i32* %.middle.755
	 %.middle.757=load i32,i32* %.middle.755
	%.Func_Return.37 = call %struct.string* @.func.toString(i32 %.middle.757)
	 store %struct.string* %.Func_Return.37,%struct.string** %.Func.Return.p.37.0
	 %.middle.759=load %struct.string*,%struct.string** %.Func.Return.p.37.0
	call void @.func.print(%struct.string* %.middle.759)
	br label %If_End.311

If_End.311:
	call void @.func.string.construct(%struct.string* %.middle.761)
	%.TmpLen.3 = getelementptr %struct.string,%struct.string* %.middle.761,i32 0,i32 0
	 store i32 1,i32* %.TmpLen.3
	%.TmpContent.3 = getelementptr %struct.string,%struct.string* %.middle.761,i32 0,i32 1
	%.TmpConstRef.3 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.3,i32 0,i32 0
	 store i32* %.TmpConstRef.3,i32** %.TmpContent.3
	 store %struct.string* %.middle.761,%struct.string** %.TmpString.3.0
	 %.middle.763=load %struct.string*,%struct.string** %.TmpString.3.0
	call void @.func.print(%struct.string* %.middle.763)
	br label %For_Change.307

For_Change.307:
	 %.middle.764=load i32,i32* %j.0
	%.middle.765 = add i32 %.middle.764,1
	 store i32 %.middle.765,i32* %j.0
	br label %For_Cond.304

For_End.305:
	call void @.func.string.construct(%struct.string* %.middle.767)
	%.TmpLen.4 = getelementptr %struct.string,%struct.string* %.middle.767,i32 0,i32 0
	 store i32 0,i32* %.TmpLen.4
	%.TmpContent.4 = getelementptr %struct.string,%struct.string* %.middle.767,i32 0,i32 1
	%.TmpConstRef.4 = getelementptr [0 x i32],[0 x i32]* @.ConstantString.4,i32 0,i32 0
	 store i32* %.TmpConstRef.4,i32** %.TmpContent.4
	 store %struct.string* %.middle.767,%struct.string** %.TmpString.4.0
	 %.middle.769=load %struct.string*,%struct.string** %.TmpString.4.0
	call void @.func.println(%struct.string* %.middle.769)
	br label %For_Change.303

For_Change.303:
	 %.middle.770=load i32,i32* %i.11
	%.middle.771 = add i32 %.middle.770,1
	 store i32 %.middle.771,i32* %i.11
	br label %For_Cond.300

For_End.301:
	 store i32 0,i32* %.retval.p
	br label %Exit.298

Exit.298:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

