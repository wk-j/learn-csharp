.assembly extern mscorlib
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
.module Test.exe // GUID = {576E35D3-D609-4565-9EFB-645D8CA41F30}


  .class public auto ansi beforefieldinit Test
  	extends [mscorlib]System.Object
  {
    .field  private static  class [mscorlib]System.Action`1<object> '<>f__am$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Action`1<object> '<>f__am$cache1'
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
    } // end of method Test::.ctor

    // method line 2
    .method public static hidebysig 
           default void TestReference ()  cil managed 
    {
        // Method begins at RVA 0x2058
	// Code size 230 (0xe6)
	.maxstack 3
	.locals init (
		class [mscorlib]System.Action`1<object>	V_0)
	IL_0000:  ldsfld class [mscorlib]System.Action`1<object> Test::'<>f__am$cache0'
	IL_0005:  brtrue.s IL_0018

	IL_0007:  ldnull 
	IL_0008:  ldftn void class Test::'<TestReference>m__0'(object)
	IL_000e:  newobj instance void class [mscorlib]System.Action`1<object>::'.ctor'(object, native int)
	IL_0013:  stsfld class [mscorlib]System.Action`1<object> Test::'<>f__am$cache0'
	IL_0018:  ldsfld class [mscorlib]System.Action`1<object> Test::'<>f__am$cache0'
	IL_001d:  stloc.0 
	IL_001e:  ldloc.0 
	IL_001f:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<string> ()
	IL_0024:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<string> ()
	IL_0029:  ceq 
	IL_002b:  box [mscorlib]System.Boolean
	IL_0030:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_0035:  ldloc.0 
	IL_0036:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<object> ()
	IL_003b:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<object> ()
	IL_0040:  ceq 
	IL_0042:  box [mscorlib]System.Boolean
	IL_0047:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_004c:  ldloc.0 
	IL_004d:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<string> ()
	IL_0052:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<object> ()
	IL_0057:  ceq 
	IL_0059:  ldc.i4.0 
	IL_005a:  ceq 
	IL_005c:  box [mscorlib]System.Boolean
	IL_0061:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_0066:  ldloc.0 
	IL_0067:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<int32> ()
	IL_006c:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<int32> ()
	IL_0071:  ceq 
	IL_0073:  box [mscorlib]System.Boolean
	IL_0078:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_007d:  ldloc.0 
	IL_007e:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<float32> ()
	IL_0083:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<float32> ()
	IL_0088:  ceq 
	IL_008a:  box [mscorlib]System.Boolean
	IL_008f:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_0094:  ldloc.0 
	IL_0095:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<int32> ()
	IL_009a:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<float32> ()
	IL_009f:  ceq 
	IL_00a1:  ldc.i4.0 
	IL_00a2:  ceq 
	IL_00a4:  box [mscorlib]System.Boolean
	IL_00a9:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_00ae:  ldloc.0 
	IL_00af:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<int32> ()
	IL_00b4:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<int32> ()
	IL_00b9:  call bool object::ReferenceEquals(object, object)
	IL_00be:  box [mscorlib]System.Boolean
	IL_00c3:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_00c8:  ldloc.0 
	IL_00c9:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<int32> ()
	IL_00ce:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<float32> ()
	IL_00d3:  call bool object::ReferenceEquals(object, object)
	IL_00d8:  ldc.i4.0 
	IL_00d9:  ceq 
	IL_00db:  box [mscorlib]System.Boolean
	IL_00e0:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_00e5:  ret 
    } // end of method Test::TestReference

    // method line 3
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x214c
	.entrypoint
	// Code size 234 (0xea)
	.maxstack 3
	.locals init (
		class [mscorlib]System.Action`1<object>	V_0,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<string>	V_1,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<string>	V_2,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<string>	V_3,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<int32>	V_4,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<int32>	V_5,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<unsigned int8>	V_6,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<object>	V_7,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<object>	V_8,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Collections.Generic.List`1<string>>	V_9,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<class [mscorlib]System.Collections.Generic.List`1<int32>>	V_10)
	IL_0000:  ldsfld class [mscorlib]System.Action`1<object> Test::'<>f__am$cache1'
	IL_0005:  brtrue.s IL_0018

	IL_0007:  ldnull 
	IL_0008:  ldftn void class Test::'<Main>m__1'(object)
	IL_000e:  newobj instance void class [mscorlib]System.Action`1<object>::'.ctor'(object, native int)
	IL_0013:  stsfld class [mscorlib]System.Action`1<object> Test::'<>f__am$cache1'
	IL_0018:  ldsfld class [mscorlib]System.Action`1<object> Test::'<>f__am$cache1'
	IL_001d:  stloc.0 
	IL_001e:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<string> ()
	IL_0023:  stloc.1 
	IL_0024:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<string> ()
	IL_0029:  stloc.2 
	IL_002a:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<string> ()
	IL_002f:  stloc.3 
	IL_0030:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<int32> ()
	IL_0035:  stloc.s 4
	IL_0037:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<int32> ()
	IL_003c:  stloc.s 5
	IL_003e:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<unsigned int8> ()
	IL_0043:  stloc.s 6
	IL_0045:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<object> ()
	IL_004a:  stloc.s 7
	IL_004c:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<object> ()
	IL_0051:  stloc.s 8
	IL_0053:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<class [mscorlib]System.Collections.Generic.List`1<string>> ()
	IL_0058:  stloc.s 9
	IL_005a:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::Empty<class [mscorlib]System.Collections.Generic.List`1<int32>> ()
	IL_005f:  stloc.s 10
	IL_0061:  ldloc.0 
	IL_0062:  ldloc.1 
	IL_0063:  ldloc.2 
	IL_0064:  ceq 
	IL_0066:  box [mscorlib]System.Boolean
	IL_006b:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_0070:  ldloc.0 
	IL_0071:  ldloc.1 
	IL_0072:  ldloc.3 
	IL_0073:  ceq 
	IL_0075:  box [mscorlib]System.Boolean
	IL_007a:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_007f:  ldloc.0 
	IL_0080:  ldloc.s 4
	IL_0082:  ldloc.s 5
	IL_0084:  ceq 
	IL_0086:  box [mscorlib]System.Boolean
	IL_008b:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_0090:  ldloc.0 
	IL_0091:  ldloc.s 4
	IL_0093:  ldloc.s 6
	IL_0095:  ceq 
	IL_0097:  box [mscorlib]System.Boolean
	IL_009c:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_00a1:  ldloc.0 
	IL_00a2:  ldloc.s 9
	IL_00a4:  ldloc.s 10
	IL_00a6:  ceq 
	IL_00a8:  box [mscorlib]System.Boolean
	IL_00ad:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_00b2:  ldloc.0 
	IL_00b3:  ldloc.s 7
	IL_00b5:  ldloc.s 8
	IL_00b7:  ceq 
	IL_00b9:  box [mscorlib]System.Boolean
	IL_00be:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_00c3:  ldloc.0 
	IL_00c4:  ldloc.s 4
	IL_00c6:  ldloc.s 5
	IL_00c8:  ceq 
	IL_00ca:  box [mscorlib]System.Boolean
	IL_00cf:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_00d4:  ldloc.0 
	IL_00d5:  ldloc.1 
	IL_00d6:  ldloc.s 7
	IL_00d8:  ceq 
	IL_00da:  box [mscorlib]System.Boolean
	IL_00df:  callvirt instance void class [mscorlib]System.Action`1<object>::Invoke(!0)
	IL_00e4:  call void class Test::TestReference()
	IL_00e9:  ret 
    } // end of method Test::Main

    // method line 4
    .method private static hidebysig 
           default void '<TestReference>m__0' (object s)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2242
	// Code size 12 (0xc)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance string object::ToString()
	IL_0006:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_000b:  ret 
    } // end of method Test::<TestReference>m__0

    // method line 5
    .method private static hidebysig 
           default void '<Main>m__1' (object s)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x224f
	// Code size 12 (0xc)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance string object::ToString()
	IL_0006:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_000b:  ret 
    } // end of method Test::<Main>m__1

  } // end of class Test

