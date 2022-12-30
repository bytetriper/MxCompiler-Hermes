source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"
@a.0 = global i32** zeroinitializer
declare i32 @.func..size ()
declare i32 @.func.getInt ()
declare void @.func.printf_no_collision_please (i32 %null.0)
declare i32* @_malloc_toInt (i32* %null.1,i32 %null.2)
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
	%.middle.1=alloca i32
	 store i32 1,i32* %.middle.1
	%.middle.0 = call i32* @_malloc_toInt(i32* %.middle.1,i32 1)
	%.SizeList.0 = bitcast i32* %.middle.0 to i32**
	 %.SizeList.0.0=load i32*,i32** %.SizeList.0
	%.ArrayIdx.0 = getelementptr i32,i32* %.SizeList.0.0,i32 0
	 store i32 3,i32* %.ArrayIdx.0
	%.ArrayIdx.1 = getelementptr i32,i32* %.SizeList.0.0,i32 1
	 store i32 3,i32* %.ArrayIdx.1
	 store i32* %.SizeList.0.0,i32** %.SizeList.0
	 %.SizeList.0.1=load i32*,i32** %.SizeList.0
	%.middle.2 = call i32* @_malloc_toInt(i32* %.SizeList.0.1,i32 2)
	%.new.0 = bitcast i32* %.middle.2 to i32**
	 store i32** %.new.0,i32*** @a.0
	%.middle.4 = ptrtoint i32*** @a.0 to i32
	%.middle.5 = sub i32 %.middle.4,4
	%.middle.6 = inttoptr i32 %.middle.5 to i32*
	 %.middle.6.0=load i32,i32* %.middle.6
	call void @.func.printf_no_collision_please(i32 %.middle.6.0)
	 store i32 0,i32* %.retval.p
	br label %Exit.5

Exit.5:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

