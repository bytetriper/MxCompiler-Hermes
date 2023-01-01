source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@c.0 = global i32 0
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
	 store i32 1,i32* @c.0
	br label %Exit.2

Exit.2:
	ret void

}

define i32 @main(){
Entry.4:
	%.retval.p=alloca i32
	br label %.block.6

.block.6:
	call void @.init()
	 store i32 0,i32* %.retval.p
	br label %Exit.5

Exit.5:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

