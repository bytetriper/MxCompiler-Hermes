; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown"

@s = dso_local global i32 0, align 4
@.str = global [7 x i8] c"Asdasd\00", align 1
@.str.1 = global [9 x i8] c"AsdASDsd\00", align 1

; Function Attrs: noinline norecurse nounwind optnone
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i8*, align 4
  %d = alloca i8*, align 4
  %cc = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 3, i32* %a, align 4
  %0 = load i32, i32* %a, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %a, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 2, i32* %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %c, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %d, align 4
  store i8 1, i8* %cc, align 1
  %1 = load i32, i32* %a, align 4
  %shl = shl i32 %1, 1
  store i32 %shl, i32* %a, align 4
  %2 = load i8, i8* %cc, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.else2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else2, %if.then1
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

attributes #0 = { noinline norecurse nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m,+relax" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32d"}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
