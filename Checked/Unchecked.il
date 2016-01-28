// Token: 0x02000002 RID: 2
.class public auto ansi beforefieldinit Test
	extends [mscorlib]System.Object
{
	// Methods
	// Token: 0x06000001 RID: 1 RVA: 0x00002050 File Offset: 0x00000250
	.method public hidebysig specialname rtspecialname
		instance void .ctor () cil managed
	{
		// Header Size: 1 byte
		// Code Size: 7 (0x7) bytes
		.maxstack 8

		/* 0x00000251 02           */ IL_0000: ldarg.0
		/* 0x00000252 280300000A   */ IL_0001: call      instance void [mscorlib]System.Object::.ctor()
		/* 0x00000257 2A           */ IL_0006: ret
	} // end of method Test::.ctor

	// Token: 0x06000002 RID: 2 RVA: 0x00002058 File Offset: 0x00000258
	.method public hidebysig static
		void Main (
			string[] args
		) cil managed
	{
		// Header Size: 12 bytes
		// Code Size: 24 (0x18) bytes
		// LocalVarSig Token: 0x11000001 RID: 1
		.maxstack 2
		.entrypoint
		.locals init (
			[0] int32
		)

		/* 0x00000264 20FFFFFF7F   */ IL_0000: ldc.i4    2147483647
		/* 0x00000269 7201000070   */ IL_0005: ldstr     "1"
		/* 0x0000026E 280100000A   */ IL_000A: call      int32 [mscorlib]System.Int32::Parse(string)
		/* 0x00000273 58           */ IL_000F: add
		/* 0x00000274 0A           */ IL_0010: stloc.0
		/* 0x00000275 06           */ IL_0011: ldloc.0
		/* 0x00000276 280200000A   */ IL_0012: call      void [mscorlib]System.Console::WriteLine(int32)
		/* 0x0000027B 2A           */ IL_0017: ret
	} // end of method Test::Main

} // end of class Test
