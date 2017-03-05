
## Main.csx

```csharp
http://esmithy.net/2007/10/15/why-stringcomparisonordinal-is-usually-the-right-choice
https://www.infoq.com/news/2008/11/BCL-4

Console.WriteLine("Grüße".EndsWith("sse", StringComparison.Ordinal));
Console.WriteLine("Grüße".EndsWith("sse", StringComparison.CurrentCulture));
Console.WriteLine("Grüße".EndsWith("sse", StringComparison.InvariantCulture));
Console.WriteLine("Grüße".EndsWith("sse"));

String.Compare("ß", "ss");

var a = "ß" == "ss";
var b = "ß".Contains("ss");
var c = "ß".StartsWith("ss");
var d = "ß".EndsWith("ss");

var e = String.Compare("ß", "ss");
var f = "ß".CompareTo("ss");
var g = "ß".Equals("ss");
var h = "ß".IndexOf("ss") == 0;
var i = "ss".IndexOf("ß") == 0;

Console.WriteLine($"a={a} b={b} c={c} d={d} e={e} f={f} g={g} h={h} i={i}");


@"\\qa\tests\۩۩۩۩۩".EndsWith("\\")
```