; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nofree norecurse nounwind
define dllexport void @add_one_fpga_kernel_1(i32* noalias nocapture readonly %0, i32* noalias nocapture %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %43, !prof !0

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  %8 = icmp ult i32 %2, 8
  br i1 %8, label %33, label %9

9:                                                ; preds = %6
  %10 = and i64 %7, 4294967288
  %11 = insertelement <4 x i32> undef, i32 %3, i32 0
  %12 = shufflevector <4 x i32> %11, <4 x i32> undef, <4 x i32> zeroinitializer
  %13 = insertelement <4 x i32> undef, i32 %3, i32 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %15

15:                                               ; preds = %15, %9
  %16 = phi i64 [ 0, %9 ], [ %29, %15 ]
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = bitcast i32* %17 to <4 x i32>*
  %19 = load <4 x i32>, <4 x i32>* %18, align 4
  %20 = getelementptr inbounds i32, i32* %17, i64 4
  %21 = bitcast i32* %20 to <4 x i32>*
  %22 = load <4 x i32>, <4 x i32>* %21, align 4
  %23 = add nsw <4 x i32> %19, %12
  %24 = add nsw <4 x i32> %22, %14
  %25 = getelementptr inbounds i32, i32* %1, i64 %16
  %26 = bitcast i32* %25 to <4 x i32>*
  store <4 x i32> %23, <4 x i32>* %26, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  store <4 x i32> %24, <4 x i32>* %28, align 4
  %29 = add i64 %16, 8
  %30 = icmp eq i64 %29, %10
  br i1 %30, label %31, label %15, !llvm.loop !1

31:                                               ; preds = %15
  %32 = icmp eq i64 %10, %7
  br i1 %32, label %43, label %33

33:                                               ; preds = %31, %6
  %34 = phi i64 [ 0, %6 ], [ %10, %31 ]
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i64 [ %41, %35 ], [ %34, %33 ]
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %3
  %40 = getelementptr inbounds i32, i32* %1, i64 %36
  store i32 %39, i32* %40, align 4
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %7
  br i1 %42, label %43, label %35, !prof !3, !llvm.loop !4

43:                                               ; preds = %35, %31, %4
  ret void
}

define dllexport void @slice_add_one_fpga_kernel_1(i32* noalias %0, i8* noalias %1, i64* noalias %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #1 {
  %8 = tail call i32 @launch_slice_kernel(i32* %0, i8* %1, i64* %2, i32 %3, i32 %4, i32 %5, i32 %6)
  ret void
}

declare i32 @launch_slice_kernel(i32*, i8*, i64*, i32, i32, i32, i32) local_unnamed_addr

; Function Attrs: nounwind readnone
define weak dso_local i16 @__truncsfhf2(float %0) local_unnamed_addr #2 section ".text.tvm.fp16.conv" {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 2147483647
  %4 = add nsw i32 %3, -947912704
  %5 = add nsw i32 %3, -1199570944
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = lshr i32 %2, 13
  %9 = and i32 %8, 65535
  %10 = add nuw nsw i32 %9, -114688
  %11 = and i32 %2, 8191
  %12 = icmp ugt i32 %11, 4096
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = add nuw nsw i32 %9, -114687
  br label %52

15:                                               ; preds = %7
  %16 = icmp eq i32 %11, 4096
  br i1 %16, label %17, label %52

17:                                               ; preds = %15
  %18 = and i32 %10, 65535
  %19 = and i32 %8, 1
  %20 = add nuw nsw i32 %18, %19
  br label %52

21:                                               ; preds = %1
  %22 = icmp ugt i32 %3, 2139095040
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = lshr i32 %2, 13
  %25 = and i32 %24, 511
  %26 = or i32 %25, 32256
  br label %52

27:                                               ; preds = %21
  %28 = icmp ugt i32 %3, 1199570943
  br i1 %28, label %52, label %29

29:                                               ; preds = %27
  %30 = icmp ult i32 %3, 754974720
  br i1 %30, label %52, label %31

31:                                               ; preds = %29
  %32 = lshr i32 %3, 23
  %33 = sub nsw i32 113, %32
  %34 = and i32 %2, 8388607
  %35 = or i32 %34, 8388608
  %36 = add nsw i32 %32, -81
  %37 = shl i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = lshr i32 %35, %33
  %40 = zext i1 %38 to i32
  %41 = lshr i32 %39, 13
  %42 = and i32 %39, 8191
  %43 = or i32 %42, %40
  %44 = icmp ugt i32 %43, 4096
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = add nuw nsw i32 %41, 1
  br label %52

47:                                               ; preds = %31
  %48 = icmp eq i32 %43, 4096
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = and i32 %41, 1
  %51 = add nuw nsw i32 %50, %41
  br label %52

52:                                               ; preds = %49, %47, %45, %29, %27, %23, %17, %15, %13
  %53 = phi i32 [ %26, %23 ], [ %14, %13 ], [ %20, %17 ], [ %10, %15 ], [ 31744, %27 ], [ 0, %29 ], [ %46, %45 ], [ %51, %49 ], [ %41, %47 ]
  %54 = lshr i32 %2, 16
  %55 = and i32 %54, 32768
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i16
  ret i16 %57
}

; Function Attrs: nounwind readnone
define weak dso_local float @__extendhfsf2(i16 %0) local_unnamed_addr #2 section ".text.tvm.fp16.conv" {
  %2 = and i16 %0, 32767
  %3 = zext i16 %2 to i32
  %4 = add nsw i16 %2, -1024
  %5 = icmp ult i16 %4, 30720
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = shl nuw nsw i32 %3, 13
  %8 = add nuw nsw i32 %7, 939524096
  br label %41

9:                                                ; preds = %1
  %10 = icmp ugt i16 %2, 31743
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = shl nuw nsw i32 %3, 13
  %13 = or i32 %12, 2139095040
  br label %41

14:                                               ; preds = %9
  %15 = icmp eq i16 %2, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %14
  %17 = icmp ult i16 %2, 256
  %18 = lshr i32 %3, 8
  %19 = select i1 %17, i32 %3, i32 %18
  %20 = select i1 %17, i32 32, i32 24
  %21 = icmp ult i32 %19, 16
  %22 = lshr i32 %19, 4
  %23 = add nsw i32 %20, -4
  %24 = select i1 %21, i32 %19, i32 %22
  %25 = select i1 %21, i32 %20, i32 %23
  %26 = icmp ult i32 %24, 4
  %27 = lshr i32 %24, 2
  %28 = add nsw i32 %25, -2
  %29 = select i1 %26, i32 %24, i32 %27
  %30 = select i1 %26, i32 %25, i32 %28
  %31 = icmp ult i32 %29, 2
  %32 = sub nsw i32 0, %29
  %33 = select i1 %31, i32 %32, i32 -2
  %34 = add nsw i32 %33, %30
  %35 = add nsw i32 %34, -8
  %36 = shl i32 %3, %35
  %37 = xor i32 %36, 8388608
  %38 = shl i32 %34, 23
  %39 = sub i32 1124073472, %38
  %40 = or i32 %37, %39
  br label %41

41:                                               ; preds = %16, %14, %11, %6
  %42 = phi i32 [ %8, %6 ], [ %13, %11 ], [ %40, %16 ], [ 0, %14 ]
  %43 = and i16 %0, -32768
  %44 = zext i16 %43 to i32
  %45 = shl nuw i32 %44, 16
  %46 = or i32 %42, %45
  %47 = bitcast i32 %46 to float
  ret float %47
}

attributes #0 = { nofree norecurse nounwind "target-cpu"="generic" }
attributes #1 = { "target-cpu"="generic" }
attributes #2 = { nounwind readnone "target-cpu"="generic" "target-features" }

!0 = !{!"branch_weights", i32 1048576, i32 1}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.isvectorized", i32 1}
!3 = !{!"branch_weights", i32 1, i32 1048576}
!4 = distinct !{!4, !5, !2}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
