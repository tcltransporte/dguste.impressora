; ModuleID = 'obj\Release\100\android\compressed_assemblies.arm64-v8a.ll'
source_filename = "obj\Release\100\android\compressed_assemblies.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [142848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [165376 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [996352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [121856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [690176 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [14848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [79872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [376832 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [747008 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [218112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [38912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [6144 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [65024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [1318912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [837632 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [8704 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [26112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [18072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [2010112 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [19 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 142848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([142848 x i8], [142848 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 165376, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([165376 x i8], [165376 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 996352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([996352 x i8], [996352 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 121856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([121856 x i8], [121856 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 690176, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([690176 x i8], [690176 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14848 x i8], [14848 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 79872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([79872 x i8], [79872 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 376832, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([376832 x i8], [376832 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 747008, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([747008 x i8], [747008 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 218112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([218112 x i8], [218112 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 38912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([38912 x i8], [38912 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6144 x i8], [6144 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 65024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([65024 x i8], [65024 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 1318912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1318912 x i8], [1318912 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 837632, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([837632 x i8], [837632 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 8704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8704 x i8], [8704 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 26112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([26112 x i8], [26112 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 18072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18072 x i8], [18072 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 2010112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2010112 x i8], [2010112 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}
], align 8; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 19, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([19 x %struct.CompressedAssemblyDescriptor], [19 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 8


!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
