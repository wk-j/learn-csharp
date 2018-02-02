
## Delegate.csx

```csharp
public delegate int CounterDelegate(int init);


class X {
    public static CounterDelegate CreateCounter(int init) {
        var x = init;
        return (n) => {
            x += n;
            return x;
        };
    }
}

var del = X.CreateCounter(5);
del(5);
del(5);
```