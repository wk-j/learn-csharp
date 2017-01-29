## Address.csx

```csharp
using System.Runtime.InteropServices;

public static class MemoryAddress
{
    public static string Get(object a)
    {
        GCHandle handle = GCHandle.Alloc(a, GCHandleType.Pinned);
        IntPtr pointer = GCHandle.ToIntPtr(handle);
        handle.Free();
        return "0x" + pointer.ToString("X");
    }
}

class Test {
    public static IntPtr GetAddress(object o) {
        unsafe {
            TypedReference tr = __makeref(o);
            IntPtr ptr = **(IntPtr**)(&tr);
            return ptr;
        }
    }
}

var str = "Hello";
Test.GetAddress(str);
MemoryAddress.Get(str);

str = "Hello";
Test.GetAddress(str);

int x = 100;
Test.GetAddress(x);
MemoryAddress.Get(x);



```