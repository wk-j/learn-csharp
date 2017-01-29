## Test.cs

```csharp

using System;
public class Program {
    private const string ProductName = "Visual C#";
    private static string _version = "1.0";
    public static void Main(String[] args) {
        var name = ProductName;
        var version = _version;
        Console.WriteLine("{0} {1}", name, version);
    }
}
```