main
null
null
null
null
null
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
	 store i32 0,i32* %.retval.p
	br label %Exit.5

Exit.5:
	 %.retval=load i32,i32* %.retval.p
	ret i32 %.retval

}

