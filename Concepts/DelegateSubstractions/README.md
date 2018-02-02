
## Main.csx

```csharp


Action a = () => Console.Write("A");
Action b = () => Console.Write("B");
Action c = () => Console.Write("C");
Action d = () => Console.Write("D");

Action s = a + b + c + d +  Console.WriteLine;

(a + s)();
(s - a)();
(s - a - b - c)();






```