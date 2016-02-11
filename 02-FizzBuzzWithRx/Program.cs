// http://blog.drorhelper.com/2015/02/fizzbuzz-tdd-kata-using-reactive.html

using System;
using System.Reactive;
using System.Reactive.Linq;
using System.Collections.Generic;
using System.Linq;

public class Program {
    public static IEnumerable<string> Generate(int max) {
        var result = new List<string>();
        if (max <= 0) { return result; }
        var observable = Observable.Range(1, max);
        var dividedByThree = observable.Where(i => i % 3 == 0).Select(_ => "Fizz");
        var dividedByFive = observable.Where(i => i % 5 == 0).Select(_ => "Buzz");
        var dividedByThreeAndFive = observable.Where(i => i % 15 == 0).Select(_ => "FizzBuzz");
        var simpleNumbers = observable.Where(i => i % 3 != 0 && i % 5 != 0).Select(i => i.ToString());
        var specialCases = (dividedByThreeAndFive)
            .Merge(dividedByThree)
            .Merge(dividedByFive);
        simpleNumbers.Merge(specialCases).Subscribe(s => result.Add(s));
        return result;
    }
    public static void Main(String[] args) {
        Generate(100).ToList().ForEach(Console.WriteLine);
    }
}