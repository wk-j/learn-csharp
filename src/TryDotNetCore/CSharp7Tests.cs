using Xunit;
using System;
using System.Collections.Generic;
using System.Linq;

public class CSharp7Tests {

    class C {
        public void Deconstruct(out bool status, out string message) {
            status = true;
            message = "Processing success";
        }
        public void Deconstruct(out bool status, out string message, out DateTime time) {
            status = true; 
            message = "Processing success";
            time = DateTime.Now;
        }
    }

    [Fact]
    public void Des() {
        var c = new C();
        var (status1, message1) = c;
        var (status2, message2, time2) = c;
        Assert.True(status1 == status2);
    }

    int[] array = new int[1] { 100 };
    
    public ref int GetRefElement(int index) {
        return ref array[index];
    }

    [Fact]
    public void RefReturn() {
        ref var firstValue = ref GetRefElement(0);
        firstValue = 200;

        Assert.True( firstValue == array[0]);
    }

    [Fact]
    public void RefLocal() {
        var x1 = 100;
        ref var x2 = ref x1;
        x1 = 200;

        Assert.True( x1 == x2);
    }

    [Fact]
    public void NumericLertals() {
        var b1 = 0b0001;
        var b2 = 0b0011;
        Assert.True( b1 + b2 == 4);
    }
    [Fact]
    public void Sep() {

        var i1 = 1_000_000;
        var i2 = 1__000__000;

        var b1 = 0b0000_1111;
        var b2 = 0b0000__1111;
        Assert.True(b1 == b2);
    }

    [Fact]
    public void ThrowsExpression() {
        var data = "";
        var result = data != null ? "Valid" : throw new ArgumentNullException("Invalid");
    }

    [Fact]
    public void LocalFunctions() {

        int Calcuate(List<int> inputs) {
            int Double(int x) => x * 2;
            int DoubleSum(List<int> values) => values.Select(Double).Sum();
            return DoubleSum(inputs);
        }

    }


    public void Tuple() {
        (bool, string) Process1 () {
            return (true, "Processing success");
        }

        (bool status, string message) Process2 () {
            return (true, "Processing success");
        }

        var result1 = Process1();
        var result2 = Process2();
        var result3 = (status: true, message : "Processing success");

        Console.WriteLine($"Success = {result1.Item1}, Message = {result1.Item2}");
        Console.WriteLine($"Success = {result2.status}, Message = {result2.message}");
        Console.WriteLine($"Success = {result3.status}, Message = {result3.message}");

        var (success1, message1) = result1;
        (bool success2, string message2) = result2;
        

    }

    public void PatternMatching() {

        var obj = new Object[] { 20, "Joe", true };
        var first = obj.First();

        if (first is null) { }
        if (first is 42)  { }
        if (first is "Joe") { }
        if (first is true) { }

        if (first is string s) { }
        if (first is bool b) { }
        if (first is int i) { }
        if (first is var v) { }

        if (first is string s2 && s2.StartsWith("J")) { }

        switch (first) {
            case null :  return;
            case int ii: return;
            case string ss when ss.StartsWith("J") : return;
            case string ss when ss.EndsWith("o") : return;
            case bool bb: return;
            default: return;
        }
    }
}