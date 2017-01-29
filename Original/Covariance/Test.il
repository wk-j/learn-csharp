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
.module Test.exe // GUID = {E2D00F32-240E-4DBF-A96F-E1A8C0676311}


  .class public auto ansi beforefieldinit Animal
  	extends [mscorlib]System.Object
  {
    .field  private  string '<Name>k__BackingField'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .custom instance void class [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::'.ctor'(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) =  (01 00 00 00 00 00 00 00 ) // ........


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

    // method line 2
    .method public hidebysig specialname 
           instance default void set_Name (string 'value')  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2058
	// Code size 8 (0x8)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldarg.1 
	IL_0002:  stfld string Animal::'<Name>k__BackingField'
	IL_0007:  ret 
    } // end of method Animal::set_Name

    // method line 3
    .method public hidebysig specialname 
           instance default string get_Name ()  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x2061
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  ldfld string Animal::'<Name>k__BackingField'
	IL_0006:  ret 
    } // end of method Animal::get_Name

	.property instance string Name ()
	{
		.get instance default string Animal::get_Name () 
		.set instance default void Animal::set_Name (string 'value') 
	}
  } // end of class Animal

  .class public auto ansi beforefieldinit Cat
  	extends Animal
  {

    // method line 4
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2069
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void class Animal::'.ctor'()
	IL_0006:  ret 
    } // end of method Cat::.ctor

  } // end of class Cat

  .class private auto ansi beforefieldinit AnimalComparer`1<(class Animal) T>
  	extends [mscorlib]System.Object
  	implements class [mscorlib]System.Collections.Generic.IComparer`1<!0>  {

    // method line 5
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2071
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method AnimalComparer`1::.ctor

    // method line 6
    .method public final virtual hidebysig newslot 
           instance default int32 Compare (!T x, !T y)  cil managed 
    {
        // Method begins at RVA 0x2079
	// Code size 32 (0x20)
	.maxstack 8
	IL_0000:  ldarga.s 1
	IL_0002:  constrained. !0
	IL_0008:  callvirt instance string class Animal::get_Name()
	IL_000d:  ldarga.s 2
	IL_000f:  constrained. !0
	IL_0015:  callvirt instance string class Animal::get_Name()
	IL_001a:  callvirt instance int32 string::CompareTo(string)
	IL_001f:  ret 
    } // end of method AnimalComparer`1::Compare

    // method line 7
    .method public hidebysig 
           instance default int32 GetHashCode (!T person)  cil managed 
    {
        // Method begins at RVA 0x209a
	// Code size 2 (0x2)
	.maxstack 8
	IL_0000:  ldc.i4.0 
	IL_0001:  ret 
    } // end of method AnimalComparer`1::GetHashCode

  } // end of class AnimalComparer`1

  .class public auto ansi beforefieldinit Test
  	extends [mscorlib]System.Object
  {
    .field  private static  class [mscorlib]System.Action`1<string> '<>f__mg$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

    .field  private static  class [mscorlib]System.Func`2<class Animal,string> '<>f__am$cache0'
    .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....


    // method line 8
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x209d
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Test::.ctor

    // method line 9
    .method public static hidebysig 
           default void Covariance ()  cil managed 
    {
        // Method begins at RVA 0x20a8
	// Code size 68 (0x44)
	.maxstack 2
	.locals init (
		class [mscorlib]System.Collections.Generic.List`1<object>	V_0)
	IL_0000:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<object>::'.ctor'()
	IL_0005:  stloc.0 
	IL_0006:  ldloc.0 
	IL_0007:  ldstr "hello"
	IL_000c:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<object>::Add(!0)
	IL_0011:  ldloc.0 
	IL_0012:  ldc.i4.1 
	IL_0013:  box [mscorlib]System.Int32
	IL_0018:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<object>::Add(!0)
	IL_001d:  ldloc.0 
	IL_001e:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::OfType<object> (class [mscorlib]System.Collections.IEnumerable)
	IL_0023:  call int32 class [System.Core]System.Linq.Enumerable::Count<object> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0028:  ldc.i4.2 
	IL_0029:  ceq 
	IL_002b:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_0030:  ldloc.0 
	IL_0031:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0> class [System.Core]System.Linq.Enumerable::OfType<string> (class [mscorlib]System.Collections.IEnumerable)
	IL_0036:  call int32 class [System.Core]System.Linq.Enumerable::Count<string> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_003b:  ldc.i4.1 
	IL_003c:  ceq 
	IL_003e:  call void class [mscorlib]System.Console::WriteLine(bool)
	IL_0043:  ret 
    } // end of method Test::Covariance

    // method line 10
    .method public static hidebysig 
           default void CompareCats (class [mscorlib]System.Collections.Generic.IComparer`1<class Cat> comparer)  cil managed 
    {
        // Method begins at RVA 0x20f8
	// Code size 63 (0x3f)
	.maxstack 3
	.locals init (
		class Cat	V_0,
		class Cat	V_1,
		class Cat	V_2)
	IL_0000:  newobj instance void class Cat::'.ctor'()
	IL_0005:  stloc.1 
	IL_0006:  ldloc.1 
	IL_0007:  ldstr "Otto"
	IL_000c:  callvirt instance void class Animal::set_Name(string)
	IL_0011:  ldloc.1 
	IL_0012:  stloc.0 
	IL_0013:  newobj instance void class Cat::'.ctor'()
	IL_0018:  stloc.1 
	IL_0019:  ldloc.1 
	IL_001a:  ldstr "Troublemarker"
	IL_001f:  callvirt instance void class Animal::set_Name(string)
	IL_0024:  ldloc.1 
	IL_0025:  stloc.2 
	IL_0026:  ldarg.0 
	IL_0027:  ldloc.2 
	IL_0028:  ldloc.0 
	IL_0029:  callvirt instance int32 class [mscorlib]System.Collections.Generic.IComparer`1<class Cat>::Compare(!0, !0)
	IL_002e:  ldc.i4.0 
	IL_002f:  ble IL_003e

	IL_0034:  ldstr "Troublemarker win!"
	IL_0039:  call void class [mscorlib]System.Console::WriteLine(string)
	IL_003e:  ret 
    } // end of method Test::CompareCats

    // method line 11
    .method public static hidebysig 
           default void PrintAnimal (class [mscorlib]System.Collections.Generic.IEnumerable`1<class Animal> animals)  cil managed 
    {
        // Method begins at RVA 0x2144
	// Code size 75 (0x4b)
	.maxstack 3
	IL_0000:  ldarg.0 
	IL_0001:  ldsfld class [mscorlib]System.Func`2<class Animal,string> Test::'<>f__am$cache0'
	IL_0006:  brtrue.s IL_0019

	IL_0008:  ldnull 
	IL_0009:  ldftn string class Test::'<PrintAnimal>m__0'(class Animal)
	IL_000f:  newobj instance void class [mscorlib]System.Func`2<class Animal, string>::'.ctor'(object, native int)
	IL_0014:  stsfld class [mscorlib]System.Func`2<class Animal,string> Test::'<>f__am$cache0'
	IL_0019:  ldsfld class [mscorlib]System.Func`2<class Animal,string> Test::'<>f__am$cache0'
	IL_001e:  call class [mscorlib]System.Collections.Generic.IEnumerable`1<!!1> class [System.Core]System.Linq.Enumerable::Select<class Animal, string> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>, class [mscorlib]System.Func`2<!!0,!!1>)
	IL_0023:  call class [mscorlib]System.Collections.Generic.List`1<!!0> class [System.Core]System.Linq.Enumerable::ToList<string> (class [mscorlib]System.Collections.Generic.IEnumerable`1<!!0>)
	IL_0028:  ldsfld class [mscorlib]System.Action`1<string> Test::'<>f__mg$cache0'
	IL_002d:  brtrue.s IL_0040

	IL_002f:  ldnull 
	IL_0030:  ldftn void class [mscorlib]System.Console::WriteLine(string)
	IL_0036:  newobj instance void class [mscorlib]System.Action`1<string>::'.ctor'(object, native int)
	IL_003b:  stsfld class [mscorlib]System.Action`1<string> Test::'<>f__mg$cache0'
	IL_0040:  ldsfld class [mscorlib]System.Action`1<string> Test::'<>f__mg$cache0'
	IL_0045:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<string>::ForEach(class [mscorlib]System.Action`1<!0>)
	IL_004a:  ret 
    } // end of method Test::PrintAnimal

    // method line 12
    .method public static hidebysig 
           default void Main (string[] args)  cil managed 
    {
        // Method begins at RVA 0x219c
	.entrypoint
	// Code size 56 (0x38)
	.maxstack 3
	.locals init (
		class [mscorlib]System.Collections.Generic.List`1<class Cat>	V_0,
		class [mscorlib]System.Collections.Generic.List`1<class Cat>	V_1,
		class Cat	V_2,
		class [mscorlib]System.Collections.Generic.IComparer`1<class Animal>	V_3)
	IL_0000:  call void class Test::Covariance()
	IL_0005:  newobj instance void class [mscorlib]System.Collections.Generic.List`1<class Cat>::'.ctor'()
	IL_000a:  stloc.1 
	IL_000b:  ldloc.1 
	IL_000c:  newobj instance void class Cat::'.ctor'()
	IL_0011:  stloc.2 
	IL_0012:  ldloc.2 
	IL_0013:  ldstr "Eve"
	IL_0018:  callvirt instance void class Animal::set_Name(string)
	IL_001d:  ldloc.2 
	IL_001e:  callvirt instance void class [mscorlib]System.Collections.Generic.List`1<class Cat>::Add(!0)
	IL_0023:  ldloc.1 
	IL_0024:  stloc.0 
	IL_0025:  ldloc.0 
	IL_0026:  call void class Test::PrintAnimal(class [mscorlib]System.Collections.Generic.IEnumerable`1<class Animal>)
	IL_002b:  newobj instance void class AnimalComparer`1<class Animal>::'.ctor'()
	IL_0030:  stloc.3 
	IL_0031:  ldloc.3 
	IL_0032:  call void class Test::CompareCats(class [mscorlib]System.Collections.Generic.IComparer`1<class Cat>)
	IL_0037:  ret 
    } // end of method Test::Main

    // method line 13
    .method private static hidebysig 
           default string '<PrintAnimal>m__0' (class Animal x)  cil managed 
    {
        .custom instance void class [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::'.ctor'() =  (01 00 00 00 ) // ....

        // Method begins at RVA 0x21e0
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  callvirt instance string class Animal::get_Name()
	IL_0006:  ret 
    } // end of method Test::<PrintAnimal>m__0

  } // end of class Test

