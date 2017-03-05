
## Main.csx

```csharp
var seq = new List<string> { "1", "blah", "3" };
int temp;
var nums = 
    from item in seq
    let success = int.TryParse(item, out temp)
    select success ? temp : 0;

Console.WriteLine(nums.Count());
```