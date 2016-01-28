using System;
using System.Collections;
using System.Collections.Generic;

public class Collection2 : IEnumerable {
    public static class EmptyCollection<E> {
        public static readonly E[] Instance = new E[0];
    }
    public static IEnumerable<K> Empty2<K>() {
        return EmptyCollection<K>.Instance;
    }
    public IEnumerator GetEnumerator() {
        throw new NotImplementedException();
    }
    IEnumerator IEnumerable.GetEnumerator() {
        throw new NotImplementedException();
    }
}

public class Test {
    public static void Main(string[] args) {
        var int1 = Collection2.Empty2<int>();
        var int2 = Collection2.Empty2<int>();
        var str1 = Collection2.Empty2<string>();
        var str2 = Collection2.Empty2<string>();
        var obj1 = Collection2.Empty2<object>();
        var obj2 = Collection2.Empty2<object>();

        Console.WriteLine(int1 == int2);
        Console.WriteLine(str1 == str2);
        Console.WriteLine(obj1 == obj2);
        Console.WriteLine(int1 != str1);
        Console.WriteLine(int1 != obj1)
        Console.WriteLine(str1 != obj1);
    }
}