## Test.cs

```csharp


using System;

public class Test {
    public void Checked1() {
        Int32 i = Int32.MaxValue;
        i = checked (i + 1);
    }
    public void Checked2() {
        checked {
            Int32 i = Int32.MaxValue;
            i = i + 1;
        }
    }
    public void Unchecked() {
        unchecked {
            Int32 i = Int32.MaxValue;
            i = i + 1;
        }
    }
}
```