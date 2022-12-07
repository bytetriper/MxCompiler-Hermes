; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown"

@s = dso_local global i8 1, align 1
@a = dso_local global i32** null, align 4
@.str = private unnamed_addr constant [7 x i8] c"asdasd\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] [i8 1], align 1
@siz = dso_local global [2 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone
define dso_local void @_Z1fv() #0 {
entry:
  %s = alloca i8*, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %s, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m,+relax" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m,+relax" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32d"}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
