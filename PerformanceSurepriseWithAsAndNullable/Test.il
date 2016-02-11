.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
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
.assembly 'Test'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module Test.exe // GUID = {AA3D5C6A-30F9-4394-8742-2660BF983ED8}


  .class private auto ansi beforefieldinit Test
  	extends [mscorlib]System.Object
  {
    .field private static literal  int32 Size = int32(0x01c9c380)

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
    } // end of method Test::.ctor

    // method line 2
    .method private static hidebysig 
           default void Main ()  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 77 (0x4d)
	.maxstack 3
	.locals init (
		object[]	V_0,
		int32	V_1)
	IL_0000:  ldc.i4 30000000
	IL_0005:  newarr [mscorlib]System.Object
	IL_000a:  stloc.0 
	IL_000b:  ldc.i4.0 
	IL_000c:  stloc.1 
	IL_000d:  br IL_002f

	IL_0012:  ldloc.0 
	IL_0013:  ldloc.1 
	IL_0014:  ldnull 
	IL_0015:  stelem.ref 
	IL_0016:  ldloc.0 
	IL_0017:  ldloc.1 
	IL_0018:  ldc.i4.1 
	IL_0019:  add 
	IL_001a:  ldstr ""
	IL_001f:  stelem.ref 
	IL_0020:  ldloc.0 
	IL_0021:  ldloc.1 
	IL_0022:  ldc.i4.2 
	IL_0023:  add 
	IL_0024:  ldc.i4.1 
	IL_0025:  box [mscorlib]System.Int32
	IL_002a:  stelem.ref 
	IL_002b:  ldloc.1 
	IL_002c:  ldc.i4.3 
	IL_002d:  add 
	IL_002e:  stloc.1 
	IL_002f:  ldloc.1 
	IL_0030:  ldc.i4 29999998
	IL_0035:  blt IL_0012

	IL_003a:  ldloc.0 
	IL_003b:  call void class Test::FindSumWithCast(object[])
	IL_0040:  ldloc.0 
	IL_0041:  call void class Test::FindSumWithAs(object[])
	IL_0046:  ldloc.0 
	IL_0047:  call void class Test::FindSumWithLinq(object[])
	IL_004c:  ret 
    } // end of method Test::Main

    // method line 3
    .method private static hidebysig 
           default void FindSumWithCast (object[] values)  cil managed 
    {
        // Method begins at RVA 0x20b4
	// Code size 97 (0x61)
	.maxstack 3
	.locals init (
		class [System]System.Diagnostics.Stopwatch	V_0,
		int32	V_1,
		object	V_2,
		object[]	V_3,
		int32	V_4,
		int32	V_5)
	IL_0000:  call class [System]System.Diagnostics.Stopwatch class [System]System.Diagnostics.Stopwatch::StartNew()
	IL_0005:  stloc.0 
	IL_0006:  ldc.i4.0 
	IL_0007:  stloc.1 
	IL_0008:  ldarg.0 
	IL_0009:  stloc.3 
	IL_000a:  ldc.i4.0 
	IL_000b:  stloc.s 4
	IL_000d:  br IL_0035

	IL_0012:  ldloc.3 
	IL_0013:  ldloc.s 4
	IL_0015:  ldelem.ref 
	IL_0016:  stloc.2 
	IL_0017:  ldloc.2 
	IL_0018:  isinst [mscorlib]System.Int32
	IL_001d:  brfalse IL_002f

	IL_0022:  ldloc.2 
	IL_0023:  unbox.any [mscorlib]System.Int32
	IL_0028:  stloc.s 5
	IL_002a:  ldloc.1 
	IL_002b:  ldloc.s 5
	IL_002d:  add 
	IL_002e:  stloc.1 
	IL_002f:  ldloc.s 4
	IL_0031:  ldc.i4.1 
	IL_0032:  add 
	IL_0033:  stloc.s 4
	IL_0035:  ldloc.s 4
	IL_0037:  ldloc.3 
	IL_0038:  ldlen 
	IL_0039:  conv.i4 
	IL_003a:  blt IL_0012

	IL_003f:  ldloc.0 
	IL_0040:  callvirt instance void class [System]System.Diagnostics.Stopwatch::Stop()
	IL_0045:  ldstr "Cast: {0} : {1}"
	IL_004a:  ldloc.1 
	IL_004b:  box [mscorlib]System.Int32
	IL_0050:  ldloc.0 
	IL_0051:  callvirt instance int64 class [System]System.Diagnostics.Stopwatch::get_ElapsedMilliseconds()
	IL_0056:  box [mscorlib]System.Int64
	IL_005b:  call void class [mscorlib]System.Console::WriteLine(string, object, object)
	IL_0060:  ret 
    } // end of method Test::FindSumWithCast

    // method line 4
    .method private static hidebysig 
           default void FindSumWithAs (object[] values)  cil managed 
    {
        // Method begins at RVA 0x2124
	// Code size 108 (0x6c)
	.maxstack 3
	.locals init (
		class [System]System.Diagnostics.Stopwatch	V_0,
		int32	V_1,
		object	V_2,
		object[]	V_3,
		int32	V_4,
		valuetype [mscorlib]System.Nullable`1<int32>	V_5)
	IL_0000:  call class [System]System.Diagnostics.Stopwatch class [System]System.Diagnostics.Stopwatch::StartNew()
	IL_0005:  stloc.0 
	IL_0006:  ldc.i4.0 
	IL_0007:  stloc.1 
	IL_0008:  ldarg.0 
	IL_0009:  stloc.3 
	IL_000a:  ldc.i4.0 
	IL_000b:  stloc.s 4
	IL_000d:  br IL_0040

	IL_0012:  ldloc.3 
	IL_0013:  ldloc.s 4
	IL_0015:  ldelem.ref 
	IL_0016:  stloc.2 
	IL_0017:  ldloc.2 
	IL_0018:  isinst valuetype [mscorlib]System.Nullable`1<int32>
	IL_001d:  unbox.any valuetype [mscorlib]System.Nullable`1<int32>
	IL_0022:  stloc.s 5
	IL_0024:  ldloca.s 5
	IL_0026:  call instance bool valuetype [mscorlib]System.Nullable`1<int32>::get_HasValue()
	IL_002b:  brfalse IL_003a

	IL_0030:  ldloc.1 
	IL_0031:  ldloca.s 5
	IL_0033:  call instance !0 valuetype [mscorlib]System.Nullable`1<int32>::get_Value()
	IL_0038:  add 
	IL_0039:  stloc.1 
	IL_003a:  ldloc.s 4
	IL_003c:  ldc.i4.1 
	IL_003d:  add 
	IL_003e:  stloc.s 4
	IL_0040:  ldloc.s 4
	IL_0042:  ldloc.3 
	IL_0043:  ldlen 
	IL_0044:  conv.i4 
	IL_0045:  blt IL_0012

	IL_004a:  ldloc.0 
	IL_004b:  callvirt instance void class [System]System.Diagnostics.Stopwatch::Stop()
	IL_0050:  ldstr "As: {0} : {1}"
	IL_0055:  ldloc.1 
	IL_0056:  box [mscorlib]System.Int32
	IL_005b:  ldloc.0 
	IL_005c:  callvirt instance int64 class [System]System.Diagnostics.Stopwatch::get_ElapsedMilliseconds()
	IL_0061:  box [mscorlib]System.Int64
	IL_0066:  call void class [mscorlib]System.Console::WriteLine(string, object, object)
	IL_006b:  ret 
    } // end of method Test::FindSumWithAs

    // method line 5
    .method private static hidebysig 
           default void FindSumWithLinq (object[] values)  cil managed 
    {
        // Method begins at RVA 0x219c
	// Code size 52 (0x34)
	.maxstack 3
	.locals init (
		class [System]System.Diagnostics.Stopwatch	V_0,
		int32	V_1)
	IL_0000:  call class [System]System.Diagnostics.Stopwatch class [System]System.Diagnostics.Stopwatch::StartNew()
	IL_0005:  stloc.0 
	IL_0006:  ldarg.0 
	IL_0007:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::OfType<int32> (class [mscorlib]System.Collections.IEnumerable)
	IL_000c:  call int32 class [System.Core]System.Linq.Enumerable::Sum(class [mscorlib]System.Collections.Generic.IEnumerable`1<int32>)
	IL_0011:  stloc.1 
	IL_0012:  ldloc.0 
	IL_0013:  callvirt instance void class [System]System.Diagnostics.Stopwatch::Stop()
	IL_0018:  ldstr "LINQ: {0} : {1}"
	IL_001d:  ldloc.1 
	IL_001e:  box [mscorlib]System.Int32
	IL_0023:  ldloc.0 
	IL_0024:  callvirt instance int64 class [System]System.Diagnostics.Stopwatch::get_ElapsedMilliseconds()
	IL_0029:  box [mscorlib]System.Int64
	IL_002e:  call void class [mscorlib]System.Console::WriteLine(string, object, object)
	IL_0033:  ret 
    } // end of method Test::FindSumWithLinq

  } // end of class Test

