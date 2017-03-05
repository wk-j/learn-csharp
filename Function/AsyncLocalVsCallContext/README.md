
## Main.csx

```csharp
using System.Runtime.Remoting.Messaging;
using System.Threading;

class Program
{
    public static AsyncLocal<int> AsyncLocal = new AsyncLocal<int>();

    public static int CallContextValue
    {
        get
        {
            var data = CallContext.GetData("CallContextValue");
            if (data == null)
                return 0;
            return (int) data;
        }
        set { CallContext.SetData("CallContextValue", value); }
    }

    public static void Main(string[] args)
    {
        AsyncLocal.Value = 1;
        CallContextValue = 1;
        new Thread(() =>
        {
            //CallContextValue = 2;
            //AsyncLocal.Value = 2;
            Console.WriteLine("From thread AsyncLocal: " + AsyncLocal.Value); // Should be 0 but is 1
            Console.WriteLine("From thread CallContext: " + CallContextValue); // Value is 0, as it should be
        }).Start();
        Console.WriteLine("> Main AsyncLocal: " + AsyncLocal.Value);
        Console.WriteLine("> Main CallContext: " + CallContextValue);
    }
}

Program.Main(new string[0]);

```