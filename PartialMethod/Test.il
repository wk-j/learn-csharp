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
.module Test.exe // GUID = {DDFECC7B-F013-40D8-BEEE-49B123082477}


  .class private auto ansi beforefieldinit Logger
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
    } // end of method Logger::.ctor

    // method line 2
    .method private hidebysig 
           instance default void Write (string message)  cil managed 
    {
        // Method begins at RVA 0x2058
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.1 
	IL_0001:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_0006:  ret 
    } // end of method Logger::Write

    // method line 3
    .method public hidebysig 
           instance default void Trace (string message)  cil managed 
    {
        // Method begins at RVA 0x2060
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  call instance void class Logger::Write(string)
	IL_0007:  ret 
    } // end of method Logger::Trace

  } // end of class Logger

  .class public auto ansi beforefieldinit Program
  	extends [mscorlib]System.Object
  {

    // method line 4
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2069
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
        // Method begins at RVA 0x2071
	.entrypoint
	// Code size 16 (0x10)
	.maxstack 8
	IL_0000:  newobj instance void class Logger::'.ctor'()
	IL_0005:  ldstr "hello world!"
	IL_000a:  call instance void class Logger::Trace(string)
	IL_000f:  ret 
    } // end of method Program::Main

  } // end of class Program

