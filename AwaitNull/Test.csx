using System.Threading.Tasks;

class C {
    public Task<int> Foo() => Task.Run(() => 1);
}


System.Console.WriteLine("Hello, world!");