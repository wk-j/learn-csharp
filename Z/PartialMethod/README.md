## :wine_glass: Test.cs

```csharp
partial class Logger {
    partial void Write(string message);
}

partial class Logger {
    partial void Write(string message) =>
        System.Console.WriteLine(message);
    public void Trace(string message)  => Write(message);
}

public class Program {
    public static void Main(string[] args) {
        new Logger().Trace("hello world!");
    }
}



```