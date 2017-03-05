
## Main.csx

```csharp
class C {
    public static bool F1(bool b) => true;
}

Action<bool> action = C.F1;
```