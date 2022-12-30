; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.string = type { i32*, i32 }

$_ZN6stringC2Ei = comdat any

@s = dso_local global i8 1, align 1
@a = dso_local global i32** null, align 4
@_ZL1C = internal global %struct.string zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"asdasd\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Asdaad\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_test.cpp, i8* null }]

; Function Attrs: noinline
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZN6stringC2Ei(%struct.string* @_ZL1C, i32 10)
  ret void
}

; Function Attrs: noinline optnone
define linkonce_odr dso_local void @_ZN6stringC2Ei(%struct.string* %this, i32 %len) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.string*, align 4
  %len.addr = alloca i32, align 4
  store %struct.string* %this, %struct.string** %this.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %this1 = load %struct.string*, %struct.string** %this.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %1 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4)
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  %4 = select i1 %2, i32 -1, i32 %3
  %call = call i8* @_Znaj(i32 %4) #7
  %5 = bitcast i8* %call to i32*
  %a = getelementptr inbounds %struct.string, %struct.string* %this1, i32 0, i32 0
  store i32* %5, i32** %a, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local void @_Z1fv() #2 {
entry:
  %s = alloca i8*, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %s, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define dso_local i32 @_Z2cci(i32 %w) #2 {
entry:
  %retval = alloca i32, align 4
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline norecurse optnone
define dso_local i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %siz = alloca i32**, align 4
  store i32 0, i32* %retval, align 4
  %call = call i8* @_Znaj(i32 12) #7
  %0 = bitcast i8* %call to i32**
  store i32** %0, i32*** %siz, align 4
  %call1 = call i8* @_Znaj(i32 8) #7
  %1 = bitcast i8* %call1 to i32*
  %2 = load i32**, i32*** %siz, align 4
  %arrayidx = getelementptr inbounds i32*, i32** %2, i32 1
  store i32* %1, i32** %arrayidx, align 4
  %3 = load i32**, i32*** %siz, align 4
  %arrayidx2 = getelementptr inbounds i32*, i32** %3, i32 1
  %4 = load i32*, i32** %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i32, i32* %4, i32 1
  %call4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %arrayidx3)
  %5 = load i32**, i32*** %siz, align 4
  %arrayidx5 = getelementptr inbounds i32*, i32** %5, i32 1
  %6 = load i32*, i32** %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds i32, i32* %6, i32 2
  store i32 3, i32* %arrayidx6, align 4
  %7 = load i32**, i32*** %siz, align 4
  %arrayidx7 = getelementptr inbounds i32*, i32** %7, i32 1
  %8 = load i32*, i32** %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds i32, i32* %8, i32 1
  %9 = load i32, i32* %arrayidx8, align 4
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32**, i32*** %siz, align 4
  %arrayidx9 = getelementptr inbounds i32*, i32** %10, i32 1
  %11 = load i32*, i32** %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i32 1
  %12 = load i32, i32* %arrayidx10, align 4
  %mul = mul nsw i32 %12, 12
  store i32 %mul, i32* %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32**, i32*** %siz, align 4
  %arrayidx11 = getelementptr inbounds i32*, i32** %13, i32 1
  %14 = load i32*, i32** %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i32 1
  %15 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp sgt i32 %15, 23
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then14
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znaj(i32) #4

declare dso_local i32 @__isoc99_scanf(i8*, ...) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: noinline
define internal void @_GLOBAL__sub_I_test.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { builtin }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
