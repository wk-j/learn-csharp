## Container.csx

```csharp

class Container1 {
    public Container1 WithStuff<T>(Func<T> func) {
        return this;
    }
}

new Container1()
    .WithStuff(() => new List<byte>())
    .WithStuff(() => new MemoryStream())
    .WithStuff(() => new CredentialCache());

```