using System;
using Xunit;
using System.Collections.Generic;

static class Ext1 {
    public static void Ext(this (int X, int Y) arg){}
}

static class Ext2 {
    public static void Ext(this (int V, int W) arg){}
}

public class TupleTests {

    [Fact]
    public void T1() {
        (int CustomerID, int Orders) GetRecord() {
            return (1, 2);
        }
    }

    private (T,U,V) Append<T,U,V>((T,U) tu, V v) => (tu.Item1, tu.Item2, v);

    [Fact]
    public void ShouldAppend() {
        var a = (1,2);
        var b = (true);

        var rs = Append(a,b);
        Assert.Equal(rs, (1,2,true));
    }

    [Fact]
    public void ShouldNotOverload() {
            void Ext((int x, int z) arg) {}
            // void Ext((int a, int b) arg) {}
    }

    [Fact]
    public void ShouldAmbigous() {
        var v = default((int x, int y));
        // v.Ext();
    }
}

public class T2 {
    public void ShouldNotEraseTypeInfo() {
        var obj = (Alice:1, Bob:2);

        Assert.Equal(typeof((int, int)), obj.GetType());

        PrintStaticType(obj);
        PrintStaticType((Alice:1, Bob:2));

        void PrintStaticType<T>(T args) {
            var t = typeof(T);
            Assert.Equal(args.GetType(), t);
        }
    }

    //void Dictionary<(int a, int b), (int, int d)?>Test((int[] e, int)[] args) {
    static Dictionary<(int A, int B), (int, int D)?> Test((int[] E, int)[] arg){
        var i = new int[0];
        var r = new (int[], int) [0];
        return new Dictionary<(int,int), (int, int D)?>();
    }

    // Compile time propagation of tuple types
    [Fact]
    public void ShouldPropagateTupleType() {
        U[] Apply<T,U>(T t, Func<T, U> f) => new U[] {  f(t) };

        var r = Apply(42, val => (Alice: val, Bob: val.ToString()));

        Assert.Equal(r[0].Alice, 42);
        Assert.Equal(r[0].Bob, "42");
    }
}

