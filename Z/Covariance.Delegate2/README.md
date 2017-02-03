## :wine_glass: Test.cs

```csharp
using System;

class Animal { }
class Cat: Animal {}

public class Program {
    public static void Main(String[] args){
        Func<Animal, Cat> f1 = (x) => new Cat();
        Func<Cat,Animal> f2 = f1;
    }
}
```