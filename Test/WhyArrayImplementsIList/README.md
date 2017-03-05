
## Main.csx

```csharp
var array = new int[] {};
var list = (IList) array;
//ilist.Add(1); // IList.IsFixedSize 

((IList) array).Add(3);
```