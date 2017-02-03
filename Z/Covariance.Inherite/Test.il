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
.module Test.exe // GUID = {D743F364-8F28-4B4C-8F90-284F1DD7A3F1}


  .class interface public auto ansi abstract ICollection`1<+ T>
  {

  } // end of class ICollection`1

  .class interface public auto ansi abstract Collection`1<+ T>
  	implements class ICollection`1<!0>  {

    // method line 1
    .method public virtual hidebysig newslot abstract 
           instance default !T Add ()  cil managed 
    {
        // Method begins at RVA 0x0
    } // end of method Collection`1::Add

  } // end of class Collection`1

  .class public auto ansi beforefieldinit RedCollection`1<T>
  	extends [mscorlib]System.Object
  	implements class Collection`1<!0>, class ICollection`1<!0>  {

    // method line 2
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method RedCollection`1::.ctor

    // method line 3
    .method public final virtual hidebysig newslot 
           instance default !T Add ()  cil managed 
    {
        // Method begins at RVA 0x2058
	// Code size 10 (0xa)
	.maxstack 1
	.locals init (
		!T	V_0)
	IL_0000:  ldloca.s 0
	IL_0002:  initobj !0
	IL_0008:  ldloc.0 
	IL_0009:  ret 
    } // end of method RedCollection`1::Add

  } // end of class RedCollection`1

  .class private auto ansi beforefieldinit Program
  	extends [mscorlib]System.Object
  {

    // method line 4
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x206e
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Program::.ctor

    // method line 5
    .method private static hidebysig 
           default void Test (class Collection`1<object> x)  cil managed 
    {
        // Method begins at RVA 0x2076
	// Code size 1 (0x1)
	.maxstack 8
	IL_0000:  ret 
    } // end of method Program::Test

    // method line 6
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2078
	.entrypoint
	// Code size 7 (0x7)
	.maxstack 1
	.locals init (
		class Collection`1<object>	V_0)
	IL_0000:  newobj instance void class RedCollection`1<string>::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  ret 
    } // end of method Program::Main

  } // end of class Program

