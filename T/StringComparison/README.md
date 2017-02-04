## :wine_glass: Main.csx

```csharp
http://esmithy.net/2007/10/15/why-stringcomparisonordinal-is-usually-the-right-choice

Console.WriteLine("Grüße".EndsWith("sse", StringComparison.Ordinal));
Console.WriteLine("Grüße".EndsWith("sse", StringComparison.CurrentCulture));
Console.WriteLine("Grüße".EndsWith("sse", StringComparison.InvariantCulture));
Console.WriteLine("Grüße".EndsWith("sse"));

String.Compare("ß", "ss");


```