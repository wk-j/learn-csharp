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
.assembly 'Test'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module Test.exe // GUID = {C956F9F1-6646-4D83-9873-41C7C8083778}


  .class public auto ansi beforefieldinit Generic`1<T>
  	extends [mscorlib]System.Object
  {
    .field  private static  int32 _count

    // method line 1
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 19 (0x13)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ldsfld int32 class Generic`1<!0>::_count
	IL_000b:  ldc.i4.1 
	IL_000c:  add 
	IL_000d:  stsfld int32 class Generic`1<!0>::_count
	IL_0012:  ret 
    } // end of method Generic`1::.ctor

    // method line 2
    .method public hidebysig specialname 
           instance default int32 get_Count ()  cil managed 
    {
        // Method begins at RVA 0x2064
	// Code size 6 (0x6)
	.maxstack 8
	IL_0000:  ldsfld int32 class Generic`1<!0>::_count
	IL_0005:  ret 
    } // end of method Generic`1::get_Count

    // method line 3
    .method private static hidebysig specialname rtspecialname 
           default void '.cctor' ()  cil managed 
    {
        // Method begins at RVA 0x206b
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldc.i4.0 
	IL_0001:  stsfld int32 class Generic`1<!0>::_count
	IL_0006:  ret 
    } // end of method Generic`1::.cctor

	.property instance int32 Count ()
	{
		.get instance default int32 Generic`1::get_Count () 
	}
  } // end of class Generic`1

  .class public auto ansi beforefieldinit Test
  	extends [mscorlib]System.Object
  {

    // method line 4
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2073
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Test::.ctor

    // method line 5
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x207c
	.entrypoint
	// Code size 237 (0xed)
	.maxstack 2
	.locals init (
		class Generic`1<string>	V_0,
		class Generic`1<string>	V_1,
		class Generic`1<int32>	V_2,
		class Generic`1<object>	V_3,
		class Generic`1<object>	V_4,
		class Generic`1<object>	V_5,
		class Generic`1<float32>	V_6,
		class Generic`1<float32>	V_7,
		class [System]System.Collections.Generic.Stack`1<int32>	V_8,
		class [System]System.Collections.Generic.Stack`1<int32>	V_9)
	IL_0000:  newobj instance void class Generic`1<string>::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  newobj instance void class Generic`1<string>::'.ctor'()
	IL_000b:  stloc.1 
	IL_000c:  ldloc.0 
	IL_000d:  callvirt instance int32 class Generic`1<string>::get_Count()
	IL_0012:  ldc.i4.2 
	IL_0013:  ceq 
	IL_0015:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_001a:  ldloc.1 
	IL_001b:  callvirt instance int32 class Generic`1<string>::get_Count()
	IL_0020:  ldc.i4.2 
	IL_0021:  ceq 
	IL_0023:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_0028:  newobj instance void class Generic`1<int32>::'.ctor'()
	IL_002d:  stloc.2 
	IL_002e:  ldloc.2 
	IL_002f:  callvirt instance int32 class Generic`1<int32>::get_Count()
	IL_0034:  ldc.i4.1 
	IL_0035:  ceq 
	IL_0037:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_003c:  ldloc.0 
	IL_003d:  callvirt instance int32 class Generic`1<string>::get_Count()
	IL_0042:  ldc.i4.2 
	IL_0043:  ceq 
	IL_0045:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_004a:  newobj instance void class Generic`1<object>::'.ctor'()
	IL_004f:  stloc.3 
	IL_0050:  newobj instance void class Generic`1<object>::'.ctor'()
	IL_0055:  stloc.s 4
	IL_0057:  newobj instance void class Generic`1<object>::'.ctor'()
	IL_005c:  stloc.s 5
	IL_005e:  ldloc.0 
	IL_005f:  callvirt instance int32 class Generic`1<string>::get_Count()
	IL_0064:  ldc.i4.2 
	IL_0065:  ceq 
	IL_0067:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_006c:  ldloc.2 
	IL_006d:  callvirt instance int32 class Generic`1<int32>::get_Count()
	IL_0072:  ldc.i4.1 
	IL_0073:  ceq 
	IL_0075:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_007a:  ldloc.3 
	IL_007b:  callvirt instance int32 class Generic`1<object>::get_Count()
	IL_0080:  ldc.i4.3 
	IL_0081:  ceq 
	IL_0083:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_0088:  newobj instance void class Generic`1<float32>::'.ctor'()
	IL_008d:  stloc.s 6
	IL_008f:  newobj instance void class Generic`1<float32>::'.ctor'()
	IL_0094:  stloc.s 7
	IL_0096:  ldloc.3 
	IL_0097:  ldloc.s 4
	IL_0099:  ceq 
	IL_009b:  ldc.i4.0 
	IL_009c:  ceq 
	IL_009e:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_00a3:  ldloc.0 
	IL_00a4:  ldloc.3 
	IL_00a5:  call bool object::ReferenceEquals(object, object)
	IL_00aa:  ldc.i4.0 
	IL_00ab:  ceq 
	IL_00ad:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_00b2:  ldloc.s 6
	IL_00b4:  ldloc.s 7
	IL_00b6:  ceq 
	IL_00b8:  ldc.i4.0 
	IL_00b9:  ceq 
	IL_00bb:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_00c0:  ldloc.2 
	IL_00c1:  ldloc.s 6
	IL_00c3:  call bool object::ReferenceEquals(object, object)
	IL_00c8:  ldc.i4.0 
	IL_00c9:  ceq 
	IL_00cb:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_00d0:  newobj instance void class [System]System.Collections.Generic.Stack`1<int32>::'.ctor'()
	IL_00d5:  stloc.s 8
	IL_00d7:  newobj instance void class [System]System.Collections.Generic.Stack`1<int32>::'.ctor'()
	IL_00dc:  stloc.s 9
	IL_00de:  ldloc.s 8
	IL_00e0:  ldloc.s 9
	IL_00e2:  ceq 
	IL_00e4:  ldc.i4.0 
	IL_00e5:  ceq 
	IL_00e7:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_00ec:  ret 
    } // end of method Test::Main

  } // end of class Test

