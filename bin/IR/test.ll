; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline optnone
define dso_local i32* @_Z13_malloc_toIntPii(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 4
  %4 = alloca i32*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32* null, i32** %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 4
  %13 = getelementptr inbounds i32, i32* %12, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 2
  %16 = call noalias i8* @malloc(i32 %15) #2
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %34, %11
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %4, align 4
  %21 = getelementptr inbounds i32, i32* %20, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 4
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32* @_Z13_malloc_toIntPii(i32* %26, i32 %28)
  %30 = ptrtoint i32* %29 to i32
  %31 = load i32*, i32** %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds i32, i32* %31, i32 %32
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load i32*, i32** %6, align 4
  store i32* %38, i32** %3, align 4
  br label %39

39:                                               ; preds = %37, %10
  %40 = load i32*, i32** %3, align 4
  ret i32* %40
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i32) #1

; Function Attrs: noinline optnone
define dso_local i32* @_Z14_malloc_toBoolPii(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 4
  %4 = alloca i32*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32*, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 4
  %13 = getelementptr inbounds i32, i32* %12, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call noalias i8* @malloc(i32 %14) #2
  store i8* %15, i8** %6, align 4
  %16 = load i8*, i8** %6, align 4
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 4
  %20 = getelementptr inbounds i32, i32* %19, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 2
  %23 = call noalias i8* @malloc(i32 %22) #2
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %41, %18
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %4, align 4
  %28 = getelementptr inbounds i32, i32* %27, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 4
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32* @_Z14_malloc_toBoolPii(i32* %33, i32 %35)
  %37 = ptrtoint i32* %36 to i32
  %38 = load i32*, i32** %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds i32, i32* %38, i32 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %25

44:                                               ; preds = %25
  %45 = load i32*, i32** %7, align 4
  store i32* %45, i32** %3, align 4
  br label %46

46:                                               ; preds = %44, %11
  %47 = load i32*, i32** %3, align 4
  ret i32* %47
}

attributes #0 = { noinline optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
