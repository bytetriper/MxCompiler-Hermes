; ModuleID = 'builtin.cpp'
source_filename = "builtin.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline optnone
define dso_local i32* @_Z13_malloc_toIntPii(i32* %size, i32 %len) #0 {
entry:
  %retval = alloca i32*, align 4
  %size.addr = alloca i32*, align 4
  %len.addr = alloca i32, align 4
  %a = alloca i32*, align 4
  %i = alloca i32, align 4
  store i32* %size, i32** %size.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %size.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 0
  %2 = load i32, i32* %arrayidx, align 4
  %shl = shl i32 %2, 6
  %call = call noalias i8* @malloc(i32 %shl) #3
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %a, align 4
  %4 = load i32*, i32** %size.addr, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i32 0
  %5 = load i32, i32* %arrayidx1, align 4
  %6 = load i32*, i32** %a, align 4
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %a, align 4
  %add.ptr = getelementptr inbounds i32, i32* %7, i32 4
  store i32* %add.ptr, i32** %a, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32*, i32** %size.addr, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i32 0
  %10 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %8, %10
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32*, i32** %size.addr, align 4
  %add.ptr4 = getelementptr inbounds i32, i32* %11, i32 1
  %12 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %12, 1
  %call5 = call i32* @_Z13_malloc_toIntPii(i32* %add.ptr4, i32 %sub)
  %13 = ptrtoint i32* %call5 to i32
  %14 = load i32*, i32** %a, align 4
  %15 = load i32, i32* %i, align 4
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i32 %15
  store i32 %13, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %a, align 4
  store i32* %17, i32** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i32*, i32** %retval, align 4
  ret i32* %18
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i32) #1

; Function Attrs: noinline optnone
define dso_local i32* @_Z14_malloc_toBoolPii(i32* %size, i32 %len) #0 {
entry:
  %retval = alloca i32*, align 4
  %size.addr = alloca i32*, align 4
  %len.addr = alloca i32, align 4
  %a = alloca i32*, align 4
  %a2 = alloca i32*, align 4
  %i = alloca i32, align 4
  store i32* %size, i32** %size.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %size.addr, align 4
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 0
  %2 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, 4
  %call = call noalias i8* @malloc(i32 %add) #3
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %a, align 4
  %4 = load i32*, i32** %size.addr, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i32 0
  %5 = load i32, i32* %arrayidx1, align 4
  %6 = load i32*, i32** %a, align 4
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %a, align 4
  %add.ptr = getelementptr inbounds i32, i32* %7, i32 4
  store i32* %add.ptr, i32** %a, align 4
  %8 = load i32*, i32** %a, align 4
  store i32* %8, i32** %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32*, i32** %size.addr, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i32 0
  %10 = load i32, i32* %arrayidx3, align 4
  %shl = shl i32 %10, 6
  %call4 = call noalias i8* @malloc(i32 %shl) #3
  %11 = bitcast i8* %call4 to i32*
  store i32* %11, i32** %a2, align 4
  %12 = load i32*, i32** %size.addr, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i32 0
  %13 = load i32, i32* %arrayidx5, align 4
  %14 = load i32*, i32** %a2, align 4
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %a2, align 4
  %add.ptr6 = getelementptr inbounds i32, i32* %15, i32 4
  store i32* %add.ptr6, i32** %a2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32*, i32** %size.addr, align 4
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i32 0
  %18 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp slt i32 %16, %18
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32*, i32** %size.addr, align 4
  %add.ptr9 = getelementptr inbounds i32, i32* %19, i32 1
  %20 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %20, 1
  %call10 = call i32* @_Z14_malloc_toBoolPii(i32* %add.ptr9, i32 %sub)
  %21 = ptrtoint i32* %call10 to i32
  %22 = load i32*, i32** %a2, align 4
  %23 = load i32, i32* %i, align 4
  %arrayidx11 = getelementptr inbounds i32, i32* %22, i32 %23
  store i32 %21, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32*, i32** %a2, align 4
  store i32* %25, i32** %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %26 = load i32*, i32** %retval, align 4
  ret i32* %26
}

; Function Attrs: noinline optnone
define dso_local void @_Z26printf_no_collision_pleasei(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %0)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
