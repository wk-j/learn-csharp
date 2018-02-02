
## Main.csx

```csharp
using System.Linq;

var x = new List<int> { 1,2,3 };
var y = new List<List<int>> { x, x };

y.Contains(x);

```