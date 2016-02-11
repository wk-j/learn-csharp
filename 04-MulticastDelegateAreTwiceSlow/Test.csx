

class Test {
    public delegate int AddDelegate(int a, int b);
    public static int Add(int a, int b) {
        return a + b;
    }

    public static void Process(Action action) {
        var start = DateTime.Now;
        action();
        Console.WriteLine(DateTime.Now - start);
    }
}

var max = 100;

Test.AddDelegate unicast = Test.Add;
Test.Process(() => { Enumerable.Range(0, 100).Select( x => unicast(x, 10)).ToList(); });

Test.AddDelegate multicast = Test.Add;
Enumerable.Range(0, 99).ToList().ForEach(x => multicast += Test.Add);
Test.Process(() => multicast(1,1));
