## Test.cs

```csharp
using System;
using System.Collections.Generic;

public interface IList<out T> : IEnumerable<T> { }
public class MyList<T>: IList<T> {
        public IEnumerable<T> GetEnumerator() {
            return new T[0] {};
        }
}


public class Test {
    public static void Main(String[] args) {
        var list = new List<string>() { "A", "B" };
        //var i = (List<object>) list;
        //var e = (IEnumerable<object>) list;
    }
}
```