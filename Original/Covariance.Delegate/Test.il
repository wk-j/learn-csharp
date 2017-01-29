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
.module Test.exe // GUID = {3EE29B82-B412-425F-9106-B18179CBE239}


  .class public auto ansi beforefieldinit Base
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
    } // end of method Base::.ctor

  } // end of class Base

  .class public auto ansi beforefieldinit Derived
  	extends Base
  {

    // method line 2
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2058
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void class Base::'.ctor'()
	IL_0006:  ret 
    } // end of method Derived::.ctor

  } // end of class Derived

  .class public auto ansi abstract sealed beforefieldinit Methods
  	extends [mscorlib]System.Object
  {

    // method line 3
    .method public static hidebysig 
           default class Base DerivedIn_BaseOut (class Derived 'in')  cil managed 
    {
        // Method begins at RVA 0x2060
	// Code size 6 (0x6)
	.maxstack 8
	IL_0000:  newobj instance void class Base::'.ctor'()
	IL_0005:  ret 
    } // end of method Methods::DerivedIn_BaseOut

    // method line 4
    .method public static hidebysig 
           default class Derived DerivedIn_DerivedOut (class Derived 'in')  cil managed 
    {
        // Method begins at RVA 0x2067
	// Code size 6 (0x6)
	.maxstack 8
	IL_0000:  newobj instance void class Derived::'.ctor'()
	IL_0005:  ret 
    } // end of method Methods::DerivedIn_DerivedOut

    // method line 5
    .method public static hidebysig 
           default class Base BaseIn_BaseOut (class Base 'in')  cil managed 
    {
        // Method begins at RVA 0x206e
	// Code size 6 (0x6)
	.maxstack 8
	IL_0000:  newobj instance void class Base::'.ctor'()
	IL_0005:  ret 
    } // end of method Methods::BaseIn_BaseOut

    // method line 6
    .method public static hidebysig 
           default class Derived BaseIn_DerivedOut (class Base 'in')  cil managed 
    {
        // Method begins at RVA 0x2075
	// Code size 6 (0x6)
	.maxstack 8
	IL_0000:  newobj instance void class Derived::'.ctor'()
	IL_0005:  ret 
    } // end of method Methods::BaseIn_DerivedOut

  } // end of class Methods

  .class public auto ansi beforefieldinit Program
  	extends [mscorlib]System.Object
  {
    .field  private static  class Program/DerivedIn_BaseOut '<>f__mg$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class Program/DerivedIn_BaseOut '<>f__mg$cache1'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 7
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

    // method line 8
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x2084
	.entrypoint
	// Code size 85 (0x55)
	.maxstack 2
	.locals init (
		class Program/DerivedIn_BaseOut	V_0,
		class Base	V_1,
		class Program/DerivedIn_BaseOut	V_2,
		class Base	V_3)
	IL_0000:  ldsfld class Program/DerivedIn_BaseOut Program::'<>f__mg$cache0'
	IL_0005:  brtrue.s IL_0018

	IL_0007:  ldnull 
	IL_0008:  ldftn class Derived class Methods::DerivedIn_DerivedOut(class Derived)
	IL_000e:  newobj instance void class Program/DerivedIn_BaseOut::'.ctor'(object, native int)
	IL_0013:  stsfld class Program/DerivedIn_BaseOut Program::'<>f__mg$cache0'
	IL_0018:  ldsfld class Program/DerivedIn_BaseOut Program::'<>f__mg$cache0'
	IL_001d:  stloc.0 
	IL_001e:  ldloc.0 
	IL_001f:  newobj instance void class Derived::'.ctor'()
	IL_0024:  callvirt instance class Base class Program/DerivedIn_BaseOut::Invoke(class Derived)
	IL_0029:  stloc.1 
	IL_002a:  ldsfld class Program/DerivedIn_BaseOut Program::'<>f__mg$cache1'
	IL_002f:  brtrue.s IL_0042

	IL_0031:  ldnull 
	IL_0032:  ldftn class Base class Methods::BaseIn_BaseOut(class Base)
	IL_0038:  newobj instance void class Program/DerivedIn_BaseOut::'.ctor'(object, native int)
	IL_003d:  stsfld class Program/DerivedIn_BaseOut Program::'<>f__mg$cache1'
	IL_0042:  ldsfld class Program/DerivedIn_BaseOut Program::'<>f__mg$cache1'
	IL_0047:  stloc.2 
	IL_0048:  ldloc.2 
	IL_0049:  newobj instance void class Derived::'.ctor'()
	IL_004e:  callvirt instance class Base class Program/DerivedIn_BaseOut::Invoke(class Derived)
	IL_0053:  stloc.3 
	IL_0054:  ret 
    } // end of method Program::Main

  .class nested public auto ansi sealed DerivedIn_BaseOut
  	extends [mscorlib]System.MulticastDelegate
  {

    // method line 9
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' (object 'object', native int 'method')  runtime managed 
    {
        // Method begins at RVA 0x0
          // Disassembly of native methods is not supported
    } // end of method DerivedIn_BaseOut::.ctor

    // method line 10
    .method public virtual hidebysig newslot 
           instance default class Base Invoke (class Derived 'in')  runtime managed 
    {
        // Method begins at RVA 0x0
          // Disassembly of native methods is not supported
    } // end of method DerivedIn_BaseOut::Invoke

    // method line 11
    .method public virtual hidebysig newslot 
           instance default class [mscorlib]System.IAsyncResult BeginInvoke (class Derived 'in', class [mscorlib]System.AsyncCallback callback, object 'object')  runtime managed 
    {
        // Method begins at RVA 0x0
          // Disassembly of native methods is not supported
    } // end of method DerivedIn_BaseOut::BeginInvoke

    // method line 12
    .method public virtual hidebysig newslot 
           instance default class Base EndInvoke (class [mscorlib]System.IAsyncResult result)  runtime managed 
    {
        // Method begins at RVA 0x0
          // Disassembly of native methods is not supported
    } // end of method DerivedIn_BaseOut::EndInvoke

  } // end of class DerivedIn_BaseOut

  } // end of class Program

