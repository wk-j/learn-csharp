.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit Node
    extends [mscorlib]System.Object
{
    // Methods
    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        // Method begins at RVA 0x2050
        // Code size 8 (0x8)
        .maxstack 8

        IL_0000: ldarg.0              // Load argument 0 onto the stack
        IL_0001: call instance void [mscorlib]System.Object::.ctor() // Call method indicated on the stack with arguments
        IL_0006: nop                  // Do nothing (No operation)
        IL_0007: ret                  // Return from method, possibly with a value
    } // end of method Node::.ctor

} // end of class Node

.class private auto ansi beforefieldinit NodeFactory
    extends [mscorlib]System.Object
{
    // Methods
    .method public hidebysig static 
        !!T CreateNode<.ctor (Node) T> () cil managed 
    {
        // Method begins at RVA 0x205c
        // Code size 11 (0xb)
        .maxstack 1
        .locals init (
            [0] !!T
        )

        IL_0000: nop                  // Do nothing (No operation)
        IL_0001: call !!0 [mscorlib]System.Activator::CreateInstance<!!T>() // Call method indicated on the stack with arguments
        IL_0006: stloc.0              // Pop a value from stack into local variable 0
        IL_0007: br.s IL_0009         // Branch to target, short form
        IL_0009: ldloc.0              // Load local variable 0 onto stack
        IL_000a: ret                  // Return from method, possibly with a value
    } // end of method NodeFactory::CreateNode

    .method public hidebysig specialname rtspecialname 
        instance void .ctor () cil managed 
    {
        // Method begins at RVA 0x2050
        // Code size 8 (0x8)
        .maxstack 8

        IL_0000: ldarg.0              // Load argument 0 onto the stack
        IL_0001: call instance void [mscorlib]System.Object::.ctor() // Call method indicated on the stack with arguments
        IL_0006: nop                  // Do nothing (No operation)
        IL_0007: ret                  // Return from method, possibly with a value
    } // end of method NodeFactory::.ctor

} // end of class NodeFactory

