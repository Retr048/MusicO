; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [222 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 65
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 96
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 17
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 89
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 79
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 79
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 46
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 80
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 44
	i32 212497893, ; 9: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 90
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 60
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 108
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 49
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 64
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 58
	i32 291275502, ; 15: Microsoft.Extensions.Http.dll => 0x115c82ee => 9
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 36
	i32 319314094, ; 17: Xamarin.Forms.Maps => 0x130858ae => 91
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 29
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 62
	i32 347068432, ; 20: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 22
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 28
	i32 441335492, ; 22: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 48
	i32 442521989, ; 23: Xamarin.Essentials => 0x1a605985 => 88
	i32 450948140, ; 24: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 57
	i32 465846621, ; 25: mscorlib => 0x1bc4415d => 15
	i32 469710990, ; 26: System.dll => 0x1bff388e => 27
	i32 476646585, ; 27: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 58
	i32 486930444, ; 28: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 69
	i32 513247710, ; 29: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 13
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 102
	i32 539058512, ; 31: Microsoft.Extensions.Logging => 0x20216150 => 11
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 106
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 53
	i32 662205335, ; 34: System.Text.Encodings.Web.dll => 0x27787397 => 33
	i32 663517072, ; 35: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 85
	i32 666292255, ; 36: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 41
	i32 690569205, ; 37: System.Xml.Linq.dll => 0x29293ff5 => 35
	i32 717517807, ; 38: MusicO.Android => 0x2ac473ef => 0
	i32 748832960, ; 39: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 20
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 105
	i32 789151979, ; 41: Microsoft.Extensions.Options => 0x2f0980eb => 12
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 104
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 76
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 96
	i32 955402788, ; 45: Newtonsoft.Json => 0x38f24a24 => 17
	i32 967690846, ; 46: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 62
	i32 974778368, ; 47: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 1012816738, ; 48: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 78
	i32 1028951442, ; 49: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 7
	i32 1035644815, ; 50: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 40
	i32 1042160112, ; 51: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 93
	i32 1052210849, ; 52: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 66
	i32 1098259244, ; 53: System => 0x41761b2c => 27
	i32 1175144683, ; 54: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 83
	i32 1178241025, ; 55: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1204270330, ; 56: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 41
	i32 1267360935, ; 57: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 84
	i32 1292207520, ; 58: SQLitePCLRaw.core.dll => 0x4d0585a0 => 21
	i32 1293217323, ; 59: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 55
	i32 1356931492, ; 60: MusicO.dll => 0x50e121a4 => 16
	i32 1365406463, ; 61: System.ServiceModel.Internals.dll => 0x516272ff => 109
	i32 1376866003, ; 62: Xamarin.AndroidX.SavedState => 0x52114ed3 => 78
	i32 1395857551, ; 63: Xamarin.AndroidX.Media.dll => 0x5333188f => 70
	i32 1406073936, ; 64: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 50
	i32 1411638395, ; 65: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 31
	i32 1460219004, ; 66: Xamarin.Forms.Xaml => 0x57092c7c => 94
	i32 1462112819, ; 67: System.IO.Compression.dll => 0x57261233 => 105
	i32 1469204771, ; 68: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 39
	i32 1470490898, ; 69: Microsoft.Extensions.Primitives => 0x57a5e912 => 13
	i32 1505131794, ; 70: Microsoft.Extensions.Http => 0x59b67d12 => 9
	i32 1530663695, ; 71: Xamarin.Forms.Maps.dll => 0x5b3c130f => 91
	i32 1582372066, ; 72: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 54
	i32 1592978981, ; 73: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 74: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 68
	i32 1624863272, ; 75: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 87
	i32 1636350590, ; 76: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 52
	i32 1639515021, ; 77: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 78: System.Runtime => 0x62c6282e => 32
	i32 1658241508, ; 79: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 81
	i32 1658251792, ; 80: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 95
	i32 1670060433, ; 81: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 49
	i32 1711441057, ; 82: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 22
	i32 1729485958, ; 83: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 45
	i32 1766324549, ; 84: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 80
	i32 1770582343, ; 85: Microsoft.Extensions.Logging.dll => 0x6988f147 => 11
	i32 1776026572, ; 86: System.Core.dll => 0x69dc03cc => 25
	i32 1788241197, ; 87: Xamarin.AndroidX.Fragment => 0x6a96652d => 57
	i32 1808609942, ; 88: Xamarin.AndroidX.Loader => 0x6bcd3296 => 68
	i32 1813201214, ; 89: Xamarin.Google.Android.Material => 0x6c13413e => 95
	i32 1818569960, ; 90: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1828688058, ; 91: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 10
	i32 1867746548, ; 92: Xamarin.Essentials.dll => 0x6f538cf4 => 88
	i32 1878053835, ; 93: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 94
	i32 1881862856, ; 94: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 90
	i32 1885316902, ; 95: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 42
	i32 1908813208, ; 96: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 98
	i32 1919157823, ; 97: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 71
	i32 2011961780, ; 98: System.Buffers.dll => 0x77ec19b4 => 24
	i32 2019465201, ; 99: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 66
	i32 2055257422, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 63
	i32 2079903147, ; 101: System.Runtime.dll => 0x7bf8cdab => 32
	i32 2090596640, ; 102: System.Numerics.Vectors => 0x7c9bf920 => 30
	i32 2097448633, ; 103: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 59
	i32 2103459038, ; 104: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 23
	i32 2126786730, ; 105: Xamarin.Forms.Platform.Android => 0x7ec430aa => 92
	i32 2129483829, ; 106: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 97
	i32 2181898931, ; 107: Microsoft.Extensions.Options.dll => 0x820d22b3 => 12
	i32 2192057212, ; 108: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 10
	i32 2201231467, ; 109: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 110: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 83
	i32 2244775296, ; 111: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 69
	i32 2256548716, ; 112: Xamarin.AndroidX.MultiDex => 0x8680336c => 71
	i32 2261435625, ; 113: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 61
	i32 2279755925, ; 114: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 77
	i32 2315684594, ; 115: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 37
	i32 2409053734, ; 116: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 75
	i32 2465273461, ; 117: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 20
	i32 2465532216, ; 118: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 48
	i32 2471841756, ; 119: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 120: Java.Interop.dll => 0x93918882 => 6
	i32 2501346920, ; 121: System.Data.DataSetExtensions => 0x95178668 => 103
	i32 2505896520, ; 122: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 65
	i32 2570120770, ; 123: System.Text.Encodings.Web => 0x9930ee42 => 33
	i32 2581819634, ; 124: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 84
	i32 2620871830, ; 125: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 52
	i32 2624644809, ; 126: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 56
	i32 2633051222, ; 127: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 64
	i32 2701096212, ; 128: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 81
	i32 2732626843, ; 129: Xamarin.AndroidX.Activity => 0xa2e0939b => 36
	i32 2737747696, ; 130: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 39
	i32 2766581644, ; 131: Xamarin.Forms.Core => 0xa4e6af8c => 89
	i32 2778768386, ; 132: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 86
	i32 2810250172, ; 133: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 50
	i32 2819470561, ; 134: System.Xml.dll => 0xa80db4e1 => 34
	i32 2847418871, ; 135: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 97
	i32 2853208004, ; 136: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 86
	i32 2855708567, ; 137: Xamarin.AndroidX.Transition => 0xaa36a797 => 82
	i32 2895388503, ; 138: Nominatim.API.dll => 0xac941f57 => 18
	i32 2903344695, ; 139: System.ComponentModel.Composition => 0xad0d8637 => 107
	i32 2905242038, ; 140: mscorlib.dll => 0xad2a79b6 => 15
	i32 2916838712, ; 141: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 87
	i32 2919462931, ; 142: System.Numerics.Vectors.dll => 0xae037813 => 30
	i32 2921128767, ; 143: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 38
	i32 2978675010, ; 144: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 55
	i32 3017076677, ; 145: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 99
	i32 3024354802, ; 146: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 60
	i32 3044182254, ; 147: FormsViewGroup => 0xb57288ee => 4
	i32 3057625584, ; 148: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 72
	i32 3058099980, ; 149: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 100
	i32 3078457093, ; 150: GeoJSON.Net.dll => 0xb77d8705 => 5
	i32 3111772706, ; 151: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 152: System.Data.dll => 0xbefef58f => 101
	i32 3211777861, ; 153: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 54
	i32 3230466174, ; 154: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 98
	i32 3247949154, ; 155: Mono.Security => 0xc197c562 => 110
	i32 3258312781, ; 156: Xamarin.AndroidX.CardView => 0xc235e84d => 45
	i32 3267021929, ; 157: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 43
	i32 3286872994, ; 158: SQLite-net.dll => 0xc3e9b3a2 => 19
	i32 3317135071, ; 159: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 53
	i32 3317144872, ; 160: System.Data => 0xc5b79d28 => 101
	i32 3340431453, ; 161: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 42
	i32 3346324047, ; 162: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3353484488, ; 163: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 59
	i32 3360279109, ; 164: SQLitePCLRaw.core => 0xc849ca45 => 21
	i32 3362522851, ; 165: Xamarin.AndroidX.Core => 0xc86c06e3 => 51
	i32 3366347497, ; 166: Java.Interop => 0xc8a662e9 => 6
	i32 3374999561, ; 167: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 77
	i32 3395150330, ; 168: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 31
	i32 3404865022, ; 169: System.ServiceModel.Internals => 0xcaf21dfe => 109
	i32 3428513518, ; 170: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 8
	i32 3429136800, ; 171: System.Xml => 0xcc6479a0 => 34
	i32 3430777524, ; 172: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 173: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 56
	i32 3476120550, ; 174: Mono.Android => 0xcf3163e6 => 14
	i32 3486566296, ; 175: System.Transactions => 0xcfd0c798 => 102
	i32 3493954962, ; 176: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 47
	i32 3501239056, ; 177: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 43
	i32 3509114376, ; 178: System.Xml.Linq => 0xd128d608 => 35
	i32 3536029504, ; 179: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 92
	i32 3549397152, ; 180: MusicO.Android.dll => 0xd38f80a0 => 0
	i32 3567349600, ; 181: System.ComponentModel.Composition.dll => 0xd4a16f60 => 107
	i32 3618140916, ; 182: Xamarin.AndroidX.Preference => 0xd7a872f4 => 75
	i32 3627220390, ; 183: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 76
	i32 3632359727, ; 184: Xamarin.Forms.Platform => 0xd881692f => 93
	i32 3633644679, ; 185: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 38
	i32 3641597786, ; 186: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 63
	i32 3672681054, ; 187: Mono.Android.dll => 0xdae8aa5e => 14
	i32 3676310014, ; 188: System.Web.Services.dll => 0xdb2009fe => 108
	i32 3682565725, ; 189: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 44
	i32 3684561358, ; 190: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 47
	i32 3689375977, ; 191: System.Drawing.Common => 0xdbe768e9 => 104
	i32 3718780102, ; 192: Xamarin.AndroidX.Annotation => 0xdda814c6 => 37
	i32 3724971120, ; 193: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 72
	i32 3748608112, ; 194: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 26
	i32 3754567612, ; 195: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 23
	i32 3758932259, ; 196: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 61
	i32 3786282454, ; 197: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 46
	i32 3822602673, ; 198: Xamarin.AndroidX.Media => 0xe3d849b1 => 70
	i32 3829621856, ; 199: System.Numerics.dll => 0xe4436460 => 29
	i32 3841636137, ; 200: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 7
	i32 3876362041, ; 201: SQLite-net => 0xe70c9739 => 19
	i32 3885922214, ; 202: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 82
	i32 3896760992, ; 203: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 51
	i32 3920810846, ; 204: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 106
	i32 3921031405, ; 205: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 85
	i32 3928516196, ; 206: GeoJSON.Net => 0xea286664 => 5
	i32 3931092270, ; 207: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3945713374, ; 208: System.Data.DataSetExtensions.dll => 0xeb2ecede => 103
	i32 3955647286, ; 209: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 40
	i32 3970018735, ; 210: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 100
	i32 4025784931, ; 211: System.Memory => 0xeff49a63 => 28
	i32 4040578272, ; 212: Nominatim.API => 0xf0d654e0 => 18
	i32 4105002889, ; 213: Mono.Security.dll => 0xf4ad5f89 => 110
	i32 4126470640, ; 214: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 8
	i32 4151237749, ; 215: System.Core => 0xf76edc75 => 25
	i32 4182413190, ; 216: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 67
	i32 4197463452, ; 217: MusicO => 0xfa30359c => 16
	i32 4213026141, ; 218: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 26
	i32 4260525087, ; 219: System.Buffers => 0xfdf2741f => 24
	i32 4278134329, ; 220: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 99
	i32 4292120959 ; 221: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 67
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [222 x i32] [
	i32 65, i32 96, i32 17, i32 89, i32 79, i32 79, i32 46, i32 80, ; 0..7
	i32 44, i32 90, i32 60, i32 108, i32 49, i32 64, i32 58, i32 9, ; 8..15
	i32 36, i32 91, i32 29, i32 62, i32 22, i32 28, i32 48, i32 88, ; 16..23
	i32 57, i32 15, i32 27, i32 58, i32 69, i32 13, i32 102, i32 11, ; 24..31
	i32 106, i32 53, i32 33, i32 85, i32 41, i32 35, i32 0, i32 20, ; 32..39
	i32 105, i32 12, i32 104, i32 76, i32 96, i32 17, i32 62, i32 4, ; 40..47
	i32 78, i32 7, i32 40, i32 93, i32 66, i32 27, i32 83, i32 73, ; 48..55
	i32 41, i32 84, i32 21, i32 55, i32 16, i32 109, i32 78, i32 70, ; 56..63
	i32 50, i32 31, i32 94, i32 105, i32 39, i32 13, i32 9, i32 91, ; 64..71
	i32 54, i32 3, i32 68, i32 87, i32 52, i32 2, i32 32, i32 81, ; 72..79
	i32 95, i32 49, i32 22, i32 45, i32 80, i32 11, i32 25, i32 57, ; 80..87
	i32 68, i32 95, i32 74, i32 10, i32 88, i32 94, i32 90, i32 42, ; 88..95
	i32 98, i32 71, i32 24, i32 66, i32 63, i32 32, i32 30, i32 59, ; 96..103
	i32 23, i32 92, i32 97, i32 12, i32 10, i32 2, i32 83, i32 69, ; 104..111
	i32 71, i32 61, i32 77, i32 37, i32 75, i32 20, i32 48, i32 1, ; 112..119
	i32 6, i32 103, i32 65, i32 33, i32 84, i32 52, i32 56, i32 64, ; 120..127
	i32 81, i32 36, i32 39, i32 89, i32 86, i32 50, i32 34, i32 97, ; 128..135
	i32 86, i32 82, i32 18, i32 107, i32 15, i32 87, i32 30, i32 38, ; 136..143
	i32 55, i32 99, i32 60, i32 4, i32 72, i32 100, i32 5, i32 3, ; 144..151
	i32 101, i32 54, i32 98, i32 110, i32 45, i32 43, i32 19, i32 53, ; 152..159
	i32 101, i32 42, i32 73, i32 59, i32 21, i32 51, i32 6, i32 77, ; 160..167
	i32 31, i32 109, i32 8, i32 34, i32 1, i32 56, i32 14, i32 102, ; 168..175
	i32 47, i32 43, i32 35, i32 92, i32 0, i32 107, i32 75, i32 76, ; 176..183
	i32 93, i32 38, i32 63, i32 14, i32 108, i32 44, i32 47, i32 104, ; 184..191
	i32 37, i32 72, i32 26, i32 23, i32 61, i32 46, i32 70, i32 29, ; 192..199
	i32 7, i32 19, i32 82, i32 51, i32 106, i32 85, i32 5, i32 74, ; 200..207
	i32 103, i32 40, i32 100, i32 28, i32 18, i32 110, i32 8, i32 25, ; 208..215
	i32 67, i32 16, i32 26, i32 24, i32 99, i32 67 ; 216..221
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
