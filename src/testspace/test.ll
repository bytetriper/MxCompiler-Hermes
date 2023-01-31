source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@INF.0 = global i32 0
@a_no_collison_plz.0 = global i32* zeroinitializer
@g.0 = global %struct.EdgeList* zeroinitializer
@tmp_no_collision_plz.0 = global %struct.string* zeroinitializer
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
	%.SizeList.0 = call i32* @_malloc(i32 1)
	%.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0,i32 0
	 store i32 20,i32* %.ArrayIdx.0
	%.middle.0 = call i32* @_malloc_toInt(i32* %.SizeList.0,i32 1)
	%.new.0 = bitcast i32* %.middle.0 to i32*
	 store i32* %.new.0,i32** @a_no_collison_plz.0
	%.middle.2 = call i32* @_malloc(i32 2)
	%.middle.1 = bitcast i32* %.middle.2 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.1)
	 store %struct.string* %.middle.1,%struct.string** @tmp_no_collision_plz.0
	br label %Exit.2

Exit.2:
	ret void

}

define void @.func.string.construct(%struct.string* %This){
Entry.4:
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	br label %.block.6

.block.6:
	 %This_addr.0=load %struct.string*,%struct.string** %This_addr
	%This_addr.len.0 = getelementptr %struct.string,%struct.string* %This_addr.0,i32 0,i32 0
	 store i32 0,i32* %This_addr.len.0
	br label %Exit.5

Exit.5:
	ret void

}

define i32 @.func.string.length(%struct.string* %This){
Entry.7:
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	%.retval.p=alloca i32
	br label %.block.9

.block.9:
	 %This_addr.1=load %struct.string*,%struct.string** %This_addr
	%This_addr.len.1 = getelementptr %struct.string,%struct.string* %This_addr.1,i32 0,i32 0
	 %.middle.4=load i32,i32* %This_addr.len.1
	 store i32 %.middle.4,i32* %.retval.p
	br label %Exit.8

Exit.8:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.string.parseInt(%struct.string* %This){
Entry.10:
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	%.retval.p=alloca i32
	%ans.0=alloca i32
	%i.0=alloca i32
	%RV.0.0=alloca i32
	%RV.1.0=alloca i32
	br label %.block.12

.block.12:
	 store i32 0,i32* %ans.0
	 store i32 0,i32* %i.0
	br label %For_Cond.13

For_Cond.13:
	 %This_addr.2=load %struct.string*,%struct.string** %This_addr
	%This_addr.len.2 = getelementptr %struct.string,%struct.string* %This_addr.2,i32 0,i32 0
	 %.middle.6=load i32,i32* %i.0
	 %.middle.7=load i32,i32* %This_addr.len.2
	%.middle.5 = icmp slt i32 %.middle.6,%.middle.7
	 store i32 0,i32* %RV.0.0
	br i1 %.middle.5,label %binary_and_rv.17,label %binary_end.18

binary_and_rv.17:
	 %This_addr.3=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.0 = getelementptr %struct.string,%struct.string* %This_addr.3,i32 0,i32 1
	 %.middle.8=load i32*,i32** %This_addr.content.0
	 %.middle.10=load i32,i32* %i.0
	%.middle.9 = getelementptr i32,i32* %.middle.8,i32 %.middle.10
	 %.middle.9.0=load i32,i32* %.middle.9
	 %.middle.12=load i32,i32* %.middle.9
	%.middle.11 = icmp sgt i32 %.middle.12,47
	%.FromBool.0 = zext i1 %.middle.11 to i32
	 store i32 %.FromBool.0,i32* %RV.0.0
	br label %binary_end.18

binary_end.18:
	 %.ToBool.0=load i32,i32* %RV.0.0
	%.middle.14 = trunc i32 %.ToBool.0 to i1
	%.middle.13 = and i1 %.middle.11,%.middle.14
	 store i32 0,i32* %RV.1.0
	br i1 %.middle.13,label %binary_and_rv.19,label %binary_end.20

binary_and_rv.19:
	 %This_addr.4=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.1 = getelementptr %struct.string,%struct.string* %This_addr.4,i32 0,i32 1
	 %.middle.15=load i32*,i32** %This_addr.content.1
	 %.middle.17=load i32,i32* %i.0
	%.middle.16 = getelementptr i32,i32* %.middle.15,i32 %.middle.17
	 %.middle.16.0=load i32,i32* %.middle.16
	 %.middle.19=load i32,i32* %.middle.16
	%.middle.18 = icmp slt i32 %.middle.19,58
	%.FromBool.1 = zext i1 %.middle.18 to i32
	 store i32 %.FromBool.1,i32* %RV.1.0
	br label %binary_end.20

binary_end.20:
	 %.ToBool.1=load i32,i32* %RV.1.0
	%.middle.21 = trunc i32 %.ToBool.1 to i1
	%.middle.20 = and i1 %.middle.18,%.middle.21
	br i1 %.middle.20,label %For_Body.15,label %For_End.14

For_Body.15:
	 %.middle.23=load i32,i32* %ans.0
	%.middle.22 = mul i32 %.middle.23,10
	 %This_addr.5=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.2 = getelementptr %struct.string,%struct.string* %This_addr.5,i32 0,i32 1
	 %.middle.24=load i32*,i32** %This_addr.content.2
	 %.middle.26=load i32,i32* %i.0
	%.middle.25 = getelementptr i32,i32* %.middle.24,i32 %.middle.26
	 %.middle.25.0=load i32,i32* %.middle.25
	 %.middle.28=load i32,i32* %.middle.25
	%.middle.27 = add i32 %.middle.22,%.middle.28
	%.middle.29 = sub i32 %.middle.27,48
	 store i32 %.middle.29,i32* %ans.0
	br label %For_Change.16

For_Change.16:
	 %.middle.31=load i32,i32* %i.0
	 %.middle.33=load i32,i32* %i.0
	%.middle.32 = add i32 %.middle.33,1
	 store i32 %.middle.32,i32* %i.0
	br label %For_Cond.13

For_End.14:
	 %.middle.34=load i32,i32* %ans.0
	 store i32 %.middle.34,i32* %.retval.p
	br label %Exit.11

Exit.11:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.string.ord(%struct.string* %This,i32 %pos){
Entry.21:
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	%pos_addr=alloca i32
	 store i32 %pos,i32* %pos_addr
	%.retval.p=alloca i32
	br label %.block.23

.block.23:
	 %This_addr.6=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.3 = getelementptr %struct.string,%struct.string* %This_addr.6,i32 0,i32 1
	 %.middle.35=load i32*,i32** %This_addr.content.3
	 %.middle.37=load i32,i32* %pos_addr
	%.middle.36 = getelementptr i32,i32* %.middle.35,i32 %.middle.37
	 %.middle.36.0=load i32,i32* %.middle.36
	 %.middle.38=load i32,i32* %.middle.36
	 store i32 %.middle.38,i32* %.retval.p
	br label %Exit.22

Exit.22:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define %struct.string* @.func.string.substring(%struct.string* %This,i32 %left,i32 %right){
Entry.24:
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	%left_addr=alloca i32
	 store i32 %left,i32* %left_addr
	%right_addr=alloca i32
	 store i32 %right,i32* %right_addr
	%.retval.p=alloca %struct.string*
	%tmp.0=alloca %struct.string*
	%tmplen.0=alloca i32
	%i.1=alloca i32
	br label %.block.26

.block.26:
	%.middle.40 = call i32* @_malloc(i32 2)
	%.middle.39 = bitcast i32* %.middle.40 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.39)
	 store %struct.string* %.middle.39,%struct.string** %tmp.0
	 %.middle.42=load i32,i32* %right_addr
	 %.middle.43=load i32,i32* %left_addr
	%.middle.41 = sub i32 %.middle.42,%.middle.43
	 store i32 %.middle.41,i32* %tmplen.0
	 %tmp.0.0=load %struct.string*,%struct.string** %tmp.0
	%.middle.44 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	 %.middle.45=load i32,i32* %tmplen.0
	%.SizeList.1 = call i32* @_malloc(i32 1)
	%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	 store i32 %.middle.45,i32* %.ArrayIdx.1
	%.middle.46 = call i32* @_malloc_toInt(i32* %.SizeList.1,i32 1)
	%.new.1 = bitcast i32* %.middle.46 to i32*
	 store i32* %.new.1,i32** %.middle.44
	 %tmp.0.1=load %struct.string*,%struct.string** %tmp.0
	%.middle.48 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	 %.middle.50=load i32,i32* %tmplen.0
	 store i32 %.middle.50,i32* %.middle.48
	 store i32 0,i32* %i.1
	br label %For_Cond.27

For_Cond.27:
	 %.middle.52=load i32,i32* %i.1
	 %.middle.53=load i32,i32* %tmplen.0
	%.middle.51 = icmp slt i32 %.middle.52,%.middle.53
	br i1 %.middle.51,label %For_Body.29,label %For_End.28

For_Body.29:
	 %tmp.0.2=load %struct.string*,%struct.string** %tmp.0
	%.middle.54 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	 %.middle.55=load i32*,i32** %.middle.54
	 %.middle.57=load i32,i32* %i.1
	%.middle.56 = getelementptr i32,i32* %.middle.55,i32 %.middle.57
	 %.middle.56.0=load i32,i32* %.middle.56
	 %This_addr.7=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.4 = getelementptr %struct.string,%struct.string* %This_addr.7,i32 0,i32 1
	 %.middle.58=load i32*,i32** %This_addr.content.4
	 %.middle.60=load i32,i32* %left_addr
	 %.middle.61=load i32,i32* %i.1
	%.middle.59 = add i32 %.middle.60,%.middle.61
	%.middle.62 = getelementptr i32,i32* %.middle.58,i32 %.middle.59
	 %.middle.62.0=load i32,i32* %.middle.62
	 %.middle.64=load i32,i32* %.middle.62
	 store i32 %.middle.64,i32* %.middle.56
	br label %For_Change.30

For_Change.30:
	 %.middle.65=load i32,i32* %i.1
	 %.middle.67=load i32,i32* %i.1
	%.middle.66 = add i32 %.middle.67,1
	 store i32 %.middle.66,i32* %i.1
	br label %For_Cond.27

For_End.28:
	 %.middle.68=load %struct.string*,%struct.string** %tmp.0
	 store %struct.string* %.middle.68,%struct.string** %.retval.p
	br label %Exit.25

Exit.25:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define %struct.string* @.func.Add_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.31:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca %struct.string*
	%tmp.1=alloca %struct.string*
	%tmplen.1=alloca i32
	%alen.0=alloca i32
	%blen.0=alloca i32
	%i.2=alloca i32
	%i.3=alloca i32
	br label %.block.33

.block.33:
	%.middle.70 = call i32* @_malloc(i32 2)
	%.middle.69 = bitcast i32* %.middle.70 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.69)
	 store %struct.string* %.middle.69,%struct.string** %tmp.1
	 %a_addr.0=load %struct.string*,%struct.string** %a_addr
	%.middle.71 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	 %b_addr.0=load %struct.string*,%struct.string** %b_addr
	%.middle.72 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	 %.middle.74=load i32,i32* %.middle.71
	 %.middle.75=load i32,i32* %.middle.72
	%.middle.73 = add i32 %.middle.74,%.middle.75
	 store i32 %.middle.73,i32* %tmplen.1
	 %a_addr.1=load %struct.string*,%struct.string** %a_addr
	%.middle.76 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	 %.middle.77=load i32,i32* %.middle.76
	 store i32 %.middle.77,i32* %alen.0
	 %b_addr.1=load %struct.string*,%struct.string** %b_addr
	%.middle.78 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	 %.middle.79=load i32,i32* %.middle.78
	 store i32 %.middle.79,i32* %blen.0
	 %tmp.1.0=load %struct.string*,%struct.string** %tmp.1
	%.middle.80 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	 %.middle.82=load i32,i32* %tmplen.1
	 store i32 %.middle.82,i32* %.middle.80
	 %tmp.1.1=load %struct.string*,%struct.string** %tmp.1
	%.middle.83 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	 %.middle.84=load i32,i32* %tmplen.1
	%.SizeList.2 = call i32* @_malloc(i32 1)
	%.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	 store i32 %.middle.84,i32* %.ArrayIdx.2
	%.middle.85 = call i32* @_malloc_toInt(i32* %.SizeList.2,i32 1)
	%.new.2 = bitcast i32* %.middle.85 to i32*
	 store i32* %.new.2,i32** %.middle.83
	 store i32 0,i32* %i.2
	br label %For_Cond.34

For_Cond.34:
	 %.middle.88=load i32,i32* %i.2
	 %.middle.89=load i32,i32* %alen.0
	%.middle.87 = icmp slt i32 %.middle.88,%.middle.89
	br i1 %.middle.87,label %For_Body.36,label %For_End.35

For_Body.36:
	 %tmp.1.2=load %struct.string*,%struct.string** %tmp.1
	%.middle.90 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	 %.middle.91=load i32*,i32** %.middle.90
	 %.middle.93=load i32,i32* %i.2
	%.middle.92 = getelementptr i32,i32* %.middle.91,i32 %.middle.93
	 %.middle.92.0=load i32,i32* %.middle.92
	 %a_addr.2=load %struct.string*,%struct.string** %a_addr
	%.middle.94 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	 %.middle.95=load i32*,i32** %.middle.94
	 %.middle.97=load i32,i32* %i.2
	%.middle.96 = getelementptr i32,i32* %.middle.95,i32 %.middle.97
	 %.middle.96.0=load i32,i32* %.middle.96
	 %.middle.99=load i32,i32* %.middle.96
	 store i32 %.middle.99,i32* %.middle.92
	br label %For_Change.37

For_Change.37:
	 %.middle.100=load i32,i32* %i.2
	%.middle.101 = add i32 %.middle.100,1
	 store i32 %.middle.101,i32* %i.2
	br label %For_Cond.34

For_End.35:
	 store i32 0,i32* %i.3
	br label %For_Cond.38

For_Cond.38:
	 %.middle.103=load i32,i32* %i.3
	 %.middle.104=load i32,i32* %blen.0
	%.middle.102 = icmp slt i32 %.middle.103,%.middle.104
	br i1 %.middle.102,label %For_Body.40,label %For_End.39

For_Body.40:
	 %tmp.1.3=load %struct.string*,%struct.string** %tmp.1
	%.middle.105 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	 %.middle.106=load i32*,i32** %.middle.105
	 %.middle.108=load i32,i32* %i.3
	 %.middle.109=load i32,i32* %alen.0
	%.middle.107 = add i32 %.middle.108,%.middle.109
	%.middle.110 = getelementptr i32,i32* %.middle.106,i32 %.middle.107
	 %.middle.110.0=load i32,i32* %.middle.110
	 %b_addr.2=load %struct.string*,%struct.string** %b_addr
	%.middle.111 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	 %.middle.112=load i32*,i32** %.middle.111
	 %.middle.114=load i32,i32* %i.3
	%.middle.113 = getelementptr i32,i32* %.middle.112,i32 %.middle.114
	 %.middle.113.0=load i32,i32* %.middle.113
	 %.middle.116=load i32,i32* %.middle.113
	 store i32 %.middle.116,i32* %.middle.110
	br label %For_Change.41

For_Change.41:
	 %.middle.117=load i32,i32* %i.3
	%.middle.118 = add i32 %.middle.117,1
	 store i32 %.middle.118,i32* %i.3
	br label %For_Cond.38

For_End.39:
	 %.middle.119=load %struct.string*,%struct.string** %tmp.1
	 store %struct.string* %.middle.119,%struct.string** %.retval.p
	br label %Exit.32

Exit.32:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.42:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%len.0=alloca i32
	%i.4=alloca i32
	br label %.block.44

.block.44:
	 %b_addr.3=load %struct.string*,%struct.string** %b_addr
	%.middle.120 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	 %.middle.121=load i32,i32* %.middle.120
	 store i32 %.middle.121,i32* %len.0
	br label %If_Cond.45

If_Cond.45:
	 %a_addr.3=load %struct.string*,%struct.string** %a_addr
	%.middle.122 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	 %b_addr.4=load %struct.string*,%struct.string** %b_addr
	%.middle.123 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	 %.middle.125=load i32,i32* %.middle.122
	 %.middle.126=load i32,i32* %.middle.123
	%.middle.124 = icmp slt i32 %.middle.125,%.middle.126
	br i1 %.middle.124,label %If_Then.46,label %If_Else.47

If_Then.46:
	 %a_addr.4=load %struct.string*,%struct.string** %a_addr
	%.middle.127 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	 %.middle.129=load i32,i32* %.middle.127
	 store i32 %.middle.129,i32* %len.0
	br label %If_End.48

If_Else.47:
	br label %If_End.48

If_End.48:
	 store i32 0,i32* %i.4
	br label %For_Cond.49

For_Cond.49:
	 %.middle.131=load i32,i32* %i.4
	 %.middle.132=load i32,i32* %len.0
	%.middle.130 = icmp slt i32 %.middle.131,%.middle.132
	br i1 %.middle.130,label %For_Body.51,label %For_End.50

For_Body.51:
	br label %If_Cond.53

If_Cond.53:
	 %a_addr.5=load %struct.string*,%struct.string** %a_addr
	%.middle.133 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	 %.middle.134=load i32*,i32** %.middle.133
	 %.middle.136=load i32,i32* %i.4
	%.middle.135 = getelementptr i32,i32* %.middle.134,i32 %.middle.136
	 %.middle.135.0=load i32,i32* %.middle.135
	 %b_addr.5=load %struct.string*,%struct.string** %b_addr
	%.middle.137 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	 %.middle.138=load i32*,i32** %.middle.137
	 %.middle.140=load i32,i32* %i.4
	%.middle.139 = getelementptr i32,i32* %.middle.138,i32 %.middle.140
	 %.middle.139.0=load i32,i32* %.middle.139
	 %.middle.142=load i32,i32* %.middle.135
	 %.middle.143=load i32,i32* %.middle.139
	%.middle.141 = icmp slt i32 %.middle.142,%.middle.143
	br i1 %.middle.141,label %If_Then.54,label %If_Else.55

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
	%.middle.144 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	 %.middle.145=load i32*,i32** %.middle.144
	 %.middle.147=load i32,i32* %i.4
	%.middle.146 = getelementptr i32,i32* %.middle.145,i32 %.middle.147
	 %.middle.146.0=load i32,i32* %.middle.146
	 %b_addr.6=load %struct.string*,%struct.string** %b_addr
	%.middle.148 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	 %.middle.149=load i32*,i32** %.middle.148
	 %.middle.151=load i32,i32* %i.4
	%.middle.150 = getelementptr i32,i32* %.middle.149,i32 %.middle.151
	 %.middle.150.0=load i32,i32* %.middle.150
	 %.middle.153=load i32,i32* %.middle.146
	 %.middle.154=load i32,i32* %.middle.150
	%.middle.152 = icmp sgt i32 %.middle.153,%.middle.154
	br i1 %.middle.152,label %If_Then.58,label %If_Else.59

If_Then.58:
	%.FromBool.3 = zext i1 0 to i32
	 store i32 %.FromBool.3,i32* %.retval.p
	br label %Exit.43

If_Else.59:
	br label %If_End.60

If_End.60:
	br label %For_Change.52

For_Change.52:
	 %.middle.155=load i32,i32* %i.4
	%.middle.156 = add i32 %.middle.155,1
	 store i32 %.middle.156,i32* %i.4
	br label %For_Cond.49

For_End.50:
	br label %If_Cond.61

If_Cond.61:
	 %a_addr.7=load %struct.string*,%struct.string** %a_addr
	%.middle.157 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	 %b_addr.7=load %struct.string*,%struct.string** %b_addr
	%.middle.158 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	 %.middle.160=load i32,i32* %.middle.157
	 %.middle.161=load i32,i32* %.middle.158
	%.middle.159 = icmp sgt i32 %.middle.160,%.middle.161
	br i1 %.middle.159,label %If_Then.62,label %If_Else.63

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
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%len.1=alloca i32
	%i.5=alloca i32
	br label %.block.67

.block.67:
	br label %If_Cond.68

If_Cond.68:
	 %a_addr.8=load %struct.string*,%struct.string** %a_addr
	%.middle.162 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	 %b_addr.8=load %struct.string*,%struct.string** %b_addr
	%.middle.163 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	 %.middle.165=load i32,i32* %.middle.162
	 %.middle.166=load i32,i32* %.middle.163
	%.middle.164 = icmp ne i32 %.middle.165,%.middle.166
	br i1 %.middle.164,label %If_Then.69,label %If_Else.70

If_Then.69:
	%.FromBool.6 = zext i1 0 to i32
	 store i32 %.FromBool.6,i32* %.retval.p
	br label %Exit.66

If_Else.70:
	br label %If_End.71

If_End.71:
	 %a_addr.9=load %struct.string*,%struct.string** %a_addr
	%.middle.167 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	 %.middle.168=load i32,i32* %.middle.167
	 store i32 %.middle.168,i32* %len.1
	 store i32 0,i32* %i.5
	br label %For_Cond.72

For_Cond.72:
	 %.middle.170=load i32,i32* %i.5
	 %.middle.171=load i32,i32* %len.1
	%.middle.169 = icmp slt i32 %.middle.170,%.middle.171
	br i1 %.middle.169,label %For_Body.74,label %For_End.73

For_Body.74:
	br label %If_Cond.76

If_Cond.76:
	 %a_addr.10=load %struct.string*,%struct.string** %a_addr
	%.middle.172 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	 %.middle.173=load i32*,i32** %.middle.172
	 %.middle.175=load i32,i32* %i.5
	%.middle.174 = getelementptr i32,i32* %.middle.173,i32 %.middle.175
	 %.middle.174.0=load i32,i32* %.middle.174
	 %b_addr.9=load %struct.string*,%struct.string** %b_addr
	%.middle.176 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	 %.middle.177=load i32*,i32** %.middle.176
	 %.middle.179=load i32,i32* %i.5
	%.middle.178 = getelementptr i32,i32* %.middle.177,i32 %.middle.179
	 %.middle.178.0=load i32,i32* %.middle.178
	 %.middle.181=load i32,i32* %.middle.174
	 %.middle.182=load i32,i32* %.middle.178
	%.middle.180 = icmp ne i32 %.middle.181,%.middle.182
	br i1 %.middle.180,label %If_Then.77,label %If_Else.78

If_Then.77:
	%.FromBool.7 = zext i1 0 to i32
	 store i32 %.FromBool.7,i32* %.retval.p
	br label %Exit.66

If_Else.78:
	br label %If_End.79

If_End.79:
	br label %For_Change.75

For_Change.75:
	 %.middle.183=load i32,i32* %i.5
	%.middle.184 = add i32 %.middle.183,1
	 store i32 %.middle.184,i32* %i.5
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
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%len.2=alloca i32
	%i.6=alloca i32
	br label %.block.82

.block.82:
	br label %If_Cond.83

If_Cond.83:
	 %a_addr.11=load %struct.string*,%struct.string** %a_addr
	%.middle.185 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	 %b_addr.10=load %struct.string*,%struct.string** %b_addr
	%.middle.186 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	 %.middle.188=load i32,i32* %.middle.185
	 %.middle.189=load i32,i32* %.middle.186
	%.middle.187 = icmp ne i32 %.middle.188,%.middle.189
	br i1 %.middle.187,label %If_Then.84,label %If_Else.85

If_Then.84:
	%.FromBool.9 = zext i1 1 to i32
	 store i32 %.FromBool.9,i32* %.retval.p
	br label %Exit.81

If_Else.85:
	br label %If_End.86

If_End.86:
	 %a_addr.12=load %struct.string*,%struct.string** %a_addr
	%.middle.190 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	 %.middle.191=load i32,i32* %.middle.190
	 store i32 %.middle.191,i32* %len.2
	 store i32 0,i32* %i.6
	br label %For_Cond.87

For_Cond.87:
	 %.middle.193=load i32,i32* %i.6
	 %.middle.194=load i32,i32* %len.2
	%.middle.192 = icmp slt i32 %.middle.193,%.middle.194
	br i1 %.middle.192,label %For_Body.89,label %For_End.88

For_Body.89:
	br label %If_Cond.91

If_Cond.91:
	 %a_addr.13=load %struct.string*,%struct.string** %a_addr
	%.middle.195 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	 %.middle.196=load i32*,i32** %.middle.195
	 %.middle.198=load i32,i32* %i.6
	%.middle.197 = getelementptr i32,i32* %.middle.196,i32 %.middle.198
	 %.middle.197.0=load i32,i32* %.middle.197
	 %b_addr.11=load %struct.string*,%struct.string** %b_addr
	%.middle.199 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	 %.middle.200=load i32*,i32** %.middle.199
	 %.middle.202=load i32,i32* %i.6
	%.middle.201 = getelementptr i32,i32* %.middle.200,i32 %.middle.202
	 %.middle.201.0=load i32,i32* %.middle.201
	 %.middle.204=load i32,i32* %.middle.197
	 %.middle.205=load i32,i32* %.middle.201
	%.middle.203 = icmp ne i32 %.middle.204,%.middle.205
	br i1 %.middle.203,label %If_Then.92,label %If_Else.93

If_Then.92:
	%.FromBool.10 = zext i1 1 to i32
	 store i32 %.FromBool.10,i32* %.retval.p
	br label %Exit.81

If_Else.93:
	br label %If_End.94

If_End.94:
	br label %For_Change.90

For_Change.90:
	 %.middle.206=load i32,i32* %i.6
	%.middle.207 = add i32 %.middle.206,1
	 store i32 %.middle.207,i32* %i.6
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
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%.Func.Return.p.0.0=alloca i32
	%.Func.Return.p.1.0=alloca i32
	br label %.block.97

.block.97:
	 %.middle.208=load %struct.string*,%struct.string** %a_addr
	 %.middle.209=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.0 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.208,%struct.string* %.middle.209)
	%.FromBool.12 = zext i1 %.Func_Return.0 to i32
	 store i32 %.FromBool.12,i32* %.Func.Return.p.0.0
	 %.middle.210=load %struct.string*,%struct.string** %a_addr
	 %.middle.211=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.1 = call i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %.middle.210,%struct.string* %.middle.211)
	%.FromBool.13 = zext i1 %.Func_Return.1 to i32
	 store i32 %.FromBool.13,i32* %.Func.Return.p.1.0
	 %.ToBool.2=load i32,i32* %.Func.Return.p.0.0
	%.middle.213 = trunc i32 %.ToBool.2 to i1
	 %.ToBool.3=load i32,i32* %.Func.Return.p.1.0
	%.middle.214 = trunc i32 %.ToBool.3 to i1
	%.middle.212 = or i1 %.middle.213,%.middle.214
	%.FromBool.14 = zext i1 %.middle.212 to i32
	 store i32 %.FromBool.14,i32* %.retval.p
	br label %Exit.96

Exit.96:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Greater_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.98:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%.Func.Return.p.2.0=alloca i32
	br label %.block.100

.block.100:
	 %.middle.215=load %struct.string*,%struct.string** %a_addr
	 %.middle.216=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.2 = call i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.215,%struct.string* %.middle.216)
	%.FromBool.15 = zext i1 %.Func_Return.2 to i32
	 store i32 %.FromBool.15,i32* %.Func.Return.p.2.0
	 %.ToBool.4=load i32,i32* %.Func.Return.p.2.0
	%.middle.218 = trunc i32 %.ToBool.4 to i1
	%.middle.217 = xor i1 %.middle.218,1
	%.FromBool.16 = zext i1 %.middle.217 to i32
	 store i32 %.FromBool.16,i32* %.retval.p
	br label %Exit.99

Exit.99:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.GE_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.101:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%.Func.Return.p.3.0=alloca i32
	br label %.block.103

.block.103:
	 %.middle.219=load %struct.string*,%struct.string** %a_addr
	 %.middle.220=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.3 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.219,%struct.string* %.middle.220)
	%.FromBool.17 = zext i1 %.Func_Return.3 to i32
	 store i32 %.FromBool.17,i32* %.Func.Return.p.3.0
	 %.ToBool.5=load i32,i32* %.Func.Return.p.3.0
	%.middle.222 = trunc i32 %.ToBool.5 to i1
	%.middle.221 = xor i1 %.middle.222,1
	%.FromBool.18 = zext i1 %.middle.221 to i32
	 store i32 %.FromBool.18,i32* %.retval.p
	br label %Exit.102

Exit.102:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define void @.func.print(%struct.string* %str){
Entry.104:
	%str_addr=alloca %struct.string*
	 store %struct.string* %str,%struct.string** %str_addr
	br label %.block.106

.block.106:
	 %str_addr.0=load %struct.string*,%struct.string** %str_addr
	%.middle.223 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 1
	 %.middle.224=load i32*,i32** %.middle.223
	 %str_addr.1=load %struct.string*,%struct.string** %str_addr
	%.middle.225 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 0
	 %.middle.226=load i32,i32* %.middle.225
	call void @printf_no_collision_please(i32* %.middle.224,i32 %.middle.226)
	br label %Exit.105

Exit.105:
	ret void

}

define void @.func.println(%struct.string* %str){
Entry.107:
	%str_addr=alloca %struct.string*
	 store %struct.string* %str,%struct.string** %str_addr
	%.TmpString.0.0=alloca %struct.string*
	%.middle.229 = call i32* @_malloc(i32 8)
	%.middle.228 = bitcast i32* %.middle.229 to %struct.string*
	br label %.block.109

.block.109:
	 %.middle.227=load %struct.string*,%struct.string** %str_addr
	call void @.func.print(%struct.string* %.middle.227)
	call void @.func.string.construct(%struct.string* %.middle.228)
	%.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.228,i32 0,i32 0
	 store i32 1,i32* %.TmpLen.0
	%.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.228,i32 0,i32 1
	%.TmpConstRef.0 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.0,i32 0,i32 0
	 store i32* %.TmpConstRef.0,i32** %.TmpContent.0
	 store %struct.string* %.middle.228,%struct.string** %.TmpString.0.0
	 %.middle.230=load %struct.string*,%struct.string** %.TmpString.0.0
	call void @.func.print(%struct.string* %.middle.230)
	br label %Exit.108

Exit.108:
	ret void

}

define void @.func.printlnInt(i32 %num){
Entry.110:
	%num_addr=alloca i32
	 store i32 %num,i32* %num_addr
	%.TmpString.1.0=alloca %struct.string*
	%.middle.233 = call i32* @_malloc(i32 8)
	%.middle.232 = bitcast i32* %.middle.233 to %struct.string*
	br label %.block.112

.block.112:
	 %.middle.231=load i32,i32* %num_addr
	call void @printInt(i32 %.middle.231)
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
	%i_addr=alloca i32
	 store i32 %i,i32* %i_addr
	%.retval.p=alloca %struct.string*
	%cnt.0=alloca i32
	%fg.0=alloca i32
	%i.7=alloca i32
	br label %.block.115

.block.115:
	br label %If_Cond.116

If_Cond.116:
	 %tmp_no_collision_plz.0.0=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	%.middle.235 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.0,i32 0,i32 0
	 %.middle.237=load i32,i32* %.middle.235
	%.middle.236 = icmp eq i32 %.middle.237,0
	br i1 %.middle.236,label %If_Then.117,label %If_Else.118

If_Then.117:
	 %tmp_no_collision_plz.0.1=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	%.middle.238 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.1,i32 0,i32 1
	%.SizeList.3 = call i32* @_malloc(i32 1)
	%.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	 store i32 20,i32* %.ArrayIdx.3
	%.middle.239 = call i32* @_malloc_toInt(i32* %.SizeList.3,i32 1)
	%.new.3 = bitcast i32* %.middle.239 to i32*
	 store i32* %.new.3,i32** %.middle.238
	br label %If_End.119

If_Else.118:
	br label %If_End.119

If_End.119:
	 store i32 0,i32* %cnt.0
	%.FromBool.19 = zext i1 0 to i32
	 store i32 %.FromBool.19,i32* %fg.0
	br label %If_Cond.120

If_Cond.120:
	 %.middle.242=load i32,i32* %i_addr
	%.middle.241 = icmp eq i32 %.middle.242,0
	br i1 %.middle.241,label %If_Then.121,label %If_Else.122

If_Then.121:
	 store i32 1,i32* %cnt.0
	 %.middle.244=load i32*,i32** @a_no_collison_plz.0
	%.middle.245 = getelementptr i32,i32* %.middle.244,i32 0
	 %.middle.245.0=load i32,i32* %.middle.245
	 store i32 0,i32* %.middle.245
	br label %If_End.123

If_Else.122:
	br label %If_End.123

If_End.123:
	br label %If_Cond.124

If_Cond.124:
	 %.middle.248=load i32,i32* %i_addr
	%.middle.247 = icmp slt i32 %.middle.248,0
	br i1 %.middle.247,label %If_Then.125,label %If_Else.126

If_Then.125:
	%.FromBool.20 = zext i1 1 to i32
	 store i32 %.FromBool.20,i32* %fg.0
	 %.middle.251=load i32,i32* %i_addr
	%.middle.250 = sub i32 0,%.middle.251
	 store i32 %.middle.250,i32* %i_addr
	br label %If_End.127

If_Else.126:
	br label %If_End.127

If_End.127:
	br label %While_Cond.128

While_Cond.128:
	 %.middle.254=load i32,i32* %i_addr
	%.middle.253 = icmp ne i32 %.middle.254,0
	br i1 %.middle.253,label %While_Body.129,label %While_End.130

While_Body.129:
	 %.middle.255=load i32*,i32** @a_no_collison_plz.0
	 %.middle.257=load i32,i32* %cnt.0
	%.middle.256 = getelementptr i32,i32* %.middle.255,i32 %.middle.257
	 %.middle.256.0=load i32,i32* %.middle.256
	 %.middle.259=load i32,i32* %i_addr
	%.middle.258 = srem i32 %.middle.259,10
	 store i32 %.middle.258,i32* %.middle.256
	 %.middle.262=load i32,i32* %i_addr
	%.middle.261 = sdiv i32 %.middle.262,10
	 store i32 %.middle.261,i32* %i_addr
	 %.middle.264=load i32,i32* %cnt.0
	%.middle.265 = add i32 %.middle.264,1
	 store i32 %.middle.265,i32* %cnt.0
	br label %While_Cond.128

While_End.130:
	br label %If_Cond.131

If_Cond.131:
	 %.ToBool.6=load i32,i32* %fg.0
	%.middle.266 = trunc i32 %.ToBool.6 to i1
	br i1 %.middle.266,label %If_Then.132,label %If_Else.133

If_Then.132:
	 %.middle.267=load i32*,i32** @a_no_collison_plz.0
	 %.middle.269=load i32,i32* %cnt.0
	%.middle.268 = getelementptr i32,i32* %.middle.267,i32 %.middle.269
	 %.middle.268.0=load i32,i32* %.middle.268
	%.middle.270 = sub i32 0,3
	 store i32 %.middle.270,i32* %.middle.268
	 %.middle.272=load i32,i32* %cnt.0
	%.middle.273 = add i32 %.middle.272,1
	 store i32 %.middle.273,i32* %cnt.0
	br label %If_End.134

If_Else.133:
	br label %If_End.134

If_End.134:
	 %tmp_no_collision_plz.0.2=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	%.middle.274 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.2,i32 0,i32 0
	 %.middle.276=load i32,i32* %cnt.0
	 store i32 %.middle.276,i32* %.middle.274
	 store i32 0,i32* %i.7
	br label %For_Cond.135

For_Cond.135:
	 %.middle.278=load i32,i32* %i.7
	 %.middle.279=load i32,i32* %cnt.0
	%.middle.277 = icmp slt i32 %.middle.278,%.middle.279
	br i1 %.middle.277,label %For_Body.137,label %For_End.136

For_Body.137:
	 %tmp_no_collision_plz.0.3=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	%.middle.280 = getelementptr %struct.string,%struct.string* %tmp_no_collision_plz.0.3,i32 0,i32 1
	 %.middle.281=load i32*,i32** %.middle.280
	 %.middle.283=load i32,i32* %i.7
	%.middle.282 = getelementptr i32,i32* %.middle.281,i32 %.middle.283
	 %.middle.282.0=load i32,i32* %.middle.282
	 %.middle.284=load i32*,i32** @a_no_collison_plz.0
	 %.middle.286=load i32,i32* %cnt.0
	 %.middle.287=load i32,i32* %i.7
	%.middle.285 = sub i32 %.middle.286,%.middle.287
	%.middle.288 = sub i32 %.middle.285,1
	%.middle.289 = getelementptr i32,i32* %.middle.284,i32 %.middle.288
	 %.middle.289.0=load i32,i32* %.middle.289
	 %.middle.291=load i32,i32* %.middle.289
	%.middle.290 = add i32 %.middle.291,48
	 store i32 %.middle.290,i32* %.middle.282
	br label %For_Change.138

For_Change.138:
	 %.middle.293=load i32,i32* %i.7
	%.middle.294 = add i32 %.middle.293,1
	 store i32 %.middle.294,i32* %i.7
	br label %For_Cond.135

For_End.136:
	 %.middle.295=load %struct.string*,%struct.string** @tmp_no_collision_plz.0
	 store %struct.string* %.middle.295,%struct.string** %.retval.p
	br label %Exit.114

Exit.114:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define %struct.string* @.func.getString(){
Entry.139:
	%.retval.p=alloca %struct.string*
	%tmp.2=alloca %struct.string*
	%.Func.Return.p.4.0=alloca i32*
	%cnt.1=alloca i32
	br label %.block.141

.block.141:
	%.middle.297 = call i32* @_malloc(i32 2)
	%.middle.296 = bitcast i32* %.middle.297 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.296)
	 store %struct.string* %.middle.296,%struct.string** %tmp.2
	 %tmp.2.0=load %struct.string*,%struct.string** %tmp.2
	%.middle.298 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 1
	%.Func_Return.4 = call i32* @scanf_string()
	 store i32* %.Func_Return.4,i32** %.Func.Return.p.4.0
	 %.middle.300=load i32*,i32** %.Func.Return.p.4.0
	 store i32* %.middle.300,i32** %.middle.298
	 store i32 0,i32* %cnt.1
	br label %For_Cond.142

For_Cond.142:
	 %tmp.2.1=load %struct.string*,%struct.string** %tmp.2
	%.middle.302 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	 %.middle.303=load i32*,i32** %.middle.302
	 %.middle.305=load i32,i32* %cnt.1
	%.middle.304 = getelementptr i32,i32* %.middle.303,i32 %.middle.305
	 %.middle.304.0=load i32,i32* %.middle.304
	 %.middle.307=load i32,i32* %.middle.304
	%.middle.306 = icmp ne i32 %.middle.307,0
	br i1 %.middle.306,label %For_Body.144,label %For_End.143

For_Body.144:
	br label %For_Change.145

For_Change.145:
	 %.middle.308=load i32,i32* %cnt.1
	%.middle.309 = add i32 %.middle.308,1
	 store i32 %.middle.309,i32* %cnt.1
	br label %For_Cond.142

For_End.143:
	 %tmp.2.2=load %struct.string*,%struct.string** %tmp.2
	%.middle.310 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 0
	 %.middle.312=load i32,i32* %cnt.1
	 store i32 %.middle.312,i32* %.middle.310
	 %.middle.313=load %struct.string*,%struct.string** %tmp.2
	 store %struct.string* %.middle.313,%struct.string** %.retval.p
	br label %Exit.140

Exit.140:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define void @.func.Edge.construct(%struct.Edge* %This){
Entry.146:
	%This_addr=alloca %struct.Edge*
	 store %struct.Edge* %This,%struct.Edge** %This_addr
	br label %.block.148

.block.148:
	br label %Exit.147

Exit.147:
	ret void

}

define void @.func.EdgeList.init(%struct.EdgeList* %This,i32 %n,i32 %m){
Entry.149:
	%This_addr=alloca %struct.EdgeList*
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	%n_addr=alloca i32
	 store i32 %n,i32* %n_addr
	%m_addr=alloca i32
	 store i32 %m,i32* %m_addr
	%i.8=alloca i32
	br label %.block.151

.block.151:
	 %This_addr.8=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.edges.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.8,i32 0,i32 2
	 %.middle.314=load i32,i32* %m_addr
	%.SizeList.4 = call i32* @_malloc(i32 1)
	%.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	 store i32 %.middle.314,i32* %.ArrayIdx.4
	%.middle.315 = call i32* @_malloc_toInt(i32* %.SizeList.4,i32 1)
	%.new.4 = bitcast i32* %.middle.315 to %struct.Edge**
	 store %struct.Edge** %.new.4,%struct.Edge*** %This_addr.edges.0
	 %This_addr.9=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.next.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.9,i32 0,i32 0
	 %.middle.317=load i32,i32* %m_addr
	%.SizeList.5 = call i32* @_malloc(i32 1)
	%.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	 store i32 %.middle.317,i32* %.ArrayIdx.5
	%.middle.318 = call i32* @_malloc_toInt(i32* %.SizeList.5,i32 1)
	%.new.5 = bitcast i32* %.middle.318 to i32*
	 store i32* %.new.5,i32** %This_addr.next.0
	 %This_addr.10=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.10,i32 0,i32 3
	 %.middle.320=load i32,i32* %n_addr
	%.SizeList.6 = call i32* @_malloc(i32 1)
	%.ArrayIdx.6 = getelementptr i32,i32* %.SizeList.6,i32 0
	 store i32 %.middle.320,i32* %.ArrayIdx.6
	%.middle.321 = call i32* @_malloc_toInt(i32* %.SizeList.6,i32 1)
	%.new.6 = bitcast i32* %.middle.321 to i32*
	 store i32* %.new.6,i32** %This_addr.first.0
	 store i32 0,i32* %i.8
	br label %For_Cond.152

For_Cond.152:
	 %.middle.325=load i32,i32* %i.8
	 %.middle.326=load i32,i32* %m_addr
	%.middle.324 = icmp slt i32 %.middle.325,%.middle.326
	br i1 %.middle.324,label %For_Body.154,label %For_End.153

For_Body.154:
	 %This_addr.11=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.next.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.11,i32 0,i32 0
	 %.middle.327=load i32*,i32** %This_addr.next.1
	 %.middle.329=load i32,i32* %i.8
	%.middle.328 = getelementptr i32,i32* %.middle.327,i32 %.middle.329
	 %.middle.328.0=load i32,i32* %.middle.328
	%.middle.330 = sub i32 0,1
	 store i32 %.middle.330,i32* %.middle.328
	br label %For_Change.155

For_Change.155:
	 %.middle.332=load i32,i32* %i.8
	%.middle.333 = add i32 %.middle.332,1
	 store i32 %.middle.333,i32* %i.8
	br label %For_Cond.152

For_End.153:
	 store i32 0,i32* %i.8
	br label %For_Cond.156

For_Cond.156:
	 %.middle.336=load i32,i32* %i.8
	 %.middle.337=load i32,i32* %n_addr
	%.middle.335 = icmp slt i32 %.middle.336,%.middle.337
	br i1 %.middle.335,label %For_Body.158,label %For_End.157

For_Body.158:
	 %This_addr.12=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.12,i32 0,i32 3
	 %.middle.338=load i32*,i32** %This_addr.first.1
	 %.middle.340=load i32,i32* %i.8
	%.middle.339 = getelementptr i32,i32* %.middle.338,i32 %.middle.340
	 %.middle.339.0=load i32,i32* %.middle.339
	%.middle.341 = sub i32 0,1
	 store i32 %.middle.341,i32* %.middle.339
	br label %For_Change.159

For_Change.159:
	 %.middle.343=load i32,i32* %i.8
	%.middle.344 = add i32 %.middle.343,1
	 store i32 %.middle.344,i32* %i.8
	br label %For_Cond.156

For_End.157:
	 %This_addr.13=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.0 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.13,i32 0,i32 1
	 store i32 0,i32* %This_addr.size.0
	br label %Exit.150

Exit.150:
	ret void

}

define void @.func.EdgeList.addEdge(%struct.EdgeList* %This,i32 %u,i32 %v,i32 %w){
Entry.160:
	%This_addr=alloca %struct.EdgeList*
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	%u_addr=alloca i32
	 store i32 %u,i32* %u_addr
	%v_addr=alloca i32
	 store i32 %v,i32* %v_addr
	%w_addr=alloca i32
	 store i32 %w,i32* %w_addr
	%e.0=alloca %struct.Edge*
	br label %.block.162

.block.162:
	%.middle.347 = call i32* @_malloc(i32 3)
	%.middle.346 = bitcast i32* %.middle.347 to %struct.Edge*
	call void @.func.Edge.construct(%struct.Edge* %.middle.346)
	 store %struct.Edge* %.middle.346,%struct.Edge** %e.0
	 %e.0.0=load %struct.Edge*,%struct.Edge** %e.0
	%.middle.348 = getelementptr %struct.Edge,%struct.Edge* %e.0.0,i32 0,i32 1
	 %.middle.350=load i32,i32* %u_addr
	 store i32 %.middle.350,i32* %.middle.348
	 %e.0.1=load %struct.Edge*,%struct.Edge** %e.0
	%.middle.351 = getelementptr %struct.Edge,%struct.Edge* %e.0.1,i32 0,i32 2
	 %.middle.353=load i32,i32* %v_addr
	 store i32 %.middle.353,i32* %.middle.351
	 %e.0.2=load %struct.Edge*,%struct.Edge** %e.0
	%.middle.354 = getelementptr %struct.Edge,%struct.Edge* %e.0.2,i32 0,i32 0
	 %.middle.356=load i32,i32* %w_addr
	 store i32 %.middle.356,i32* %.middle.354
	 %This_addr.14=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.edges.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.14,i32 0,i32 2
	 %.middle.357=load %struct.Edge**,%struct.Edge*** %This_addr.edges.1
	 %This_addr.15=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.1 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.15,i32 0,i32 1
	 %.middle.359=load i32,i32* %This_addr.size.1
	%.middle.358 = getelementptr %struct.Edge*,%struct.Edge** %.middle.357,i32 %.middle.359
	 %.middle.358.0=load %struct.Edge*,%struct.Edge** %.middle.358
	 %.middle.361=load %struct.Edge*,%struct.Edge** %e.0
	 store %struct.Edge* %.middle.361,%struct.Edge** %.middle.358
	 %This_addr.16=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.next.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.16,i32 0,i32 0
	 %.middle.362=load i32*,i32** %This_addr.next.2
	 %This_addr.17=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.17,i32 0,i32 1
	 %.middle.364=load i32,i32* %This_addr.size.2
	%.middle.363 = getelementptr i32,i32* %.middle.362,i32 %.middle.364
	 %.middle.363.0=load i32,i32* %.middle.363
	 %This_addr.18=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.18,i32 0,i32 3
	 %.middle.365=load i32*,i32** %This_addr.first.2
	 %.middle.367=load i32,i32* %u_addr
	%.middle.366 = getelementptr i32,i32* %.middle.365,i32 %.middle.367
	 %.middle.366.0=load i32,i32* %.middle.366
	 %.middle.369=load i32,i32* %.middle.366
	 store i32 %.middle.369,i32* %.middle.363
	 %This_addr.19=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.19,i32 0,i32 3
	 %.middle.370=load i32*,i32** %This_addr.first.3
	 %.middle.372=load i32,i32* %u_addr
	%.middle.371 = getelementptr i32,i32* %.middle.370,i32 %.middle.372
	 %.middle.371.0=load i32,i32* %.middle.371
	 %This_addr.20=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.3 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.20,i32 0,i32 1
	 %.middle.374=load i32,i32* %This_addr.size.3
	 store i32 %.middle.374,i32* %.middle.371
	 %This_addr.21=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.size.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.21,i32 0,i32 1
	 %.middle.375=load i32,i32* %This_addr.size.4
	%.middle.376 = add i32 %.middle.375,1
	 store i32 %.middle.376,i32* %This_addr.size.4
	br label %Exit.161

Exit.161:
	ret void

}

define i32 @.func.EdgeList.nVertices(%struct.EdgeList* %This){
Entry.163:
	%This_addr=alloca %struct.EdgeList*
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	%.retval.p=alloca i32
	br label %.block.165

.block.165:
	 %This_addr.22=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.first.4 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.22,i32 0,i32 3
	 %.middle.378=load i32*,i32** %This_addr.first.4
	%.middle.377 = ptrtoint i32* %.middle.378 to i32
	%.middle.379 = sub i32 %.middle.377,4
	%.middle.380 = inttoptr i32 %.middle.379 to i32*
	 %.middle.380.0=load i32,i32* %.middle.380
	 store i32 %.middle.380.0,i32* %.retval.p
	br label %Exit.164

Exit.164:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.EdgeList.nEdges(%struct.EdgeList* %This){
Entry.166:
	%This_addr=alloca %struct.EdgeList*
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	%.retval.p=alloca i32
	br label %.block.168

.block.168:
	 %This_addr.23=load %struct.EdgeList*,%struct.EdgeList** %This_addr
	%This_addr.edges.2 = getelementptr %struct.EdgeList,%struct.EdgeList* %This_addr.23,i32 0,i32 2
	 %.middle.382=load %struct.Edge**,%struct.Edge*** %This_addr.edges.2
	%.middle.381 = ptrtoint %struct.Edge** %.middle.382 to i32
	%.middle.383 = sub i32 %.middle.381,4
	%.middle.384 = inttoptr i32 %.middle.383 to i32*
	 %.middle.384.0=load i32,i32* %.middle.384
	 store i32 %.middle.384.0,i32* %.retval.p
	br label %Exit.167

Exit.167:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define void @.func.EdgeList.construct(%struct.EdgeList* %This){
Entry.169:
	%This_addr=alloca %struct.EdgeList*
	 store %struct.EdgeList* %This,%struct.EdgeList** %This_addr
	br label %.block.171

.block.171:
	br label %Exit.170

Exit.170:
	ret void

}

define void @.func.Array_Node.construct(%struct.Array_Node* %This){
Entry.172:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	br label %.block.174

.block.174:
	 %This_addr.24=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.24,i32 0,i32 0
	 store i32 0,i32* %This_addr.sz.0
	 %This_addr.25=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.0 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.25,i32 0,i32 1
	%.SizeList.7 = call i32* @_malloc(i32 1)
	%.ArrayIdx.7 = getelementptr i32,i32* %.SizeList.7,i32 0
	 store i32 16,i32* %.ArrayIdx.7
	%.middle.386 = call i32* @_malloc_toInt(i32* %.SizeList.7,i32 1)
	%.new.7 = bitcast i32* %.middle.386 to %struct.Node**
	 store %struct.Node** %.new.7,%struct.Node*** %This_addr.storage.0
	br label %Exit.173

Exit.173:
	ret void

}

define void @.func.Array_Node.push_back(%struct.Array_Node* %This,%struct.Node* %v){
Entry.175:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%v_addr=alloca %struct.Node*
	 store %struct.Node* %v,%struct.Node** %v_addr
	%.Func.Return.p.5.0=alloca i32
	br label %.block.177

.block.177:
	br label %If_Cond.178

If_Cond.178:
	 %.middle.388=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%.Func_Return.5 = call i32 @.func.Array_Node.size(%struct.Array_Node* %.middle.388)
	 store i32 %.Func_Return.5,i32* %.Func.Return.p.5.0
	 %This_addr.26=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.26,i32 0,i32 1
	 %.middle.390=load %struct.Node**,%struct.Node*** %This_addr.storage.1
	%.middle.389 = ptrtoint %struct.Node** %.middle.390 to i32
	%.middle.391 = sub i32 %.middle.389,4
	%.middle.392 = inttoptr i32 %.middle.391 to i32*
	 %.middle.392.0=load i32,i32* %.middle.392
	 %.middle.394=load i32,i32* %.Func.Return.p.5.0
	%.middle.393 = icmp eq i32 %.middle.394,%.middle.392.0
	br i1 %.middle.393,label %If_Then.179,label %If_Else.180

If_Then.179:
	 %.middle.395=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	call void @.func.Array_Node.doubleStorage(%struct.Array_Node* %.middle.395)
	br label %If_End.181

If_Else.180:
	br label %If_End.181

If_End.181:
	 %This_addr.27=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.27,i32 0,i32 1
	 %.middle.396=load %struct.Node**,%struct.Node*** %This_addr.storage.2
	 %This_addr.28=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.1 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.28,i32 0,i32 0
	 %.middle.398=load i32,i32* %This_addr.sz.1
	%.middle.397 = getelementptr %struct.Node*,%struct.Node** %.middle.396,i32 %.middle.398
	 %.middle.397.0=load %struct.Node*,%struct.Node** %.middle.397
	 %.middle.400=load %struct.Node*,%struct.Node** %v_addr
	 store %struct.Node* %.middle.400,%struct.Node** %.middle.397
	 %This_addr.29=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.2 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.29,i32 0,i32 0
	 %.middle.401=load i32,i32* %This_addr.sz.2
	%.middle.402 = add i32 %.middle.401,1
	 store i32 %.middle.402,i32* %This_addr.sz.2
	br label %Exit.176

Exit.176:
	ret void

}

define %struct.Node* @.func.Array_Node.pop_back(%struct.Array_Node* %This){
Entry.182:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.retval.p=alloca %struct.Node*
	br label %.block.184

.block.184:
	 %This_addr.30=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.30,i32 0,i32 0
	 %.middle.403=load i32,i32* %This_addr.sz.3
	%.middle.404 = sub i32 %.middle.403,1
	 store i32 %.middle.404,i32* %This_addr.sz.3
	 %This_addr.31=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.3 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.31,i32 0,i32 1
	 %.middle.405=load %struct.Node**,%struct.Node*** %This_addr.storage.3
	 %This_addr.32=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.32,i32 0,i32 0
	 %.middle.407=load i32,i32* %This_addr.sz.4
	%.middle.406 = getelementptr %struct.Node*,%struct.Node** %.middle.405,i32 %.middle.407
	 %.middle.406.0=load %struct.Node*,%struct.Node** %.middle.406
	 %.middle.408=load %struct.Node*,%struct.Node** %.middle.406
	 store %struct.Node* %.middle.408,%struct.Node** %.retval.p
	br label %Exit.183

Exit.183:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define %struct.Node* @.func.Array_Node.back(%struct.Array_Node* %This){
Entry.185:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.retval.p=alloca %struct.Node*
	br label %.block.187

.block.187:
	 %This_addr.33=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.4 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.33,i32 0,i32 1
	 %.middle.409=load %struct.Node**,%struct.Node*** %This_addr.storage.4
	 %This_addr.34=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.34,i32 0,i32 0
	 %.middle.411=load i32,i32* %This_addr.sz.5
	%.middle.410 = sub i32 %.middle.411,1
	%.middle.412 = getelementptr %struct.Node*,%struct.Node** %.middle.409,i32 %.middle.410
	 %.middle.412.0=load %struct.Node*,%struct.Node** %.middle.412
	 %.middle.413=load %struct.Node*,%struct.Node** %.middle.412
	 store %struct.Node* %.middle.413,%struct.Node** %.retval.p
	br label %Exit.186

Exit.186:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %This){
Entry.188:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.retval.p=alloca %struct.Node*
	br label %.block.190

.block.190:
	 %This_addr.35=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.5 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.35,i32 0,i32 1
	 %.middle.414=load %struct.Node**,%struct.Node*** %This_addr.storage.5
	%.middle.415 = getelementptr %struct.Node*,%struct.Node** %.middle.414,i32 0
	 %.middle.415.0=load %struct.Node*,%struct.Node** %.middle.415
	 %.middle.416=load %struct.Node*,%struct.Node** %.middle.415
	 store %struct.Node* %.middle.416,%struct.Node** %.retval.p
	br label %Exit.189

Exit.189:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define i32 @.func.Array_Node.size(%struct.Array_Node* %This){
Entry.191:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%.retval.p=alloca i32
	br label %.block.193

.block.193:
	 %This_addr.36=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.36,i32 0,i32 0
	 %.middle.417=load i32,i32* %This_addr.sz.6
	 store i32 %.middle.417,i32* %.retval.p
	br label %Exit.192

Exit.192:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define void @.func.Array_Node.resize(%struct.Array_Node* %This,i32 %newSize){
Entry.194:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%newSize_addr=alloca i32
	 store i32 %newSize,i32* %newSize_addr
	br label %.block.196

.block.196:
	br label %While_Cond.197

While_Cond.197:
	 %This_addr.37=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.6 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.37,i32 0,i32 1
	 %.middle.419=load %struct.Node**,%struct.Node*** %This_addr.storage.6
	%.middle.418 = ptrtoint %struct.Node** %.middle.419 to i32
	%.middle.420 = sub i32 %.middle.418,4
	%.middle.421 = inttoptr i32 %.middle.420 to i32*
	 %.middle.421.0=load i32,i32* %.middle.421
	 %.middle.423=load i32,i32* %newSize_addr
	%.middle.422 = icmp slt i32 %.middle.421.0,%.middle.423
	br i1 %.middle.422,label %While_Body.198,label %While_End.199

While_Body.198:
	 %.middle.424=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	call void @.func.Array_Node.doubleStorage(%struct.Array_Node* %.middle.424)
	br label %While_Cond.197

While_End.199:
	 %This_addr.38=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.38,i32 0,i32 0
	 %.middle.426=load i32,i32* %newSize_addr
	 store i32 %.middle.426,i32* %This_addr.sz.7
	br label %Exit.195

Exit.195:
	ret void

}

define %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %This,i32 %i){
Entry.200:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%i_addr=alloca i32
	 store i32 %i,i32* %i_addr
	%.retval.p=alloca %struct.Node*
	br label %.block.202

.block.202:
	 %This_addr.39=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.7 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.39,i32 0,i32 1
	 %.middle.427=load %struct.Node**,%struct.Node*** %This_addr.storage.7
	 %.middle.429=load i32,i32* %i_addr
	%.middle.428 = getelementptr %struct.Node*,%struct.Node** %.middle.427,i32 %.middle.429
	 %.middle.428.0=load %struct.Node*,%struct.Node** %.middle.428
	 %.middle.430=load %struct.Node*,%struct.Node** %.middle.428
	 store %struct.Node* %.middle.430,%struct.Node** %.retval.p
	br label %Exit.201

Exit.201:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define void @.func.Array_Node.set(%struct.Array_Node* %This,i32 %i,%struct.Node* %v){
Entry.203:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%i_addr=alloca i32
	 store i32 %i,i32* %i_addr
	%v_addr=alloca %struct.Node*
	 store %struct.Node* %v,%struct.Node** %v_addr
	br label %.block.205

.block.205:
	 %This_addr.40=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.40,i32 0,i32 1
	 %.middle.431=load %struct.Node**,%struct.Node*** %This_addr.storage.8
	 %.middle.433=load i32,i32* %i_addr
	%.middle.432 = getelementptr %struct.Node*,%struct.Node** %.middle.431,i32 %.middle.433
	 %.middle.432.0=load %struct.Node*,%struct.Node** %.middle.432
	 %.middle.435=load %struct.Node*,%struct.Node** %v_addr
	 store %struct.Node* %.middle.435,%struct.Node** %.middle.432
	br label %Exit.204

Exit.204:
	ret void

}

define void @.func.Array_Node.swap(%struct.Array_Node* %This,i32 %i,i32 %j){
Entry.206:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%i_addr=alloca i32
	 store i32 %i,i32* %i_addr
	%j_addr=alloca i32
	 store i32 %j,i32* %j_addr
	%t.0=alloca %struct.Node*
	br label %.block.208

.block.208:
	 %This_addr.41=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.41,i32 0,i32 1
	 %.middle.436=load %struct.Node**,%struct.Node*** %This_addr.storage.9
	 %.middle.438=load i32,i32* %i_addr
	%.middle.437 = getelementptr %struct.Node*,%struct.Node** %.middle.436,i32 %.middle.438
	 %.middle.437.0=load %struct.Node*,%struct.Node** %.middle.437
	 %.middle.439=load %struct.Node*,%struct.Node** %.middle.437
	 store %struct.Node* %.middle.439,%struct.Node** %t.0
	 %This_addr.42=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.42,i32 0,i32 1
	 %.middle.440=load %struct.Node**,%struct.Node*** %This_addr.storage.10
	 %.middle.442=load i32,i32* %i_addr
	%.middle.441 = getelementptr %struct.Node*,%struct.Node** %.middle.440,i32 %.middle.442
	 %.middle.441.0=load %struct.Node*,%struct.Node** %.middle.441
	 %This_addr.43=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.43,i32 0,i32 1
	 %.middle.443=load %struct.Node**,%struct.Node*** %This_addr.storage.11
	 %.middle.445=load i32,i32* %j_addr
	%.middle.444 = getelementptr %struct.Node*,%struct.Node** %.middle.443,i32 %.middle.445
	 %.middle.444.0=load %struct.Node*,%struct.Node** %.middle.444
	 %.middle.447=load %struct.Node*,%struct.Node** %.middle.444
	 store %struct.Node* %.middle.447,%struct.Node** %.middle.441
	 %This_addr.44=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.44,i32 0,i32 1
	 %.middle.448=load %struct.Node**,%struct.Node*** %This_addr.storage.12
	 %.middle.450=load i32,i32* %j_addr
	%.middle.449 = getelementptr %struct.Node*,%struct.Node** %.middle.448,i32 %.middle.450
	 %.middle.449.0=load %struct.Node*,%struct.Node** %.middle.449
	 %.middle.452=load %struct.Node*,%struct.Node** %t.0
	 store %struct.Node* %.middle.452,%struct.Node** %.middle.449
	br label %Exit.207

Exit.207:
	ret void

}

define void @.func.Array_Node.doubleStorage(%struct.Array_Node* %This){
Entry.209:
	%This_addr=alloca %struct.Array_Node*
	 store %struct.Array_Node* %This,%struct.Array_Node** %This_addr
	%copy.0=alloca %struct.Node**
	%szCopy.0=alloca i32
	br label %.block.211

.block.211:
	 %This_addr.45=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.45,i32 0,i32 1
	 %.middle.453=load %struct.Node**,%struct.Node*** %This_addr.storage.13
	 store %struct.Node** %.middle.453,%struct.Node*** %copy.0
	 %This_addr.46=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.8 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.46,i32 0,i32 0
	 %.middle.454=load i32,i32* %This_addr.sz.8
	 store i32 %.middle.454,i32* %szCopy.0
	 %This_addr.47=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.14 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.47,i32 0,i32 1
	 %.middle.456=load %struct.Node**,%struct.Node*** %copy.0
	%.middle.455 = ptrtoint %struct.Node** %.middle.456 to i32
	%.middle.457 = sub i32 %.middle.455,4
	%.middle.458 = inttoptr i32 %.middle.457 to i32*
	 %.middle.458.0=load i32,i32* %.middle.458
	%.middle.459 = mul i32 %.middle.458.0,2
	%.SizeList.8 = call i32* @_malloc(i32 1)
	%.ArrayIdx.8 = getelementptr i32,i32* %.SizeList.8,i32 0
	 store i32 %.middle.459,i32* %.ArrayIdx.8
	%.middle.460 = call i32* @_malloc_toInt(i32* %.SizeList.8,i32 1)
	%.new.8 = bitcast i32* %.middle.460 to %struct.Node**
	 store %struct.Node** %.new.8,%struct.Node*** %This_addr.storage.14
	 %This_addr.48=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.9 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.48,i32 0,i32 0
	 store i32 0,i32* %This_addr.sz.9
	br label %For_Cond.212

For_Cond.212:
	 %This_addr.49=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.10 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.49,i32 0,i32 0
	 %.middle.464=load i32,i32* %This_addr.sz.10
	 %.middle.465=load i32,i32* %szCopy.0
	%.middle.463 = icmp ne i32 %.middle.464,%.middle.465
	br i1 %.middle.463,label %For_Body.214,label %For_End.213

For_Body.214:
	 %This_addr.50=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.storage.15 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.50,i32 0,i32 1
	 %.middle.466=load %struct.Node**,%struct.Node*** %This_addr.storage.15
	 %This_addr.51=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.11 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.51,i32 0,i32 0
	 %.middle.468=load i32,i32* %This_addr.sz.11
	%.middle.467 = getelementptr %struct.Node*,%struct.Node** %.middle.466,i32 %.middle.468
	 %.middle.467.0=load %struct.Node*,%struct.Node** %.middle.467
	 %.middle.469=load %struct.Node**,%struct.Node*** %copy.0
	 %This_addr.52=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.12 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.52,i32 0,i32 0
	 %.middle.471=load i32,i32* %This_addr.sz.12
	%.middle.470 = getelementptr %struct.Node*,%struct.Node** %.middle.469,i32 %.middle.471
	 %.middle.470.0=load %struct.Node*,%struct.Node** %.middle.470
	 %.middle.473=load %struct.Node*,%struct.Node** %.middle.470
	 store %struct.Node* %.middle.473,%struct.Node** %.middle.467
	br label %For_Change.215

For_Change.215:
	 %This_addr.53=load %struct.Array_Node*,%struct.Array_Node** %This_addr
	%This_addr.sz.13 = getelementptr %struct.Array_Node,%struct.Array_Node* %This_addr.53,i32 0,i32 0
	 %.middle.474=load i32,i32* %This_addr.sz.13
	%.middle.475 = add i32 %.middle.474,1
	 store i32 %.middle.475,i32* %This_addr.sz.13
	br label %For_Cond.212

For_End.213:
	br label %Exit.210

Exit.210:
	ret void

}

define void @.func.Heap_Node.construct(%struct.Heap_Node* %This){
Entry.216:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	br label %.block.218

.block.218:
	 %This_addr.54=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.16 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.54,i32 0,i32 0
	%.middle.477 = call i32* @_malloc(i32 2)
	%.middle.476 = bitcast i32* %.middle.477 to %struct.Array_Node*
	call void @.func.Array_Node.construct(%struct.Array_Node* %.middle.476)
	 store %struct.Array_Node* %.middle.476,%struct.Array_Node** %This_addr.storage.16
	br label %Exit.217

Exit.217:
	ret void

}

define void @.func.Heap_Node.push(%struct.Heap_Node* %This,%struct.Node* %v){
Entry.219:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%v_addr=alloca %struct.Node*
	 store %struct.Node* %v,%struct.Node** %v_addr
	%x.0=alloca i32
	%.Func.Return.p.6.0=alloca i32
	%p.0=alloca i32
	%.Func.Return.p.7.0=alloca i32
	%.Func.Return.p.8.0=alloca %struct.Node*
	%.Func.Return.p.9.0=alloca i32
	%.Func.Return.p.10.0=alloca %struct.Node*
	%.Func.Return.p.11.0=alloca i32
	br label %.block.221

.block.221:
	 %This_addr.55=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.17 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.55,i32 0,i32 0
	 %.middle.479=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.17
	 %.middle.480=load %struct.Node*,%struct.Node** %v_addr
	call void @.func.Array_Node.push_back(%struct.Array_Node* %.middle.479,%struct.Node* %.middle.480)
	 %.middle.481=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%.Func_Return.6 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.481)
	 store i32 %.Func_Return.6,i32* %.Func.Return.p.6.0
	 %.middle.483=load i32,i32* %.Func.Return.p.6.0
	%.middle.482 = sub i32 %.middle.483,1
	 store i32 %.middle.482,i32* %x.0
	br label %While_Cond.222

While_Cond.222:
	 %.middle.485=load i32,i32* %x.0
	%.middle.484 = icmp sgt i32 %.middle.485,0
	br i1 %.middle.484,label %While_Body.223,label %While_End.224

While_Body.223:
	 %.middle.486=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	 %.middle.487=load i32,i32* %x.0
	%.Func_Return.7 = call i32 @.func.Heap_Node.pnt(%struct.Heap_Node* %.middle.486,i32 %.middle.487)
	 store i32 %.Func_Return.7,i32* %.Func.Return.p.7.0
	 %.middle.488=load i32,i32* %.Func.Return.p.7.0
	 store i32 %.middle.488,i32* %p.0
	br label %If_Cond.225

If_Cond.225:
	 %This_addr.56=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.18 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.56,i32 0,i32 0
	 %.middle.489=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.18
	 %.middle.490=load i32,i32* %p.0
	%.Func_Return.8 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.489,i32 %.middle.490)
	 store %struct.Node* %.Func_Return.8,%struct.Node** %.Func.Return.p.8.0
	 %.middle.491=load %struct.Node*,%struct.Node** %.Func.Return.p.8.0
	%.Func_Return.9 = call i32 @.func.Node.key_(%struct.Node* %.middle.491)
	 store i32 %.Func_Return.9,i32* %.Func.Return.p.9.0
	 %This_addr.57=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.19 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.57,i32 0,i32 0
	 %.middle.492=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.19
	 %.middle.493=load i32,i32* %x.0
	%.Func_Return.10 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.492,i32 %.middle.493)
	 store %struct.Node* %.Func_Return.10,%struct.Node** %.Func.Return.p.10.0
	 %.middle.494=load %struct.Node*,%struct.Node** %.Func.Return.p.10.0
	%.Func_Return.11 = call i32 @.func.Node.key_(%struct.Node* %.middle.494)
	 store i32 %.Func_Return.11,i32* %.Func.Return.p.11.0
	 %.middle.496=load i32,i32* %.Func.Return.p.9.0
	 %.middle.497=load i32,i32* %.Func.Return.p.11.0
	%.middle.495 = icmp sge i32 %.middle.496,%.middle.497
	br i1 %.middle.495,label %If_Then.226,label %If_Else.227

If_Then.226:
	br label %While_End.224

If_Else.227:
	br label %If_End.228

If_End.228:
	 %This_addr.58=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.20 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.58,i32 0,i32 0
	 %.middle.498=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.20
	 %.middle.499=load i32,i32* %p.0
	 %.middle.500=load i32,i32* %x.0
	call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.498,i32 %.middle.499,i32 %.middle.500)
	 %.middle.502=load i32,i32* %p.0
	 store i32 %.middle.502,i32* %x.0
	br label %While_Cond.222

While_End.224:
	br label %Exit.220

Exit.220:
	ret void

}

define %struct.Node* @.func.Heap_Node.pop(%struct.Heap_Node* %This){
Entry.229:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%.retval.p=alloca %struct.Node*
	%res.0=alloca %struct.Node*
	%.Func.Return.p.12.0=alloca %struct.Node*
	%.Func.Return.p.13.0=alloca i32
	%.Func.Return.p.14.0=alloca %struct.Node*
	br label %.block.231

.block.231:
	 %This_addr.59=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.21 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.59,i32 0,i32 0
	 %.middle.503=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.21
	%.Func_Return.12 = call %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %.middle.503)
	 store %struct.Node* %.Func_Return.12,%struct.Node** %.Func.Return.p.12.0
	 %.middle.504=load %struct.Node*,%struct.Node** %.Func.Return.p.12.0
	 store %struct.Node* %.middle.504,%struct.Node** %res.0
	 %This_addr.60=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.22 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.60,i32 0,i32 0
	 %.middle.505=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.22
	 %.middle.506=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%.Func_Return.13 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.506)
	 store i32 %.Func_Return.13,i32* %.Func.Return.p.13.0
	 %.middle.508=load i32,i32* %.Func.Return.p.13.0
	%.middle.507 = sub i32 %.middle.508,1
	call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.505,i32 0,i32 %.middle.507)
	 %This_addr.61=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.23 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.61,i32 0,i32 0
	 %.middle.509=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.23
	%.Func_Return.14 = call %struct.Node* @.func.Array_Node.pop_back(%struct.Array_Node* %.middle.509)
	 store %struct.Node* %.Func_Return.14,%struct.Node** %.Func.Return.p.14.0
	 %.middle.510=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	call void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %.middle.510,i32 0)
	 %.middle.511=load %struct.Node*,%struct.Node** %res.0
	 store %struct.Node* %.middle.511,%struct.Node** %.retval.p
	br label %Exit.230

Exit.230:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define %struct.Node* @.func.Heap_Node.top(%struct.Heap_Node* %This){
Entry.232:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%.retval.p=alloca %struct.Node*
	%.Func.Return.p.15.0=alloca %struct.Node*
	br label %.block.234

.block.234:
	 %This_addr.62=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.24 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.62,i32 0,i32 0
	 %.middle.512=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.24
	%.Func_Return.15 = call %struct.Node* @.func.Array_Node.front(%struct.Array_Node* %.middle.512)
	 store %struct.Node* %.Func_Return.15,%struct.Node** %.Func.Return.p.15.0
	 %.middle.513=load %struct.Node*,%struct.Node** %.Func.Return.p.15.0
	 store %struct.Node* %.middle.513,%struct.Node** %.retval.p
	br label %Exit.233

Exit.233:
	 %.retval=load %struct.Node*,%struct.Node** %.retval.p
	ret %struct.Node* %.retval

}

define i32 @.func.Heap_Node.size(%struct.Heap_Node* %This){
Entry.235:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%.retval.p=alloca i32
	%.Func.Return.p.16.0=alloca i32
	br label %.block.237

.block.237:
	 %This_addr.63=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.25 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.63,i32 0,i32 0
	 %.middle.514=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.25
	%.Func_Return.16 = call i32 @.func.Array_Node.size(%struct.Array_Node* %.middle.514)
	 store i32 %.Func_Return.16,i32* %.Func.Return.p.16.0
	 %.middle.515=load i32,i32* %.Func.Return.p.16.0
	 store i32 %.middle.515,i32* %.retval.p
	br label %Exit.236

Exit.236:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.Heap_Node.lchild(%struct.Heap_Node* %This,i32 %x){
Entry.238:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%x_addr=alloca i32
	 store i32 %x,i32* %x_addr
	%.retval.p=alloca i32
	br label %.block.240

.block.240:
	 %.middle.517=load i32,i32* %x_addr
	%.middle.516 = mul i32 %.middle.517,2
	%.middle.518 = add i32 %.middle.516,1
	 store i32 %.middle.518,i32* %.retval.p
	br label %Exit.239

Exit.239:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.Heap_Node.rchild(%struct.Heap_Node* %This,i32 %x){
Entry.241:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%x_addr=alloca i32
	 store i32 %x,i32* %x_addr
	%.retval.p=alloca i32
	br label %.block.243

.block.243:
	 %.middle.520=load i32,i32* %x_addr
	%.middle.519 = mul i32 %.middle.520,2
	%.middle.521 = add i32 %.middle.519,2
	 store i32 %.middle.521,i32* %.retval.p
	br label %Exit.242

Exit.242:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.Heap_Node.pnt(%struct.Heap_Node* %This,i32 %x){
Entry.244:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%x_addr=alloca i32
	 store i32 %x,i32* %x_addr
	%.retval.p=alloca i32
	br label %.block.246

.block.246:
	 %.middle.523=load i32,i32* %x_addr
	%.middle.522 = sub i32 %.middle.523,1
	%.middle.524 = sdiv i32 %.middle.522,2
	 store i32 %.middle.524,i32* %.retval.p
	br label %Exit.245

Exit.245:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %This,i32 %x){
Entry.247:
	%This_addr=alloca %struct.Heap_Node*
	 store %struct.Heap_Node* %This,%struct.Heap_Node** %This_addr
	%x_addr=alloca i32
	 store i32 %x,i32* %x_addr
	%l.0=alloca i32
	%.Func.Return.p.17.0=alloca i32
	%r.0=alloca i32
	%.Func.Return.p.18.0=alloca i32
	%largest.0=alloca i32
	%.Func.Return.p.19.0=alloca i32
	%RV.2.0=alloca i32
	%.Func.Return.p.20.0=alloca %struct.Node*
	%.Func.Return.p.21.0=alloca i32
	%.Func.Return.p.22.0=alloca %struct.Node*
	%.Func.Return.p.23.0=alloca i32
	%.Func.Return.p.24.0=alloca i32
	%RV.3.0=alloca i32
	%.Func.Return.p.25.0=alloca %struct.Node*
	%.Func.Return.p.26.0=alloca i32
	%.Func.Return.p.27.0=alloca %struct.Node*
	%.Func.Return.p.28.0=alloca i32
	br label %.block.249

.block.249:
	 %.middle.525=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	 %.middle.526=load i32,i32* %x_addr
	%.Func_Return.17 = call i32 @.func.Heap_Node.lchild(%struct.Heap_Node* %.middle.525,i32 %.middle.526)
	 store i32 %.Func_Return.17,i32* %.Func.Return.p.17.0
	 %.middle.527=load i32,i32* %.Func.Return.p.17.0
	 store i32 %.middle.527,i32* %l.0
	 %.middle.528=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	 %.middle.529=load i32,i32* %x_addr
	%.Func_Return.18 = call i32 @.func.Heap_Node.rchild(%struct.Heap_Node* %.middle.528,i32 %.middle.529)
	 store i32 %.Func_Return.18,i32* %.Func.Return.p.18.0
	 %.middle.530=load i32,i32* %.Func.Return.p.18.0
	 store i32 %.middle.530,i32* %r.0
	 %.middle.531=load i32,i32* %x_addr
	 store i32 %.middle.531,i32* %largest.0
	br label %If_Cond.250

If_Cond.250:
	 %.middle.532=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%.Func_Return.19 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.532)
	 store i32 %.Func_Return.19,i32* %.Func.Return.p.19.0
	 %.middle.534=load i32,i32* %l.0
	 %.middle.535=load i32,i32* %.Func.Return.p.19.0
	%.middle.533 = icmp slt i32 %.middle.534,%.middle.535
	 store i32 0,i32* %RV.2.0
	br i1 %.middle.533,label %binary_and_rv.254,label %binary_end.255

binary_and_rv.254:
	 %This_addr.64=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.26 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.64,i32 0,i32 0
	 %.middle.536=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.26
	 %.middle.537=load i32,i32* %l.0
	%.Func_Return.20 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.536,i32 %.middle.537)
	 store %struct.Node* %.Func_Return.20,%struct.Node** %.Func.Return.p.20.0
	 %.middle.538=load %struct.Node*,%struct.Node** %.Func.Return.p.20.0
	%.Func_Return.21 = call i32 @.func.Node.key_(%struct.Node* %.middle.538)
	 store i32 %.Func_Return.21,i32* %.Func.Return.p.21.0
	 %This_addr.65=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.27 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.65,i32 0,i32 0
	 %.middle.539=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.27
	 %.middle.540=load i32,i32* %largest.0
	%.Func_Return.22 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.539,i32 %.middle.540)
	 store %struct.Node* %.Func_Return.22,%struct.Node** %.Func.Return.p.22.0
	 %.middle.541=load %struct.Node*,%struct.Node** %.Func.Return.p.22.0
	%.Func_Return.23 = call i32 @.func.Node.key_(%struct.Node* %.middle.541)
	 store i32 %.Func_Return.23,i32* %.Func.Return.p.23.0
	 %.middle.543=load i32,i32* %.Func.Return.p.21.0
	 %.middle.544=load i32,i32* %.Func.Return.p.23.0
	%.middle.542 = icmp sgt i32 %.middle.543,%.middle.544
	%.FromBool.21 = zext i1 %.middle.542 to i32
	 store i32 %.FromBool.21,i32* %RV.2.0
	br label %binary_end.255

binary_end.255:
	 %.ToBool.7=load i32,i32* %RV.2.0
	%.middle.546 = trunc i32 %.ToBool.7 to i1
	%.middle.545 = and i1 %.middle.542,%.middle.546
	br i1 %.middle.545,label %If_Then.251,label %If_Else.252

If_Then.251:
	 %.middle.548=load i32,i32* %l.0
	 store i32 %.middle.548,i32* %largest.0
	br label %If_End.253

If_Else.252:
	br label %If_End.253

If_End.253:
	br label %If_Cond.256

If_Cond.256:
	 %.middle.549=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%.Func_Return.24 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.549)
	 store i32 %.Func_Return.24,i32* %.Func.Return.p.24.0
	 %.middle.551=load i32,i32* %r.0
	 %.middle.552=load i32,i32* %.Func.Return.p.24.0
	%.middle.550 = icmp slt i32 %.middle.551,%.middle.552
	 store i32 0,i32* %RV.3.0
	br i1 %.middle.550,label %binary_and_rv.260,label %binary_end.261

binary_and_rv.260:
	 %This_addr.66=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.28 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.66,i32 0,i32 0
	 %.middle.553=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.28
	 %.middle.554=load i32,i32* %r.0
	%.Func_Return.25 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.553,i32 %.middle.554)
	 store %struct.Node* %.Func_Return.25,%struct.Node** %.Func.Return.p.25.0
	 %.middle.555=load %struct.Node*,%struct.Node** %.Func.Return.p.25.0
	%.Func_Return.26 = call i32 @.func.Node.key_(%struct.Node* %.middle.555)
	 store i32 %.Func_Return.26,i32* %.Func.Return.p.26.0
	 %This_addr.67=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.29 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.67,i32 0,i32 0
	 %.middle.556=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.29
	 %.middle.557=load i32,i32* %largest.0
	%.Func_Return.27 = call %struct.Node* @.func.Array_Node.get(%struct.Array_Node* %.middle.556,i32 %.middle.557)
	 store %struct.Node* %.Func_Return.27,%struct.Node** %.Func.Return.p.27.0
	 %.middle.558=load %struct.Node*,%struct.Node** %.Func.Return.p.27.0
	%.Func_Return.28 = call i32 @.func.Node.key_(%struct.Node* %.middle.558)
	 store i32 %.Func_Return.28,i32* %.Func.Return.p.28.0
	 %.middle.560=load i32,i32* %.Func.Return.p.26.0
	 %.middle.561=load i32,i32* %.Func.Return.p.28.0
	%.middle.559 = icmp sgt i32 %.middle.560,%.middle.561
	%.FromBool.22 = zext i1 %.middle.559 to i32
	 store i32 %.FromBool.22,i32* %RV.3.0
	br label %binary_end.261

binary_end.261:
	 %.ToBool.8=load i32,i32* %RV.3.0
	%.middle.563 = trunc i32 %.ToBool.8 to i1
	%.middle.562 = and i1 %.middle.559,%.middle.563
	br i1 %.middle.562,label %If_Then.257,label %If_Else.258

If_Then.257:
	 %.middle.565=load i32,i32* %r.0
	 store i32 %.middle.565,i32* %largest.0
	br label %If_End.259

If_Else.258:
	br label %If_End.259

If_End.259:
	br label %If_Cond.262

If_Cond.262:
	 %.middle.567=load i32,i32* %largest.0
	 %.middle.568=load i32,i32* %x_addr
	%.middle.566 = icmp eq i32 %.middle.567,%.middle.568
	br i1 %.middle.566,label %If_Then.263,label %If_Else.264

If_Then.263:
	br label %Exit.248

If_Else.264:
	br label %If_End.265

If_End.265:
	 %This_addr.68=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	%This_addr.storage.30 = getelementptr %struct.Heap_Node,%struct.Heap_Node* %This_addr.68,i32 0,i32 0
	 %.middle.569=load %struct.Array_Node*,%struct.Array_Node** %This_addr.storage.30
	 %.middle.570=load i32,i32* %x_addr
	 %.middle.571=load i32,i32* %largest.0
	call void @.func.Array_Node.swap(%struct.Array_Node* %.middle.569,i32 %.middle.570,i32 %.middle.571)
	 %.middle.572=load %struct.Heap_Node*,%struct.Heap_Node** %This_addr
	 %.middle.573=load i32,i32* %largest.0
	call void @.func.Heap_Node.maxHeapify(%struct.Heap_Node* %.middle.572,i32 %.middle.573)
	br label %Exit.248

Exit.248:
	ret void

}

define void @.func.init(){
Entry.266:
	%.Func.Return.p.29.0=alloca i32
	%.Func.Return.p.30.0=alloca i32
	%i.9=alloca i32
	%u.0=alloca i32
	%.Func.Return.p.31.0=alloca i32
	%v.0=alloca i32
	%.Func.Return.p.32.0=alloca i32
	%w.0=alloca i32
	%.Func.Return.p.33.0=alloca i32
	br label %.block.268

.block.268:
	%.Func_Return.29 = call i32 @getInt()
	 store i32 %.Func_Return.29,i32* %.Func.Return.p.29.0
	 %.middle.575=load i32,i32* %.Func.Return.p.29.0
	 store i32 %.middle.575,i32* @n.0
	%.Func_Return.30 = call i32 @getInt()
	 store i32 %.Func_Return.30,i32* %.Func.Return.p.30.0
	 %.middle.577=load i32,i32* %.Func.Return.p.30.0
	 store i32 %.middle.577,i32* @m.0
	%.middle.579 = call i32* @_malloc(i32 4)
	%.middle.578 = bitcast i32* %.middle.579 to %struct.EdgeList*
	call void @.func.EdgeList.construct(%struct.EdgeList* %.middle.578)
	 store %struct.EdgeList* %.middle.578,%struct.EdgeList** @g.0
	 %.middle.581=load %struct.EdgeList*,%struct.EdgeList** @g.0
	 %.middle.582=load i32,i32* @n.0
	 %.middle.583=load i32,i32* @m.0
	call void @.func.EdgeList.init(%struct.EdgeList* %.middle.581,i32 %.middle.582,i32 %.middle.583)
	 store i32 0,i32* %i.9
	br label %For_Cond.269

For_Cond.269:
	 %.middle.586=load i32,i32* %i.9
	 %.middle.587=load i32,i32* @m.0
	%.middle.585 = icmp slt i32 %.middle.586,%.middle.587
	br i1 %.middle.585,label %For_Body.271,label %For_End.270

For_Body.271:
	%.Func_Return.31 = call i32 @getInt()
	 store i32 %.Func_Return.31,i32* %.Func.Return.p.31.0
	 %.middle.588=load i32,i32* %.Func.Return.p.31.0
	 store i32 %.middle.588,i32* %u.0
	%.Func_Return.32 = call i32 @getInt()
	 store i32 %.Func_Return.32,i32* %.Func.Return.p.32.0
	 %.middle.589=load i32,i32* %.Func.Return.p.32.0
	 store i32 %.middle.589,i32* %v.0
	%.Func_Return.33 = call i32 @getInt()
	 store i32 %.Func_Return.33,i32* %.Func.Return.p.33.0
	 %.middle.590=load i32,i32* %.Func.Return.p.33.0
	 store i32 %.middle.590,i32* %w.0
	 %.middle.591=load %struct.EdgeList*,%struct.EdgeList** @g.0
	 %.middle.592=load i32,i32* %u.0
	 %.middle.593=load i32,i32* %v.0
	 %.middle.594=load i32,i32* %w.0
	call void @.func.EdgeList.addEdge(%struct.EdgeList* %.middle.591,i32 %.middle.592,i32 %.middle.593,i32 %.middle.594)
	br label %For_Change.272

For_Change.272:
	 %.middle.595=load i32,i32* %i.9
	%.middle.596 = add i32 %.middle.595,1
	 store i32 %.middle.596,i32* %i.9
	br label %For_Cond.269

For_End.270:
	br label %Exit.267

Exit.267:
	ret void

}

define i32 @.func.Node.key_(%struct.Node* %This){
Entry.273:
	%This_addr=alloca %struct.Node*
	 store %struct.Node* %This,%struct.Node** %This_addr
	%.retval.p=alloca i32
	br label %.block.275

.block.275:
	 %This_addr.69=load %struct.Node*,%struct.Node** %This_addr
	%This_addr.dist.0 = getelementptr %struct.Node,%struct.Node* %This_addr.69,i32 0,i32 1
	 %.middle.598=load i32,i32* %This_addr.dist.0
	%.middle.597 = sub i32 0,%.middle.598
	 store i32 %.middle.597,i32* %.retval.p
	br label %Exit.274

Exit.274:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define void @.func.Node.construct(%struct.Node* %This){
Entry.276:
	%This_addr=alloca %struct.Node*
	 store %struct.Node* %This,%struct.Node** %This_addr
	br label %.block.278

.block.278:
	br label %Exit.277

Exit.277:
	ret void

}

define i32* @.func.dijkstra(i32 %s){
Entry.279:
	%s_addr=alloca i32
	 store i32 %s,i32* %s_addr
	%.retval.p=alloca i32*
	%visited.0=alloca i32*
	%d.0=alloca i32*
	%i.10=alloca i32
	%q.0=alloca %struct.Heap_Node*
	%src.0=alloca %struct.Node*
	%.Func.Return.p.34.0=alloca i32
	%node.0=alloca %struct.Node*
	%.Func.Return.p.35.0=alloca %struct.Node*
	%u.1=alloca i32
	%k.0=alloca i32
	%v.1=alloca i32
	%w.1=alloca i32
	%alt.0=alloca i32
	br label %.block.281

.block.281:
	 %.middle.599=load i32,i32* @n.0
	%.SizeList.9 = call i32* @_malloc(i32 1)
	%.ArrayIdx.9 = getelementptr i32,i32* %.SizeList.9,i32 0
	 store i32 %.middle.599,i32* %.ArrayIdx.9
	%.middle.600 = call i32* @_malloc_toInt(i32* %.SizeList.9,i32 1)
	%.new.9 = bitcast i32* %.middle.600 to i32*
	 store i32* %.new.9,i32** %visited.0
	 %.middle.601=load i32,i32* @n.0
	%.SizeList.10 = call i32* @_malloc(i32 1)
	%.ArrayIdx.10 = getelementptr i32,i32* %.SizeList.10,i32 0
	 store i32 %.middle.601,i32* %.ArrayIdx.10
	%.middle.602 = call i32* @_malloc_toInt(i32* %.SizeList.10,i32 1)
	%.new.10 = bitcast i32* %.middle.602 to i32*
	 store i32* %.new.10,i32** %d.0
	 store i32 0,i32* %i.10
	br label %For_Cond.282

For_Cond.282:
	 %.middle.605=load i32,i32* %i.10
	 %.middle.606=load i32,i32* @n.0
	%.middle.604 = icmp slt i32 %.middle.605,%.middle.606
	br i1 %.middle.604,label %For_Body.284,label %For_End.283

For_Body.284:
	 %.middle.607=load i32*,i32** %d.0
	 %.middle.609=load i32,i32* %i.10
	%.middle.608 = getelementptr i32,i32* %.middle.607,i32 %.middle.609
	 %.middle.608.0=load i32,i32* %.middle.608
	 %.middle.611=load i32,i32* @INF.0
	 store i32 %.middle.611,i32* %.middle.608
	 %.middle.612=load i32*,i32** %visited.0
	 %.middle.614=load i32,i32* %i.10
	%.middle.613 = getelementptr i32,i32* %.middle.612,i32 %.middle.614
	 %.middle.613.0=load i32,i32* %.middle.613
	 store i32 0,i32* %.middle.613
	br label %For_Change.285

For_Change.285:
	 %.middle.616=load i32,i32* %i.10
	%.middle.617 = add i32 %.middle.616,1
	 store i32 %.middle.617,i32* %i.10
	br label %For_Cond.282

For_End.283:
	 %.middle.618=load i32*,i32** %d.0
	 %.middle.620=load i32,i32* %s_addr
	%.middle.619 = getelementptr i32,i32* %.middle.618,i32 %.middle.620
	 %.middle.619.0=load i32,i32* %.middle.619
	 store i32 0,i32* %.middle.619
	%.middle.623 = call i32* @_malloc(i32 1)
	%.middle.622 = bitcast i32* %.middle.623 to %struct.Heap_Node*
	call void @.func.Heap_Node.construct(%struct.Heap_Node* %.middle.622)
	 store %struct.Heap_Node* %.middle.622,%struct.Heap_Node** %q.0
	%.middle.625 = call i32* @_malloc(i32 2)
	%.middle.624 = bitcast i32* %.middle.625 to %struct.Node*
	call void @.func.Node.construct(%struct.Node* %.middle.624)
	 store %struct.Node* %.middle.624,%struct.Node** %src.0
	 %src.0.0=load %struct.Node*,%struct.Node** %src.0
	%.middle.626 = getelementptr %struct.Node,%struct.Node* %src.0.0,i32 0,i32 1
	 store i32 0,i32* %.middle.626
	 %src.0.1=load %struct.Node*,%struct.Node** %src.0
	%.middle.628 = getelementptr %struct.Node,%struct.Node* %src.0.1,i32 0,i32 0
	 %.middle.630=load i32,i32* %s_addr
	 store i32 %.middle.630,i32* %.middle.628
	 %.middle.631=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	 %.middle.632=load %struct.Node*,%struct.Node** %src.0
	call void @.func.Heap_Node.push(%struct.Heap_Node* %.middle.631,%struct.Node* %.middle.632)
	br label %While_Cond.286

While_Cond.286:
	 %.middle.633=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	%.Func_Return.34 = call i32 @.func.Heap_Node.size(%struct.Heap_Node* %.middle.633)
	 store i32 %.Func_Return.34,i32* %.Func.Return.p.34.0
	 %.middle.635=load i32,i32* %.Func.Return.p.34.0
	%.middle.634 = icmp ne i32 %.middle.635,0
	br i1 %.middle.634,label %While_Body.287,label %While_End.288

While_Body.287:
	 %.middle.636=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	%.Func_Return.35 = call %struct.Node* @.func.Heap_Node.pop(%struct.Heap_Node* %.middle.636)
	 store %struct.Node* %.Func_Return.35,%struct.Node** %.Func.Return.p.35.0
	 %.middle.637=load %struct.Node*,%struct.Node** %.Func.Return.p.35.0
	 store %struct.Node* %.middle.637,%struct.Node** %node.0
	 %node.0.0=load %struct.Node*,%struct.Node** %node.0
	%.middle.638 = getelementptr %struct.Node,%struct.Node* %node.0.0,i32 0,i32 0
	 %.middle.639=load i32,i32* %.middle.638
	 store i32 %.middle.639,i32* %u.1
	br label %If_Cond.289

If_Cond.289:
	 %.middle.640=load i32*,i32** %visited.0
	 %.middle.642=load i32,i32* %u.1
	%.middle.641 = getelementptr i32,i32* %.middle.640,i32 %.middle.642
	 %.middle.641.0=load i32,i32* %.middle.641
	 %.middle.644=load i32,i32* %.middle.641
	%.middle.643 = icmp eq i32 %.middle.644,1
	br i1 %.middle.643,label %If_Then.290,label %If_Else.291

If_Then.290:
	br label %While_Cond.286

If_Else.291:
	br label %If_End.292

If_End.292:
	 %.middle.645=load i32*,i32** %visited.0
	 %.middle.647=load i32,i32* %u.1
	%.middle.646 = getelementptr i32,i32* %.middle.645,i32 %.middle.647
	 %.middle.646.0=load i32,i32* %.middle.646
	 store i32 1,i32* %.middle.646
	 %g.0.0=load %struct.EdgeList*,%struct.EdgeList** @g.0
	%.middle.649 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.0,i32 0,i32 3
	 %.middle.650=load i32*,i32** %.middle.649
	 %.middle.652=load i32,i32* %u.1
	%.middle.651 = getelementptr i32,i32* %.middle.650,i32 %.middle.652
	 %.middle.651.0=load i32,i32* %.middle.651
	 %.middle.654=load i32,i32* %.middle.651
	 store i32 %.middle.654,i32* %k.0
	br label %For_Cond.293

For_Cond.293:
	%.middle.655 = sub i32 0,1
	 %.middle.657=load i32,i32* %k.0
	%.middle.656 = icmp ne i32 %.middle.657,%.middle.655
	br i1 %.middle.656,label %For_Body.295,label %For_End.294

For_Body.295:
	 %g.0.1=load %struct.EdgeList*,%struct.EdgeList** @g.0
	%.middle.658 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.1,i32 0,i32 2
	 %.middle.659=load %struct.Edge**,%struct.Edge*** %.middle.658
	 %.middle.661=load i32,i32* %k.0
	%.middle.660 = getelementptr %struct.Edge*,%struct.Edge** %.middle.659,i32 %.middle.661
	 %.middle.660.0=load %struct.Edge*,%struct.Edge** %.middle.660
	 %.middle.660.1=load %struct.Edge*,%struct.Edge** %.middle.660
	%.middle.662 = getelementptr %struct.Edge,%struct.Edge* %.middle.660.1,i32 0,i32 2
	 %.middle.663=load i32,i32* %.middle.662
	 store i32 %.middle.663,i32* %v.1
	 %g.0.2=load %struct.EdgeList*,%struct.EdgeList** @g.0
	%.middle.664 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.2,i32 0,i32 2
	 %.middle.665=load %struct.Edge**,%struct.Edge*** %.middle.664
	 %.middle.667=load i32,i32* %k.0
	%.middle.666 = getelementptr %struct.Edge*,%struct.Edge** %.middle.665,i32 %.middle.667
	 %.middle.666.0=load %struct.Edge*,%struct.Edge** %.middle.666
	 %.middle.666.1=load %struct.Edge*,%struct.Edge** %.middle.666
	%.middle.668 = getelementptr %struct.Edge,%struct.Edge* %.middle.666.1,i32 0,i32 0
	 %.middle.669=load i32,i32* %.middle.668
	 store i32 %.middle.669,i32* %w.1
	 %.middle.670=load i32*,i32** %d.0
	 %.middle.672=load i32,i32* %u.1
	%.middle.671 = getelementptr i32,i32* %.middle.670,i32 %.middle.672
	 %.middle.671.0=load i32,i32* %.middle.671
	 %.middle.674=load i32,i32* %.middle.671
	 %.middle.675=load i32,i32* %w.1
	%.middle.673 = add i32 %.middle.674,%.middle.675
	 store i32 %.middle.673,i32* %alt.0
	br label %If_Cond.297

If_Cond.297:
	 %.middle.676=load i32*,i32** %d.0
	 %.middle.678=load i32,i32* %v.1
	%.middle.677 = getelementptr i32,i32* %.middle.676,i32 %.middle.678
	 %.middle.677.0=load i32,i32* %.middle.677
	 %.middle.680=load i32,i32* %alt.0
	 %.middle.681=load i32,i32* %.middle.677
	%.middle.679 = icmp sge i32 %.middle.680,%.middle.681
	br i1 %.middle.679,label %If_Then.298,label %If_Else.299

If_Then.298:
	br label %For_Change.296

If_Else.299:
	br label %If_End.300

If_End.300:
	 %.middle.682=load i32*,i32** %d.0
	 %.middle.684=load i32,i32* %v.1
	%.middle.683 = getelementptr i32,i32* %.middle.682,i32 %.middle.684
	 %.middle.683.0=load i32,i32* %.middle.683
	 %.middle.686=load i32,i32* %alt.0
	 store i32 %.middle.686,i32* %.middle.683
	%.middle.688 = call i32* @_malloc(i32 2)
	%.middle.687 = bitcast i32* %.middle.688 to %struct.Node*
	call void @.func.Node.construct(%struct.Node* %.middle.687)
	 store %struct.Node* %.middle.687,%struct.Node** %node.0
	 %node.0.1=load %struct.Node*,%struct.Node** %node.0
	%.middle.690 = getelementptr %struct.Node,%struct.Node* %node.0.1,i32 0,i32 0
	 %.middle.692=load i32,i32* %v.1
	 store i32 %.middle.692,i32* %.middle.690
	 %node.0.2=load %struct.Node*,%struct.Node** %node.0
	%.middle.693 = getelementptr %struct.Node,%struct.Node* %node.0.2,i32 0,i32 1
	 %.middle.694=load i32*,i32** %d.0
	 %.middle.696=load i32,i32* %v.1
	%.middle.695 = getelementptr i32,i32* %.middle.694,i32 %.middle.696
	 %.middle.695.0=load i32,i32* %.middle.695
	 %.middle.698=load i32,i32* %.middle.695
	 store i32 %.middle.698,i32* %.middle.693
	 %.middle.699=load %struct.Heap_Node*,%struct.Heap_Node** %q.0
	 %.middle.700=load %struct.Node*,%struct.Node** %node.0
	call void @.func.Heap_Node.push(%struct.Heap_Node* %.middle.699,%struct.Node* %.middle.700)
	br label %For_Change.296

For_Change.296:
	 %g.0.3=load %struct.EdgeList*,%struct.EdgeList** @g.0
	%.middle.701 = getelementptr %struct.EdgeList,%struct.EdgeList* %g.0.3,i32 0,i32 0
	 %.middle.702=load i32*,i32** %.middle.701
	 %.middle.704=load i32,i32* %k.0
	%.middle.703 = getelementptr i32,i32* %.middle.702,i32 %.middle.704
	 %.middle.703.0=load i32,i32* %.middle.703
	 %.middle.706=load i32,i32* %.middle.703
	 store i32 %.middle.706,i32* %k.0
	br label %For_Cond.293

For_End.294:
	br label %While_Cond.286

While_End.288:
	 %.middle.707=load i32*,i32** %d.0
	 store i32* %.middle.707,i32** %.retval.p
	br label %Exit.280

Exit.280:
	 %.retval=load i32*,i32** %.retval.p
	ret i32* %.retval

}

define i32 @main(){
Entry.301:
	%.retval.p=alloca i32
	%i.11=alloca i32
	%j.0=alloca i32
	%d.1=alloca i32*
	%.Func.Return.p.36.0=alloca i32*
	%.TmpString.2.0=alloca %struct.string*
	%.middle.725 = call i32* @_malloc(i32 8)
	%.middle.724 = bitcast i32* %.middle.725 to %struct.string*
	%.Func.Return.p.37.0=alloca %struct.string*
	%.TmpString.3.0=alloca %struct.string*
	%.middle.733 = call i32* @_malloc(i32 8)
	%.middle.732 = bitcast i32* %.middle.733 to %struct.string*
	%.TmpString.4.0=alloca %struct.string*
	%.middle.738 = call i32* @_malloc(i32 8)
	%.middle.737 = bitcast i32* %.middle.738 to %struct.string*
	br label %.block.303

.block.303:
	call void @.init()
	call void @.func.init()
	 store i32 0,i32* %i.11
	br label %For_Cond.304

For_Cond.304:
	 %.middle.710=load i32,i32* %i.11
	 %.middle.711=load i32,i32* @n.0
	%.middle.709 = icmp slt i32 %.middle.710,%.middle.711
	br i1 %.middle.709,label %For_Body.306,label %For_End.305

For_Body.306:
	 %.middle.712=load i32,i32* %i.11
	%.Func_Return.36 = call i32* @.func.dijkstra(i32 %.middle.712)
	 store i32* %.Func_Return.36,i32** %.Func.Return.p.36.0
	 %.middle.713=load i32*,i32** %.Func.Return.p.36.0
	 store i32* %.middle.713,i32** %d.1
	 store i32 0,i32* %j.0
	br label %For_Cond.308

For_Cond.308:
	 %.middle.716=load i32,i32* %j.0
	 %.middle.717=load i32,i32* @n.0
	%.middle.715 = icmp slt i32 %.middle.716,%.middle.717
	br i1 %.middle.715,label %For_Body.310,label %For_End.309

For_Body.310:
	br label %If_Cond.312

If_Cond.312:
	 %.middle.718=load i32*,i32** %d.1
	 %.middle.720=load i32,i32* %j.0
	%.middle.719 = getelementptr i32,i32* %.middle.718,i32 %.middle.720
	 %.middle.719.0=load i32,i32* %.middle.719
	 %.middle.722=load i32,i32* %.middle.719
	 %.middle.723=load i32,i32* @INF.0
	%.middle.721 = icmp eq i32 %.middle.722,%.middle.723
	br i1 %.middle.721,label %If_Then.313,label %If_Else.314

If_Then.313:
	call void @.func.string.construct(%struct.string* %.middle.724)
	%.TmpLen.2 = getelementptr %struct.string,%struct.string* %.middle.724,i32 0,i32 0
	 store i32 2,i32* %.TmpLen.2
	%.TmpContent.2 = getelementptr %struct.string,%struct.string* %.middle.724,i32 0,i32 1
	%.TmpConstRef.2 = getelementptr [2 x i32],[2 x i32]* @.ConstantString.2,i32 0,i32 0
	 store i32* %.TmpConstRef.2,i32** %.TmpContent.2
	 store %struct.string* %.middle.724,%struct.string** %.TmpString.2.0
	 %.middle.726=load %struct.string*,%struct.string** %.TmpString.2.0
	call void @.func.print(%struct.string* %.middle.726)
	br label %If_End.315

If_Else.314:
	 %.middle.727=load i32*,i32** %d.1
	 %.middle.729=load i32,i32* %j.0
	%.middle.728 = getelementptr i32,i32* %.middle.727,i32 %.middle.729
	 %.middle.728.0=load i32,i32* %.middle.728
	 %.middle.730=load i32,i32* %.middle.728
	%.Func_Return.37 = call %struct.string* @.func.toString(i32 %.middle.730)
	 store %struct.string* %.Func_Return.37,%struct.string** %.Func.Return.p.37.0
	 %.middle.731=load %struct.string*,%struct.string** %.Func.Return.p.37.0
	call void @.func.print(%struct.string* %.middle.731)
	br label %If_End.315

If_End.315:
	call void @.func.string.construct(%struct.string* %.middle.732)
	%.TmpLen.3 = getelementptr %struct.string,%struct.string* %.middle.732,i32 0,i32 0
	 store i32 1,i32* %.TmpLen.3
	%.TmpContent.3 = getelementptr %struct.string,%struct.string* %.middle.732,i32 0,i32 1
	%.TmpConstRef.3 = getelementptr [1 x i32],[1 x i32]* @.ConstantString.3,i32 0,i32 0
	 store i32* %.TmpConstRef.3,i32** %.TmpContent.3
	 store %struct.string* %.middle.732,%struct.string** %.TmpString.3.0
	 %.middle.734=load %struct.string*,%struct.string** %.TmpString.3.0
	call void @.func.print(%struct.string* %.middle.734)
	br label %For_Change.311

For_Change.311:
	 %.middle.735=load i32,i32* %j.0
	%.middle.736 = add i32 %.middle.735,1
	 store i32 %.middle.736,i32* %j.0
	br label %For_Cond.308

For_End.309:
	call void @.func.string.construct(%struct.string* %.middle.737)
	%.TmpLen.4 = getelementptr %struct.string,%struct.string* %.middle.737,i32 0,i32 0
	 store i32 0,i32* %.TmpLen.4
	%.TmpContent.4 = getelementptr %struct.string,%struct.string* %.middle.737,i32 0,i32 1
	%.TmpConstRef.4 = getelementptr [0 x i32],[0 x i32]* @.ConstantString.4,i32 0,i32 0
	 store i32* %.TmpConstRef.4,i32** %.TmpContent.4
	 store %struct.string* %.middle.737,%struct.string** %.TmpString.4.0
	 %.middle.739=load %struct.string*,%struct.string** %.TmpString.4.0
	call void @.func.println(%struct.string* %.middle.739)
	br label %For_Change.307

For_Change.307:
	 %.middle.740=load i32,i32* %i.11
	%.middle.741 = add i32 %.middle.740,1
	 store i32 %.middle.741,i32* %i.11
	br label %For_Cond.304

For_End.305:
	 store i32 0,i32* %.retval.p
	br label %Exit.302

Exit.302:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

