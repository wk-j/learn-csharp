
## Test.csx

```csharp

using System.Linq.Expressions;

class C {
    private C(){ Console.WriteLine("init.."); }
}

Expression<Func<C>> e =
    Expression.Lambda<Func<C>>(
        Expression.New(typeof(C)),
        Enumerable.Empty<ParameterExpression>());

Func<C> f = e.Compile();

var c1 = f();
var c2 = new C();


```