## Main.csx

```csharp
using System.Threading;

class Program
{
    public static void MethodThrowingException()
    {
        throw new Exception("Hold on!");
    }
    public static void MethodRethrowingException()
    {
        try
        {
            MethodThrowingException();
            //MethodThrowingException();
        }
        //catch (Exception e) when (e.Message == "Custom message")
        catch(Exception ex)
        {
            Console.WriteLine("Custom exception");

            System.Runtime.ExceptionServices.ExceptionDispatchInfo.Capture(ex).Throw();
            //throw ex;
            //throw;
        }
    }
    public static void Main()
    {
        Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo("en-US");
        MethodRethrowingException();
    }
}

try {
    Program.Main();
}catch(Exception ex) {
    Console.WriteLine(ex.Message);
    Console.WriteLine(ex.StackTrace);
}

```