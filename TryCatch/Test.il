.assembly extern System
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly extern System.Core
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'Test'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module Test.exe // GUID = {E01414DA-D8E7-41C4-8B94-1096E7DF82FD}


  .class public auto ansi beforefieldinit Program
  	extends [mscorlib]System.Object
  {
    .field  private static  class [mscorlib]System.Func`3<float64,int32,float64> '<>f__am$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`3<float64,int32,float64> '<>f__am$cache1'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 1
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Program::.ctor

    // method line 2
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 431 (0x1af)
	.maxstack 4
	.locals init (
		class [System]System.Diagnostics.Stopwatch	V_0,
		float64	V_1,
		class [System]System.Diagnostics.Stopwatch	V_2,
		float64	V_3,
		class [mscorlib]System.Exception	V_4,
		valuetype [mscorlib]System.Decimal	V_5,
		class [System]System.Diagnostics.Stopwatch	V_6,
		int32	V_7,
		class [mscorlib]System.Exception	V_8,
		int32	V_9)
	IL_0000:  call class [System]System.Diagnostics.Stopwatch class [System]System.Diagnostics.Stopwatch::StartNew()
	IL_0005:  stloc.0 
	IL_0006:  ldc.i4.0 
	IL_0007:  ldc.i4 100000000
	IL_000c:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> class [System.Core]System.Linq.Enumerable::Range(int32, int32)
	IL_0011:  ldc.r8 0.
	IL_001a:  ldsfld class [mscorlib]System.Func`3<float64,int32,float64> Program::'<>f__am$cache0'
	IL_001f:  brtrue.s IL_0032

	IL_0021:  ldnull 
	IL_0022:  ldftn float64 class Program::'<Main>m__0'(float64, int32)
	IL_0028:  newobj instance void class [mscorlib]System.Func`3<float64, int32, float64>::'.ctor'(object, native int)
	IL_002d:  stsfld class [mscorlib]System.Func`3<float64,int32,float64> Program::'<>f__am$cache0'
	IL_0032:  ldsfld class [mscorlib]System.Func`3<float64,int32,float64> Program::'<>f__am$cache0'
	IL_0037:  call !!1 class [System.Core]System.Linq.Enumerable::Aggregate<int32, float64> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, !!1, class [mscorlib]System.Func`3<!!1,!!0,!!1>)
	IL_003c:  stloc.1 
	IL_003d:  ldloc.0 
	IL_003e:  callvirt instance int64 class [System]System.Diagnostics.Stopwatch::get_ElapsedMilliseconds()
	IL_0043:  call void class [mscorlib]System.Console::WriteLine(int64)
	IL_0048:  call class [System]System.Diagnostics.Stopwatch class [System]System.Diagnostics.Stopwatch::StartNew()
	IL_004d:  stloc.2 
	IL_004e:  ldc.r8 (00 00 00 00 00 00 f8 ff)
	IL_0057:  stloc.3 
	.try { // 0
	  IL_0058:  ldc.i4.0 
	  IL_0059:  ldc.i4 100000000
	  IL_005e:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<int32> class [System.Core]System.Linq.Enumerable::Range(int32, int32)
	  IL_0063:  ldc.r8 0.
	  IL_006c:  ldsfld class [mscorlib]System.Func`3<float64,int32,float64> Program::'<>f__am$cache1'
	  IL_0071:  brtrue.s IL_0084

	  IL_0073:  ldnull 
	  IL_0074:  ldftn float64 class Program::'<Main>m__1'(float64, int32)
	  IL_007a:  newobj instance void class [mscorlib]System.Func`3<float64, int32, float64>::'.ctor'(object, native int)
	  IL_007f:  stsfld class [mscorlib]System.Func`3<float64,int32,float64> Program::'<>f__am$cache1'
	  IL_0084:  ldsfld class [mscorlib]System.Func`3<float64,int32,float64> Program::'<>f__am$cache1'
	  IL_0089:  call !!1 class [System.Core]System.Linq.Enumerable::Aggregate<int32, float64> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, !!1, class [mscorlib]System.Func`3<!!1,!!0,!!1>)
	  IL_008e:  stloc.3 
	  IL_008f:  leave IL_00a2

	} // end .try 0
	catch class [mscorlib]System.Exception { // 0
	  IL_0094:  stloc.s 4
	  IL_0096:  ldloc.s 4
	  IL_0098:  call void class [mscorlib]System.Console::WriteLine(object)
	  IL_009d:  leave IL_00a2

	} // end handler 0
	IL_00a2:  ldloc.2 
	IL_00a3:  callvirt instance int64 class [System]System.Diagnostics.Stopwatch::get_ElapsedMilliseconds()
	IL_00a8:  call void class [mscorlib]System.Console::WriteLine(int64)
	IL_00ad:  ldc.i4.0 
	IL_00ae:  newobj instance void valuetype [mscorlib]System.Decimal::'.ctor'(int32)
	IL_00b3:  stloc.s 5
	IL_00b5:  call class [System]System.Diagnostics.Stopwatch class [System]System.Diagnostics.Stopwatch::StartNew()
	IL_00ba:  stloc.s 6
	IL_00bc:  ldc.i4.0 
	IL_00bd:  stloc.s 7
	IL_00bf:  br IL_0115

	.try { // 1
	  IL_00c4:  ldloc.s 5
	  IL_00c6:  ldc.r8 3.1415926535897931
	  IL_00cf:  ldloc.s 7
	  IL_00d1:  conv.r8 
	  IL_00d2:  mul 
	  IL_00d3:  ldloc.s 7
	  IL_00d5:  conv.r8 
	  IL_00d6:  mul 
	  IL_00d7:  ldc.r8 10.
	  IL_00e0:  div 
	  IL_00e1:  ldc.r8 7.3890560989306495
	  IL_00ea:  add 
	  IL_00eb:  call float64 class [mscorlib]System.Math::Sqrt(float64)
	  IL_00f0:  call valuetype [mscorlib]System.Decimal valuetype [mscorlib]System.Decimal::op_Explicit(float64)
	  IL_00f5:  call valuetype [mscorlib]System.Decimal valuetype [mscorlib]System.Decimal::op_Addition(valuetype [mscorlib]System.Decimal, valuetype [mscorlib]System.Decimal)
	  IL_00fa:  stloc.s 5
	  IL_00fc:  leave IL_010f

	} // end .try 1
	catch class [mscorlib]System.Exception { // 1
	  IL_0101:  stloc.s 8
	  IL_0103:  ldloc.s 8
	  IL_0105:  call void class [mscorlib]System.Console::WriteLine(object)
	  IL_010a:  leave IL_010f

	} // end handler 1
	IL_010f:  ldloc.s 7
	IL_0111:  ldc.i4.1 
	IL_0112:  add 
	IL_0113:  stloc.s 7
	IL_0115:  ldloc.s 7
	IL_0117:  ldc.i4 10000000
	IL_011c:  blt IL_00c4

	IL_0121:  ldstr "   With try/catch {0}"
	IL_0126:  ldloc.s 6
	IL_0128:  callvirt instance valuetype [mscorlib]System.TimeSpan class [System]System.Diagnostics.Stopwatch::get_Elapsed()
	IL_012d:  box [mscorlib]System.TimeSpan
	IL_0132:  call void class [mscorlib]System.Console::WriteLine(string, object)
	IL_0137:  call class [System]System.Diagnostics.Stopwatch class [System]System.Diagnostics.Stopwatch::StartNew()
	IL_013c:  stloc.s 6
	IL_013e:  ldc.i4.0 
	IL_013f:  newobj instance void valuetype [mscorlib]System.Decimal::'.ctor'(int32)
	IL_0144:  stloc.s 5
	IL_0146:  ldc.i4.0 
	IL_0147:  stloc.s 9
	IL_0149:  br IL_018c

	IL_014e:  ldloc.s 5
	IL_0150:  ldc.r8 3.1415926535897931
	IL_0159:  ldloc.s 9
	IL_015b:  conv.r8 
	IL_015c:  mul 
	IL_015d:  ldloc.s 9
	IL_015f:  conv.r8 
	IL_0160:  mul 
	IL_0161:  ldc.r8 10.
	IL_016a:  div 
	IL_016b:  ldc.r8 7.3890560989306495
	IL_0174:  add 
	IL_0175:  call float64 class [mscorlib]System.Math::Sqrt(float64)
	IL_017a:  call valuetype [mscorlib]System.Decimal valuetype [mscorlib]System.Decimal::op_Explicit(float64)
	IL_017f:  call valuetype [mscorlib]System.Decimal valuetype [mscorlib]System.Decimal::op_Addition(valuetype [mscorlib]System.Decimal, valuetype [mscorlib]System.Decimal)
	IL_0184:  stloc.s 5
	IL_0186:  ldloc.s 9
	IL_0188:  ldc.i4.1 
	IL_0189:  add 
	IL_018a:  stloc.s 9
	IL_018c:  ldloc.s 9
	IL_018e:  ldc.i4 10000000
	IL_0193:  blt IL_014e

	IL_0198:  ldstr "Without try/catch {0}"
	IL_019d:  ldloc.s 6
	IL_019f:  callvirt instance valuetype [mscorlib]System.TimeSpan class [System]System.Diagnostics.Stopwatch::get_Elapsed()
	IL_01a4:  box [mscorlib]System.TimeSpan
	IL_01a9:  call void class [mscorlib]System.Console::WriteLine(string, object)
	IL_01ae:  ret 
    } // end of method Program::Main

    // method line 3
    .method private static hidebysig 
           default float64 '<Main>m__0' (float64 tot, int32 next)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2230
	// Code size 36 (0x24)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.r8 -1.
	IL_000a:  ldarg.1 
	IL_000b:  conv.r8 
	IL_000c:  call float64 class [mscorlib]System.Math::Pow(float64, float64)
	IL_0011:  ldc.i4.2 
	IL_0012:  ldarg.1 
	IL_0013:  mul 
	IL_0014:  ldc.i4.1 
	IL_0015:  add 
	IL_0016:  conv.r8 
	IL_0017:  div 
	IL_0018:  ldc.r8 4.
	IL_0021:  mul 
	IL_0022:  add 
	IL_0023:  ret 
    } // end of method Program::<Main>m__0

    // method line 4
    .method private static hidebysig 
           default float64 '<Main>m__1' (float64 tot, int32 next)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2255
	// Code size 36 (0x24)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldc.r8 -1.
	IL_000a:  ldarg.1 
	IL_000b:  conv.r8 
	IL_000c:  call float64 class [mscorlib]System.Math::Pow(float64, float64)
	IL_0011:  ldc.i4.2 
	IL_0012:  ldarg.1 
	IL_0013:  mul 
	IL_0014:  ldc.i4.1 
	IL_0015:  add 
	IL_0016:  conv.r8 
	IL_0017:  div 
	IL_0018:  ldc.r8 4.
	IL_0021:  mul 
	IL_0022:  add 
	IL_0023:  ret 
    } // end of method Program::<Main>m__1

  } // end of class Program

