## Test.cs

```csharp
public interface ICollection<out T> {

}

public interface Collection<out T> : ICollection<T> {
    T Add();
}

public class RedCollection<T> :Collection<T> {
    public T Add() { return default(T); }
}

class Program {

    static void Test(Collection<object> x) {}

    public static void Main(string[] args) {
        Collection<object> i = new RedCollection<string>();
    }
}


```