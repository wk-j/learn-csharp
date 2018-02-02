
## Main.csx

```csharp
using System.Diagnostics;

var proc =  Process.GetProcessesByName("code")[0];

var pc = new PerformanceCounter();
pc.CategoryName = "Process";
pc.CounterName = "Private Bytes";
pc.InstanceName = proc.ProcessName;

var memsize = pc.NextValue();
pc.Close();
pc.Dispose();

Console.WriteLine(memsize);
Console.WriteLine(proc.ProcessName);
Console.WriteLine(proc.StartInfo.FileName);
```