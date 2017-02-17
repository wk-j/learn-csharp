## Test.cs

```csharp


using System;

class Animal {}
class Cat: Animal {}
class Dog: Animal {}

public class Test {

    public static void Main(String[] args) {
        Animal[] a = new Cat[10];
        a[0] = new Dog();
    }
}
```