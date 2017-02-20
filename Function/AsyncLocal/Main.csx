using System.Threading;
using System.Threading.Tasks;

class Main {

    static int _variable;
    static AsyncLocal<int> _asyncLocal = new AsyncLocal<int>();
    static ThreadLocal<int> _threadLocal = new ThreadLocal<int>();

    public static async Task Test()
    {
        Console.WriteLine($"T={Thread.CurrentThread.ManagedThreadId}");
        
        _variable = 1;
        _asyncLocal.Value = 1;
        _threadLocal.Value = 1;
        var o1 = Output("1");

        _variable = 2;
        _asyncLocal.Value = 2;
        _threadLocal.Value = 2;
        var o2 = Output("2");
        await Task.WhenAll(o1, o2);
    }

    static async Task Output(string name)
    {
        await Task.Delay(1000);
        Console.WriteLine($"{name}: T={Thread.CurrentThread.ManagedThreadId}, V={_variable}, AL={_asyncLocal.Value}, TL={_threadLocal.Value}");
    }
}


Main.Test();
while(Console.ReadLine() != "q") {}