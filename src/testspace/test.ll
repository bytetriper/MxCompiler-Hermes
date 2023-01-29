%struct.string =type {i32 ,i32* }
@.ConstantString.0 = private constant [3 x i32] [i32 97,i32 97,i32 97]
@.ConstantString.1 = private constant [5 x i32] [i32 98,i32 98,i32 98,i32 98,i32 98]
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

define void @.func.string.construct(%struct.string* %This){
Entry.4:
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	br label %.block.6

.block.6:
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
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	%.retval.p=alloca i32
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
	br i1 %.middle.1,label %binary_and_rv.16,label %binary_end.17

binary_and_rv.16:
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
	br label %binary_end.17

binary_end.17:
	 %.ToBool.0=load i32,i32* %RV.0.0
	%.middle.10 = trunc i32 %.ToBool.0 to i1
	%.middle.9 = and i1 %.middle.7,%.middle.10
	 store i32 0,i32* %RV.1.0
	br i1 %.middle.9,label %binary_and_rv.18,label %binary_end.19

binary_and_rv.18:
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
	br label %binary_end.19

binary_end.19:
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
Entry.20:
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	%pos_addr=alloca i32
	 store i32 %pos,i32* %pos_addr
	%.retval.p=alloca i32
	br label %.block.22

.block.22:
	 %This_addr.5=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.3 = getelementptr %struct.string,%struct.string* %This_addr.5,i32 0,i32 1
	 %.middle.31=load i32*,i32** %This_addr.content.3
	 %.middle.33=load i32,i32* %pos_addr
	%.middle.32 = getelementptr i32,i32* %.middle.31,i32 %.middle.33
	 %.middle.32.0=load i32,i32* %.middle.32
	 %.middle.34=load i32,i32* %.middle.32
	 store i32 %.middle.34,i32* %.retval.p
	br label %Exit.21

Exit.21:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

define %struct.string* @.func.string.substring(%struct.string* %This,i32 %left,i32 %right){
Entry.23:
	%This_addr=alloca %struct.string*
	 store %struct.string* %This,%struct.string** %This_addr
	%left_addr=alloca i32
	 store i32 %left,i32* %left_addr
	%right_addr=alloca i32
	 store i32 %right,i32* %right_addr
	%.retval.p=alloca %struct.string*
	%tmp.0=alloca %struct.string*
	%tmplen.0 = call i32* @_malloc(i32 1)
	%i.1 = call i32* @_malloc(i32 1)
	br label %.block.25

.block.25:
	%.middle.36 = call i32* @_malloc(i32 2)
	%.middle.35 = bitcast i32* %.middle.36 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.35)
	 store %struct.string* %.middle.35,%struct.string** %tmp.0
	 %.middle.38=load i32,i32* %right_addr
	 %.middle.39=load i32,i32* %left_addr
	%.middle.37 = sub i32 %.middle.38,%.middle.39
	 store i32 %.middle.37,i32* %tmplen.0
	 %tmp.0.0=load %struct.string*,%struct.string** %tmp.0
	%.middle.40 = getelementptr %struct.string,%struct.string* %tmp.0.0,i32 0,i32 1
	 %.middle.41=load i32,i32* %tmplen.0
	%.SizeList.0 = call i32* @_malloc(i32 8)
	%.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0,i32 0
	 store i32 %.middle.41,i32* %.ArrayIdx.0
	%.middle.42 = call i32* @_malloc_toInt(i32* %.SizeList.0,i32 1)
	%.new.0 = bitcast i32* %.middle.42 to i32*
	 store i32* %.new.0,i32** %.middle.40
	 %tmp.0.1=load %struct.string*,%struct.string** %tmp.0
	%.middle.44 = getelementptr %struct.string,%struct.string* %tmp.0.1,i32 0,i32 0
	 %.middle.46=load i32,i32* %tmplen.0
	 store i32 %.middle.46,i32* %.middle.44
	 store i32 0,i32* %i.1
	br label %For_Cond.26

For_Cond.26:
	 %.middle.48=load i32,i32* %i.1
	 %.middle.49=load i32,i32* %tmplen.0
	%.middle.47 = icmp slt i32 %.middle.48,%.middle.49
	br i1 %.middle.47,label %For_Body.28,label %For_End.27

For_Body.28:
	 %tmp.0.2=load %struct.string*,%struct.string** %tmp.0
	%.middle.50 = getelementptr %struct.string,%struct.string* %tmp.0.2,i32 0,i32 1
	 %.middle.51=load i32*,i32** %.middle.50
	 %.middle.53=load i32,i32* %i.1
	%.middle.52 = getelementptr i32,i32* %.middle.51,i32 %.middle.53
	 %.middle.52.0=load i32,i32* %.middle.52
	 %This_addr.6=load %struct.string*,%struct.string** %This_addr
	%This_addr.content.4 = getelementptr %struct.string,%struct.string* %This_addr.6,i32 0,i32 1
	 %.middle.54=load i32*,i32** %This_addr.content.4
	 %.middle.56=load i32,i32* %left_addr
	 %.middle.57=load i32,i32* %i.1
	%.middle.55 = add i32 %.middle.56,%.middle.57
	%.middle.58 = getelementptr i32,i32* %.middle.54,i32 %.middle.55
	 %.middle.58.0=load i32,i32* %.middle.58
	 %.middle.60=load i32,i32* %.middle.58
	 store i32 %.middle.60,i32* %.middle.52
	 %.middle.61=load i32,i32* %i.1
	 %.middle.63=load i32,i32* %i.1
	%.middle.62 = add i32 %.middle.63,1
	 store i32 %.middle.62,i32* %i.1
	br label %For_Cond.26

For_End.27:
	 %.middle.64=load %struct.string*,%struct.string** %tmp.0
	 store %struct.string* %.middle.64,%struct.string** %.retval.p
	br label %Exit.24

Exit.24:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define %struct.string* @.func.Add_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.29:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca %struct.string*
	%tmp.1=alloca %struct.string*
	%tmplen.1 = call i32* @_malloc(i32 1)
	%alen.0 = call i32* @_malloc(i32 1)
	%blen.0 = call i32* @_malloc(i32 1)
	%i.2 = call i32* @_malloc(i32 1)
	%i.3 = call i32* @_malloc(i32 1)
	br label %.block.31

.block.31:
	%.middle.66 = call i32* @_malloc(i32 2)
	%.middle.65 = bitcast i32* %.middle.66 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.65)
	 store %struct.string* %.middle.65,%struct.string** %tmp.1
	 %a_addr.0=load %struct.string*,%struct.string** %a_addr
	%.middle.67 = getelementptr %struct.string,%struct.string* %a_addr.0,i32 0,i32 0
	 %b_addr.0=load %struct.string*,%struct.string** %b_addr
	%.middle.68 = getelementptr %struct.string,%struct.string* %b_addr.0,i32 0,i32 0
	 %.middle.70=load i32,i32* %.middle.67
	 %.middle.71=load i32,i32* %.middle.68
	%.middle.69 = add i32 %.middle.70,%.middle.71
	 store i32 %.middle.69,i32* %tmplen.1
	 %a_addr.1=load %struct.string*,%struct.string** %a_addr
	%.middle.72 = getelementptr %struct.string,%struct.string* %a_addr.1,i32 0,i32 0
	 %.middle.73=load i32,i32* %.middle.72
	 store i32 %.middle.73,i32* %alen.0
	 %b_addr.1=load %struct.string*,%struct.string** %b_addr
	%.middle.74 = getelementptr %struct.string,%struct.string* %b_addr.1,i32 0,i32 0
	 %.middle.75=load i32,i32* %.middle.74
	 store i32 %.middle.75,i32* %blen.0
	 %tmp.1.0=load %struct.string*,%struct.string** %tmp.1
	%.middle.76 = getelementptr %struct.string,%struct.string* %tmp.1.0,i32 0,i32 0
	 %.middle.78=load i32,i32* %tmplen.1
	 store i32 %.middle.78,i32* %.middle.76
	 %tmp.1.1=load %struct.string*,%struct.string** %tmp.1
	%.middle.79 = getelementptr %struct.string,%struct.string* %tmp.1.1,i32 0,i32 1
	 %.middle.80=load i32,i32* %tmplen.1
	%.SizeList.1 = call i32* @_malloc(i32 8)
	%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.1,i32 0
	 store i32 %.middle.80,i32* %.ArrayIdx.1
	%.middle.81 = call i32* @_malloc_toInt(i32* %.SizeList.1,i32 1)
	%.new.1 = bitcast i32* %.middle.81 to i32*
	 store i32* %.new.1,i32** %.middle.79
	 store i32 0,i32* %i.2
	br label %For_Cond.32

For_Cond.32:
	 %.middle.84=load i32,i32* %i.2
	 %.middle.85=load i32,i32* %alen.0
	%.middle.83 = icmp slt i32 %.middle.84,%.middle.85
	br i1 %.middle.83,label %For_Body.34,label %For_End.33

For_Body.34:
	 %tmp.1.2=load %struct.string*,%struct.string** %tmp.1
	%.middle.86 = getelementptr %struct.string,%struct.string* %tmp.1.2,i32 0,i32 1
	 %.middle.87=load i32*,i32** %.middle.86
	 %.middle.89=load i32,i32* %i.2
	%.middle.88 = getelementptr i32,i32* %.middle.87,i32 %.middle.89
	 %.middle.88.0=load i32,i32* %.middle.88
	 %a_addr.2=load %struct.string*,%struct.string** %a_addr
	%.middle.90 = getelementptr %struct.string,%struct.string* %a_addr.2,i32 0,i32 1
	 %.middle.91=load i32*,i32** %.middle.90
	 %.middle.93=load i32,i32* %i.2
	%.middle.92 = getelementptr i32,i32* %.middle.91,i32 %.middle.93
	 %.middle.92.0=load i32,i32* %.middle.92
	 %.middle.95=load i32,i32* %.middle.92
	 store i32 %.middle.95,i32* %.middle.88
	 %.middle.96=load i32,i32* %i.2
	%.middle.97 = add i32 %.middle.96,1
	 store i32 %.middle.97,i32* %i.2
	br label %For_Cond.32

For_End.33:
	 store i32 0,i32* %i.3
	br label %For_Cond.35

For_Cond.35:
	 %.middle.99=load i32,i32* %i.3
	 %.middle.100=load i32,i32* %blen.0
	%.middle.98 = icmp slt i32 %.middle.99,%.middle.100
	br i1 %.middle.98,label %For_Body.37,label %For_End.36

For_Body.37:
	 %tmp.1.3=load %struct.string*,%struct.string** %tmp.1
	%.middle.101 = getelementptr %struct.string,%struct.string* %tmp.1.3,i32 0,i32 1
	 %.middle.102=load i32*,i32** %.middle.101
	 %.middle.104=load i32,i32* %i.3
	 %.middle.105=load i32,i32* %alen.0
	%.middle.103 = add i32 %.middle.104,%.middle.105
	%.middle.106 = getelementptr i32,i32* %.middle.102,i32 %.middle.103
	 %.middle.106.0=load i32,i32* %.middle.106
	 %b_addr.2=load %struct.string*,%struct.string** %b_addr
	%.middle.107 = getelementptr %struct.string,%struct.string* %b_addr.2,i32 0,i32 1
	 %.middle.108=load i32*,i32** %.middle.107
	 %.middle.110=load i32,i32* %i.3
	%.middle.109 = getelementptr i32,i32* %.middle.108,i32 %.middle.110
	 %.middle.109.0=load i32,i32* %.middle.109
	 %.middle.112=load i32,i32* %.middle.109
	 store i32 %.middle.112,i32* %.middle.106
	 %.middle.113=load i32,i32* %i.3
	%.middle.114 = add i32 %.middle.113,1
	 store i32 %.middle.114,i32* %i.3
	br label %For_Cond.35

For_End.36:
	 %.middle.115=load %struct.string*,%struct.string** %tmp.1
	 store %struct.string* %.middle.115,%struct.string** %.retval.p
	br label %Exit.30

Exit.30:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.38:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%len.0 = call i32* @_malloc(i32 1)
	%i.4 = call i32* @_malloc(i32 1)
	br label %.block.40

.block.40:
	 %b_addr.3=load %struct.string*,%struct.string** %b_addr
	%.middle.116 = getelementptr %struct.string,%struct.string* %b_addr.3,i32 0,i32 0
	 %.middle.117=load i32,i32* %.middle.116
	 store i32 %.middle.117,i32* %len.0
	br label %If_Cond.41

If_Cond.41:
	 %a_addr.3=load %struct.string*,%struct.string** %a_addr
	%.middle.118 = getelementptr %struct.string,%struct.string* %a_addr.3,i32 0,i32 0
	 %b_addr.4=load %struct.string*,%struct.string** %b_addr
	%.middle.119 = getelementptr %struct.string,%struct.string* %b_addr.4,i32 0,i32 0
	 %.middle.121=load i32,i32* %.middle.118
	 %.middle.122=load i32,i32* %.middle.119
	%.middle.120 = icmp slt i32 %.middle.121,%.middle.122
	br i1 %.middle.120,label %If_Then.42,label %If_Else.43

If_Then.42:
	 %a_addr.4=load %struct.string*,%struct.string** %a_addr
	%.middle.123 = getelementptr %struct.string,%struct.string* %a_addr.4,i32 0,i32 0
	 %.middle.125=load i32,i32* %.middle.123
	 store i32 %.middle.125,i32* %len.0
	br label %If_End.44

If_Else.43:
	br label %If_End.44

If_End.44:
	 store i32 0,i32* %i.4
	br label %For_Cond.45

For_Cond.45:
	 %.middle.127=load i32,i32* %i.4
	 %.middle.128=load i32,i32* %len.0
	%.middle.126 = icmp slt i32 %.middle.127,%.middle.128
	br i1 %.middle.126,label %For_Body.47,label %For_End.46

For_Body.47:
	br label %If_Cond.48

If_Cond.48:
	 %a_addr.5=load %struct.string*,%struct.string** %a_addr
	%.middle.129 = getelementptr %struct.string,%struct.string* %a_addr.5,i32 0,i32 1
	 %.middle.130=load i32*,i32** %.middle.129
	 %.middle.132=load i32,i32* %i.4
	%.middle.131 = getelementptr i32,i32* %.middle.130,i32 %.middle.132
	 %.middle.131.0=load i32,i32* %.middle.131
	 %b_addr.5=load %struct.string*,%struct.string** %b_addr
	%.middle.133 = getelementptr %struct.string,%struct.string* %b_addr.5,i32 0,i32 1
	 %.middle.134=load i32*,i32** %.middle.133
	 %.middle.136=load i32,i32* %i.4
	%.middle.135 = getelementptr i32,i32* %.middle.134,i32 %.middle.136
	 %.middle.135.0=load i32,i32* %.middle.135
	 %.middle.138=load i32,i32* %.middle.131
	 %.middle.139=load i32,i32* %.middle.135
	%.middle.137 = icmp slt i32 %.middle.138,%.middle.139
	br i1 %.middle.137,label %If_Then.49,label %If_Else.50

If_Then.49:
	%.FromBool.2 = zext i1 1 to i32
	 store i32 %.FromBool.2,i32* %.retval.p
	br label %Exit.39

If_Else.50:
	br label %If_End.51

If_End.51:
	br label %If_Cond.52

If_Cond.52:
	 %a_addr.6=load %struct.string*,%struct.string** %a_addr
	%.middle.140 = getelementptr %struct.string,%struct.string* %a_addr.6,i32 0,i32 1
	 %.middle.141=load i32*,i32** %.middle.140
	 %.middle.143=load i32,i32* %i.4
	%.middle.142 = getelementptr i32,i32* %.middle.141,i32 %.middle.143
	 %.middle.142.0=load i32,i32* %.middle.142
	 %b_addr.6=load %struct.string*,%struct.string** %b_addr
	%.middle.144 = getelementptr %struct.string,%struct.string* %b_addr.6,i32 0,i32 1
	 %.middle.145=load i32*,i32** %.middle.144
	 %.middle.147=load i32,i32* %i.4
	%.middle.146 = getelementptr i32,i32* %.middle.145,i32 %.middle.147
	 %.middle.146.0=load i32,i32* %.middle.146
	 %.middle.149=load i32,i32* %.middle.142
	 %.middle.150=load i32,i32* %.middle.146
	%.middle.148 = icmp sgt i32 %.middle.149,%.middle.150
	br i1 %.middle.148,label %If_Then.53,label %If_Else.54

If_Then.53:
	%.FromBool.3 = zext i1 0 to i32
	 store i32 %.FromBool.3,i32* %.retval.p
	br label %Exit.39

If_Else.54:
	br label %If_End.55

If_End.55:
	 %.middle.151=load i32,i32* %i.4
	%.middle.152 = add i32 %.middle.151,1
	 store i32 %.middle.152,i32* %i.4
	br label %For_Cond.45

For_End.46:
	br label %If_Cond.56

If_Cond.56:
	 %a_addr.7=load %struct.string*,%struct.string** %a_addr
	%.middle.153 = getelementptr %struct.string,%struct.string* %a_addr.7,i32 0,i32 0
	 %b_addr.7=load %struct.string*,%struct.string** %b_addr
	%.middle.154 = getelementptr %struct.string,%struct.string* %b_addr.7,i32 0,i32 0
	 %.middle.156=load i32,i32* %.middle.153
	 %.middle.157=load i32,i32* %.middle.154
	%.middle.155 = icmp sgt i32 %.middle.156,%.middle.157
	br i1 %.middle.155,label %If_Then.57,label %If_Else.58

If_Then.57:
	%.FromBool.4 = zext i1 1 to i32
	 store i32 %.FromBool.4,i32* %.retval.p
	br label %Exit.39

If_Else.58:
	br label %If_End.59

If_End.59:
	%.FromBool.5 = zext i1 0 to i32
	 store i32 %.FromBool.5,i32* %.retval.p
	br label %Exit.39

Exit.39:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.60:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%len.1 = call i32* @_malloc(i32 1)
	%i.5 = call i32* @_malloc(i32 1)
	br label %.block.62

.block.62:
	br label %If_Cond.63

If_Cond.63:
	 %a_addr.8=load %struct.string*,%struct.string** %a_addr
	%.middle.158 = getelementptr %struct.string,%struct.string* %a_addr.8,i32 0,i32 0
	 %b_addr.8=load %struct.string*,%struct.string** %b_addr
	%.middle.159 = getelementptr %struct.string,%struct.string* %b_addr.8,i32 0,i32 0
	 %.middle.161=load i32,i32* %.middle.158
	 %.middle.162=load i32,i32* %.middle.159
	%.middle.160 = icmp ne i32 %.middle.161,%.middle.162
	br i1 %.middle.160,label %If_Then.64,label %If_Else.65

If_Then.64:
	%.FromBool.6 = zext i1 0 to i32
	 store i32 %.FromBool.6,i32* %.retval.p
	br label %Exit.61

If_Else.65:
	br label %If_End.66

If_End.66:
	 %a_addr.9=load %struct.string*,%struct.string** %a_addr
	%.middle.163 = getelementptr %struct.string,%struct.string* %a_addr.9,i32 0,i32 0
	 %.middle.164=load i32,i32* %.middle.163
	 store i32 %.middle.164,i32* %len.1
	 store i32 0,i32* %i.5
	br label %For_Cond.67

For_Cond.67:
	 %.middle.166=load i32,i32* %i.5
	 %.middle.167=load i32,i32* %len.1
	%.middle.165 = icmp slt i32 %.middle.166,%.middle.167
	br i1 %.middle.165,label %For_Body.69,label %For_End.68

For_Body.69:
	br label %If_Cond.70

If_Cond.70:
	 %a_addr.10=load %struct.string*,%struct.string** %a_addr
	%.middle.168 = getelementptr %struct.string,%struct.string* %a_addr.10,i32 0,i32 1
	 %.middle.169=load i32*,i32** %.middle.168
	 %.middle.171=load i32,i32* %i.5
	%.middle.170 = getelementptr i32,i32* %.middle.169,i32 %.middle.171
	 %.middle.170.0=load i32,i32* %.middle.170
	 %b_addr.9=load %struct.string*,%struct.string** %b_addr
	%.middle.172 = getelementptr %struct.string,%struct.string* %b_addr.9,i32 0,i32 1
	 %.middle.173=load i32*,i32** %.middle.172
	 %.middle.175=load i32,i32* %i.5
	%.middle.174 = getelementptr i32,i32* %.middle.173,i32 %.middle.175
	 %.middle.174.0=load i32,i32* %.middle.174
	 %.middle.177=load i32,i32* %.middle.170
	 %.middle.178=load i32,i32* %.middle.174
	%.middle.176 = icmp ne i32 %.middle.177,%.middle.178
	br i1 %.middle.176,label %If_Then.71,label %If_Else.72

If_Then.71:
	%.FromBool.7 = zext i1 0 to i32
	 store i32 %.FromBool.7,i32* %.retval.p
	br label %Exit.61

If_Else.72:
	br label %If_End.73

If_End.73:
	 %.middle.179=load i32,i32* %i.5
	%.middle.180 = add i32 %.middle.179,1
	 store i32 %.middle.180,i32* %i.5
	br label %For_Cond.67

For_End.68:
	%.FromBool.8 = zext i1 1 to i32
	 store i32 %.FromBool.8,i32* %.retval.p
	br label %Exit.61

Exit.61:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Not_Equal_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.74:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%len.2 = call i32* @_malloc(i32 1)
	%i.6 = call i32* @_malloc(i32 1)
	br label %.block.76

.block.76:
	br label %If_Cond.77

If_Cond.77:
	 %a_addr.11=load %struct.string*,%struct.string** %a_addr
	%.middle.181 = getelementptr %struct.string,%struct.string* %a_addr.11,i32 0,i32 0
	 %b_addr.10=load %struct.string*,%struct.string** %b_addr
	%.middle.182 = getelementptr %struct.string,%struct.string* %b_addr.10,i32 0,i32 0
	 %.middle.184=load i32,i32* %.middle.181
	 %.middle.185=load i32,i32* %.middle.182
	%.middle.183 = icmp ne i32 %.middle.184,%.middle.185
	br i1 %.middle.183,label %If_Then.78,label %If_Else.79

If_Then.78:
	%.FromBool.9 = zext i1 1 to i32
	 store i32 %.FromBool.9,i32* %.retval.p
	br label %Exit.75

If_Else.79:
	br label %If_End.80

If_End.80:
	 %a_addr.12=load %struct.string*,%struct.string** %a_addr
	%.middle.186 = getelementptr %struct.string,%struct.string* %a_addr.12,i32 0,i32 0
	 %.middle.187=load i32,i32* %.middle.186
	 store i32 %.middle.187,i32* %len.2
	 store i32 0,i32* %i.6
	br label %For_Cond.81

For_Cond.81:
	 %.middle.189=load i32,i32* %i.6
	 %.middle.190=load i32,i32* %len.2
	%.middle.188 = icmp slt i32 %.middle.189,%.middle.190
	br i1 %.middle.188,label %For_Body.83,label %For_End.82

For_Body.83:
	br label %If_Cond.84

If_Cond.84:
	 %a_addr.13=load %struct.string*,%struct.string** %a_addr
	%.middle.191 = getelementptr %struct.string,%struct.string* %a_addr.13,i32 0,i32 1
	 %.middle.192=load i32*,i32** %.middle.191
	 %.middle.194=load i32,i32* %i.6
	%.middle.193 = getelementptr i32,i32* %.middle.192,i32 %.middle.194
	 %.middle.193.0=load i32,i32* %.middle.193
	 %b_addr.11=load %struct.string*,%struct.string** %b_addr
	%.middle.195 = getelementptr %struct.string,%struct.string* %b_addr.11,i32 0,i32 1
	 %.middle.196=load i32*,i32** %.middle.195
	 %.middle.198=load i32,i32* %i.6
	%.middle.197 = getelementptr i32,i32* %.middle.196,i32 %.middle.198
	 %.middle.197.0=load i32,i32* %.middle.197
	 %.middle.200=load i32,i32* %.middle.193
	 %.middle.201=load i32,i32* %.middle.197
	%.middle.199 = icmp ne i32 %.middle.200,%.middle.201
	br i1 %.middle.199,label %If_Then.85,label %If_Else.86

If_Then.85:
	%.FromBool.10 = zext i1 1 to i32
	 store i32 %.FromBool.10,i32* %.retval.p
	br label %Exit.75

If_Else.86:
	br label %If_End.87

If_End.87:
	 %.middle.202=load i32,i32* %i.6
	%.middle.203 = add i32 %.middle.202,1
	 store i32 %.middle.203,i32* %i.6
	br label %For_Cond.81

For_End.82:
	%.FromBool.11 = zext i1 0 to i32
	 store i32 %.FromBool.11,i32* %.retval.p
	br label %Exit.75

Exit.75:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.88:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%.middle.207=alloca i32
	%RV.2.0 = call i32* @_malloc(i32 1)
	%.middle.212=alloca i32
	br label %.block.90

.block.90:
	 %.middle.204=load %struct.string*,%struct.string** %a_addr
	 %.middle.205=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.0 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.204,%struct.string* %.middle.205)
	%.FromBool.12 = zext i1 %.Func_Return.0 to i32
	 store i32 %.FromBool.12,i32* %.middle.207
	 store i32 1,i32* %RV.2.0
	 %.ToBool.2=load i32,i32* %.middle.207
	%.middle.208 = trunc i32 %.ToBool.2 to i1
	br i1 %.middle.208,label %binary_end.92,label %binary_or_rv.91

binary_or_rv.91:
	 %.middle.209=load %struct.string*,%struct.string** %a_addr
	 %.middle.210=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.1 = call i1 @.func.Equal_String_Together_No_Collision_Please(%struct.string* %.middle.209,%struct.string* %.middle.210)
	%.FromBool.13 = zext i1 %.Func_Return.1 to i32
	 store i32 %.FromBool.13,i32* %.middle.212
	 %.ToBool.3=load i32,i32* %.middle.212
	%.middle.213 = trunc i32 %.ToBool.3 to i1
	%.FromBool.14 = zext i1 %.middle.213 to i32
	 store i32 %.FromBool.14,i32* %RV.2.0
	br label %binary_end.92

binary_end.92:
	 %.ToBool.4=load i32,i32* %.middle.212
	%.middle.215 = trunc i32 %.ToBool.4 to i1
	 %.ToBool.5=load i32,i32* %RV.2.0
	%.middle.216 = trunc i32 %.ToBool.5 to i1
	%.middle.214 = or i1 %.middle.215,%.middle.216
	%.FromBool.15 = zext i1 %.middle.214 to i32
	 store i32 %.FromBool.15,i32* %.retval.p
	br label %Exit.89

Exit.89:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.Greater_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.93:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%.middle.220=alloca i32
	br label %.block.95

.block.95:
	 %.middle.217=load %struct.string*,%struct.string** %a_addr
	 %.middle.218=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.2 = call i1 @.func.LE_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.217,%struct.string* %.middle.218)
	%.FromBool.16 = zext i1 %.Func_Return.2 to i32
	 store i32 %.FromBool.16,i32* %.middle.220
	 %.ToBool.6=load i32,i32* %.middle.220
	%.middle.222 = trunc i32 %.ToBool.6 to i1
	%.middle.221 = xor i1 %.middle.222,1
	%.FromBool.17 = zext i1 %.middle.221 to i32
	 store i32 %.FromBool.17,i32* %.retval.p
	br label %Exit.94

Exit.94:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define i1 @.func.GE_Compare_String_Together_No_Collision_Please(%struct.string* %a,%struct.string* %b){
Entry.96:
	%a_addr=alloca %struct.string*
	 store %struct.string* %a,%struct.string** %a_addr
	%b_addr=alloca %struct.string*
	 store %struct.string* %b,%struct.string** %b_addr
	%.retval.p=alloca i32
	%.middle.226=alloca i32
	br label %.block.98

.block.98:
	 %.middle.223=load %struct.string*,%struct.string** %a_addr
	 %.middle.224=load %struct.string*,%struct.string** %b_addr
	%.Func_Return.3 = call i1 @.func.Less_Compare_String_Together_No_Collision_Please(%struct.string* %.middle.223,%struct.string* %.middle.224)
	%.FromBool.18 = zext i1 %.Func_Return.3 to i32
	 store i32 %.FromBool.18,i32* %.middle.226
	 %.ToBool.7=load i32,i32* %.middle.226
	%.middle.228 = trunc i32 %.ToBool.7 to i1
	%.middle.227 = xor i1 %.middle.228,1
	%.FromBool.19 = zext i1 %.middle.227 to i32
	 store i32 %.FromBool.19,i32* %.retval.p
	br label %Exit.97

Exit.97:
	 %.retval.Tobool=load i32,i32* %.retval.p
	%.retval = trunc i32 %.retval.Tobool to i1
	ret i1 %.retval

}

define void @.func.print(%struct.string* %str){
Entry.99:
	%str_addr=alloca %struct.string*
	 store %struct.string* %str,%struct.string** %str_addr
	%s.0 = call i32* @_malloc(i32 1)
	%i.7 = call i32* @_malloc(i32 1)
	br label %.block.101

.block.101:
	 %str_addr.0=load %struct.string*,%struct.string** %str_addr
	%.middle.229 = getelementptr %struct.string,%struct.string* %str_addr.0,i32 0,i32 0
	 %.middle.230=load i32,i32* %.middle.229
	 store i32 %.middle.230,i32* %s.0
	 store i32 0,i32* %i.7
	br label %For_Cond.102

For_Cond.102:
	 %.middle.232=load i32,i32* %i.7
	 %.middle.233=load i32,i32* %s.0
	%.middle.231 = icmp slt i32 %.middle.232,%.middle.233
	br i1 %.middle.231,label %For_Body.104,label %For_End.103

For_Body.104:
	 %str_addr.1=load %struct.string*,%struct.string** %str_addr
	%.middle.234 = getelementptr %struct.string,%struct.string* %str_addr.1,i32 0,i32 1
	 %.middle.235=load i32*,i32** %.middle.234
	 %.middle.237=load i32,i32* %i.7
	%.middle.236 = getelementptr i32,i32* %.middle.235,i32 %.middle.237
	 %.middle.236.0=load i32,i32* %.middle.236
	 %.middle.238=load i32,i32* %.middle.236
	call void @printf_no_collision_please(i32 %.middle.238)
	 %.middle.239=load i32,i32* %i.7
	 %.middle.241=load i32,i32* %i.7
	%.middle.240 = add i32 %.middle.241,1
	 store i32 %.middle.240,i32* %i.7
	br label %For_Cond.102

For_End.103:
	br label %Exit.100

Exit.100:
	ret void

}

define void @.func.println(%struct.string* %str){
Entry.105:
	%str_addr=alloca %struct.string*
	 store %struct.string* %str,%struct.string** %str_addr
	br label %.block.107

.block.107:
	 %.middle.242=load %struct.string*,%struct.string** %str_addr
	call void @.func.print(%struct.string* %.middle.242)
	call void @printf_no_collision_please(i32 10)
	br label %Exit.106

Exit.106:
	ret void

}

define void @.func.printlnInt(i32 %num){
Entry.108:
	%num_addr=alloca i32
	 store i32 %num,i32* %num_addr
	br label %.block.110

.block.110:
	 %.middle.243=load i32,i32* %num_addr
	call void @printInt(i32 %.middle.243)
	call void @printf_no_collision_please(i32 10)
	br label %Exit.109

Exit.109:
	ret void

}

define %struct.string* @.func.toString(i32 %i){
Entry.111:
	%i_addr=alloca i32
	 store i32 %i,i32* %i_addr
	%.retval.p=alloca %struct.string*
	%a.0=alloca i32*
	%cnt.0 = call i32* @_malloc(i32 1)
	%fg.0 = call i32* @_malloc(i32 1)
	%tmp.2=alloca %struct.string*
	%i.8 = call i32* @_malloc(i32 1)
	br label %.block.113

.block.113:
	%.SizeList.2 = call i32* @_malloc(i32 8)
	%.ArrayIdx.2 = getelementptr i32,i32* %.SizeList.2,i32 0
	 store i32 20,i32* %.ArrayIdx.2
	%.middle.244 = call i32* @_malloc_toInt(i32* %.SizeList.2,i32 1)
	%.new.2 = bitcast i32* %.middle.244 to i32*
	 store i32* %.new.2,i32** %a.0
	 store i32 0,i32* %cnt.0
	%.FromBool.20 = zext i1 0 to i32
	 store i32 %.FromBool.20,i32* %fg.0
	br label %If_Cond.114

If_Cond.114:
	 %.middle.246=load i32,i32* %i_addr
	%.middle.245 = icmp eq i32 %.middle.246,0
	br i1 %.middle.245,label %If_Then.115,label %If_Else.116

If_Then.115:
	 store i32 1,i32* %cnt.0
	 %.middle.248=load i32*,i32** %a.0
	%.middle.249 = getelementptr i32,i32* %.middle.248,i32 0
	 %.middle.249.0=load i32,i32* %.middle.249
	 store i32 0,i32* %.middle.249
	br label %If_End.117

If_Else.116:
	br label %If_End.117

If_End.117:
	br label %If_Cond.118

If_Cond.118:
	 %.middle.252=load i32,i32* %i_addr
	%.middle.251 = icmp slt i32 %.middle.252,0
	br i1 %.middle.251,label %If_Then.119,label %If_Else.120

If_Then.119:
	%.FromBool.21 = zext i1 1 to i32
	 store i32 %.FromBool.21,i32* %fg.0
	 %.middle.255=load i32,i32* %i_addr
	%.middle.254 = sub i32 0,%.middle.255
	 store i32 %.middle.254,i32* %i_addr
	br label %If_End.121

If_Else.120:
	br label %If_End.121

If_End.121:
	br label %While_Cond.122

While_Cond.122:
	 %.middle.258=load i32,i32* %i_addr
	%.middle.257 = icmp ne i32 %.middle.258,0
	br i1 %.middle.257,label %While_Body.123,label %While_End.124

While_Body.123:
	 %.middle.259=load i32*,i32** %a.0
	 %.middle.261=load i32,i32* %cnt.0
	%.middle.260 = getelementptr i32,i32* %.middle.259,i32 %.middle.261
	 %.middle.260.0=load i32,i32* %.middle.260
	 %.middle.263=load i32,i32* %i_addr
	%.middle.262 = srem i32 %.middle.263,10
	 store i32 %.middle.262,i32* %.middle.260
	 %.middle.266=load i32,i32* %i_addr
	%.middle.265 = sdiv i32 %.middle.266,10
	 store i32 %.middle.265,i32* %i_addr
	 %.middle.268=load i32,i32* %cnt.0
	%.middle.269 = add i32 %.middle.268,1
	 store i32 %.middle.269,i32* %cnt.0
	br label %While_Cond.122

While_End.124:
	br label %If_Cond.125

If_Cond.125:
	 %.ToBool.8=load i32,i32* %fg.0
	%.middle.270 = trunc i32 %.ToBool.8 to i1
	br i1 %.middle.270,label %If_Then.126,label %If_Else.127

If_Then.126:
	 %.middle.271=load i32*,i32** %a.0
	 %.middle.273=load i32,i32* %cnt.0
	%.middle.272 = getelementptr i32,i32* %.middle.271,i32 %.middle.273
	 %.middle.272.0=load i32,i32* %.middle.272
	%.middle.274 = sub i32 0,3
	 store i32 %.middle.274,i32* %.middle.272
	 %.middle.276=load i32,i32* %cnt.0
	%.middle.277 = add i32 %.middle.276,1
	 store i32 %.middle.277,i32* %cnt.0
	br label %If_End.128

If_Else.127:
	br label %If_End.128

If_End.128:
	%.middle.279 = call i32* @_malloc(i32 2)
	%.middle.278 = bitcast i32* %.middle.279 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.278)
	 store %struct.string* %.middle.278,%struct.string** %tmp.2
	 %tmp.2.0=load %struct.string*,%struct.string** %tmp.2
	%.middle.280 = getelementptr %struct.string,%struct.string* %tmp.2.0,i32 0,i32 0
	 %.middle.282=load i32,i32* %cnt.0
	 store i32 %.middle.282,i32* %.middle.280
	 %tmp.2.1=load %struct.string*,%struct.string** %tmp.2
	%.middle.283 = getelementptr %struct.string,%struct.string* %tmp.2.1,i32 0,i32 1
	 %.middle.284=load i32,i32* %cnt.0
	%.SizeList.3 = call i32* @_malloc(i32 8)
	%.ArrayIdx.3 = getelementptr i32,i32* %.SizeList.3,i32 0
	 store i32 %.middle.284,i32* %.ArrayIdx.3
	%.middle.285 = call i32* @_malloc_toInt(i32* %.SizeList.3,i32 1)
	%.new.3 = bitcast i32* %.middle.285 to i32*
	 store i32* %.new.3,i32** %.middle.283
	 store i32 0,i32* %i.8
	br label %For_Cond.129

For_Cond.129:
	 %.middle.288=load i32,i32* %i.8
	 %.middle.289=load i32,i32* %cnt.0
	%.middle.287 = icmp slt i32 %.middle.288,%.middle.289
	br i1 %.middle.287,label %For_Body.131,label %For_End.130

For_Body.131:
	 %tmp.2.2=load %struct.string*,%struct.string** %tmp.2
	%.middle.290 = getelementptr %struct.string,%struct.string* %tmp.2.2,i32 0,i32 1
	 %.middle.291=load i32*,i32** %.middle.290
	 %.middle.293=load i32,i32* %i.8
	%.middle.292 = getelementptr i32,i32* %.middle.291,i32 %.middle.293
	 %.middle.292.0=load i32,i32* %.middle.292
	 %.middle.294=load i32*,i32** %a.0
	 %.middle.296=load i32,i32* %cnt.0
	 %.middle.297=load i32,i32* %i.8
	%.middle.295 = sub i32 %.middle.296,%.middle.297
	%.middle.298 = sub i32 %.middle.295,1
	%.middle.299 = getelementptr i32,i32* %.middle.294,i32 %.middle.298
	 %.middle.299.0=load i32,i32* %.middle.299
	 %.middle.301=load i32,i32* %.middle.299
	%.middle.300 = add i32 %.middle.301,48
	 store i32 %.middle.300,i32* %.middle.292
	 %.middle.303=load i32,i32* %i.8
	%.middle.304 = add i32 %.middle.303,1
	 store i32 %.middle.304,i32* %i.8
	br label %For_Cond.129

For_End.130:
	 %.middle.305=load %struct.string*,%struct.string** %tmp.2
	 store %struct.string* %.middle.305,%struct.string** %.retval.p
	br label %Exit.112

Exit.112:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define %struct.string* @.func.getString(){
Entry.132:
	%.retval.p=alloca %struct.string*
	%tmp.3=alloca %struct.string*
	%a.1=alloca i32*
	%cnt.1 = call i32* @_malloc(i32 1)
	%c.0 = call i32* @_malloc(i32 1)
	%.middle.309=alloca i32
	%RV.3.0 = call i32* @_malloc(i32 1)
	%RV.4.0 = call i32* @_malloc(i32 1)
	%.middle.321=alloca i32
	%RV.5.0 = call i32* @_malloc(i32 1)
	%RV.6.0 = call i32* @_malloc(i32 1)
	%RV.7.0 = call i32* @_malloc(i32 1)
	%RV.8.0 = call i32* @_malloc(i32 1)
	%RV.9.0 = call i32* @_malloc(i32 1)
	%.middle.354=alloca i32
	%i.9 = call i32* @_malloc(i32 1)
	br label %.block.134

.block.134:
	%.middle.307 = call i32* @_malloc(i32 2)
	%.middle.306 = bitcast i32* %.middle.307 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.306)
	 store %struct.string* %.middle.306,%struct.string** %tmp.3
	%.SizeList.4 = call i32* @_malloc(i32 8)
	%.ArrayIdx.4 = getelementptr i32,i32* %.SizeList.4,i32 0
	 store i32 300,i32* %.ArrayIdx.4
	%.middle.308 = call i32* @_malloc_toInt(i32* %.SizeList.4,i32 1)
	%.new.4 = bitcast i32* %.middle.308 to i32*
	 store i32* %.new.4,i32** %a.1
	 store i32 0,i32* %cnt.1
	%.Func_Return.4 = call i32 @scanf_no_collision_please()
	 store i32 %.Func_Return.4,i32* %.middle.309
	 %.middle.310=load i32,i32* %.middle.309
	 store i32 %.middle.310,i32* %c.0
	br label %While_Cond.135

While_Cond.135:
	 %.middle.312=load i32,i32* %c.0
	%.middle.311 = icmp eq i32 %.middle.312,0
	 store i32 1,i32* %RV.3.0
	br i1 %.middle.311,label %binary_end.139,label %binary_or_rv.138

binary_or_rv.138:
	 %.middle.314=load i32,i32* %c.0
	%.middle.313 = icmp sge i32 %.middle.314,9
	 store i32 0,i32* %RV.4.0
	br i1 %.middle.313,label %binary_and_rv.140,label %binary_end.141

binary_and_rv.140:
	 %.middle.316=load i32,i32* %c.0
	%.middle.315 = icmp sle i32 %.middle.316,13
	%.FromBool.22 = zext i1 %.middle.315 to i32
	 store i32 %.FromBool.22,i32* %RV.4.0
	br label %binary_end.141

binary_end.141:
	 %.ToBool.9=load i32,i32* %RV.4.0
	%.middle.318 = trunc i32 %.ToBool.9 to i1
	%.middle.317 = and i1 %.middle.315,%.middle.318
	%.FromBool.23 = zext i1 %.middle.317 to i32
	 store i32 %.FromBool.23,i32* %RV.3.0
	br label %binary_end.139

binary_end.139:
	 %.ToBool.10=load i32,i32* %RV.3.0
	%.middle.320 = trunc i32 %.ToBool.10 to i1
	%.middle.319 = or i1 %.middle.317,%.middle.320
	br i1 %.middle.319,label %While_Body.136,label %While_End.137

While_Body.136:
	%.Func_Return.5 = call i32 @scanf_no_collision_please()
	 store i32 %.Func_Return.5,i32* %.middle.321
	 %.middle.323=load i32,i32* %.middle.321
	 store i32 %.middle.323,i32* %c.0
	br label %While_Cond.135

While_End.137:
	br label %While_Cond.142

While_Cond.142:
	br i1 1,label %While_Body.143,label %While_End.144

While_Body.143:
	br label %If_Cond.145

If_Cond.145:
	 %.middle.325=load i32,i32* %c.0
	%.middle.324 = icmp sgt i32 %.middle.325,47
	 store i32 0,i32* %RV.5.0
	br i1 %.middle.324,label %binary_and_rv.149,label %binary_end.150

binary_and_rv.149:
	 %.middle.327=load i32,i32* %c.0
	%.middle.326 = icmp slt i32 %.middle.327,58
	%.FromBool.24 = zext i1 %.middle.326 to i32
	 store i32 %.FromBool.24,i32* %RV.5.0
	br label %binary_end.150

binary_end.150:
	 %.ToBool.11=load i32,i32* %RV.5.0
	%.middle.329 = trunc i32 %.ToBool.11 to i1
	%.middle.328 = and i1 %.middle.326,%.middle.329
	 store i32 1,i32* %RV.6.0
	br i1 %.middle.328,label %binary_end.152,label %binary_or_rv.151

binary_or_rv.151:
	 %.middle.331=load i32,i32* %c.0
	%.middle.330 = icmp sgt i32 %.middle.331,64
	 store i32 0,i32* %RV.7.0
	br i1 %.middle.330,label %binary_and_rv.153,label %binary_end.154

binary_and_rv.153:
	 %.middle.333=load i32,i32* %c.0
	%.middle.332 = icmp slt i32 %.middle.333,91
	%.FromBool.25 = zext i1 %.middle.332 to i32
	 store i32 %.FromBool.25,i32* %RV.7.0
	br label %binary_end.154

binary_end.154:
	 %.ToBool.12=load i32,i32* %RV.7.0
	%.middle.335 = trunc i32 %.ToBool.12 to i1
	%.middle.334 = and i1 %.middle.332,%.middle.335
	%.FromBool.26 = zext i1 %.middle.334 to i32
	 store i32 %.FromBool.26,i32* %RV.6.0
	br label %binary_end.152

binary_end.152:
	 %.ToBool.13=load i32,i32* %RV.6.0
	%.middle.337 = trunc i32 %.ToBool.13 to i1
	%.middle.336 = or i1 %.middle.334,%.middle.337
	 store i32 1,i32* %RV.8.0
	br i1 %.middle.336,label %binary_end.156,label %binary_or_rv.155

binary_or_rv.155:
	 %.middle.339=load i32,i32* %c.0
	%.middle.338 = icmp sgt i32 %.middle.339,96
	 store i32 0,i32* %RV.9.0
	br i1 %.middle.338,label %binary_and_rv.157,label %binary_end.158

binary_and_rv.157:
	 %.middle.341=load i32,i32* %c.0
	%.middle.340 = icmp slt i32 %.middle.341,123
	%.FromBool.27 = zext i1 %.middle.340 to i32
	 store i32 %.FromBool.27,i32* %RV.9.0
	br label %binary_end.158

binary_end.158:
	 %.ToBool.14=load i32,i32* %RV.9.0
	%.middle.343 = trunc i32 %.ToBool.14 to i1
	%.middle.342 = and i1 %.middle.340,%.middle.343
	%.FromBool.28 = zext i1 %.middle.342 to i32
	 store i32 %.FromBool.28,i32* %RV.8.0
	br label %binary_end.156

binary_end.156:
	 %.ToBool.15=load i32,i32* %RV.8.0
	%.middle.345 = trunc i32 %.ToBool.15 to i1
	%.middle.344 = or i1 %.middle.342,%.middle.345
	br i1 %.middle.344,label %If_Then.146,label %If_Else.147

If_Then.146:
	 %.middle.346=load i32*,i32** %a.1
	 %.middle.348=load i32,i32* %cnt.1
	%.middle.347 = getelementptr i32,i32* %.middle.346,i32 %.middle.348
	 %.middle.347.0=load i32,i32* %.middle.347
	 %.middle.350=load i32,i32* %c.0
	 store i32 %.middle.350,i32* %.middle.347
	br label %If_End.148

If_Else.147:
	br label %While_End.144

If_End.148:
	 %.middle.351=load i32,i32* %cnt.1
	 %.middle.353=load i32,i32* %cnt.1
	%.middle.352 = add i32 %.middle.353,1
	 store i32 %.middle.352,i32* %cnt.1
	%.Func_Return.6 = call i32 @scanf_no_collision_please()
	 store i32 %.Func_Return.6,i32* %.middle.354
	 %.middle.356=load i32,i32* %.middle.354
	 store i32 %.middle.356,i32* %c.0
	br label %While_Cond.142

While_End.144:
	 %tmp.3.0=load %struct.string*,%struct.string** %tmp.3
	%.middle.357 = getelementptr %struct.string,%struct.string* %tmp.3.0,i32 0,i32 0
	 %.middle.359=load i32,i32* %cnt.1
	 store i32 %.middle.359,i32* %.middle.357
	 %tmp.3.1=load %struct.string*,%struct.string** %tmp.3
	%.middle.360 = getelementptr %struct.string,%struct.string* %tmp.3.1,i32 0,i32 1
	 %.middle.361=load i32,i32* %cnt.1
	%.SizeList.5 = call i32* @_malloc(i32 8)
	%.ArrayIdx.5 = getelementptr i32,i32* %.SizeList.5,i32 0
	 store i32 %.middle.361,i32* %.ArrayIdx.5
	%.middle.362 = call i32* @_malloc_toInt(i32* %.SizeList.5,i32 1)
	%.new.5 = bitcast i32* %.middle.362 to i32*
	 store i32* %.new.5,i32** %.middle.360
	 store i32 0,i32* %i.9
	br label %For_Cond.159

For_Cond.159:
	 %.middle.365=load i32,i32* %i.9
	 %.middle.366=load i32,i32* %cnt.1
	%.middle.364 = icmp slt i32 %.middle.365,%.middle.366
	br i1 %.middle.364,label %For_Body.161,label %For_End.160

For_Body.161:
	 %tmp.3.2=load %struct.string*,%struct.string** %tmp.3
	%.middle.367 = getelementptr %struct.string,%struct.string* %tmp.3.2,i32 0,i32 1
	 %.middle.368=load i32*,i32** %.middle.367
	 %.middle.370=load i32,i32* %i.9
	%.middle.369 = getelementptr i32,i32* %.middle.368,i32 %.middle.370
	 %.middle.369.0=load i32,i32* %.middle.369
	 %.middle.371=load i32*,i32** %a.1
	 %.middle.373=load i32,i32* %i.9
	%.middle.372 = getelementptr i32,i32* %.middle.371,i32 %.middle.373
	 %.middle.372.0=load i32,i32* %.middle.372
	 %.middle.375=load i32,i32* %.middle.372
	 store i32 %.middle.375,i32* %.middle.369
	 %.middle.376=load i32,i32* %i.9
	%.middle.377 = add i32 %.middle.376,1
	 store i32 %.middle.377,i32* %i.9
	br label %For_Cond.159

For_End.160:
	 %.middle.378=load %struct.string*,%struct.string** %tmp.3
	 store %struct.string* %.middle.378,%struct.string** %.retval.p
	br label %Exit.133

Exit.133:
	 %.retval=load %struct.string*,%struct.string** %.retval.p
	ret %struct.string* %.retval

}

define i32 @main(){
Entry.162:
	%.retval.p=alloca i32
	%s1.0=alloca %struct.string*
	%.TmpString.0=alloca %struct.string*
	%s2.0=alloca %struct.string*
	%.TmpString.1=alloca %struct.string*
	br label %.block.164

.block.164:
	call void @.init()
	%.middle.380 = call i32* @_malloc(i32 8)
	%.middle.379 = bitcast i32* %.middle.380 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.379)
	%.TmpLen.0 = getelementptr %struct.string,%struct.string* %.middle.379,i32 0,i32 0
	 store i32 3,i32* %.TmpLen.0
	%.TmpContent.0 = getelementptr %struct.string,%struct.string* %.middle.379,i32 0,i32 1
	%.TmpConstRef.0 = getelementptr [3 x i32],[3 x i32]* @.ConstantString.0,i32 0,i32 0
	 store i32* %.TmpConstRef.0,i32** %.TmpContent.0
	 store %struct.string* %.middle.379,%struct.string** %.TmpString.0
	 %.middle.381=load %struct.string*,%struct.string** %.TmpString.0
	 store %struct.string* %.middle.381,%struct.string** %s1.0
	%.middle.383 = call i32* @_malloc(i32 8)
	%.middle.382 = bitcast i32* %.middle.383 to %struct.string*
	call void @.func.string.construct(%struct.string* %.middle.382)
	%.TmpLen.1 = getelementptr %struct.string,%struct.string* %.middle.382,i32 0,i32 0
	 store i32 5,i32* %.TmpLen.1
	%.TmpContent.1 = getelementptr %struct.string,%struct.string* %.middle.382,i32 0,i32 1
	%.TmpConstRef.1 = getelementptr [5 x i32],[5 x i32]* @.ConstantString.1,i32 0,i32 0
	 store i32* %.TmpConstRef.1,i32** %.TmpContent.1
	 store %struct.string* %.middle.382,%struct.string** %.TmpString.1
	 %.middle.384=load %struct.string*,%struct.string** %.TmpString.1
	 store %struct.string* %.middle.384,%struct.string** %s2.0
	 %.middle.385=load %struct.string*,%struct.string** %s1.0
	call void @.func.println(%struct.string* %.middle.385)
	 store i32 0,i32* %.retval.p
	br label %Exit.163

Exit.163:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

