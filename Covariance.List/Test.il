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
.module Test.exe // GUID = {C7221706-B414-46CF-B040-113A5E36110C}


  .class interface public auto ansi abstract MyList`1<+ T>
  	implements class [mscorlib]System.Collections.Generic.IEnumerable`1<!0>, [mscorlib]System.Collections.IEnumerable  {

  } // end of class MyList`1

  .class public auto ansi beforefieldinit Test
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
    } // end of method Test::.ctor

    // method line 2
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 31 (0x1f)
	.maxstack 2
	.locals init (
		class [mscorlib]System.Collections.Generic.List`1<string>	V_0,
		class [mscorlib]System.Collections.Generic.List`1<string>	V_1)
	IL_0000:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<string>::'.ctor'()
	IL_0005:  stloc.1 
	IL_0006:  ldloc.1 
	IL_0007:  ldstr "A"
	IL_000c:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0)
	IL_0011:  ldloc.1 
	IL_0012:  ldstr "B"
	IL_0017:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<string>::Add(!0)
	IL_001c:  ldloc.1 
	IL_001d:  stloc.0 
	IL_001e:  ret 
    } // end of method Test::Main

  } // end of class Test

