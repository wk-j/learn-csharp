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
.module Test.exe // GUID = {07092A45-734F-4C12-AE52-07CFFDB13243}


  .class private auto ansi beforefieldinit Animal
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
    } // end of method Animal::.ctor

  } // end of class Animal

  .class private auto ansi beforefieldinit Cat
  	extends Animal
  {

    // method line 2
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2058
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void class Animal::'.ctor'()
	IL_0006:  ret 
    } // end of method Cat::.ctor

  } // end of class Cat

  .class public auto ansi beforefieldinit Program
  	extends [mscorlib]System.Object
  {
    .field  private static  class [mscorlib]System.Func`2<class Animal,class Cat> '<>f__am$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 3
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2060
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Program::.ctor

    // method line 4
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2068
	.entrypoint
	// Code size 65 (0x41)
	.maxstack 2
	.locals init (
		class [mscorlib]System.Func`2<class Animal, class Cat>	V_0,
		class [mscorlib]System.Func`2<class Cat, class Animal>	V_1)
	IL_0000:  ldsfld class [mscorlib]System.Func`2<class Animal,class Cat> Program::'<>f__am$cache0'
	IL_0005:  brtrue.s IL_0018

	IL_0007:  ldnull 
	IL_0008:  ldftn class Cat class Program::'<Main>m__0'(class Animal)
	IL_000e:  newobj instance void class [mscorlib]System.Func`2<class Animal, class Cat>::'.ctor'(object, native int)
	IL_0013:  stsfld class [mscorlib]System.Func`2<class Animal,class Cat> Program::'<>f__am$cache0'
	IL_0018:  ldsfld class [mscorlib]System.Func`2<class Animal,class Cat> Program::'<>f__am$cache0'
	IL_001d:  stloc.0 
	IL_001e:  ldloc.0 
	IL_001f:  stloc.1 
	IL_0020:  ldloc.0 
	IL_0021:  callvirt instance class [mscorlib]System.Type object::GetType()
	IL_0026:  callvirt instance string class [mscorlib]System.Reflection.MemberInfo::get_Name()
	IL_002b:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0030:  ldloc.1 
	IL_0031:  callvirt instance class [mscorlib]System.Type object::GetType()
	IL_0036:  callvirt instance string class [mscorlib]System.Reflection.MemberInfo::get_Name()
	IL_003b:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0040:  ret 
    } // end of method Program::Main

    // method line 5
    .method private static hidebysig 
           default class Cat '<Main>m__0' (class Animal x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x20b5
	// Code size 6 (0x6)
	.maxstack 8
	IL_0000:  newobj instance void class Cat::'.ctor'()
	IL_0005:  ret 
    } // end of method Program::<Main>m__0

  } // end of class Program

