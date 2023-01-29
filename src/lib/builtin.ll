; ModuleID = 'builtin.c'
source_filename = "builtin.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local void @printf_no_collision_please(i32* %a, i32 %len) #0 {
entry:
  %a.addr = alloca i32*, align 4
  %len.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %call = call noalias i8* @malloc(i32 %0) #3
  store i8* %call, i8** %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %a.addr, align 4
  %4 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds i32, i32* %3, i32 %4
  %5 = load i32, i32* %arrayidx, align 4
  %conv = trunc i32 %5 to i8
  %6 = load i8*, i8** %s, align 4
  %7 = load i32, i32* %i, align 4
  %arrayidx1 = getelementptr inbounds i8, i8* %6, i32 %7
  store i8 %conv, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i8*, i8** %s, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %9)
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define dso_local void @printInt(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @getInt() #0 {
entry:
  %c = alloca i32, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %c)
  %0 = load i32, i32* %c, align 4
  ret i32 %0
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define dso_local i32* @scanf_string() #0 {
entry:
  %s = alloca [200 x i8], align 1
  %a = alloca i32*, align 4
  %i = alloca i32, align 4
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %s, i32 0, i32 0
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  %call1 = call noalias i8* @malloc(i32 800) #3
  %0 = bitcast i8* %call1 to i32*
  store i32* %0, i32** %a, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %arrayidx = getelementptr inbounds [200 x i8], [200 x i8]* %s, i32 0, i32 %1
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [200 x i8], [200 x i8]* %s, i32 0, i32 %3
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %4 to i32
  %5 = load i32*, i32** %a, align 4
  %6 = load i32, i32* %i, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i32 %6
  store i32 %conv, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32*, i32** %a, align 4
  %9 = load i32, i32* %i, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i32 %9
  store i32 0, i32* %arrayidx4, align 4
  %10 = load i32*, i32** %a, align 4
  ret i32* %10
}

; Function Attrs: noinline nounwind optnone
define dso_local i32* @_malloc(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %a = alloca i32*, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %shl = shl i32 %0, 2
  %call = call noalias i8* @malloc(i32 %shl) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %a, align 4
  %2 = load i32*, i32** %a, align 4
  ret i32* %2
}

; Function Attrs: noinline nounwind optnone
define dso_local i32* @_malloc_toInt(i32* %size, i32 %len) #0 {
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
  %shl = shl i32 %2, 2
  %add = add nsw i32 %shl, 4
  %call = call noalias i8* @malloc(i32 %add) #3
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %a, align 4
  %4 = load i32*, i32** %size.addr, align 4
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i32 0
  %5 = load i32, i32* %arrayidx1, align 4
  %6 = load i32*, i32** %a, align 4
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %a, align 4
  %add.ptr = getelementptr inbounds i32, i32* %7, i32 1
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
  %call5 = call i32* @_malloc_toInt(i32* %add.ptr4, i32 %sub)
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

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
