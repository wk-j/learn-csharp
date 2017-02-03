## :wine_glass: Test.cs

```csharp

using System;
using System.Collections.Generic;

public class Test<T>: IComparer<T> {
        public int Compare(T a, T b) {
            return 0;
        }
}

public class Animal {}
public class Cat : Animal {}

public class Program {
    public static void Main(String[] args) {
        var cat1 = new Cat();
        var list = new List<Cat>() { cat1 };

        var comparer = new Test<Animal>();
        list.Sort(comparer);
    }
}
```