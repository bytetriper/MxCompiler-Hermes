; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown"

%class.A = type { i32, i32, i32 }

$_ZN1AC2Ev = comdat any

@s = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone
define dso_local i32 @_Z3asdv() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline norecurse optnone
define dso_local i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %class.A, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @_ZN1AC2Ev(%class.A* %a)
  store i32 1, i32* %b, align 4
  %0 = load i32, i32* %b, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %b, align 4
  %call = call i32 @_Z3asdv()
  store i32 %call, i32* %b, align 4
  %1 = load i32, i32* %b, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %b, align 4
  store i32 %2, i32* %c, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr dso_local void @_ZN1AC2Ev(%class.A* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.A*, align 4
  store %class.A* %this, %class.A** %this.addr, align 4
  %this1 = load %class.A*, %class.A** %this.addr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m,+relax" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+a,+c,+d,+f,+m,+relax" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32d"}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
