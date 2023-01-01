source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
%struct.string =type {i32 ,i32* }
@.ConstantString.0 = private constant [31 x i32] [i32 92,i32 34,i32 92,i32 110,i32 98,i32 100,i32 97,i32 92,i32 92,i32 92,i32 34,i32 92,i32 110,i32 100,i32 98,i32 100,i32 92,i32 92,i32 99,i32 92,i32 34,i32 92,i32 92,i32 92,i32 34,i32 99,i32 92,i32 92,i32 99,i32 92,i32 34]
@.ConstantString.1 = private constant [29 x i32] [i32 92,i32 92,i32 97,i32 98,i32 92,i32 110,i32 97,i32 99,i32 92,i32 34,i32 92,i32 34,i32 97,i32 100,i32 100,i32 92,i32 110,i32 92,i32 34,i32 92,i32 110,i32 97,i32 99,i32 92,i32 110,i32 100,i32 98,i32 92,i32 34]
@.ConstantString.2 = private constant [27 x i32] [i32 92,i32 110,i32 97,i32 98,i32 98,i32 100,i32 98,i32 100,i32 100,i32 92,i32 92,i32 92,i32 92,i32 92,i32 34,i32 100,i32 92,i32 34,i32 99,i32 92,i32 92,i32 97,i32 100,i32 99,i32 92,i32 34,i32 99]
declare i32 @.func..size ()
declare i32 @getInt ()
declare void @printf_no_collision_please (i32 %null.0)
declare i32 @scanf_no_collision_please ()
declare void @printInt (i32 %null.1)
declare i32* @_malloc (i32 %null.2)
declare i32* @_malloc_toInt (i32* %null.3,i32 %null.4)
define void @.init(){
Entry.1:
	br label %.block.3

.block.3:
	br label %Exit.2

Exit.2:
	ret void

}

define void @.func.string.construct(%struct.string* %This.0){
Entry.4:
	br label %.block.6

.block.6:
	br label %Exit.5

Exit.5:
	ret void

}

define i32 @.func.string.length(%struct.string* %This.1){
Entry.7:
	%.retval.p=alloca i32
	br label %.block.9

.block.9:
	%This.1.len.0 = getelementptr %struct.string,%struct.string* %This.1,i32 0,i32 0
	 %.middle.0=load i32,i32* %This.1.len.0
	 store i32 %.middle.0,i32* %.retval.p
	br label %Exit.8

Exit.8:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.string.parseInt(%struct.string* %This.2){
Entry.10:
	%.retval.p=alloca i32
	br label %.block.12

.block.12:
	%ans.0=alloca i32
	 store i32 0,i32* %ans.0
	%i.0=alloca i32
	 store i32 0,i32* %i.0
	br label %For_Cond.13

For_Cond.13:
	%This.2.len.0 = getelementptr %struct.string,%struct.string* %This.2,i32 0,i32 0
	 %.middle.2=load i32,i32* %i.0
	 %.middle.3=load i32,i32* %This.2.len.0
	%.middle.1 = icmp slt i32 %.middle.2,%.middle.3
	%This.2.content.0 = getelementptr %struct.string,%struct.string* %This.2,i32 0,i32 1
	 %.middle.4=load i32*,i32** %This.2.content.0
	 %.middle.6=load i32,i32* %i.0
	%.middle.5 = getelementptr i32,i32* %.middle.4,i32 %.middle.6
	 %.middle.5.0=load i32,i32* %.middle.5
	 %.middle.8=load i32,i32* %.middle.5
	%.middle.7 = icmp sgt i32 %.middle.8,47
	%.middle.9 = and i1 %.middle.1,%.middle.7
	%This.2.content.1 = getelementptr %struct.string,%struct.string* %This.2,i32 0,i32 1
	 %.middle.10=load i32*,i32** %This.2.content.1
	 %.middle.12=load i32,i32* %i.0
	%.middle.11 = getelementptr i32,i32* %.middle.10,i32 %.middle.12
	 %.middle.11.0=load i32,i32* %.middle.11
	 %.middle.14=load i32,i32* %.middle.11
	%.middle.13 = icmp slt i32 %.middle.14,58
	%.middle.15 = and i1 %.middle.9,%.middle.13
	br i1 %.middle.15,label %For_Body.15,label %For_End.14

For_Body.15:
	 %.middle.17=load i32,i32* %ans.0
	%.middle.16 = mul i32 %.middle.17,10
	%This.2.content.2 = getelementptr %struct.string,%struct.string* %This.2,i32 0,i32 1
	 %.middle.18=load i32*,i32** %This.2.content.2
	 %.middle.20=load i32,i32* %i.0
	%.middle.19 = getelementptr i32,i32* %.middle.18,i32 %.middle.20
	 %.middle.19.0=load i32,i32* %.middle.19
	 %.middle.22=load i32,i32* %.middle.19
	%.middle.21 = add i32 %.middle.16,%.middle.22
	%.middle.23 = sub i32 %.middle.21,48
	 store i32 %.middle.23,i32* %ans.0
	 %.middle.26=load i32,i32* %i.0
	%.middle.25 = add i32 %.middle.26,1
	 store i32 %.middle.25,i32* %i.0
	br label %For_Cond.13

For_End.14:
	 %.middle.27=load i32,i32* %ans.0
	 store i32 %.middle.27,i32* %.retval.p
	br label %Exit.11

Exit.11:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define i32 @.func.string.ord(%struct.string* %This.3,i32 %pos){
Entry.16:
	%pos_addr=alloca i32
	 store i32 %pos,i32* %pos_addr
	%.retval.p=alloca i32
	br label %.block.18

.block.18:
	%This.3.content.0 = getelementptr %struct.string,%struct.string* %This.3,i32 0,i32 1
	 %.middle.28=load i32*,i32** %This.3.content.0
	 %.middle.30=load i32,i32* %pos_addr
	%.middle.29 = getelementptr i32,i32* %.middle.28,i32 %.middle.30
	 %.middle.29.0=load i32,i32* %.middle.29
	 %.middle.32=load i32,i32* %.middle.29
	%.middle.31 = sub i32 %.middle.32,48
	 store i32 %.middle.31,i32* %.retval.p
	br label %Exit.17

Exit.17:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define %struct.string @.func.string.substring(%struct.string* %This.4,i32 %left,i32 %right){
Entry.19:
	%left_addr=alloca i32
	 store i32 %left,i32* %left_addr
	%right_addr=alloca i32
	 store i32 %right,i32* %right_addr
	%.retval.p=alloca %struct.string
	br label %.block.21

.block.21:
	%tmp.0=alloca %struct.string
	%.middle.33=alloca %struct.string
	call void @.func.string.construct(%struct.string* %.middle.33)
	 %.middle.34=load %struct.string,%struct.string* %.middle.33
	 store %struct.string %.middle.34,%struct.string* %tmp.0
	%tmplen.0=alloca i32
	 %.middle.36=load i32,i32* %right_addr
	 %.middle.37=load i32,i32* %left_addr
	%.middle.35 = sub i32 %.middle.36,%.middle.37
	%.middle.38 = add i32 %.middle.35,1
	 store i32 %.middle.38,i32* %tmplen.0
	%.middle.39 = getelementptr %struct.string,%struct.string* %tmp.0,i32 0,i32 1
	 %.middle.40=load i32,i32* %tmplen.0
	%.SizeList.0 = call i32* @_malloc(i32 1)
	%.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0,i32 0
	 store i32 %.middle.40,i32* %.ArrayIdx.0
	%.middle.41 = call i32* @_malloc_toInt(i32* %.SizeList.0,i32 1)
	%.new.0 = bitcast i32* %.middle.41 to i32*
	 store i32* %.new.0,i32** %.middle.39
	%.middle.43 = getelementptr %struct.string,%struct.string* %tmp.0,i32 0,i32 0
	 %.middle.45=load i32,i32* %tmplen.0
	 store i32 %.middle.45,i32* %.middle.43
	%i.1=alloca i32
	 store i32 0,i32* %i.1
	br label %For_Cond.22

For_Cond.22:
	 %.middle.47=load i32,i32* %i.1
	 %.middle.48=load i32,i32* %tmplen.0
	%.middle.46 = icmp slt i32 %.middle.47,%.middle.48
	br i1 %.middle.46,label %For_Body.24,label %For_End.23

For_Body.24:
	%.middle.49 = getelementptr %struct.string,%struct.string* %tmp.0,i32 0,i32 1
	 %.middle.50=load i32*,i32** %.middle.49
	 %.middle.52=load i32,i32* %i.1
	%.middle.51 = getelementptr i32,i32* %.middle.50,i32 %.middle.52
	 %.middle.51.0=load i32,i32* %.middle.51
	%This.4.content.0 = getelementptr %struct.string,%struct.string* %This.4,i32 0,i32 1
	 %.middle.53=load i32*,i32** %This.4.content.0
	 %.middle.55=load i32,i32* %left_addr
	 %.middle.56=load i32,i32* %i.1
	%.middle.54 = add i32 %.middle.55,%.middle.56
	%.middle.57 = getelementptr i32,i32* %.middle.53,i32 %.middle.54
	 %.middle.57.0=load i32,i32* %.middle.57
	 %.middle.59=load i32,i32* %.middle.57
	 store i32 %.middle.59,i32* %.middle.51
	 %.middle.61=load i32,i32* %i.1
	%.middle.60 = add i32 %.middle.61,1
	 store i32 %.middle.60,i32* %i.1
	br label %For_Cond.22

For_End.23:
	 %.middle.62=load %struct.string,%struct.string* %tmp.0
	 store %struct.string %.middle.62,%struct.string* %.retval.p
	br label %Exit.20

Exit.20:
	 %.retval=load %struct.string,%struct.string* %.retval.p
	ret %struct.string %.retval

}

define %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.25:
	%.retval.p=alloca %struct.string
	br label %.block.27

.block.27:
	%tmp.1=alloca %struct.string
	%.middle.63=alloca %struct.string
	call void @.func.string.construct(%struct.string* %.middle.63)
	 %.middle.64=load %struct.string,%struct.string* %.middle.63
	 store %struct.string %.middle.64,%struct.string* %tmp.1
	%tmplen.1=alloca i32
	%.middle.65 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	%.middle.66 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 0
	 %.middle.68=load i32,i32* %.middle.65
	 %.middle.69=load i32,i32* %.middle.66
	%.middle.67 = add i32 %.middle.68,%.middle.69
	 store i32 %.middle.67,i32* %tmplen.1
	%alen.0=alloca i32
	%.middle.70 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	 %.middle.71=load i32,i32* %.middle.70
	 store i32 %.middle.71,i32* %alen.0
	%blen.0=alloca i32
	%.middle.72 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 0
	 %.middle.73=load i32,i32* %.middle.72
	 store i32 %.middle.73,i32* %blen.0
	%.middle.74 = getelementptr %struct.string,%struct.string* %tmp.1,i32 0,i32 0
	 %.middle.76=load i32,i32* %tmplen.1
	 store i32 %.middle.76,i32* %.middle.74
	%.middle.77 = getelementptr %struct.string,%struct.string* %tmp.1,i32 0,i32 1
	 %.middle.78=load i32,i32* %tmplen.1
	%.SizeList.1 = call i32* @_malloc(i32 1)
	%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	 store i32 %.middle.78,i32* %.ArrayIdx.1
	%.middle.79 = call i32* @_malloc_toInt(i32* %.SizeList.1,i32 1)
	%.new.1 = bitcast i32* %.middle.79 to i32*
	 store i32* %.new.1,i32** %.middle.77
	%i.2=alloca i32
	 store i32 0,i32* %i.2
	br label %For_Cond.28

For_Cond.28:
	 %.middle.82=load i32,i32* %i.2
	 %.middle.83=load i32,i32* %alen.0
	%.middle.81 = icmp slt i32 %.middle.82,%.middle.83
	br i1 %.middle.81,label %For_Body.30,label %For_End.29

For_Body.30:
	%.middle.84 = getelementptr %struct.string,%struct.string* %tmp.1,i32 0,i32 1
	 %.middle.85=load i32*,i32** %.middle.84
	 %.middle.87=load i32,i32* %i.2
	%.middle.86 = getelementptr i32,i32* %.middle.85,i32 %.middle.87
	 %.middle.86.0=load i32,i32* %.middle.86
	%.middle.88 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 1
	 %.middle.89=load i32*,i32** %.middle.88
	 %.middle.91=load i32,i32* %i.2
	%.middle.90 = getelementptr i32,i32* %.middle.89,i32 %.middle.91
	 %.middle.90.0=load i32,i32* %.middle.90
	 %.middle.93=load i32,i32* %.middle.90
	 store i32 %.middle.93,i32* %.middle.86
	 %.middle.94=load i32,i32* %i.2
	%.middle.95 = add i32 %.middle.94,1
	 store i32 %.middle.95,i32* %i.2
	br label %For_Cond.28

For_End.29:
	%i.3=alloca i32
	 store i32 0,i32* %i.3
	br label %For_Cond.31

For_Cond.31:
	 %.middle.97=load i32,i32* %i.3
	 %.middle.98=load i32,i32* %blen.0
	%.middle.96 = icmp slt i32 %.middle.97,%.middle.98
	br i1 %.middle.96,label %For_Body.33,label %For_End.32

For_Body.33:
	%.middle.99 = getelementptr %struct.string,%struct.string* %tmp.1,i32 0,i32 1
	 %.middle.100=load i32*,i32** %.middle.99
	 %.middle.102=load i32,i32* %i.3
	 %.middle.103=load i32,i32* %alen.0
	%.middle.101 = add i32 %.middle.102,%.middle.103
	%.middle.104 = getelementptr i32,i32* %.middle.100,i32 %.middle.101
	 %.middle.104.0=load i32,i32* %.middle.104
	%.middle.105 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 1
	 %.middle.106=load i32*,i32** %.middle.105
	 %.middle.108=load i32,i32* %i.3
	%.middle.107 = getelementptr i32,i32* %.middle.106,i32 %.middle.108
	 %.middle.107.0=load i32,i32* %.middle.107
	 %.middle.110=load i32,i32* %.middle.107
	 store i32 %.middle.110,i32* %.middle.104
	 %.middle.111=load i32,i32* %i.3
	%.middle.112 = add i32 %.middle.111,1
	 store i32 %.middle.112,i32* %i.3
	br label %For_Cond.31

For_End.32:
	 %.middle.113=load %struct.string,%struct.string* %tmp.1
	 store %struct.string %.middle.113,%struct.string* %.retval.p
	br label %Exit.26

Exit.26:
	 %.retval=load %struct.string,%struct.string* %.retval.p
	ret %struct.string %.retval

}

define i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.34:
	%.retval.p=alloca i8
	br label %.block.36

.block.36:
	%len.0=alloca i32
	%.middle.114 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 0
	 %.middle.115=load i32,i32* %.middle.114
	 store i32 %.middle.115,i32* %len.0
	br label %If_Cond.37

If_Cond.37:
	%.middle.116 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	%.middle.117 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 0
	 %.middle.119=load i32,i32* %.middle.116
	 %.middle.120=load i32,i32* %.middle.117
	%.middle.118 = icmp slt i32 %.middle.119,%.middle.120
	br i1 %.middle.118,label %If_Then.38,label %If_Else.39

If_Then.38:
	%.middle.121 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	 %.middle.123=load i32,i32* %.middle.121
	 store i32 %.middle.123,i32* %len.0
	br label %If_End.40

If_Else.39:
	br label %If_End.40

If_End.40:
	%i.4=alloca i32
	 store i32 0,i32* %i.4
	br label %For_Cond.41

For_Cond.41:
	 %.middle.125=load i32,i32* %i.4
	 %.middle.126=load i32,i32* %len.0
	%.middle.124 = icmp slt i32 %.middle.125,%.middle.126
	br i1 %.middle.124,label %For_Body.43,label %For_End.42

For_Body.43:
	br label %If_Cond.44

If_Cond.44:
	%.middle.127 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 1
	 %.middle.128=load i32*,i32** %.middle.127
	 %.middle.130=load i32,i32* %i.4
	%.middle.129 = getelementptr i32,i32* %.middle.128,i32 %.middle.130
	 %.middle.129.0=load i32,i32* %.middle.129
	%.middle.131 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 1
	 %.middle.132=load i32*,i32** %.middle.131
	 %.middle.134=load i32,i32* %i.4
	%.middle.133 = getelementptr i32,i32* %.middle.132,i32 %.middle.134
	 %.middle.133.0=load i32,i32* %.middle.133
	 %.middle.136=load i32,i32* %.middle.129
	 %.middle.137=load i32,i32* %.middle.133
	%.middle.135 = icmp slt i32 %.middle.136,%.middle.137
	br i1 %.middle.135,label %If_Then.45,label %If_Else.46

If_Then.45:
	%.FromBool.0 = zext i1 1 to i8
	 store i8 %.FromBool.0,i8* %.retval.p
	br label %Exit.35

If_Else.46:
	br label %If_End.47

If_End.47:
	br label %If_Cond.48

If_Cond.48:
	%.middle.138 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 1
	 %.middle.139=load i32*,i32** %.middle.138
	 %.middle.141=load i32,i32* %i.4
	%.middle.140 = getelementptr i32,i32* %.middle.139,i32 %.middle.141
	 %.middle.140.0=load i32,i32* %.middle.140
	%.middle.142 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 1
	 %.middle.143=load i32*,i32** %.middle.142
	 %.middle.145=load i32,i32* %i.4
	%.middle.144 = getelementptr i32,i32* %.middle.143,i32 %.middle.145
	 %.middle.144.0=load i32,i32* %.middle.144
	 %.middle.147=load i32,i32* %.middle.140
	 %.middle.148=load i32,i32* %.middle.144
	%.middle.146 = icmp sgt i32 %.middle.147,%.middle.148
	br i1 %.middle.146,label %If_Then.49,label %If_Else.50

If_Then.49:
	%.FromBool.1 = zext i1 0 to i8
	 store i8 %.FromBool.1,i8* %.retval.p
	br label %Exit.35

If_Else.50:
	br label %If_End.51

If_End.51:
	 %.middle.149=load i32,i32* %i.4
	%.middle.150 = add i32 %.middle.149,1
	 store i32 %.middle.150,i32* %i.4
	br label %For_Cond.41

For_End.42:
	br label %If_Cond.52

If_Cond.52:
	%.middle.151 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	%.middle.152 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 0
	 %.middle.154=load i32,i32* %.middle.151
	 %.middle.155=load i32,i32* %.middle.152
	%.middle.153 = icmp sgt i32 %.middle.154,%.middle.155
	br i1 %.middle.153,label %If_Then.53,label %If_Else.54

If_Then.53:
	%.FromBool.2 = zext i1 1 to i8
	 store i8 %.FromBool.2,i8* %.retval.p
	br label %Exit.35

If_Else.54:
	br label %If_End.55

If_End.55:
	%.FromBool.3 = zext i1 0 to i8
	 store i8 %.FromBool.3,i8* %.retval.p
	br label %Exit.35

Exit.35:
	 %.retval.Tobool=load i8,i8* %.retval.p
	%.retval = trunc i8 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.56:
	%.retval.p=alloca i8
	br label %.block.58

.block.58:
	br label %If_Cond.59

If_Cond.59:
	%.middle.156 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	%.middle.157 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 0
	 %.middle.159=load i32,i32* %.middle.156
	 %.middle.160=load i32,i32* %.middle.157
	%.middle.158 = icmp ne i32 %.middle.159,%.middle.160
	br i1 %.middle.158,label %If_Then.60,label %If_Else.61

If_Then.60:
	%.FromBool.4 = zext i1 0 to i8
	 store i8 %.FromBool.4,i8* %.retval.p
	br label %Exit.57

If_Else.61:
	br label %If_End.62

If_End.62:
	%len.1=alloca i32
	%.middle.161 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	 %.middle.162=load i32,i32* %.middle.161
	 store i32 %.middle.162,i32* %len.1
	%i.5=alloca i32
	 store i32 0,i32* %i.5
	br label %For_Cond.63

For_Cond.63:
	 %.middle.164=load i32,i32* %i.5
	 %.middle.165=load i32,i32* %len.1
	%.middle.163 = icmp slt i32 %.middle.164,%.middle.165
	br i1 %.middle.163,label %For_Body.65,label %For_End.64

For_Body.65:
	br label %If_Cond.66

If_Cond.66:
	%.middle.166 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 1
	 %.middle.167=load i32*,i32** %.middle.166
	 %.middle.169=load i32,i32* %i.5
	%.middle.168 = getelementptr i32,i32* %.middle.167,i32 %.middle.169
	 %.middle.168.0=load i32,i32* %.middle.168
	%.middle.170 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 1
	 %.middle.171=load i32*,i32** %.middle.170
	 %.middle.173=load i32,i32* %i.5
	%.middle.172 = getelementptr i32,i32* %.middle.171,i32 %.middle.173
	 %.middle.172.0=load i32,i32* %.middle.172
	 %.middle.175=load i32,i32* %.middle.168
	 %.middle.176=load i32,i32* %.middle.172
	%.middle.174 = icmp ne i32 %.middle.175,%.middle.176
	br i1 %.middle.174,label %If_Then.67,label %If_Else.68

If_Then.67:
	%.FromBool.5 = zext i1 0 to i8
	 store i8 %.FromBool.5,i8* %.retval.p
	br label %Exit.57

If_Else.68:
	br label %If_End.69

If_End.69:
	 %.middle.177=load i32,i32* %i.5
	%.middle.178 = add i32 %.middle.177,1
	 store i32 %.middle.178,i32* %i.5
	br label %For_Cond.63

For_End.64:
	%.FromBool.6 = zext i1 1 to i8
	 store i8 %.FromBool.6,i8* %.retval.p
	br label %Exit.57

Exit.57:
	 %.retval.Tobool=load i8,i8* %.retval.p
	%.retval = trunc i8 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Not_Equal_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.70:
	%.retval.p=alloca i8
	br label %.block.72

.block.72:
	br label %If_Cond.73

If_Cond.73:
	%.middle.179 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	%.middle.180 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 0
	 %.middle.182=load i32,i32* %.middle.179
	 %.middle.183=load i32,i32* %.middle.180
	%.middle.181 = icmp ne i32 %.middle.182,%.middle.183
	br i1 %.middle.181,label %If_Then.74,label %If_Else.75

If_Then.74:
	%.FromBool.7 = zext i1 1 to i8
	 store i8 %.FromBool.7,i8* %.retval.p
	br label %Exit.71

If_Else.75:
	br label %If_End.76

If_End.76:
	%len.2=alloca i32
	%.middle.184 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 0
	 %.middle.185=load i32,i32* %.middle.184
	 store i32 %.middle.185,i32* %len.2
	%i.6=alloca i32
	 store i32 0,i32* %i.6
	br label %For_Cond.77

For_Cond.77:
	 %.middle.187=load i32,i32* %i.6
	 %.middle.188=load i32,i32* %len.2
	%.middle.186 = icmp slt i32 %.middle.187,%.middle.188
	br i1 %.middle.186,label %For_Body.79,label %For_End.78

For_Body.79:
	br label %If_Cond.80

If_Cond.80:
	%.middle.189 = getelementptr %struct.string,%struct.string* %a,i32 0,i32 1
	 %.middle.190=load i32*,i32** %.middle.189
	 %.middle.192=load i32,i32* %i.6
	%.middle.191 = getelementptr i32,i32* %.middle.190,i32 %.middle.192
	 %.middle.191.0=load i32,i32* %.middle.191
	%.middle.193 = getelementptr %struct.string,%struct.string* %b,i32 0,i32 1
	 %.middle.194=load i32*,i32** %.middle.193
	 %.middle.196=load i32,i32* %i.6
	%.middle.195 = getelementptr i32,i32* %.middle.194,i32 %.middle.196
	 %.middle.195.0=load i32,i32* %.middle.195
	 %.middle.198=load i32,i32* %.middle.191
	 %.middle.199=load i32,i32* %.middle.195
	%.middle.197 = icmp ne i32 %.middle.198,%.middle.199
	br i1 %.middle.197,label %If_Then.81,label %If_Else.82

If_Then.81:
	%.FromBool.8 = zext i1 1 to i8
	 store i8 %.FromBool.8,i8* %.retval.p
	br label %Exit.71

If_Else.82:
	br label %If_End.83

If_End.83:
	 %.middle.200=load i32,i32* %i.6
	%.middle.201 = add i32 %.middle.200,1
	 store i32 %.middle.201,i32* %i.6
	br label %For_Cond.77

For_End.78:
	%.FromBool.9 = zext i1 0 to i8
	 store i8 %.FromBool.9,i8* %.retval.p
	br label %Exit.71

Exit.71:
	 %.retval.Tobool=load i8,i8* %.retval.p
	%.retval = trunc i8 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.84:
	%.retval.p=alloca i8
	br label %.block.86

.block.86:
	%.Func_Return.0 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b)
	%.Func_Return.1 = call i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b)
	%.middle.202 = or i1 %.Func_Return.0,%.Func_Return.1
	%.FromBool.10 = zext i1 %.middle.202 to i8
	 store i8 %.FromBool.10,i8* %.retval.p
	br label %Exit.85

Exit.85:
	 %.retval.Tobool=load i8,i8* %.retval.p
	%.retval = trunc i8 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Greater_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.87:
	%.retval.p=alloca i8
	br label %.block.89

.block.89:
	%.Func_Return.2 = call i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b)
	%.middle.203 = xor i1 %.Func_Return.2,1
	%.FromBool.11 = zext i1 %.middle.203 to i8
	 store i8 %.FromBool.11,i8* %.retval.p
	br label %Exit.88

Exit.88:
	 %.retval.Tobool=load i8,i8* %.retval.p
	%.retval = trunc i8 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.GE_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.90:
	%.retval.p=alloca i8
	br label %.block.92

.block.92:
	%.Func_Return.3 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b)
	%.middle.204 = xor i1 %.Func_Return.3,1
	%.FromBool.12 = zext i1 %.middle.204 to i8
	 store i8 %.FromBool.12,i8* %.retval.p
	br label %Exit.91

Exit.91:
	 %.retval.Tobool=load i8,i8* %.retval.p
	%.retval = trunc i8 %.retval.Tobool to i1
	ret i1 %.retval

}

define void @.func.print(%struct.string* %str){
Entry.93:
	br label %.block.95

.block.95:
	%s.0=alloca i32
	%.middle.205 = getelementptr %struct.string,%struct.string* %str,i32 0,i32 0
	 %.middle.206=load i32,i32* %.middle.205
	 store i32 %.middle.206,i32* %s.0
	%i.7=alloca i32
	 store i32 0,i32* %i.7
	br label %For_Cond.96

For_Cond.96:
	 %.middle.208=load i32,i32* %i.7
	 %.middle.209=load i32,i32* %s.0
	%.middle.207 = icmp slt i32 %.middle.208,%.middle.209
	br i1 %.middle.207,label %For_Body.98,label %For_End.97

For_Body.98:
	%.middle.210 = getelementptr %struct.string,%struct.string* %str,i32 0,i32 1
	 %.middle.211=load i32*,i32** %.middle.210
	 %.middle.213=load i32,i32* %i.7
	%.middle.212 = getelementptr i32,i32* %.middle.211,i32 %.middle.213
	 %.middle.212.0=load i32,i32* %.middle.212
	 %.middle.214=load i32,i32* %.middle.212
	call void @printf_no_collision_please(i32 %.middle.214)
	 %.middle.216=load i32,i32* %i.7
	%.middle.215 = add i32 %.middle.216,1
	 store i32 %.middle.215,i32* %i.7
	br label %For_Cond.96

For_End.97:
	br label %Exit.94

Exit.94:
	ret void

}

define void @.func.println(%struct.string* %str){
Entry.99:
	br label %.block.101

.block.101:
	call void @.func.print(%struct.string* %str)
	call void @printf_no_collision_please(i32 10)
	br label %Exit.100

Exit.100:
	ret void

}

define void @.func.printlnInt(i32 %num){
Entry.102:
	%num_addr=alloca i32
	 store i32 %num,i32* %num_addr
	br label %.block.104

.block.104:
	 %.middle.217=load i32,i32* %num_addr
	call void @printInt(i32 %.middle.217)
	call void @printf_no_collision_please(i32 10)
	br label %Exit.103

Exit.103:
	ret void

}

define %struct.string @.func.toString(i32 %i){
Entry.105:
	%i_addr=alloca i32
	 store i32 %i,i32* %i_addr
	%.retval.p=alloca %struct.string
	br label %.block.107

.block.107:
	%a.0=alloca i32*
	%.SizeList.2 = call i32* @_malloc(i32 1)
	%.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	 store i32 20,i32* %.ArrayIdx.2
	%.middle.218 = call i32* @_malloc_toInt(i32* %.SizeList.2,i32 1)
	%.new.2 = bitcast i32* %.middle.218 to i32*
	 store i32* %.new.2,i32** %a.0
	%cnt.0=alloca i32
	 store i32 0,i32* %cnt.0
	%fg.0=alloca i8
	%.FromBool.13 = zext i1 0 to i8
	 store i8 %.FromBool.13,i8* %fg.0
	br label %If_Cond.108

If_Cond.108:
	 %.middle.220=load i32,i32* %i_addr
	%.middle.219 = icmp eq i32 %.middle.220,0
	br i1 %.middle.219,label %If_Then.109,label %If_Else.110

If_Then.109:
	 store i32 1,i32* %cnt.0
	 %.middle.222=load i32*,i32** %a.0
	%.middle.223 = getelementptr i32,i32* %.middle.222,i32 0
	 %.middle.223.0=load i32,i32* %.middle.223
	 store i32 0,i32* %.middle.223
	br label %If_End.111

If_Else.110:
	br label %If_End.111

If_End.111:
	br label %If_Cond.112

If_Cond.112:
	 %.middle.226=load i32,i32* %i_addr
	%.middle.225 = icmp slt i32 %.middle.226,0
	br i1 %.middle.225,label %If_Then.113,label %If_Else.114

If_Then.113:
	%.FromBool.14 = zext i1 1 to i8
	 store i8 %.FromBool.14,i8* %fg.0
	 %.middle.229=load i32,i32* %i_addr
	%.middle.228 = sub i32 0,%.middle.229
	 store i32 %.middle.228,i32* %i_addr
	br label %If_End.115

If_Else.114:
	br label %If_End.115

If_End.115:
	br label %While_Cond.116

While_Cond.116:
	 %.middle.232=load i32,i32* %i_addr
	%.middle.231 = icmp ne i32 %.middle.232,0
	br i1 %.middle.231,label %While_Body.117,label %While_End.118

While_Body.117:
	 %.middle.233=load i32*,i32** %a.0
	 %.middle.235=load i32,i32* %cnt.0
	%.middle.234 = getelementptr i32,i32* %.middle.233,i32 %.middle.235
	 %.middle.234.0=load i32,i32* %.middle.234
	 %.middle.237=load i32,i32* %i_addr
	%.middle.236 = urem i32 %.middle.237,10
	 store i32 %.middle.236,i32* %.middle.234
	 %.middle.240=load i32,i32* %i_addr
	%.middle.239 = sdiv i32 %.middle.240,10
	 store i32 %.middle.239,i32* %i_addr
	 %.middle.242=load i32,i32* %cnt.0
	%.middle.243 = add i32 %.middle.242,1
	 store i32 %.middle.243,i32* %cnt.0
	br label %While_Cond.116

While_End.118:
	br label %If_Cond.119

If_Cond.119:
	 %.ToBool.0=load i8,i8* %fg.0
	%.middle.244 = trunc i8 %.ToBool.0 to i1
	br i1 %.middle.244,label %If_Then.120,label %If_Else.121

If_Then.120:
	 %.middle.245=load i32*,i32** %a.0
	 %.middle.247=load i32,i32* %cnt.0
	%.middle.246 = getelementptr i32,i32* %.middle.245,i32 %.middle.247
	 %.middle.246.0=load i32,i32* %.middle.246
	%.middle.248 = sub i32 0,3
	 store i32 %.middle.248,i32* %.middle.246
	 %.middle.250=load i32,i32* %cnt.0
	%.middle.251 = add i32 %.middle.250,1
	 store i32 %.middle.251,i32* %cnt.0
	br label %If_End.122

If_Else.121:
	br label %If_End.122

If_End.122:
	%tmp.2=alloca %struct.string
	%.middle.252=alloca %struct.string
	call void @.func.string.construct(%struct.string* %.middle.252)
	 %.middle.253=load %struct.string,%struct.string* %.middle.252
	 store %struct.string %.middle.253,%struct.string* %tmp.2
	%.middle.254 = getelementptr %struct.string,%struct.string* %tmp.2,i32 0,i32 0
	 %.middle.256=load i32,i32* %cnt.0
	 store i32 %.middle.256,i32* %.middle.254
	%.middle.257 = getelementptr %struct.string,%struct.string* %tmp.2,i32 0,i32 1
	 %.middle.258=load i32,i32* %cnt.0
	%.SizeList.3 = call i32* @_malloc(i32 1)
	%.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	 store i32 %.middle.258,i32* %.ArrayIdx.3
	%.middle.259 = call i32* @_malloc_toInt(i32* %.SizeList.3,i32 1)
	%.new.3 = bitcast i32* %.middle.259 to i32*
	 store i32* %.new.3,i32** %.middle.257
	%i.8=alloca i32
	 store i32 0,i32* %i.8
	br label %For_Cond.123

For_Cond.123:
	 %.middle.262=load i32,i32* %i.8
	 %.middle.263=load i32,i32* %cnt.0
	%.middle.261 = icmp slt i32 %.middle.262,%.middle.263
	br i1 %.middle.261,label %For_Body.125,label %For_End.124

For_Body.125:
	%.middle.264 = getelementptr %struct.string,%struct.string* %tmp.2,i32 0,i32 1
	 %.middle.265=load i32*,i32** %.middle.264
	 %.middle.267=load i32,i32* %i.8
	%.middle.266 = getelementptr i32,i32* %.middle.265,i32 %.middle.267
	 %.middle.266.0=load i32,i32* %.middle.266
	 %.middle.268=load i32*,i32** %a.0
	 %.middle.270=load i32,i32* %cnt.0
	 %.middle.271=load i32,i32* %i.8
	%.middle.269 = sub i32 %.middle.270,%.middle.271
	%.middle.272 = sub i32 %.middle.269,1
	%.middle.273 = getelementptr i32,i32* %.middle.268,i32 %.middle.272
	 %.middle.273.0=load i32,i32* %.middle.273
	 %.middle.275=load i32,i32* %.middle.273
	%.middle.274 = add i32 %.middle.275,48
	 store i32 %.middle.274,i32* %.middle.266
	 %.middle.277=load i32,i32* %i.8
	%.middle.278 = add i32 %.middle.277,1
	 store i32 %.middle.278,i32* %i.8
	br label %For_Cond.123

For_End.124:
	 %.middle.279=load %struct.string,%struct.string* %tmp.2
	 store %struct.string %.middle.279,%struct.string* %.retval.p
	br label %Exit.106

Exit.106:
	 %.retval=load %struct.string,%struct.string* %.retval.p
	ret %struct.string %.retval

}

define %struct.string @.func.getString(){
Entry.126:
	%.retval.p=alloca %struct.string
	br label %.block.128

.block.128:
	%tmp.3=alloca %struct.string
	%.middle.280=alloca %struct.string
	call void @.func.string.construct(%struct.string* %.middle.280)
	 %.middle.281=load %struct.string,%struct.string* %.middle.280
	 store %struct.string %.middle.281,%struct.string* %tmp.3
	%a.1=alloca i32*
	%.SizeList.4 = call i32* @_malloc(i32 1)
	%.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	 store i32 300,i32* %.ArrayIdx.4
	%.middle.282 = call i32* @_malloc_toInt(i32* %.SizeList.4,i32 1)
	%.new.4 = bitcast i32* %.middle.282 to i32*
	 store i32* %.new.4,i32** %a.1
	%cnt.1=alloca i32
	 store i32 0,i32* %cnt.1
	br label %While_Cond.129

While_Cond.129:
	br i1 1,label %While_Body.130,label %While_End.131

While_Body.130:
	%c.0=alloca i32
	%.Func_Return.4 = call i32 @scanf_no_collision_please()
	 store i32 %.Func_Return.4,i32* %c.0
	br label %If_Cond.132

If_Cond.132:
	 %.middle.284=load i32,i32* %c.0
	%.middle.283 = icmp sgt i32 %.middle.284,47
	 %.middle.286=load i32,i32* %c.0
	%.middle.285 = icmp slt i32 %.middle.286,58
	%.middle.287 = and i1 %.middle.283,%.middle.285
	 %.middle.289=load i32,i32* %c.0
	%.middle.288 = icmp sgt i32 %.middle.289,64
	 %.middle.291=load i32,i32* %c.0
	%.middle.290 = icmp slt i32 %.middle.291,91
	%.middle.292 = and i1 %.middle.288,%.middle.290
	%.middle.293 = or i1 %.middle.287,%.middle.292
	 %.middle.295=load i32,i32* %c.0
	%.middle.294 = icmp sgt i32 %.middle.295,96
	 %.middle.297=load i32,i32* %c.0
	%.middle.296 = icmp slt i32 %.middle.297,123
	%.middle.298 = and i1 %.middle.294,%.middle.296
	%.middle.299 = or i1 %.middle.293,%.middle.298
	br i1 %.middle.299,label %If_Then.133,label %If_Else.134

If_Then.133:
	 %.middle.300=load i32*,i32** %a.1
	 %.middle.302=load i32,i32* %cnt.1
	%.middle.301 = getelementptr i32,i32* %.middle.300,i32 %.middle.302
	 %.middle.301.0=load i32,i32* %.middle.301
	 %.middle.304=load i32,i32* %c.0
	 store i32 %.middle.304,i32* %.middle.301
	br label %If_End.135

If_Else.134:
	br label %While_End.131

If_End.135:
	 %.middle.306=load i32,i32* %cnt.1
	%.middle.305 = add i32 %.middle.306,1
	 store i32 %.middle.305,i32* %cnt.1
	br label %While_Cond.129

While_End.131:
	%.middle.307 = getelementptr %struct.string,%struct.string* %tmp.3,i32 0,i32 0
	 %.middle.309=load i32,i32* %cnt.1
	 store i32 %.middle.309,i32* %.middle.307
	%.middle.310 = getelementptr %struct.string,%struct.string* %tmp.3,i32 0,i32 1
	 %.middle.311=load i32,i32* %cnt.1
	%.SizeList.5 = call i32* @_malloc(i32 1)
	%.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	 store i32 %.middle.311,i32* %.ArrayIdx.5
	%.middle.312 = call i32* @_malloc_toInt(i32* %.SizeList.5,i32 1)
	%.new.5 = bitcast i32* %.middle.312 to i32*
	 store i32* %.new.5,i32** %.middle.310
	%i.9=alloca i32
	 store i32 0,i32* %i.9
	br label %For_Cond.136

For_Cond.136:
	 %.middle.315=load i32,i32* %i.9
	 %.middle.316=load i32,i32* %cnt.1
	%.middle.314 = icmp slt i32 %.middle.315,%.middle.316
	br i1 %.middle.314,label %For_Body.138,label %For_End.137

For_Body.138:
	%.middle.317 = getelementptr %struct.string,%struct.string* %tmp.3,i32 0,i32 1
	 %.middle.318=load i32*,i32** %.middle.317
	 %.middle.320=load i32,i32* %i.9
	%.middle.319 = getelementptr i32,i32* %.middle.318,i32 %.middle.320
	 %.middle.319.0=load i32,i32* %.middle.319
	 %.middle.321=load i32*,i32** %a.1
	 %.middle.323=load i32,i32* %i.9
	%.middle.322 = getelementptr i32,i32* %.middle.321,i32 %.middle.323
	 %.middle.322.0=load i32,i32* %.middle.322
	 %.middle.325=load i32,i32* %.middle.322
	 store i32 %.middle.325,i32* %.middle.319
	 %.middle.326=load i32,i32* %i.9
	%.middle.327 = add i32 %.middle.326,1
	 store i32 %.middle.327,i32* %i.9
	br label %For_Cond.136

For_End.137:
	 %.middle.328=load %struct.string,%struct.string* %tmp.3
	 store %struct.string %.middle.328,%struct.string* %.retval.p
	br label %Exit.127

Exit.127:
	 %.retval=load %struct.string,%struct.string* %.retval.p
	ret %struct.string %.retval

}

define i32 @main(){
Entry.139:
	%.retval.p=alloca i32
	br label %.block.141

.block.141:
	call void @.init()
	%a.2=alloca %struct.string
	%.TmpString.0=alloca %struct.string
	call void @.func.string.construct(%struct.string* %.TmpString.0)
	%.TmpLen.0 = getelementptr %struct.string,%struct.string* %.TmpString.0,i32 0,i32 0
	 store i32 31,i32* %.TmpLen.0
	%.TmpContent.0 = getelementptr %struct.string,%struct.string* %.TmpString.0,i32 0,i32 1
	%.TmpConstRef.0 = getelementptr [31 x i32],[31 x i32]* @.ConstantString.0,i32 0,i32 0
	 store i32* %.TmpConstRef.0,i32** %.TmpContent.0
	 %.middle.329=load %struct.string,%struct.string* %.TmpString.0
	 store %struct.string %.middle.329,%struct.string* %a.2
	%b.0=alloca %struct.string
	%.TmpString.1=alloca %struct.string
	call void @.func.string.construct(%struct.string* %.TmpString.1)
	%.TmpLen.1 = getelementptr %struct.string,%struct.string* %.TmpString.1,i32 0,i32 0
	 store i32 29,i32* %.TmpLen.1
	%.TmpContent.1 = getelementptr %struct.string,%struct.string* %.TmpString.1,i32 0,i32 1
	%.TmpConstRef.1 = getelementptr [29 x i32],[29 x i32]* @.ConstantString.1,i32 0,i32 0
	 store i32* %.TmpConstRef.1,i32** %.TmpContent.1
	 %.middle.330=load %struct.string,%struct.string* %.TmpString.1
	 store %struct.string %.middle.330,%struct.string* %b.0
	%c.1=alloca %struct.string
	%.TmpString.2=alloca %struct.string
	call void @.func.string.construct(%struct.string* %.TmpString.2)
	%.TmpLen.2 = getelementptr %struct.string,%struct.string* %.TmpString.2,i32 0,i32 0
	 store i32 27,i32* %.TmpLen.2
	%.TmpContent.2 = getelementptr %struct.string,%struct.string* %.TmpString.2,i32 0,i32 1
	%.TmpConstRef.2 = getelementptr [27 x i32],[27 x i32]* @.ConstantString.2,i32 0,i32 0
	 store i32* %.TmpConstRef.2,i32** %.TmpContent.2
	 %.middle.331=load %struct.string,%struct.string* %.TmpString.2
	 store %struct.string %.middle.331,%struct.string* %c.1
	%.middle.333=alloca %struct.string
	%.middle.332 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %c.1,%struct.string* %b.0)
	 store %struct.string %.middle.332,%struct.string* %.middle.333
	%.middle.335=alloca %struct.string
	%.middle.334 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.333,%struct.string* %b.0)
	 store %struct.string %.middle.334,%struct.string* %.middle.335
	%.middle.337=alloca %struct.string
	%.middle.336 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.335,%struct.string* %c.1)
	 store %struct.string %.middle.336,%struct.string* %.middle.337
	%.middle.339=alloca %struct.string
	%.middle.338 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.337,%struct.string* %c.1)
	 store %struct.string %.middle.338,%struct.string* %.middle.339
	%.middle.341=alloca %struct.string
	%.middle.340 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.339,%struct.string* %a.2)
	 store %struct.string %.middle.340,%struct.string* %.middle.341
	%.middle.343=alloca %struct.string
	%.middle.342 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.341,%struct.string* %c.1)
	 store %struct.string %.middle.342,%struct.string* %.middle.343
	%.middle.345=alloca %struct.string
	%.middle.344 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.343,%struct.string* %b.0)
	 store %struct.string %.middle.344,%struct.string* %.middle.345
	%.middle.347=alloca %struct.string
	%.middle.346 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.345,%struct.string* %c.1)
	 store %struct.string %.middle.346,%struct.string* %.middle.347
	%.middle.349=alloca %struct.string
	%.middle.348 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.347,%struct.string* %b.0)
	 store %struct.string %.middle.348,%struct.string* %.middle.349
	call void @.func.print(%struct.string* %.middle.349)
	%.middle.351=alloca %struct.string
	%.middle.350 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %c.1,%struct.string* %c.1)
	 store %struct.string %.middle.350,%struct.string* %.middle.351
	%.middle.353=alloca %struct.string
	%.middle.352 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.351,%struct.string* %a.2)
	 store %struct.string %.middle.352,%struct.string* %.middle.353
	%.middle.355=alloca %struct.string
	%.middle.354 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.353,%struct.string* %a.2)
	 store %struct.string %.middle.354,%struct.string* %.middle.355
	%.middle.357=alloca %struct.string
	%.middle.356 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.355,%struct.string* %a.2)
	 store %struct.string %.middle.356,%struct.string* %.middle.357
	%.middle.359=alloca %struct.string
	%.middle.358 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.357,%struct.string* %c.1)
	 store %struct.string %.middle.358,%struct.string* %.middle.359
	%.middle.361=alloca %struct.string
	%.middle.360 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.359,%struct.string* %c.1)
	 store %struct.string %.middle.360,%struct.string* %.middle.361
	%.middle.363=alloca %struct.string
	%.middle.362 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.361,%struct.string* %b.0)
	 store %struct.string %.middle.362,%struct.string* %.middle.363
	%.middle.365=alloca %struct.string
	%.middle.364 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.363,%struct.string* %b.0)
	 store %struct.string %.middle.364,%struct.string* %.middle.365
	%.middle.367=alloca %struct.string
	%.middle.366 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.365,%struct.string* %b.0)
	 store %struct.string %.middle.366,%struct.string* %.middle.367
	call void @.func.print(%struct.string* %.middle.367)
	%.middle.369=alloca %struct.string
	%.middle.368 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %b.0,%struct.string* %a.2)
	 store %struct.string %.middle.368,%struct.string* %.middle.369
	%.middle.371=alloca %struct.string
	%.middle.370 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.369,%struct.string* %c.1)
	 store %struct.string %.middle.370,%struct.string* %.middle.371
	%.middle.373=alloca %struct.string
	%.middle.372 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.371,%struct.string* %b.0)
	 store %struct.string %.middle.372,%struct.string* %.middle.373
	%.middle.375=alloca %struct.string
	%.middle.374 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.373,%struct.string* %c.1)
	 store %struct.string %.middle.374,%struct.string* %.middle.375
	%.middle.377=alloca %struct.string
	%.middle.376 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.375,%struct.string* %c.1)
	 store %struct.string %.middle.376,%struct.string* %.middle.377
	%.middle.379=alloca %struct.string
	%.middle.378 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.377,%struct.string* %b.0)
	 store %struct.string %.middle.378,%struct.string* %.middle.379
	%.middle.381=alloca %struct.string
	%.middle.380 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.379,%struct.string* %b.0)
	 store %struct.string %.middle.380,%struct.string* %.middle.381
	%.middle.383=alloca %struct.string
	%.middle.382 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.381,%struct.string* %a.2)
	 store %struct.string %.middle.382,%struct.string* %.middle.383
	%.middle.385=alloca %struct.string
	%.middle.384 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.383,%struct.string* %c.1)
	 store %struct.string %.middle.384,%struct.string* %.middle.385
	call void @.func.print(%struct.string* %.middle.385)
	%.middle.387=alloca %struct.string
	%.middle.386 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %b.0,%struct.string* %a.2)
	 store %struct.string %.middle.386,%struct.string* %.middle.387
	%.middle.389=alloca %struct.string
	%.middle.388 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.387,%struct.string* %c.1)
	 store %struct.string %.middle.388,%struct.string* %.middle.389
	%.middle.391=alloca %struct.string
	%.middle.390 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.389,%struct.string* %a.2)
	 store %struct.string %.middle.390,%struct.string* %.middle.391
	%.middle.393=alloca %struct.string
	%.middle.392 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.391,%struct.string* %a.2)
	 store %struct.string %.middle.392,%struct.string* %.middle.393
	%.middle.395=alloca %struct.string
	%.middle.394 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.393,%struct.string* %a.2)
	 store %struct.string %.middle.394,%struct.string* %.middle.395
	%.middle.397=alloca %struct.string
	%.middle.396 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.395,%struct.string* %b.0)
	 store %struct.string %.middle.396,%struct.string* %.middle.397
	%.middle.399=alloca %struct.string
	%.middle.398 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.397,%struct.string* %b.0)
	 store %struct.string %.middle.398,%struct.string* %.middle.399
	%.middle.401=alloca %struct.string
	%.middle.400 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.399,%struct.string* %b.0)
	 store %struct.string %.middle.400,%struct.string* %.middle.401
	%.middle.403=alloca %struct.string
	%.middle.402 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.401,%struct.string* %c.1)
	 store %struct.string %.middle.402,%struct.string* %.middle.403
	call void @.func.print(%struct.string* %.middle.403)
	%.middle.405=alloca %struct.string
	%.middle.404 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %b.0,%struct.string* %a.2)
	 store %struct.string %.middle.404,%struct.string* %.middle.405
	%.middle.407=alloca %struct.string
	%.middle.406 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.405,%struct.string* %b.0)
	 store %struct.string %.middle.406,%struct.string* %.middle.407
	%.middle.409=alloca %struct.string
	%.middle.408 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.407,%struct.string* %a.2)
	 store %struct.string %.middle.408,%struct.string* %.middle.409
	%.middle.411=alloca %struct.string
	%.middle.410 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.409,%struct.string* %c.1)
	 store %struct.string %.middle.410,%struct.string* %.middle.411
	%.middle.413=alloca %struct.string
	%.middle.412 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.411,%struct.string* %c.1)
	 store %struct.string %.middle.412,%struct.string* %.middle.413
	%.middle.415=alloca %struct.string
	%.middle.414 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.413,%struct.string* %c.1)
	 store %struct.string %.middle.414,%struct.string* %.middle.415
	%.middle.417=alloca %struct.string
	%.middle.416 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.415,%struct.string* %b.0)
	 store %struct.string %.middle.416,%struct.string* %.middle.417
	%.middle.419=alloca %struct.string
	%.middle.418 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.417,%struct.string* %c.1)
	 store %struct.string %.middle.418,%struct.string* %.middle.419
	%.middle.421=alloca %struct.string
	%.middle.420 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.419,%struct.string* %a.2)
	 store %struct.string %.middle.420,%struct.string* %.middle.421
	call void @.func.print(%struct.string* %.middle.421)
	%.middle.423=alloca %struct.string
	%.middle.422 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %a.2,%struct.string* %a.2)
	 store %struct.string %.middle.422,%struct.string* %.middle.423
	%.middle.425=alloca %struct.string
	%.middle.424 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.423,%struct.string* %c.1)
	 store %struct.string %.middle.424,%struct.string* %.middle.425
	%.middle.427=alloca %struct.string
	%.middle.426 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.425,%struct.string* %c.1)
	 store %struct.string %.middle.426,%struct.string* %.middle.427
	%.middle.429=alloca %struct.string
	%.middle.428 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.427,%struct.string* %a.2)
	 store %struct.string %.middle.428,%struct.string* %.middle.429
	%.middle.431=alloca %struct.string
	%.middle.430 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.429,%struct.string* %c.1)
	 store %struct.string %.middle.430,%struct.string* %.middle.431
	%.middle.433=alloca %struct.string
	%.middle.432 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.431,%struct.string* %b.0)
	 store %struct.string %.middle.432,%struct.string* %.middle.433
	%.middle.435=alloca %struct.string
	%.middle.434 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.433,%struct.string* %c.1)
	 store %struct.string %.middle.434,%struct.string* %.middle.435
	%.middle.437=alloca %struct.string
	%.middle.436 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.435,%struct.string* %c.1)
	 store %struct.string %.middle.436,%struct.string* %.middle.437
	%.middle.439=alloca %struct.string
	%.middle.438 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.437,%struct.string* %a.2)
	 store %struct.string %.middle.438,%struct.string* %.middle.439
	call void @.func.print(%struct.string* %.middle.439)
	%.middle.441=alloca %struct.string
	%.middle.440 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %b.0,%struct.string* %b.0)
	 store %struct.string %.middle.440,%struct.string* %.middle.441
	%.middle.443=alloca %struct.string
	%.middle.442 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.441,%struct.string* %b.0)
	 store %struct.string %.middle.442,%struct.string* %.middle.443
	%.middle.445=alloca %struct.string
	%.middle.444 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.443,%struct.string* %b.0)
	 store %struct.string %.middle.444,%struct.string* %.middle.445
	%.middle.447=alloca %struct.string
	%.middle.446 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.445,%struct.string* %c.1)
	 store %struct.string %.middle.446,%struct.string* %.middle.447
	%.middle.449=alloca %struct.string
	%.middle.448 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.447,%struct.string* %a.2)
	 store %struct.string %.middle.448,%struct.string* %.middle.449
	%.middle.451=alloca %struct.string
	%.middle.450 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.449,%struct.string* %c.1)
	 store %struct.string %.middle.450,%struct.string* %.middle.451
	%.middle.453=alloca %struct.string
	%.middle.452 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.451,%struct.string* %b.0)
	 store %struct.string %.middle.452,%struct.string* %.middle.453
	%.middle.455=alloca %struct.string
	%.middle.454 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.453,%struct.string* %a.2)
	 store %struct.string %.middle.454,%struct.string* %.middle.455
	%.middle.457=alloca %struct.string
	%.middle.456 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.455,%struct.string* %a.2)
	 store %struct.string %.middle.456,%struct.string* %.middle.457
	call void @.func.print(%struct.string* %.middle.457)
	%.middle.459=alloca %struct.string
	%.middle.458 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %a.2,%struct.string* %a.2)
	 store %struct.string %.middle.458,%struct.string* %.middle.459
	%.middle.461=alloca %struct.string
	%.middle.460 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.459,%struct.string* %c.1)
	 store %struct.string %.middle.460,%struct.string* %.middle.461
	%.middle.463=alloca %struct.string
	%.middle.462 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.461,%struct.string* %b.0)
	 store %struct.string %.middle.462,%struct.string* %.middle.463
	%.middle.465=alloca %struct.string
	%.middle.464 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.463,%struct.string* %a.2)
	 store %struct.string %.middle.464,%struct.string* %.middle.465
	%.middle.467=alloca %struct.string
	%.middle.466 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.465,%struct.string* %b.0)
	 store %struct.string %.middle.466,%struct.string* %.middle.467
	%.middle.469=alloca %struct.string
	%.middle.468 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.467,%struct.string* %c.1)
	 store %struct.string %.middle.468,%struct.string* %.middle.469
	%.middle.471=alloca %struct.string
	%.middle.470 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.469,%struct.string* %c.1)
	 store %struct.string %.middle.470,%struct.string* %.middle.471
	%.middle.473=alloca %struct.string
	%.middle.472 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.471,%struct.string* %b.0)
	 store %struct.string %.middle.472,%struct.string* %.middle.473
	%.middle.475=alloca %struct.string
	%.middle.474 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.473,%struct.string* %b.0)
	 store %struct.string %.middle.474,%struct.string* %.middle.475
	call void @.func.print(%struct.string* %.middle.475)
	%.middle.477=alloca %struct.string
	%.middle.476 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %c.1,%struct.string* %b.0)
	 store %struct.string %.middle.476,%struct.string* %.middle.477
	%.middle.479=alloca %struct.string
	%.middle.478 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.477,%struct.string* %a.2)
	 store %struct.string %.middle.478,%struct.string* %.middle.479
	%.middle.481=alloca %struct.string
	%.middle.480 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.479,%struct.string* %a.2)
	 store %struct.string %.middle.480,%struct.string* %.middle.481
	%.middle.483=alloca %struct.string
	%.middle.482 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.481,%struct.string* %c.1)
	 store %struct.string %.middle.482,%struct.string* %.middle.483
	%.middle.485=alloca %struct.string
	%.middle.484 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.483,%struct.string* %b.0)
	 store %struct.string %.middle.484,%struct.string* %.middle.485
	%.middle.487=alloca %struct.string
	%.middle.486 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.485,%struct.string* %a.2)
	 store %struct.string %.middle.486,%struct.string* %.middle.487
	%.middle.489=alloca %struct.string
	%.middle.488 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.487,%struct.string* %a.2)
	 store %struct.string %.middle.488,%struct.string* %.middle.489
	%.middle.491=alloca %struct.string
	%.middle.490 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.489,%struct.string* %c.1)
	 store %struct.string %.middle.490,%struct.string* %.middle.491
	%.middle.493=alloca %struct.string
	%.middle.492 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.491,%struct.string* %b.0)
	 store %struct.string %.middle.492,%struct.string* %.middle.493
	call void @.func.print(%struct.string* %.middle.493)
	%.middle.495=alloca %struct.string
	%.middle.494 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %a.2,%struct.string* %c.1)
	 store %struct.string %.middle.494,%struct.string* %.middle.495
	%.middle.497=alloca %struct.string
	%.middle.496 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.495,%struct.string* %b.0)
	 store %struct.string %.middle.496,%struct.string* %.middle.497
	%.middle.499=alloca %struct.string
	%.middle.498 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.497,%struct.string* %b.0)
	 store %struct.string %.middle.498,%struct.string* %.middle.499
	%.middle.501=alloca %struct.string
	%.middle.500 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.499,%struct.string* %b.0)
	 store %struct.string %.middle.500,%struct.string* %.middle.501
	%.middle.503=alloca %struct.string
	%.middle.502 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.501,%struct.string* %c.1)
	 store %struct.string %.middle.502,%struct.string* %.middle.503
	%.middle.505=alloca %struct.string
	%.middle.504 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.503,%struct.string* %c.1)
	 store %struct.string %.middle.504,%struct.string* %.middle.505
	%.middle.507=alloca %struct.string
	%.middle.506 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.505,%struct.string* %c.1)
	 store %struct.string %.middle.506,%struct.string* %.middle.507
	%.middle.509=alloca %struct.string
	%.middle.508 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.507,%struct.string* %b.0)
	 store %struct.string %.middle.508,%struct.string* %.middle.509
	%.middle.511=alloca %struct.string
	%.middle.510 = call %struct.string @.func.Add_String_Together_No_Collision_Please(%struct.string* %.middle.509,%struct.string* %c.1)
	 store %struct.string %.middle.510,%struct.string* %.middle.511
	call void @.func.print(%struct.string* %.middle.511)
	 store i32 0,i32* %.retval.p
	br label %Exit.140

Exit.140:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

