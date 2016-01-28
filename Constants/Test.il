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
.module Test.exe // GUID = {85A66594-F894-4957-8E57-00963B586FFE}


  .class public auto ansi beforefieldinit Program
  	extends [mscorlib]System.Object
  {
    .field private static literal  string ProductName = "Visual C#"
    .field  private static  string _version

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
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 25 (0x19)
	.maxstack 3
	.locals init (
		string	V_0,
		string	V_1)
	IL_0000:  ldstr "Visual C#"
	IL_0005:  stloc.0 
	IL_0006:  ldsfld string Program::_version
	IL_000b:  stloc.1 
	IL_000c:  ldstr "{0} {1}"
	IL_0011:  ldloc.0 
	IL_0012:  ldloc.1 
	IL_0013:  call void class [mscorlib]System.Console::WriteLine(string, object, object)
	IL_0018:  ret 
    } // end of method Program::Main

    // method line 3
    .method private static hidebysig specialname rtspecialname 
           default void '.cctor' ()  cil managed 
    {
        // Method begins at RVA 0x207d
	// Code size 11 (0xb)
	.maxstack 8
	IL_0000:  ldstr "1.0"
	IL_0005:  stsfld string Program::_version
	IL_000a:  ret 
    } // end of method Program::.cctor

  } // end of class Program

