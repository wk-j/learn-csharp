
## Delegate.csx

```csharp
class A { public void Main() {} }
var a = new A()
Action action1 = a.Main
Action action2 = a.Main
action1 == action2
Object object1 = action1
Object object2 = action2
object1 == object2
```