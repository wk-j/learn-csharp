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
.module Test.exe // GUID = {133E7FC7-7F9E-4941-B428-D99AEA654C4E}


  .class public auto ansi beforefieldinit Animal
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

  .class public auto ansi beforefieldinit Cat
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

  .class public auto ansi beforefieldinit Dog
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
	// Code size 24 (0x18)
	.maxstack 3
	.locals init (
		class [mscorlib]System.Collections.Generic.List`1<class Cat>	V_0,
		class [mscorlib]System.Collections.Generic.IEnumerable`1<class Animal>	V_1,
		class Animal[]	V_2)
	IL_0000:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class Cat>::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  stloc.1 
	IL_0008:  ldc.i4.1 
	IL_0009:  newarr Cat
	IL_000e:  stloc.2 
	IL_000f:  ldloc.2 
	IL_0010:  ldc.i4.0 
	IL_0011:  newobj instance void class Dog::'.ctor'()
	IL_0016:  stelem.ref 
	IL_0017:  ret 
    } // end of method Program::Main

  } // end of class Program

