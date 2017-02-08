## :wine_glass: Main.csx

```csharp
class Base {
    public void Method1() {
        Console.WriteLine("Base.Method1");
    }
}

class A : Base {
   public new void Method1() { 
       Console.WriteLine("A.Method1");
   } 
}

A a = new A();
a.Method1(); 
```