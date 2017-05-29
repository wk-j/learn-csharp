using static System.Console;

class C {
    public int A { set;get;} = 100;
    public int B { set;get;} = 200;
}

var c = new C();

WriteLine("Hello, world!");
WriteLine(c.A + c.B);
