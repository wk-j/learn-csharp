## :wine_glass: Test.cs

```csharp
using System;

public class Base { }

public class Derived : Base { }

public static class Methods
{
    public static Base DerivedIn_BaseOut(Derived @in)
    {
        return new Base();
    }

    public static Derived DerivedIn_DerivedOut(Derived @in)
    {
        return new Derived();
    }

    public static Base BaseIn_BaseOut(Base @in)
    {
        return new Base();
    }

    public static Derived BaseIn_DerivedOut(Base @in)
    {
        return new Derived();
    }
}

public class Program {
    
    public delegate Base DerivedIn_BaseOut(Derived @in);

    public static void Main(String[] args) {

        {
            // Covariance: Derived "is a" Base => DerivedIn_DerivedOut "is a" DerivedIn_BaseOut.
            DerivedIn_BaseOut derivedIn_DerivedOut = Methods.DerivedIn_DerivedOut;

            // derivedIn_BaseOut should output a Base object, while DerivedIn_DerivedOut outputs a Derived object.
            // The actual Derived object "is a" required Base output. This binding always works.
            Base @out = derivedIn_DerivedOut(@in: new Derived());
        }

        {
                // Contravariance: Derived is a Base => BaseIn_BaseOut is a DerivedIn_BaseOut.
            DerivedIn_BaseOut derivedIn_BaseOut = Methods.BaseIn_BaseOut;

            // When calling derivedIn_BaseOut delegate instance, BaseIn_BaseOut method executes.
            // derivedIn_BaseOut should have a Derived input, while BaseIn_BaseOut requires a Base input.
            // The actual Derived object "is a" required Base input. This binding always works.
            Base @out = derivedIn_BaseOut(@in: new Derived());
        }
    }
}
```