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
.module Test.exe // GUID = {CBE1FE24-B71E-4F7C-8BA4-9BA3ABAB8DB5}


  .class public auto ansi beforefieldinit Test`1<T>
  	extends [mscorlib]System.Object
  	implements class [mscorlib]System.Collections.Generic.IComparer`1<!0>  {

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
    } // end of method Test`1::.ctor

    // method line 2
    .method public final virtual hidebysig newslot 
           instance default int32 Compare (!T a, !T b)  cil managed 
    {
        // Method begins at RVA 0x2058
	// Code size 2 (0x2)
	.maxstack 8
	IL_0000:  ldc.i4.0 
	IL_0001:  ret 
    } // end of method Test`1::Compare

  } // end of class Test`1

  .class public auto ansi beforefieldinit Animal
  	extends [mscorlib]System.Object
  {

    // method line 3
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x205b
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

    // method line 4
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2063
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

    // method line 5
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x206b
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Program::.ctor

    // method line 6
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2074
	.entrypoint
	// Code size 35 (0x23)
	.maxstack 2
	.locals init (
		class Cat	V_0,
		class [mscorlib]System.Collections.Generic.List`1<class Cat>	V_1,
		class [mscorlib]System.Collections.Generic.List`1<class Cat>	V_2,
		class Test`1<class Animal>	V_3)
	IL_0000:  newobj instance void class Cat::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class Cat>::'.ctor'()
	IL_000b:  stloc.2 
	IL_000c:  ldloc.2 
	IL_000d:  ldloc.0 
	IL_000e:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class Cat>::Add(!0)
	IL_0013:  ldloc.2 
	IL_0014:  stloc.1 
	IL_0015:  newobj instance void class Test`1<class Animal>::'.ctor'()
	IL_001a:  stloc.3 
	IL_001b:  ldloc.1 
	IL_001c:  ldloc.3 
	IL_001d:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class Cat>::Sort(class [mscorlib]System.Collections.Generic.IComparer`1<!0>)
	IL_0022:  ret 
    } // end of method Program::Main

  } // end of class Program

