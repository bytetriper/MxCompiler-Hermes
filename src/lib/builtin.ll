; ModuleID = 'lib/builtin.c'
source_filename = "lib/builtin.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nofree nounwind
define dso_local void @printf_no_collision_please(i32 %c) local_unnamed_addr #0 {
entry:
  %putchar = tail call i32 @putchar(i32 %c)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
define dso_local void @printInt(i32 %c) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %c)
  ret void
}

; Function Attrs: nounwind
define dso_local i32 @getInt() local_unnamed_addr #2 {
entry:
  %c = alloca i32, align 4
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* nonnull %c)
  %1 = load i32, i32* %c, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_scanf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
define dso_local i32 @scanf_no_collision_please() local_unnamed_addr #2 {
entry:
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #5
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* nonnull %c)
  %0 = load i8, i8* %c, align 1, !tbaa !7
  %conv = sext i8 %0 to i32
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #5
  ret i32 %conv
}

; Function Attrs: nofree nounwind
define dso_local noalias i32* @_malloc(i32 %size) local_unnamed_addr #0 {
entry:
  %shl = shl i32 %size, 2
  %call = tail call noalias i8* @malloc(i32 %shl) #5
  %0 = bitcast i8* %call to i32*
  ret i32* %0
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: nofree nounwind
define dso_local noalias i32* @_malloc_toInt(i32* nocapture %size, i32 %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %size, align 4, !tbaa !3
  %shl = shl i32 %0, 2
  %add = add nsw i32 %shl, 4
  %call = tail call noalias i8* @malloc(i32 %add) #5
  %1 = bitcast i8* %call to i32*
  store i32 %0, i32* %1, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8, i8* %call, i32 4
  %2 = bitcast i8* %add.ptr to i32*
  %cmp318 = icmp sgt i32 %0, 0
  br i1 %cmp318, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr4 = getelementptr inbounds i32, i32* %size, i32 1
  %sub = add nsw i32 %len, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %call5 = tail call i32* @_malloc_toInt(i32* nonnull %add.ptr4, i32 %sub)
  %3 = ptrtoint i32* %call5 to i32
  %arrayidx6 = getelementptr inbounds i32, i32* %2, i32 %i.019
  store i32 %3, i32* %arrayidx6, align 4, !tbaa !3
  %inc = add nuw nsw i32 %i.019, 1
  %4 = load i32, i32* %size, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %inc, %4
  br i1 %cmp3, label %for.body, label %return

return:                                           ; preds = %for.body, %if.end, %entry
  %retval.0 = phi i32* [ null, %entry ], [ %2, %if.end ], [ %2, %for.body ]
  ret i32* %retval.0
}

; Function Attrs: nofree nounwind
define dso_local noalias nonnull i32* @_malloc_toBool(i32* nocapture %size, i32 %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %len, 1
  %0 = load i32, i32* %size, align 4, !tbaa !3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add = add nsw i32 %0, 4
  %call = tail call noalias i8* @malloc(i32 %add) #5
  %1 = bitcast i8* %call to i32*
  store i32 %0, i32* %1, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8, i8* %call, i32 16
  %2 = bitcast i8* %add.ptr to i32*
  br label %return

if.end:                                           ; preds = %entry
  %shl = shl i32 %0, 2
  %add4 = add nsw i32 %shl, 4
  %call5 = tail call noalias i8* @malloc(i32 %add4) #5
  %3 = bitcast i8* %call5 to i32*
  store i32 %0, i32* %3, align 4, !tbaa !3
  %add.ptr7 = getelementptr inbounds i8, i8* %call5, i32 4
  %4 = bitcast i8* %add.ptr7 to i32*
  %cmp929 = icmp sgt i32 %0, 0
  br i1 %cmp929, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr10 = getelementptr inbounds i32, i32* %size, i32 1
  %sub = add nsw i32 %len, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %call11 = tail call i32* @_malloc_toBool(i32* nonnull %add.ptr10, i32 %sub)
  %5 = ptrtoint i32* %call11 to i32
  %arrayidx12 = getelementptr inbounds i32, i32* %4, i32 %i.030
  store i32 %5, i32* %arrayidx12, align 4, !tbaa !3
  %inc = add nuw nsw i32 %i.030, 1
  %6 = load i32, i32* %size, align 4, !tbaa !3
  %cmp9 = icmp slt i32 %inc, %6
  br i1 %cmp9, label %for.body, label %return

return:                                           ; preds = %for.body, %if.end, %if.then
  %retval.0 = phi i32* [ %2, %if.then ], [ %4, %if.end ], [ %4, %for.body ]
  ret i32* %retval.0
}

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #4

attributes #0 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cx8,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
