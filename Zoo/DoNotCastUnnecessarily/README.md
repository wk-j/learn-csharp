
## Evil.csx

```csharp

class C {
    public static string LowerWithIs(object input) {
        if(input is string) {
            var str = (string) input;
            return str.ToLower();
        }
        return "";
    }
    public static string LowerWithAs(object input) {
        var str = input as string;
        if (str != null) {
            return str.ToLower();
        }
        return "";
    }
    public static string LowerWithFor(object input) {
        for(var str = input as string; str != null; str = null) {
            return str.ToLower();
        }
        return "";
    }
}
C.LowerWithIs("Do Not Cast Unnecessarily");
C.LowerWithAs("Do Not Cast Unnecessarily");
C.LowerWithFor("Do Not Cast Unnecessarily");



```