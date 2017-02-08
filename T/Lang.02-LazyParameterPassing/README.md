## :wine_glass: Main.csx

```csharp
class X {
    public static int func(Func<int> first, Func<int> second) {
        if(first() % 2 == 0) 
            return 0;
        else 
            return second();
    }
    
    // No need to execute if
    public static int expensive() => 10;
}

X.func(() => 9, () => X.expensive());

```