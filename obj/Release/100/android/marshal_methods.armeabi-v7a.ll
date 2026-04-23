; ModuleID = 'obj\Release\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\100\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [38 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 14
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 4
	i32 321597661, ; 2: System.Numerics => 0x132b30dd => 10
	i32 382749721, ; 3: Impressora => 0x16d04c19 => 0
	i32 442521989, ; 4: Xamarin.Essentials => 0x1a605985 => 13
	i32 464527076, ; 5: Impressora.dll => 0x1bb01ee4 => 0
	i32 465846621, ; 6: mscorlib => 0x1bc4415d => 3
	i32 469710990, ; 7: System.dll => 0x1bff388e => 8
	i32 690569205, ; 8: System.Xml.Linq.dll => 0x29293ff5 => 17
	i32 928116545, ; 9: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 14
	i32 955402788, ; 10: Newtonsoft.Json => 0x38f24a24 => 4
	i32 1098259244, ; 11: System => 0x41761b2c => 8
	i32 1592978981, ; 12: System.Runtime.Serialization.dll => 0x5ef2ee25 => 16
	i32 1600778655, ; 13: SQLite.Net.Platform.XamarinAndroid.dll => 0x5f69f19f => 6
	i32 1637997082, ; 14: SQLite.Net.Platform.XamarinAndroid => 0x61a1da1a => 6
	i32 1639515021, ; 15: System.Net.Http.dll => 0x61b9038d => 9
	i32 1776026572, ; 16: System.Core.dll => 0x69dc03cc => 7
	i32 1867746548, ; 17: Xamarin.Essentials.dll => 0x6f538cf4 => 13
	i32 2201231467, ; 18: System.Net.Http => 0x8334206b => 9
	i32 2475788418, ; 19: Java.Interop.dll => 0x93918882 => 1
	i32 2819470561, ; 20: System.Xml.dll => 0xa80db4e1 => 11
	i32 2905242038, ; 21: mscorlib.dll => 0xad2a79b6 => 3
	i32 3111772706, ; 22: System.Runtime.Serialization => 0xb979e222 => 16
	i32 3204380047, ; 23: System.Data.dll => 0xbefef58f => 15
	i32 3247949154, ; 24: Mono.Security => 0xc197c562 => 18
	i32 3317144872, ; 25: System.Data => 0xc5b79d28 => 15
	i32 3362522851, ; 26: Xamarin.AndroidX.Core => 0xc86c06e3 => 12
	i32 3366347497, ; 27: Java.Interop => 0xc8a662e9 => 1
	i32 3429136800, ; 28: System.Xml => 0xcc6479a0 => 11
	i32 3476120550, ; 29: Mono.Android => 0xcf3163e6 => 2
	i32 3509114376, ; 30: System.Xml.Linq => 0xd128d608 => 17
	i32 3544605649, ; 31: SQLite.Net.dll => 0xd34663d1 => 5
	i32 3672681054, ; 32: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3697130073, ; 33: SQLite.Net => 0xdc5dba59 => 5
	i32 3829621856, ; 34: System.Numerics.dll => 0xe4436460 => 10
	i32 3896760992, ; 35: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 12
	i32 4105002889, ; 36: Mono.Security.dll => 0xf4ad5f89 => 18
	i32 4151237749 ; 37: System.Core => 0xf76edc75 => 7
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [38 x i32] [
	i32 14, i32 4, i32 10, i32 0, i32 13, i32 0, i32 3, i32 8, ; 0..7
	i32 17, i32 14, i32 4, i32 8, i32 16, i32 6, i32 6, i32 9, ; 8..15
	i32 7, i32 13, i32 9, i32 1, i32 11, i32 3, i32 16, i32 15, ; 16..23
	i32 18, i32 15, i32 12, i32 1, i32 11, i32 2, i32 17, i32 5, ; 24..31
	i32 2, i32 5, i32 10, i32 12, i32 18, i32 7 ; 32..37
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
