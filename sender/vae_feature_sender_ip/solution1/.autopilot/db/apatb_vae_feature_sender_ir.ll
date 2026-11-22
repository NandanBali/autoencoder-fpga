; ModuleID = '/home/nandanbali/programming/deep-svdd/autoencoder/sender/vae_feature_sender_ip/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"class.hls::stream<ap_uint<64>, 0>" = type { %"struct.ap_uint<64>" }
%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<32>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_uint<32>, 0, 0, 0, '8', false>" = type { %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.hls::axis_disabled_signal" = type { i8 }
%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<64>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_uint<64>, 0, 0, 0, '8', false>" = type { %"struct.ap_uint<64>", %"struct.ap_uint<8>", %"struct.ap_uint<8>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.hls::axis_disabled_signal" }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_vae_feature_sender_ir(%"struct.ap_uint<32>"* noalias nocapture nonnull readonly "maxi" %features, %"struct.ap_uint<64>"* noalias nocapture nonnull "maxi" %t_send, %"struct.ap_uint<128>"* noalias nocapture nonnull "maxi" %results, %"struct.ap_uint<32>"* nocapture readonly %n_flows, %"struct.ap_uint<32>"* nocapture readonly %period, %"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture nonnull dereferenceable(8) %cycle_tx, %"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture nonnull dereferenceable(8) %cycle_rx, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %m_axis_features, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(16) %s_axis_score) local_unnamed_addr #1 {
entry:
  %malloccall = call i8* @malloc(i64 8192)
  %features_copy = bitcast i8* %malloccall to [2048 x i32]*
  %t_send_copy = alloca [256 x i64], align 512
  %malloccall1 = call i8* @malloc(i64 4096)
  %results_copy = bitcast i8* %malloccall1 to [256 x i128]*
  %cycle_tx_copy = alloca i64, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i64* %cycle_tx_copy, i32 0) ]
  %cycle_rx_copy = alloca i64, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i64* %cycle_rx_copy, i32 0) ]
  %m_axis_features_copy.data = alloca i32, align 512
  %m_axis_features_copy.keep = alloca i4, align 512
  %m_axis_features_copy.strb = alloca i4, align 512
  %m_axis_features_copy.last = alloca i1, align 512
  %s_axis_score_copy.data = alloca i64, align 512
  %s_axis_score_copy.keep = alloca i8, align 512
  %s_axis_score_copy.strb = alloca i8, align 512
  %s_axis_score_copy.last = alloca i1, align 512
  %0 = bitcast %"struct.ap_uint<32>"* %features to [2048 x %"struct.ap_uint<32>"]*
  %1 = bitcast %"struct.ap_uint<64>"* %t_send to [256 x %"struct.ap_uint<64>"]*
  %2 = bitcast %"struct.ap_uint<128>"* %results to [256 x %"struct.ap_uint<128>"]*
  call fastcc void @copy_in([2048 x %"struct.ap_uint<32>"]* nonnull %0, [2048 x i32]* %features_copy, [256 x %"struct.ap_uint<64>"]* nonnull %1, [256 x i64]* nonnull align 512 %t_send_copy, [256 x %"struct.ap_uint<128>"]* nonnull %2, [256 x i128]* %results_copy, %"class.hls::stream<ap_uint<64>, 0>"* nonnull %cycle_tx, i64* nonnull align 512 %cycle_tx_copy, %"class.hls::stream<ap_uint<64>, 0>"* nonnull %cycle_rx, i64* nonnull align 512 %cycle_rx_copy, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %m_axis_features, i32* nonnull align 512 %m_axis_features_copy.data, i4* nonnull align 512 %m_axis_features_copy.keep, i4* nonnull align 512 %m_axis_features_copy.strb, i1* nonnull align 512 %m_axis_features_copy.last, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* nonnull %s_axis_score, i64* nonnull align 512 %s_axis_score_copy.data, i8* nonnull align 512 %s_axis_score_copy.keep, i8* nonnull align 512 %s_axis_score_copy.strb, i1* nonnull align 512 %s_axis_score_copy.last)
  call void @apatb_vae_feature_sender_hw([2048 x i32]* %features_copy, [256 x i64]* %t_send_copy, [256 x i128]* %results_copy, %"struct.ap_uint<32>"* %n_flows, %"struct.ap_uint<32>"* %period, i64* %cycle_tx_copy, i64* %cycle_rx_copy, i32* %m_axis_features_copy.data, i4* %m_axis_features_copy.keep, i4* %m_axis_features_copy.strb, i1* %m_axis_features_copy.last, i64* %s_axis_score_copy.data, i8* %s_axis_score_copy.keep, i8* %s_axis_score_copy.strb, i1* %s_axis_score_copy.last)
  call void @copy_back([2048 x %"struct.ap_uint<32>"]* %0, [2048 x i32]* %features_copy, [256 x %"struct.ap_uint<64>"]* %1, [256 x i64]* %t_send_copy, [256 x %"struct.ap_uint<128>"]* %2, [256 x i128]* %results_copy, %"class.hls::stream<ap_uint<64>, 0>"* %cycle_tx, i64* %cycle_tx_copy, %"class.hls::stream<ap_uint<64>, 0>"* %cycle_rx, i64* %cycle_rx_copy, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %m_axis_features, i32* %m_axis_features_copy.data, i4* %m_axis_features_copy.keep, i4* %m_axis_features_copy.strb, i1* %m_axis_features_copy.last, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %s_axis_score, i64* %s_axis_score_copy.data, i8* %s_axis_score_copy.keep, i8* %s_axis_score_copy.strb, i1* %s_axis_score_copy.last)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in([2048 x %"struct.ap_uint<32>"]* noalias readonly "unpacked"="0", [2048 x i32]* noalias nocapture "unpacked"="1.0", [256 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="2", [256 x i64]* noalias nocapture align 512 "unpacked"="3.0", [256 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="4", [256 x i128]* noalias nocapture "unpacked"="5.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="6", i64* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="8", i64* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i32* noalias align 512 "unpacked"="11.0" %_V_data_V, i4* noalias align 512 "unpacked"="11.1" %_V_keep_V, i4* noalias align 512 "unpacked"="11.2" %_V_strb_V, i1* noalias align 512 "unpacked"="11.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i64* noalias align 512 "unpacked"="13.0" %_V_data_V1, i8* noalias align 512 "unpacked"="13.1" %_V_keep_V2, i8* noalias align 512 "unpacked"="13.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="13.3" %_V_last_V4) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2048struct.ap_uint<32>"([2048 x i32]* %1, [2048 x %"struct.ap_uint<32>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<64>.49"([256 x i64]* align 512 %3, [256 x %"struct.ap_uint<64>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x i128]* %5, [256 x %"struct.ap_uint<128>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>.25"(i64* align 512 %7, %"class.hls::stream<ap_uint<64>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>.25"(i64* align 512 %9, %"class.hls::stream<ap_uint<64>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>.79"(i64* align 512 %_V_data_V1, i8* align 512 %_V_keep_V2, i8* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2048struct.ap_uint<32>"([2048 x i32]* noalias nocapture "unpacked"="0.0" %dst, [2048 x %"struct.ap_uint<32>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [2048 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2048struct.ap_uint<32>"([2048 x i32]* %dst, [2048 x %"struct.ap_uint<32>"]* nonnull %src, i64 2048)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2048struct.ap_uint<32>"([2048 x i32]* nocapture "unpacked"="0.0" %dst, [2048 x %"struct.ap_uint<32>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2048 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2048 x %"struct.ap_uint<32>"], [2048 x %"struct.ap_uint<32>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [2048 x i32], [2048 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<64>"([256 x %"struct.ap_uint<64>"]* noalias "unpacked"="0" %dst, [256 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_uint<64>"([256 x %"struct.ap_uint<64>"]* nonnull %dst, [256 x i64]* %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_uint<64>"([256 x %"struct.ap_uint<64>"]* "unpacked"="0" %dst, [256 x i64]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<64>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x i64], [256 x i64]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [256 x %"struct.ap_uint<64>"], [256 x %"struct.ap_uint<64>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %1, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x i128]* noalias nocapture "unpacked"="0.0" %dst, [256 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_uint<128>"([256 x i128]* %dst, [256 x %"struct.ap_uint<128>"]* nonnull %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_uint<128>"([256 x i128]* nocapture "unpacked"="0.0" %dst, [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x %"struct.ap_uint<128>"], [256 x %"struct.ap_uint<128>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [256 x i128], [256 x i128]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %1, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i32
  %3 = alloca i1
  %4 = alloca i4
  %5 = alloca i4
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_12(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i32 %.fca.0.0.0.0.0.extract, i32* %2
  %11 = bitcast i32* %2 to i8*
  %12 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %11, i8* %12)
  store i4 %.fca.0.1.0.0.0.extract, i4* %5
  %13 = bitcast i4* %5 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %14)
  store i4 %.fca.0.2.0.0.0.extract, i4* %4
  %15 = bitcast i4* %4 to i8*
  %16 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %3
  %17 = bitcast i1* %3 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i64* noalias align 512 "unpacked"="1.0" %src_V_data_V, i8* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i8* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i64* align 512 %src_V_data_V, i8* align 512 %src_V_keep_V, i8* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i64* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i8* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i8* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #6 {
entry:
  %1 = alloca i64
  %2 = alloca i8
  %3 = alloca i8
  %4 = alloca i1
  %5 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i64* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_8(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i64* %1 to i8*
  %9 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_pop_8(i8* %8, i8* %9)
  %10 = load volatile i64, i64* %1
  call void @fpga_fifo_pop_1(i8* %3, i8* %_V_keep_V)
  %11 = load volatile i8, i8* %3
  call void @fpga_fifo_pop_1(i8* %2, i8* %_V_strb_V)
  %12 = load volatile i8, i8* %2
  %13 = bitcast i1* %4 to i8*
  %14 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i1* %4 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" undef, i64 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i8 %11, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i8 %12, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %17, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %5
  %18 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %19 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %18, i8* %19)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out([2048 x %"struct.ap_uint<32>"]* noalias "unpacked"="0", [2048 x i32]* noalias nocapture readonly "unpacked"="1.0", [256 x %"struct.ap_uint<64>"]* noalias "unpacked"="2", [256 x i64]* noalias nocapture readonly align 512 "unpacked"="3.0", [256 x %"struct.ap_uint<128>"]* noalias "unpacked"="4", [256 x i128]* noalias nocapture readonly "unpacked"="5.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="6", i64* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="8", i64* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i32* noalias align 512 "unpacked"="11.0" %_V_data_V, i4* noalias align 512 "unpacked"="11.1" %_V_keep_V, i4* noalias align 512 "unpacked"="11.2" %_V_strb_V, i1* noalias align 512 "unpacked"="11.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i64* noalias align 512 "unpacked"="13.0" %_V_data_V1, i8* noalias align 512 "unpacked"="13.1" %_V_keep_V2, i8* noalias align 512 "unpacked"="13.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="13.3" %_V_last_V4) unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2048struct.ap_uint<32>.61"([2048 x %"struct.ap_uint<32>"]* %0, [2048 x i32]* %1)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<64>"([256 x %"struct.ap_uint<64>"]* %2, [256 x i64]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.37"([256 x %"struct.ap_uint<128>"]* %4, [256 x i128]* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* %6, i64* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* %8, i64* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.89"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %10, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %11, i64* align 512 %_V_data_V1, i8* align 512 %_V_keep_V2, i8* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="0" %dst, i64* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<64>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>.19"(%"class.hls::stream<ap_uint<64>, 0>"* nonnull %dst, i64* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>.19"(%"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture "unpacked"="0", i64* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #6 {
entry:
  %2 = alloca i64
  %3 = alloca %"class.hls::stream<ap_uint<64>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i64* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i64* %2 to i8*
  %7 = bitcast i64* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile i64, i64* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<64>, 0>" undef, i64 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<64>, 0>" %.ivi, %"class.hls::stream<ap_uint<64>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>.25"(i64* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<64>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>.28"(i64* align 512 %dst, %"class.hls::stream<ap_uint<64>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<64>, 0>.28"(i64* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<64>, 0>"
  %3 = alloca i64
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<64>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<64>, 0>", %"class.hls::stream<ap_uint<64>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<64>, 0>" %8, 0, 0, 0, 0
  store i64 %.evi, i64* %3
  %9 = bitcast i64* %3 to i8*
  %10 = bitcast i64* %0 to i8*
  call void @fpga_fifo_push_8(i8* %9, i8* %10)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.37"([256 x %"struct.ap_uint<128>"]* noalias "unpacked"="0" %dst, [256 x i128]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_uint<128>.40"([256 x %"struct.ap_uint<128>"]* nonnull %dst, [256 x i128]* %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_uint<128>.40"([256 x %"struct.ap_uint<128>"]* "unpacked"="0" %dst, [256 x i128]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x i128], [256 x i128]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [256 x %"struct.ap_uint<128>"], [256 x %"struct.ap_uint<128>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %1, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<64>.49"([256 x i64]* noalias nocapture align 512 "unpacked"="0.0" %dst, [256 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_uint<64>.52"([256 x i64]* %dst, [256 x %"struct.ap_uint<64>"]* nonnull %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_uint<64>.52"([256 x i64]* nocapture "unpacked"="0.0" %dst, [256 x %"struct.ap_uint<64>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<64>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x %"struct.ap_uint<64>"], [256 x %"struct.ap_uint<64>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [256 x i64], [256 x i64]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %1, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a2048struct.ap_uint<32>.61"([2048 x %"struct.ap_uint<32>"]* noalias "unpacked"="0" %dst, [2048 x i32]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [2048 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2048struct.ap_uint<32>.64"([2048 x %"struct.ap_uint<32>"]* nonnull %dst, [2048 x i32]* %src, i64 2048)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a2048struct.ap_uint<32>.64"([2048 x %"struct.ap_uint<32>"]* "unpacked"="0" %dst, [2048 x i32]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #4 {
entry:
  %0 = icmp eq [2048 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2048 x i32], [2048 x i32]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [2048 x %"struct.ap_uint<32>"], [2048 x %"struct.ap_uint<32>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>.79"(i64* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i8* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i8* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>.82"(i64* align 512 %dst_V_data_V, i8* align 512 %dst_V_keep_V, i8* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>.82"(i64* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i8* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i8* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i64
  %3 = alloca i8
  %4 = alloca i8
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_16(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_16(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i64 %.fca.0.0.0.0.0.extract, i64* %2
  %11 = bitcast i64* %2 to i8*
  %12 = bitcast i64* %_V_data_V to i8*
  call void @fpga_fifo_push_8(i8* %11, i8* %12)
  store i8 %.fca.0.1.0.0.0.extract, i8* %4
  call void @fpga_fifo_push_1(i8* %4, i8* %_V_keep_V)
  store i8 %.fca.0.2.0.0.0.extract, i8* %3
  call void @fpga_fifo_push_1(i8* %3, i8* %_V_strb_V)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %13 = bitcast i1* %5 to i8*
  %14 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %14)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.89"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i32* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.92"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i32* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.92"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i32* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #6 {
entry:
  %1 = alloca i1
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %2 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %2
  %11 = bitcast i4* %4 to i8*
  %12 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %11, i8* %12)
  %13 = bitcast i4* %4 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i4
  %16 = bitcast i4* %3 to i8*
  %17 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i4* %3 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i4
  %21 = bitcast i1* %1 to i8*
  %22 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i1* %1 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" undef, i32 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i4 %15, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i4 %20, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %25, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %5
  %26 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %27 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_vae_feature_sender_hw([2048 x i32]*, [256 x i64]*, [256 x i128]*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, i64*, i64*, i32*, i4*, i4*, i1*, i64*, i8*, i8*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back([2048 x %"struct.ap_uint<32>"]* noalias "unpacked"="0", [2048 x i32]* noalias nocapture readonly "unpacked"="1.0", [256 x %"struct.ap_uint<64>"]* noalias "unpacked"="2", [256 x i64]* noalias nocapture readonly align 512 "unpacked"="3.0", [256 x %"struct.ap_uint<128>"]* noalias "unpacked"="4", [256 x i128]* noalias nocapture readonly "unpacked"="5.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="6", i64* noalias nocapture align 512 "unpacked"="7.0", %"class.hls::stream<ap_uint<64>, 0>"* noalias "unpacked"="8", i64* noalias nocapture align 512 "unpacked"="9.0", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i32* noalias align 512 "unpacked"="11.0" %_V_data_V, i4* noalias align 512 "unpacked"="11.1" %_V_keep_V, i4* noalias align 512 "unpacked"="11.2" %_V_strb_V, i1* noalias align 512 "unpacked"="11.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i64* noalias align 512 "unpacked"="13.0" %_V_data_V1, i8* noalias align 512 "unpacked"="13.1" %_V_keep_V2, i8* noalias align 512 "unpacked"="13.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="13.3" %_V_last_V4) unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<64>"([256 x %"struct.ap_uint<64>"]* %2, [256 x i64]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.37"([256 x %"struct.ap_uint<128>"]* %4, [256 x i128]* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* %6, i64* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<64>, 0>"(%"class.hls::stream<ap_uint<64>, 0>"* %8, i64* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.89"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %10, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %11, i64* align 512 %_V_data_V1, i8* align 512 %_V_keep_V2, i8* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  ret void
}

define void @vae_feature_sender_hw_stub_wrapper([2048 x i32]*, [256 x i64]*, [256 x i128]*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, i64*, i64*, i32*, i4*, i4*, i1*, i64*, i8*, i8*, i1*) #8 {
entry:
  %malloccall = tail call i8* @malloc(i64 8192)
  %15 = bitcast i8* %malloccall to [2048 x %"struct.ap_uint<32>"]*
  %16 = alloca [256 x %"struct.ap_uint<64>"]
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %17 = bitcast i8* %malloccall1 to [256 x %"struct.ap_uint<128>"]*
  %18 = alloca %"class.hls::stream<ap_uint<64>, 0>"
  %19 = alloca %"class.hls::stream<ap_uint<64>, 0>"
  %20 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  %21 = alloca %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"
  call void @copy_out([2048 x %"struct.ap_uint<32>"]* %15, [2048 x i32]* %0, [256 x %"struct.ap_uint<64>"]* %16, [256 x i64]* %1, [256 x %"struct.ap_uint<128>"]* %17, [256 x i128]* %2, %"class.hls::stream<ap_uint<64>, 0>"* %18, i64* %5, %"class.hls::stream<ap_uint<64>, 0>"* %19, i64* %6, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %20, i32* %7, i4* %8, i4* %9, i1* %10, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %21, i64* %11, i8* %12, i8* %13, i1* %14)
  %22 = bitcast [2048 x %"struct.ap_uint<32>"]* %15 to %"struct.ap_uint<32>"*
  %23 = bitcast [256 x %"struct.ap_uint<64>"]* %16 to %"struct.ap_uint<64>"*
  %24 = bitcast [256 x %"struct.ap_uint<128>"]* %17 to %"struct.ap_uint<128>"*
  call void @vae_feature_sender_hw_stub(%"struct.ap_uint<32>"* %22, %"struct.ap_uint<64>"* %23, %"struct.ap_uint<128>"* %24, %"struct.ap_uint<32>"* %3, %"struct.ap_uint<32>"* %4, %"class.hls::stream<ap_uint<64>, 0>"* %18, %"class.hls::stream<ap_uint<64>, 0>"* %19, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %20, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %21)
  call void @copy_in([2048 x %"struct.ap_uint<32>"]* %15, [2048 x i32]* %0, [256 x %"struct.ap_uint<64>"]* %16, [256 x i64]* %1, [256 x %"struct.ap_uint<128>"]* %17, [256 x i128]* %2, %"class.hls::stream<ap_uint<64>, 0>"* %18, i64* %5, %"class.hls::stream<ap_uint<64>, 0>"* %19, i64* %6, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %20, i32* %7, i4* %8, i4* %9, i1* %10, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"* %21, i64* %11, i8* %12, i8* %13, i1* %14)
  ret void
}

declare void @vae_feature_sender_hw_stub(%"struct.ap_uint<32>"*, %"struct.ap_uint<64>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"class.hls::stream<ap_uint<64>, 0>"*, %"class.hls::stream<ap_uint<64>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<64>, 0, 0, 0, '8', false>, 0>"*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="64" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
