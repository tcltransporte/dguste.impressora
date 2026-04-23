; ModuleID = 'obj\Debug\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\100\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [156 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 37
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 55
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 5
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 46
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 46
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 24
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 47
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 22
	i32 220171995, ; 8: System.Diagnostics.Debug => 0xd1f8edb => 70
	i32 230216969, ; 9: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 34
	i32 231814094, ; 10: System.Globalization => 0xdd133ce => 74
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 66
	i32 280482487, ; 12: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 32
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 15
	i32 321597661, ; 14: System.Numerics => 0x132b30dd => 11
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 35
	i32 382749721, ; 16: Impressora => 0x16d04c19 => 0
	i32 442521989, ; 17: Xamarin.Essentials => 0x1a605985 => 53
	i32 442565967, ; 18: System.Collections => 0x1a61054f => 68
	i32 450948140, ; 19: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 31
	i32 464527076, ; 20: Impressora.dll => 0x1bb01ee4 => 0
	i32 465846621, ; 21: mscorlib => 0x1bc4415d => 4
	i32 469710990, ; 22: System.dll => 0x1bff388e => 9
	i32 476646585, ; 23: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 32
	i32 486930444, ; 24: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 41
	i32 526420162, ; 25: System.Transactions.dll => 0x1f6088c2 => 59
	i32 545304856, ; 26: System.Runtime.Extensions => 0x2080b118 => 71
	i32 605376203, ; 27: System.IO.Compression.FileSystem => 0x24154ecb => 62
	i32 627609679, ; 28: Xamarin.AndroidX.CustomView => 0x2568904f => 28
	i32 663517072, ; 29: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 51
	i32 666292255, ; 30: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 19
	i32 690569205, ; 31: System.Xml.Linq.dll => 0x29293ff5 => 67
	i32 775507847, ; 32: System.IO.Compression => 0x2e394f87 => 61
	i32 809851609, ; 33: System.Drawing.Common.dll => 0x30455ad9 => 56
	i32 843511501, ; 34: Xamarin.AndroidX.Print => 0x3246f6cd => 43
	i32 877678880, ; 35: System.Globalization.dll => 0x34505120 => 74
	i32 928116545, ; 36: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 55
	i32 955402788, ; 37: Newtonsoft.Json => 0x38f24a24 => 5
	i32 967690846, ; 38: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 35
	i32 992768348, ; 39: System.Collections.dll => 0x3b2c715c => 68
	i32 1012816738, ; 40: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 45
	i32 1035644815, ; 41: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 18
	i32 1044663988, ; 42: System.Linq.Expressions.dll => 0x3e444eb4 => 72
	i32 1052210849, ; 43: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 38
	i32 1098259244, ; 44: System => 0x41761b2c => 9
	i32 1175144683, ; 45: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 49
	i32 1204270330, ; 46: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 19
	i32 1267360935, ; 47: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 50
	i32 1293217323, ; 48: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 30
	i32 1324164729, ; 49: System.Linq => 0x4eed2679 => 73
	i32 1365406463, ; 50: System.ServiceModel.Internals.dll => 0x516272ff => 65
	i32 1376866003, ; 51: Xamarin.AndroidX.SavedState => 0x52114ed3 => 45
	i32 1406073936, ; 52: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 25
	i32 1457743152, ; 53: System.Runtime.Extensions.dll => 0x56e36530 => 71
	i32 1462112819, ; 54: System.IO.Compression.dll => 0x57261233 => 61
	i32 1469204771, ; 55: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 17
	i32 1550322496, ; 56: System.Reflection.Extensions.dll => 0x5c680b40 => 1
	i32 1582372066, ; 57: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 29
	i32 1592978981, ; 58: System.Runtime.Serialization.dll => 0x5ef2ee25 => 64
	i32 1600778655, ; 59: SQLite.Net.Platform.XamarinAndroid.dll => 0x5f69f19f => 7
	i32 1622152042, ; 60: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 40
	i32 1636350590, ; 61: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 27
	i32 1637997082, ; 62: SQLite.Net.Platform.XamarinAndroid => 0x61a1da1a => 7
	i32 1639515021, ; 63: System.Net.Http.dll => 0x61b9038d => 10
	i32 1657153582, ; 64: System.Runtime => 0x62c6282e => 13
	i32 1658251792, ; 65: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 54
	i32 1701541528, ; 66: System.Diagnostics.Debug.dll => 0x656b7698 => 70
	i32 1726116996, ; 67: System.Reflection.dll => 0x66e27484 => 69
	i32 1729485958, ; 68: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 23
	i32 1765942094, ; 69: System.Reflection.Extensions => 0x6942234e => 1
	i32 1766324549, ; 70: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 47
	i32 1776026572, ; 71: System.Core.dll => 0x69dc03cc => 8
	i32 1788241197, ; 72: Xamarin.AndroidX.Fragment => 0x6a96652d => 31
	i32 1808609942, ; 73: Xamarin.AndroidX.Loader => 0x6bcd3296 => 40
	i32 1813201214, ; 74: Xamarin.Google.Android.Material => 0x6c13413e => 54
	i32 1858542181, ; 75: System.Linq.Expressions => 0x6ec71a65 => 72
	i32 1867746548, ; 76: Xamarin.Essentials.dll => 0x6f538cf4 => 53
	i32 1885316902, ; 77: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 20
	i32 1919157823, ; 78: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 42
	i32 2019465201, ; 79: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 38
	i32 2055257422, ; 80: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 36
	i32 2079903147, ; 81: System.Runtime.dll => 0x7bf8cdab => 13
	i32 2090596640, ; 82: System.Numerics.Vectors => 0x7c9bf920 => 12
	i32 2097448633, ; 83: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 33
	i32 2201231467, ; 84: System.Net.Http => 0x8334206b => 10
	i32 2217644978, ; 85: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 49
	i32 2244775296, ; 86: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 41
	i32 2256548716, ; 87: Xamarin.AndroidX.MultiDex => 0x8680336c => 42
	i32 2279755925, ; 88: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 44
	i32 2315684594, ; 89: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 16
	i32 2454642406, ; 90: System.Text.Encoding.dll => 0x924edee6 => 76
	i32 2471841756, ; 91: netstandard.dll => 0x93554fdc => 57
	i32 2475788418, ; 92: Java.Interop.dll => 0x93918882 => 2
	i32 2501346920, ; 93: System.Data.DataSetExtensions => 0x95178668 => 60
	i32 2505896520, ; 94: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 37
	i32 2581819634, ; 95: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 50
	i32 2620871830, ; 96: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 27
	i32 2732626843, ; 97: Xamarin.AndroidX.Activity => 0xa2e0939b => 15
	i32 2737747696, ; 98: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 17
	i32 2778768386, ; 99: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 52
	i32 2810250172, ; 100: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 25
	i32 2819470561, ; 101: System.Xml.dll => 0xa80db4e1 => 14
	i32 2853208004, ; 102: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 52
	i32 2855708567, ; 103: Xamarin.AndroidX.Transition => 0xaa36a797 => 48
	i32 2901442782, ; 104: System.Reflection => 0xacf080de => 69
	i32 2903344695, ; 105: System.ComponentModel.Composition => 0xad0d8637 => 63
	i32 2905242038, ; 106: mscorlib.dll => 0xad2a79b6 => 4
	i32 2919462931, ; 107: System.Numerics.Vectors.dll => 0xae037813 => 12
	i32 2978675010, ; 108: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 30
	i32 3024354802, ; 109: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 34
	i32 3111772706, ; 110: System.Runtime.Serialization => 0xb979e222 => 64
	i32 3204380047, ; 111: System.Data.dll => 0xbefef58f => 58
	i32 3211777861, ; 112: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 29
	i32 3220365878, ; 113: System.Threading => 0xbff2e236 => 75
	i32 3247949154, ; 114: Mono.Security => 0xc197c562 => 77
	i32 3258312781, ; 115: Xamarin.AndroidX.CardView => 0xc235e84d => 23
	i32 3267021929, ; 116: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 21
	i32 3299363146, ; 117: System.Text.Encoding => 0xc4a8494a => 76
	i32 3317135071, ; 118: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 28
	i32 3317144872, ; 119: System.Data => 0xc5b79d28 => 58
	i32 3340431453, ; 120: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 20
	i32 3353484488, ; 121: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 33
	i32 3362522851, ; 122: Xamarin.AndroidX.Core => 0xc86c06e3 => 26
	i32 3366347497, ; 123: Java.Interop => 0xc8a662e9 => 2
	i32 3374999561, ; 124: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 44
	i32 3404865022, ; 125: System.ServiceModel.Internals => 0xcaf21dfe => 65
	i32 3429136800, ; 126: System.Xml => 0xcc6479a0 => 14
	i32 3430777524, ; 127: netstandard => 0xcc7d82b4 => 57
	i32 3476120550, ; 128: Mono.Android => 0xcf3163e6 => 3
	i32 3486566296, ; 129: System.Transactions => 0xcfd0c798 => 59
	i32 3501239056, ; 130: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 21
	i32 3509114376, ; 131: System.Xml.Linq => 0xd128d608 => 67
	i32 3544605649, ; 132: SQLite.Net.dll => 0xd34663d1 => 6
	i32 3567349600, ; 133: System.ComponentModel.Composition.dll => 0xd4a16f60 => 63
	i32 3608519521, ; 134: System.Linq.dll => 0xd715a361 => 73
	i32 3627220390, ; 135: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 43
	i32 3641597786, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 36
	i32 3672681054, ; 137: Mono.Android.dll => 0xdae8aa5e => 3
	i32 3676310014, ; 138: System.Web.Services.dll => 0xdb2009fe => 66
	i32 3682565725, ; 139: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 22
	i32 3689375977, ; 140: System.Drawing.Common => 0xdbe768e9 => 56
	i32 3697130073, ; 141: SQLite.Net => 0xdc5dba59 => 6
	i32 3718780102, ; 142: Xamarin.AndroidX.Annotation => 0xdda814c6 => 16
	i32 3786282454, ; 143: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 24
	i32 3829621856, ; 144: System.Numerics.dll => 0xe4436460 => 11
	i32 3885922214, ; 145: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 48
	i32 3896760992, ; 146: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 26
	i32 3920810846, ; 147: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 62
	i32 3921031405, ; 148: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 51
	i32 3945713374, ; 149: System.Data.DataSetExtensions.dll => 0xeb2ecede => 60
	i32 3955647286, ; 150: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 18
	i32 4073602200, ; 151: System.Threading.dll => 0xf2ce3c98 => 75
	i32 4105002889, ; 152: Mono.Security.dll => 0xf4ad5f89 => 77
	i32 4151237749, ; 153: System.Core => 0xf76edc75 => 8
	i32 4182413190, ; 154: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 39
	i32 4292120959 ; 155: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 39
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [156 x i32] [
	i32 37, i32 55, i32 5, i32 46, i32 46, i32 24, i32 47, i32 22, ; 0..7
	i32 70, i32 34, i32 74, i32 66, i32 32, i32 15, i32 11, i32 35, ; 8..15
	i32 0, i32 53, i32 68, i32 31, i32 0, i32 4, i32 9, i32 32, ; 16..23
	i32 41, i32 59, i32 71, i32 62, i32 28, i32 51, i32 19, i32 67, ; 24..31
	i32 61, i32 56, i32 43, i32 74, i32 55, i32 5, i32 35, i32 68, ; 32..39
	i32 45, i32 18, i32 72, i32 38, i32 9, i32 49, i32 19, i32 50, ; 40..47
	i32 30, i32 73, i32 65, i32 45, i32 25, i32 71, i32 61, i32 17, ; 48..55
	i32 1, i32 29, i32 64, i32 7, i32 40, i32 27, i32 7, i32 10, ; 56..63
	i32 13, i32 54, i32 70, i32 69, i32 23, i32 1, i32 47, i32 8, ; 64..71
	i32 31, i32 40, i32 54, i32 72, i32 53, i32 20, i32 42, i32 38, ; 72..79
	i32 36, i32 13, i32 12, i32 33, i32 10, i32 49, i32 41, i32 42, ; 80..87
	i32 44, i32 16, i32 76, i32 57, i32 2, i32 60, i32 37, i32 50, ; 88..95
	i32 27, i32 15, i32 17, i32 52, i32 25, i32 14, i32 52, i32 48, ; 96..103
	i32 69, i32 63, i32 4, i32 12, i32 30, i32 34, i32 64, i32 58, ; 104..111
	i32 29, i32 75, i32 77, i32 23, i32 21, i32 76, i32 28, i32 58, ; 112..119
	i32 20, i32 33, i32 26, i32 2, i32 44, i32 65, i32 14, i32 57, ; 120..127
	i32 3, i32 59, i32 21, i32 67, i32 6, i32 63, i32 73, i32 43, ; 128..135
	i32 36, i32 3, i32 66, i32 22, i32 56, i32 6, i32 16, i32 24, ; 136..143
	i32 11, i32 48, i32 26, i32 62, i32 51, i32 60, i32 18, i32 75, ; 144..151
	i32 77, i32 8, i32 39, i32 39 ; 152..155
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
