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
.module Test.exe // GUID = {0F8FCBE4-5891-43B9-918A-3400550D6E91}


  .class public auto ansi beforefieldinit GenericStruct`1<valuetype .ctor (class [mscorlib]System.ValueType) T>
  	extends [mscorlib]System.Object
  {

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
    } // end of method GenericStruct`1::.ctor

    // method line 2
    .method public hidebysig specialname 
           instance default string get_Name ()  cil managed 
    {
        // Method begins at RVA 0x2058
	// Code size 16 (0x10)
	.maxstack 8
	IL_0000:  ldtoken !T
	IL_0005:  call class [mscorlib]System.Type class [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
	IL_000a:  callvirt instance string class [mscorlib]System.Reflection.MemberInfo::get_Name()
	IL_000f:  ret 
    } // end of method GenericStruct`1::get_Name

    // method line 3
    .method public hidebysig specialname 
           instance default int32 get_Size ()  cil managed 
    {
        // Method begins at RVA 0x2069
	// Code size 18 (0x12)
	.maxstack 8
	IL_0000:  ldtoken !T
	IL_0005:  call class [mscorlib]System.Type class [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
	IL_000a:  call int32 class [mscorlib]System.Runtime.InteropServices.Marshal::SizeOf(class [mscorlib]System.Type)
	IL_000f:  ldc.i4.8 
	IL_0010:  mul 
	IL_0011:  ret 
    } // end of method GenericStruct`1::get_Size

	.property instance string Name ()
	{
		.get instance default string GenericStruct`1::get_Name () 
	}
	.property instance int32 Size ()
	{
		.get instance default int32 GenericStruct`1::get_Size () 
	}
  } // end of class GenericStruct`1

  .class public auto ansi beforefieldinit Program
  	extends [mscorlib]System.Object
  {

    // method line 4
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x207c
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Program::.ctor

    // method line 5
    .method private static hidebysig 
           default object CreateInstance (class [mscorlib]System.Type t)  cil managed 
    {
        // Method begins at RVA 0x2084
	// Code size 33 (0x21)
	.maxstack 1
	.locals init (
		object	V_0,
		class [mscorlib]System.Exception	V_1)
	.try { // 0
	  IL_0000:  ldarg.0 
	  IL_0001:  call object class [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type)
	  IL_0006:  stloc.0 
	  IL_0007:  leave IL_001f

	} // end .try 0
	catch class [mscorlib]System.Exception { // 0
	  IL_000c:  stloc.1 
	  IL_000d:  ldloc.1 
	  IL_000e:  callvirt instance string class [mscorlib]System.Exception::get_Message()
	  IL_0013:  call void class [mscorlib]System.Console::WriteLine(string)
	  IL_0018:  ldnull 
	  IL_0019:  stloc.0 
	  IL_001a:  leave IL_001f

	} // end handler 0
	IL_001f:  ldloc.0 
	IL_0020:  ret 
    } // end of method Program::CreateInstance

    // method line 6
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x20c4
	.entrypoint
	// Code size 70 (0x46)
	.maxstack 2
	.locals init (
		object	V_0,
		object	V_1)
	IL_0000:  ldtoken class GenericStruct`1<int32>
	IL_0005:  call class [mscorlib]System.Type class [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
	IL_000a:  call object class Program::CreateInstance(class [mscorlib]System.Type)
	IL_000f:  stloc.0 
	IL_0010:  ldtoken GenericStruct`1
	IL_0015:  call class [mscorlib]System.Type class [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
	IL_001a:  call object class Program::CreateInstance(class [mscorlib]System.Type)
	IL_001f:  stloc.1 
	IL_0020:  ldloc.0 
	IL_0021:  ldnull 
	IL_0022:  ceq 
	IL_0024:  ldc.i4.0 
	IL_0025:  ceq 
	IL_0027:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_002c:  ldloc.0 
	IL_002d:  isinst class GenericStruct`1<int32>
	IL_0032:  callvirt instance string class GenericStruct`1<int32>::get_Name()
	IL_0037:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_003c:  ldloc.1 
	IL_003d:  ldnull 
	IL_003e:  ceq 
	IL_0040:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_0045:  ret 
    } // end of method Program::Main

  } // end of class Program

