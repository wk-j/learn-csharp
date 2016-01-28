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
.module Test.exe // GUID = {000658E4-D208-4872-87BA-B035F9C8F3F8}


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

  .class private auto ansi beforefieldinit Dog
  	extends Animal
  {

    // method line 3
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2060
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void class Animal::'.ctor'()
	IL_0006:  ret 
    } // end of method Dog::.ctor

  } // end of class Dog

  .class public auto ansi beforefieldinit Program
  	extends [mscorlib]System.Object
  {
    .field  private static  class [mscorlib]System.Action`1<class Animal> '<>f__mg$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 4
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2068
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Program::.ctor

    // method line 5
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2070
	.entrypoint
	// Code size 93 (0x5d)
	.maxstack 3
	.locals init (
		class [mscorlib]System.Collections.Generic.List`1<class Cat>	V_0,
		class [mscorlib]System.Collections.Generic.List`1<class Cat>	V_1,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<class Animal>	V_2,
		class [mscorlib]System.Collections.Generic.List`1<class Animal>	V_3,
		class Animal[]	V_4)
	IL_0000:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class Cat>::'.ctor'()
	IL_0005:  stloc.1 
	IL_0006:  ldloc.1 
	IL_0007:  newobj instance void class Cat::'.ctor'()
	IL_000c:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class Cat>::Add(!0)
	IL_0011:  ldloc.1 
	IL_0012:  stloc.0 
	IL_0013:  ldloc.0 
	IL_0014:  stloc.2 
	IL_0015:  ldloc.2 
	IL_0016:  call class [mscorlib]System.Collections.Generic.List`1<!!0> class [System.Core]System.Linq.Enumerable::ToList<class Animal> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_001b:  stloc.3 
	IL_001c:  ldloc.3 
	IL_001d:  newobj instance void class Dog::'.ctor'()
	IL_0022:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class Animal>::Add(!0)
	IL_0027:  ldloc.3 
	IL_0028:  ldsfld class [mscorlib]System.Action`1<class Animal> Program::'<>f__mg$cache0'
	IL_002d:  brtrue.s IL_0040

	IL_002f:  ldnull 
	IL_0030:  ldftn void class [mscorlib]System.Console::WriteLine(object)
	IL_0036:  newobj instance void class [mscorlib]System.Action`1<class Animal>::'.ctor'(object, native int)
	IL_003b:  stsfld class [mscorlib]System.Action`1<class Animal> Program::'<>f__mg$cache0'
	IL_0040:  ldsfld class [mscorlib]System.Action`1<class Animal> Program::'<>f__mg$cache0'
	IL_0045:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class Animal>::ForEach(class [mscorlib]System.Action`1<!0>)
	IL_004a:  ldc.i4.s 0x0a
	IL_004c:  newarr Animal
	IL_0051:  stloc.s 4
	IL_0053:  ldloc.s 4
	IL_0055:  ldc.i4.0 
	IL_0056:  newobj instance void class Cat::'.ctor'()
	IL_005b:  stelem.ref 
	IL_005c:  ret 
    } // end of method Program::Main

  } // end of class Program

