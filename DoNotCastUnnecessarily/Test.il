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
.module Test.exe // GUID = {279CAAD4-F1A0-438C-B716-4D179F7F5EA9}


  .class public auto ansi beforefieldinit Program
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
    } // end of method Program::.ctor

    // method line 2
    .method private static hidebysig 
           default void IsCast ()  cil managed 
    {
        // Method begins at RVA 0x2058
	// Code size 15 (0xf)
	.maxstack 2
	.locals init (
		string	V_0,
		bool	V_1)
	IL_0000:  ldstr "Hello, is!"
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  ldnull 
	IL_0008:  ceq 
	IL_000a:  ldc.i4.0 
	IL_000b:  ceq 
	IL_000d:  stloc.1 
	IL_000e:  ret 
    } // end of method Program::IsCast

    // method line 3
    .method private static hidebysig 
           default void Cast ()  cil managed 
    {
        // Method begins at RVA 0x2074
	// Code size 14 (0xe)
	.maxstack 1
	.locals init (
		object	V_0,
		string	V_1)
	IL_0000:  ldstr "Hello, cast!"
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  castclass [mscorlib]System.String
	IL_000c:  stloc.1 
	IL_000d:  ret 
    } // end of method Program::Cast

    // method line 4
    .method private static hidebysig 
           default void AsCast ()  cil managed 
    {
        // Method begins at RVA 0x2090
	// Code size 9 (0x9)
	.maxstack 1
	.locals init (
		string	V_0,
		string	V_1)
	IL_0000:  ldstr "Hello, as!"
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  stloc.1 
	IL_0008:  ret 
    } // end of method Program::AsCast

    // method line 5
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x20a8
	.entrypoint
	// Code size 7 (0x7)
	.maxstack 1
	.locals init (
		string	V_0)
	IL_0000:  ldstr "Hello word"
	IL_0005:  stloc.0 
	IL_0006:  ret 
    } // end of method Program::Main

  } // end of class Program

