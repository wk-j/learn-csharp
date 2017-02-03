using System;
using System.Collections.Generic;

public class Generic<T> {
    private static int _count = 0;

    public Generic() {
        _count ++;
    }

    public int Count { get { return _count; } }
}

public class Test {
    public static void Main(string[] args) {
        var s1 = new Generic<string>();
        var s2 = new Generic<string>();
        Console.WriteLine(s1.Count == 2);
        Console.WriteLine(s2.Count == 2);

        var i1 = new Generic<int>();
        Console.WriteLine(i1.Count == 1);
        Console.WriteLine(s1.Count == 2);

        var o1 = new Generic<object>();
        var o2 = new Generic<object>();
        var o3 = new Generic<object>();

        Console.WriteLine(s1.Count == 2);
        Console.WriteLine(i1.Count == 1);
        Console.WriteLine(o1.Count == 3);

        var f1 = new Generic<float>();
        var f2 = new Generic<float>();

        Console.WriteLine(o1 != o2);
        Console.WriteLine(!Object.ReferenceEquals(s1, o1));
        Console.WriteLine(f1 != f2);
        Console.WriteLine(!Object.ReferenceEquals(i1, f1));

        var stack1 = new Stack<int>();
        var stack2 = new Stack<int>();
        Console.WriteLine(stack1 != stack2);
    }
}