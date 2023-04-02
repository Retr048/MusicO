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
@assembly_image_cache_hashes = local_unnamed_addr constant [238 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 73
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 104
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 25
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 97
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 87
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 87
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 54
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 88
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 52
	i32 212497893, ; 9: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 98
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 68
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 116
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 57
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 72
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 66
	i32 291275502, ; 15: Microsoft.Extensions.Http.dll => 0x115c82ee => 17
	i32 293579439, ; 16: ExoPlayer.Dash.dll => 0x117faaaf => 5
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 44
	i32 319314094, ; 18: Xamarin.Forms.Maps => 0x130858ae => 99
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 37
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 70
	i32 347068432, ; 21: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 30
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 36
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 56
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 96
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 65
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 23
	i32 469710990, ; 27: System.dll => 0x1bff388e => 35
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 66
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 77
	i32 513247710, ; 30: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 21
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 110
	i32 539058512, ; 32: Microsoft.Extensions.Logging => 0x20216150 => 19
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 114
	i32 627609679, ; 34: Xamarin.AndroidX.CustomView => 0x2568904f => 61
	i32 662205335, ; 35: System.Text.Encodings.Web.dll => 0x27787397 => 41
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 93
	i32 666292255, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 49
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 43
	i32 717517807, ; 39: MusicO.Android => 0x2ac473ef => 0
	i32 748832960, ; 40: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 28
	i32 759451189, ; 41: MediaManager => 0x2d444e35 => 14
	i32 775507847, ; 42: System.IO.Compression => 0x2e394f87 => 113
	i32 789151979, ; 43: Microsoft.Extensions.Options => 0x2f0980eb => 20
	i32 809851609, ; 44: System.Drawing.Common.dll => 0x30455ad9 => 112
	i32 812693636, ; 45: ExoPlayer.Dash => 0x3070b884 => 5
	i32 843511501, ; 46: Xamarin.AndroidX.Print => 0x3246f6cd => 84
	i32 915551335, ; 47: ExoPlayer.Ext.MediaSession => 0x36923467 => 7
	i32 928116545, ; 48: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 104
	i32 955402788, ; 49: Newtonsoft.Json => 0x38f24a24 => 25
	i32 967690846, ; 50: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 70
	i32 974778368, ; 51: FormsViewGroup.dll => 0x3a19f000 => 11
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 86
	i32 1028013380, ; 53: ExoPlayer.UI.dll => 0x3d463d44 => 10
	i32 1028951442, ; 54: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 15
	i32 1035644815, ; 55: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 48
	i32 1042160112, ; 56: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 101
	i32 1052210849, ; 57: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 74
	i32 1098259244, ; 58: System => 0x41761b2c => 35
	i32 1175144683, ; 59: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 91
	i32 1178241025, ; 60: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 81
	i32 1204270330, ; 61: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 49
	i32 1267360935, ; 62: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 92
	i32 1292207520, ; 63: SQLitePCLRaw.core.dll => 0x4d0585a0 => 29
	i32 1293217323, ; 64: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1356931492, ; 65: MusicO.dll => 0x50e121a4 => 24
	i32 1365406463, ; 66: System.ServiceModel.Internals.dll => 0x516272ff => 117
	i32 1376866003, ; 67: Xamarin.AndroidX.SavedState => 0x52114ed3 => 86
	i32 1395857551, ; 68: Xamarin.AndroidX.Media.dll => 0x5333188f => 78
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 58
	i32 1411638395, ; 70: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 39
	i32 1460219004, ; 71: Xamarin.Forms.Xaml => 0x57092c7c => 102
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 113
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 47
	i32 1470490898, ; 74: Microsoft.Extensions.Primitives => 0x57a5e912 => 21
	i32 1505131794, ; 75: Microsoft.Extensions.Http => 0x59b67d12 => 17
	i32 1530663695, ; 76: Xamarin.Forms.Maps.dll => 0x5b3c130f => 99
	i32 1582372066, ; 77: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 62
	i32 1592978981, ; 78: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 79: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 76
	i32 1624863272, ; 80: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 95
	i32 1636350590, ; 81: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 60
	i32 1639515021, ; 82: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 83: System.Runtime => 0x62c6282e => 40
	i32 1658241508, ; 84: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 89
	i32 1658251792, ; 85: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 103
	i32 1670060433, ; 86: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 57
	i32 1711441057, ; 87: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 30
	i32 1729485958, ; 88: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 53
	i32 1765620304, ; 89: ExoPlayer.Core => 0x693d3a50 => 4
	i32 1766324549, ; 90: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 88
	i32 1770582343, ; 91: Microsoft.Extensions.Logging.dll => 0x6988f147 => 19
	i32 1776026572, ; 92: System.Core.dll => 0x69dc03cc => 33
	i32 1788241197, ; 93: Xamarin.AndroidX.Fragment => 0x6a96652d => 65
	i32 1808609942, ; 94: Xamarin.AndroidX.Loader => 0x6bcd3296 => 76
	i32 1813201214, ; 95: Xamarin.Google.Android.Material => 0x6c13413e => 103
	i32 1818569960, ; 96: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 82
	i32 1828688058, ; 97: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 18
	i32 1850226322, ; 98: MediaManager.dll => 0x6e483692 => 14
	i32 1867746548, ; 99: Xamarin.Essentials.dll => 0x6f538cf4 => 96
	i32 1878053835, ; 100: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 102
	i32 1881862856, ; 101: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 98
	i32 1885316902, ; 102: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 50
	i32 1908813208, ; 103: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 106
	i32 1919157823, ; 104: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 79
	i32 1984283898, ; 105: ExoPlayer.Ext.MediaSession.dll => 0x7645c4fa => 7
	i32 2011961780, ; 106: System.Buffers.dll => 0x77ec19b4 => 32
	i32 2019465201, ; 107: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 74
	i32 2055257422, ; 108: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 71
	i32 2079903147, ; 109: System.Runtime.dll => 0x7bf8cdab => 40
	i32 2090596640, ; 110: System.Numerics.Vectors => 0x7c9bf920 => 38
	i32 2097448633, ; 111: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 67
	i32 2103459038, ; 112: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 31
	i32 2113912252, ; 113: ExoPlayer.UI => 0x7dffbdbc => 10
	i32 2126786730, ; 114: Xamarin.Forms.Platform.Android => 0x7ec430aa => 100
	i32 2129483829, ; 115: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 105
	i32 2181898931, ; 116: Microsoft.Extensions.Options.dll => 0x820d22b3 => 20
	i32 2192057212, ; 117: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 18
	i32 2201231467, ; 118: System.Net.Http => 0x8334206b => 2
	i32 2202964214, ; 119: ExoPlayer.dll => 0x834e90f6 => 6
	i32 2217644978, ; 120: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 91
	i32 2239138732, ; 121: ExoPlayer.SmoothStreaming => 0x85768bac => 9
	i32 2244775296, ; 122: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 77
	i32 2256548716, ; 123: Xamarin.AndroidX.MultiDex => 0x8680336c => 79
	i32 2261435625, ; 124: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 69
	i32 2279755925, ; 125: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 85
	i32 2315684594, ; 126: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 45
	i32 2409053734, ; 127: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 83
	i32 2465273461, ; 128: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 28
	i32 2465532216, ; 129: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 56
	i32 2471841756, ; 130: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 131: Java.Interop.dll => 0x93918882 => 13
	i32 2476233210, ; 132: ExoPlayer => 0x939851fa => 6
	i32 2501346920, ; 133: System.Data.DataSetExtensions => 0x95178668 => 111
	i32 2505896520, ; 134: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 73
	i32 2570120770, ; 135: System.Text.Encodings.Web => 0x9930ee42 => 41
	i32 2581819634, ; 136: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 92
	i32 2620871830, ; 137: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 60
	i32 2624644809, ; 138: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 64
	i32 2633051222, ; 139: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 72
	i32 2701096212, ; 140: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 89
	i32 2713040075, ; 141: ExoPlayer.Hls => 0xa1b5b4cb => 8
	i32 2732626843, ; 142: Xamarin.AndroidX.Activity => 0xa2e0939b => 44
	i32 2737747696, ; 143: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 47
	i32 2766581644, ; 144: Xamarin.Forms.Core => 0xa4e6af8c => 97
	i32 2778768386, ; 145: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 94
	i32 2810250172, ; 146: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 58
	i32 2819470561, ; 147: System.Xml.dll => 0xa80db4e1 => 42
	i32 2847418871, ; 148: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 105
	i32 2853208004, ; 149: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 94
	i32 2855708567, ; 150: Xamarin.AndroidX.Transition => 0xaa36a797 => 90
	i32 2895388503, ; 151: Nominatim.API.dll => 0xac941f57 => 26
	i32 2903344695, ; 152: System.ComponentModel.Composition => 0xad0d8637 => 115
	i32 2905242038, ; 153: mscorlib.dll => 0xad2a79b6 => 23
	i32 2916838712, ; 154: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 95
	i32 2919462931, ; 155: System.Numerics.Vectors.dll => 0xae037813 => 38
	i32 2921128767, ; 156: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 46
	i32 2978675010, ; 157: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 3017076677, ; 158: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 107
	i32 3024354802, ; 159: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 68
	i32 3044182254, ; 160: FormsViewGroup => 0xb57288ee => 11
	i32 3057625584, ; 161: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 80
	i32 3058099980, ; 162: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 108
	i32 3078457093, ; 163: GeoJSON.Net.dll => 0xb77d8705 => 12
	i32 3111772706, ; 164: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3144327419, ; 165: ExoPlayer.Hls.dll => 0xbb6aa0fb => 8
	i32 3204380047, ; 166: System.Data.dll => 0xbefef58f => 109
	i32 3211777861, ; 167: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 62
	i32 3230466174, ; 168: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 106
	i32 3247949154, ; 169: Mono.Security => 0xc197c562 => 118
	i32 3258312781, ; 170: Xamarin.AndroidX.CardView => 0xc235e84d => 53
	i32 3267021929, ; 171: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 51
	i32 3286872994, ; 172: SQLite-net.dll => 0xc3e9b3a2 => 27
	i32 3317135071, ; 173: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 61
	i32 3317144872, ; 174: System.Data => 0xc5b79d28 => 109
	i32 3340431453, ; 175: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 50
	i32 3346324047, ; 176: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 81
	i32 3353484488, ; 177: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 67
	i32 3360279109, ; 178: SQLitePCLRaw.core => 0xc849ca45 => 29
	i32 3362522851, ; 179: Xamarin.AndroidX.Core => 0xc86c06e3 => 59
	i32 3366347497, ; 180: Java.Interop => 0xc8a662e9 => 13
	i32 3374999561, ; 181: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 85
	i32 3395150330, ; 182: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 39
	i32 3404865022, ; 183: System.ServiceModel.Internals => 0xcaf21dfe => 117
	i32 3428513518, ; 184: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 16
	i32 3429136800, ; 185: System.Xml => 0xcc6479a0 => 42
	i32 3430777524, ; 186: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 187: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 64
	i32 3476120550, ; 188: Mono.Android => 0xcf3163e6 => 22
	i32 3486566296, ; 189: System.Transactions => 0xcfd0c798 => 110
	i32 3493954962, ; 190: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 55
	i32 3501239056, ; 191: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 51
	i32 3509114376, ; 192: System.Xml.Linq => 0xd128d608 => 43
	i32 3536029504, ; 193: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 100
	i32 3549397152, ; 194: MusicO.Android.dll => 0xd38f80a0 => 0
	i32 3567349600, ; 195: System.ComponentModel.Composition.dll => 0xd4a16f60 => 115
	i32 3618140916, ; 196: Xamarin.AndroidX.Preference => 0xd7a872f4 => 83
	i32 3627220390, ; 197: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 84
	i32 3632359727, ; 198: Xamarin.Forms.Platform => 0xd881692f => 101
	i32 3633644679, ; 199: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 46
	i32 3641597786, ; 200: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 71
	i32 3672681054, ; 201: Mono.Android.dll => 0xdae8aa5e => 22
	i32 3676310014, ; 202: System.Web.Services.dll => 0xdb2009fe => 116
	i32 3682565725, ; 203: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 52
	i32 3684561358, ; 204: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 55
	i32 3689375977, ; 205: System.Drawing.Common => 0xdbe768e9 => 112
	i32 3718780102, ; 206: Xamarin.AndroidX.Annotation => 0xdda814c6 => 45
	i32 3724971120, ; 207: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 80
	i32 3748608112, ; 208: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 34
	i32 3754567612, ; 209: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 31
	i32 3758932259, ; 210: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 69
	i32 3786282454, ; 211: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 54
	i32 3822602673, ; 212: Xamarin.AndroidX.Media => 0xe3d849b1 => 78
	i32 3829621856, ; 213: System.Numerics.dll => 0xe4436460 => 37
	i32 3841636137, ; 214: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 15
	i32 3876362041, ; 215: SQLite-net => 0xe70c9739 => 27
	i32 3885922214, ; 216: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 90
	i32 3896760992, ; 217: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 59
	i32 3920810846, ; 218: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 114
	i32 3921031405, ; 219: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 93
	i32 3928516196, ; 220: GeoJSON.Net => 0xea286664 => 12
	i32 3931092270, ; 221: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 82
	i32 3945713374, ; 222: System.Data.DataSetExtensions.dll => 0xeb2ecede => 111
	i32 3955647286, ; 223: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 48
	i32 3970018735, ; 224: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 108
	i32 4025784931, ; 225: System.Memory => 0xeff49a63 => 36
	i32 4040578272, ; 226: Nominatim.API => 0xf0d654e0 => 26
	i32 4105002889, ; 227: Mono.Security.dll => 0xf4ad5f89 => 118
	i32 4126470640, ; 228: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 16
	i32 4151237749, ; 229: System.Core => 0xf76edc75 => 33
	i32 4173364138, ; 230: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 9
	i32 4182413190, ; 231: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 75
	i32 4190597220, ; 232: ExoPlayer.Core.dll => 0xf9c77064 => 4
	i32 4197463452, ; 233: MusicO => 0xfa30359c => 24
	i32 4213026141, ; 234: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 34
	i32 4260525087, ; 235: System.Buffers => 0xfdf2741f => 32
	i32 4278134329, ; 236: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 107
	i32 4292120959 ; 237: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 75
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [238 x i32] [
	i32 73, i32 104, i32 25, i32 97, i32 87, i32 87, i32 54, i32 88, ; 0..7
	i32 52, i32 98, i32 68, i32 116, i32 57, i32 72, i32 66, i32 17, ; 8..15
	i32 5, i32 44, i32 99, i32 37, i32 70, i32 30, i32 36, i32 56, ; 16..23
	i32 96, i32 65, i32 23, i32 35, i32 66, i32 77, i32 21, i32 110, ; 24..31
	i32 19, i32 114, i32 61, i32 41, i32 93, i32 49, i32 43, i32 0, ; 32..39
	i32 28, i32 14, i32 113, i32 20, i32 112, i32 5, i32 84, i32 7, ; 40..47
	i32 104, i32 25, i32 70, i32 11, i32 86, i32 10, i32 15, i32 48, ; 48..55
	i32 101, i32 74, i32 35, i32 91, i32 81, i32 49, i32 92, i32 29, ; 56..63
	i32 63, i32 24, i32 117, i32 86, i32 78, i32 58, i32 39, i32 102, ; 64..71
	i32 113, i32 47, i32 21, i32 17, i32 99, i32 62, i32 3, i32 76, ; 72..79
	i32 95, i32 60, i32 2, i32 40, i32 89, i32 103, i32 57, i32 30, ; 80..87
	i32 53, i32 4, i32 88, i32 19, i32 33, i32 65, i32 76, i32 103, ; 88..95
	i32 82, i32 18, i32 14, i32 96, i32 102, i32 98, i32 50, i32 106, ; 96..103
	i32 79, i32 7, i32 32, i32 74, i32 71, i32 40, i32 38, i32 67, ; 104..111
	i32 31, i32 10, i32 100, i32 105, i32 20, i32 18, i32 2, i32 6, ; 112..119
	i32 91, i32 9, i32 77, i32 79, i32 69, i32 85, i32 45, i32 83, ; 120..127
	i32 28, i32 56, i32 1, i32 13, i32 6, i32 111, i32 73, i32 41, ; 128..135
	i32 92, i32 60, i32 64, i32 72, i32 89, i32 8, i32 44, i32 47, ; 136..143
	i32 97, i32 94, i32 58, i32 42, i32 105, i32 94, i32 90, i32 26, ; 144..151
	i32 115, i32 23, i32 95, i32 38, i32 46, i32 63, i32 107, i32 68, ; 152..159
	i32 11, i32 80, i32 108, i32 12, i32 3, i32 8, i32 109, i32 62, ; 160..167
	i32 106, i32 118, i32 53, i32 51, i32 27, i32 61, i32 109, i32 50, ; 168..175
	i32 81, i32 67, i32 29, i32 59, i32 13, i32 85, i32 39, i32 117, ; 176..183
	i32 16, i32 42, i32 1, i32 64, i32 22, i32 110, i32 55, i32 51, ; 184..191
	i32 43, i32 100, i32 0, i32 115, i32 83, i32 84, i32 101, i32 46, ; 192..199
	i32 71, i32 22, i32 116, i32 52, i32 55, i32 112, i32 45, i32 80, ; 200..207
	i32 34, i32 31, i32 69, i32 54, i32 78, i32 37, i32 15, i32 27, ; 208..215
	i32 90, i32 59, i32 114, i32 93, i32 12, i32 82, i32 111, i32 48, ; 216..223
	i32 108, i32 36, i32 26, i32 118, i32 16, i32 33, i32 9, i32 75, ; 224..231
	i32 4, i32 24, i32 34, i32 32, i32 107, i32 75 ; 232..237
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
