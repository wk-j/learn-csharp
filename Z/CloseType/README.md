## :wine_glass: Test.cs

```csharp

using System;
using System.Runtime.InteropServices;
using static System.Console;

public class GenericStruct<T> where T: struct {
    public string Name {
        get {
            return typeof(T).Name;
        }
    }
    public int Size {
        get {
            return Marshal.SizeOf(typeof(T)) * 8;
        }
    }
}

public class Program {
    static object CreateInstance(Type t) {
        try {
            return Activator.CreateInstance(t);
        }catch(Exception e) {
            WriteLine(e.Message);
            return null;
        }
    }
    public static void Main(string[] args) {
        var close1 = CreateInstance(typeof(GenericStruct<int>));
        var open1 = CreateInstance(typeof(GenericStruct<>));
        WriteLine(close1 != null);                          // true
        WriteLine((close1 as GenericStruct<int>).Name);     // Int32
        WriteLine(open1 == null);                           // true
    }
}
```