
## Main.csx

```csharp
// http://stackoverflow.com/questions/4482557/what-interfaces-do-all-arrays-implement-in-c
// http://stackoverflow.com/questions/5968708/why-array-implements-ilist


using static System.Console;

WriteLine("\n");
typeof(DateTime[]).GetInterfaces().ToList().ForEach(WriteLine);

WriteLine("\n");
typeof(Object[]).GetInterfaces().ToList().ForEach(WriteLine);


Action<IList<DateTime>> dt = (x) => {};
Action<IList<Object>> obj = (x) => {};

obj(new Object[0] {});
dt(new DateTime[0] {});

```