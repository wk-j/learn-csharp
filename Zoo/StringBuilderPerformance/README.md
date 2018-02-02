
## Test.csx

```csharp

using System.Diagnostics;
using System.Text;

var sw = Stopwatch.StartNew();
"..." + "..." + "..."
sw.ElapsedMilliseconds

sw = Stopwatch.StartNew();
var sb = new StringBuilder();
sb.Append("...");
sb.Append("...");
sb.Append("...");

sb.ToString()
sw.ElapsedMilliseconds


```