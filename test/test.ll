; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown"
@p.0 = global i32 0
@i.0 = global i32 0
@k.0 = global i32 0
@n.0 = global i32 0
%struct.string =type {}
declare i32 @.func.getInt ()
declare i32 @.func..size ()
declare void @.func.print (%struct.string %null.0)
declare void @.func.println (%struct.string %null.1)
declare void @.func.printInt (i32 %null.2)
declare void @.func.printlnInt (i32 %null.3)
declare %struct.string @.func.toString (i32 %null.4)
declare %struct.string @.func.getString ()
define void @.init(){
Entry.1:
        br label %.block.3

.block.3:
        br label %Exit.2

Exit.2:
        ret void

}

define i32 @main(){
Entry.4:
        %.retval.p=alloca i32
        br label %.block.6

.block.6:
        %.Func_Return.0 = call i32 @.func.getInt()
         store i32 %.Func_Return.0,i32* @n.0
        %.Func_Return.1 = call i32 @.func.getInt()
         store i32 %.Func_Return.1,i32* @p.0
        %.Func_Return.2 = call i32 @.func.getInt()
         store i32 %.Func_Return.2,i32* @k.0
        br label %If_Cond.7

If_Cond.7:
         %.middle.4=load i32,i32* @p.0
         %.middle.5=load i32,i32* @k.0
        %.middle.3 = sub i32 %.middle.4,%.middle.5
        %.middle.6 = icmp sgt i32 %.middle.3,1
        br i1 %.middle.6,label %If_Then.8,label %If_Else.9

If_Then.8:
        br label %If_End.10

If_Else.9:
        br label %If_End.10

If_End.10:
         %.middle.8=load i32,i32* @p.0
         %.middle.9=load i32,i32* @k.0
        %.middle.7 = sub i32 %.middle.8,%.middle.9
         store i32 %.middle.7,i32* @i.0
        br label %For_Cond.11

For_Cond.11:7
         %.middle.12=load i32,i32* @p.0
         %.middle.13=load i32,i32* @k.0
        %.middle.11 = add i32 %.middle.12,%.middle.13
         %.middle.15=load i32,i32* @i.0
        %.middle.14 = icmp sle i32 %.middle.15,%.middle.11
        br i1 %.middle.14,label %For_Body.13,label %For_End.12

For_Body.13:
         %.middle.17=load i32,i32* @i.0
        %.middle.16 = add i32 %.middle.17,1
         store i32 %.middle.16,i32* @i.0
        br label %If_Cond.14

If_Cond.14:
         %.middle.19=load i32,i32* @i.0
        %.middle.18 = icmp sle i32 1,%.middle.19
         %.middle.21=load i32,i32* @i.0
         %.middle.22=load i32,i32* @n.0
        %.middle.20 = icmp sle i32 %.middle.21,%.middle.22
        %.middle.23 = and i1 %.middle.18,%.middle.20
        br i1 %.middle.23,label %If_Then.15,label %If_Else.16

If_Then.15:
        br label %If_Cond.18

If_Cond.18:
         %.middle.25=load i32,i32* @i.0
         %.middle.26=load i32,i32* @p.0
        %.middle.24 = icmp eq i32 %.middle.25,%.middle.26
        br i1 %.middle.24,label %If_Then.19,label %If_Else.20

If_Then.19:
        br label %If_End.21

If_Else.20:
        br label %If_End.21

If_End.21:
        br label %If_End.17

If_Else.16:
        br label %If_End.17

If_End.17:
        br label %For_Cond.11

For_End.12:
        br label %If_Cond.22

If_Cond.22:
         %.middle.28=load i32,i32* @p.0
         %.middle.29=load i32,i32* @k.0
        %.middle.27 = add i32 %.middle.28,%.middle.29
         %.middle.31=load i32,i32* @n.0
        %.middle.30 = icmp slt i32 %.middle.27,%.middle.31
        br i1 %.middle.30,label %If_Then.23,label %If_Else.24

If_Then.23:
        br label %If_End.25

If_Else.24:
        br label %If_End.25

If_End.25:
         store i32 0,i32* %.retval.p
        br label %Exit.5

Exit.5:
         %.retval=load i32,i32* %.retval.p
        ret i32 %.retval

}