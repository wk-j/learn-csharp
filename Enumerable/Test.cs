using System.Linq;
using System;
using System.Collections.Generic;

// dmcs Enumerable.cs

public class Test {

    public static void TestReference() {

        Action<Object> write = (s) => Console.WriteLine(s.ToString());
        write(Enumerable.Empty<string>() == Enumerable.Empty<string>());    // true
        write(Enumerable.Empty<object>() == Enumerable.Empty<object>());    // true
        write(Enumerable.Empty<string>() != Enumerable.Empty<object>());    // true
        write(Enumerable.Empty<int>() == Enumerable.Empty<int>());          // true
        write(Enumerable.Empty<float>() == Enumerable.Empty<float>());      // true
        write(Enumerable.Empty<int>() != Enumerable.Empty<float>());        // true


        write(Object.ReferenceEquals(Enumerable.Empty<int>(), Enumerable.Empty<int>()));
        write(!Object.ReferenceEquals(Enumerable.Empty<int>(), Enumerable.Empty<float>()));
    }

    public static void Main(String[] args) {

        Action<Object> write = (s) => Console.WriteLine(s.ToString());
        var s1 = Enumerable.Empty<string>();
        var s2 = Enumerable.Empty<string>();
        var s3 = Enumerable.Empty<string>();
        var d1 = Enumerable.Empty<int>();
        var d2 = Enumerable.Empty<int>();
        var b1 = Enumerable.Empty<byte>();
        var o1 = Enumerable.Empty<object>();
        var o2 = Enumerable.Empty<object>();

        var l1 = Enumerable.Empty<List<string>>();
        var l2 = Enumerable.Empty<List<int>>();

        write(s1 == s2);      // true
        write(s1 == s3);      // true
        write(d1 == d2);      // false
        write(d1 == b1);      // false
        write(l1 == l2);    // false
        write(o1 == o2);
        write(d1 == d2);
        write(s1 == o1);

        TestReference();
    }
}