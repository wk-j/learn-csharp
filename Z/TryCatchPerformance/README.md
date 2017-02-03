## :wine_glass: Test.cs

```csharp


using System;
using System.Timers;
using System.Diagnostics;
using System.Linq;

public class Program {
    public static void Main(String[] args) {
        {
            var startNew = Stopwatch.StartNew();
            var mightBePi = Enumerable.Range(0, 100000000).Aggregate(0d, (tot, next) => tot + Math.Pow(-1d, next)/(2*next + 1)*4);
            Console.WriteLine(startNew.ElapsedMilliseconds);
        }
        {
            var startNew = Stopwatch.StartNew();
            double mightBePi = Double.NaN;
            try {
                mightBePi = Enumerable.Range(0, 100000000).Aggregate(0d, (tot, next) => tot + Math.Pow(-1d, next)/(2*next + 1)*4);
            }
            catch (Exception e) {
                Console.WriteLine(e);
            }
            Console.WriteLine(startNew.ElapsedMilliseconds);
        }
        {
            decimal aux = 0;
            Stopwatch watch = Stopwatch.StartNew();
            for (var j = 0; j < 10000000; j++)
                try { aux += (decimal)Math.Sqrt(Math.PI * j * j / 10 + Math.E * Math.E); }
                catch (Exception e) { Console.WriteLine(e); }
            Console.WriteLine("   With try/catch {0}", watch.Elapsed);
            watch = Stopwatch.StartNew();
            aux = 0;
            for (var j = 0; j < 10000000; j++)
                aux += (decimal)Math.Sqrt(Math.PI * j * j / 10 + Math.E * Math.E);
            Console.WriteLine("Without try/catch {0}", watch.Elapsed);
        }
    }
}
```