using System;
using Xunit;

static class IOMonad {

    public delegate T IO<out T>();

    public static IO<R> SelectMany<S, C, R> (this IO<S> A , Func<S, IO<C>> foo, Func<S, C, R> bar) {
        var a = A();
        var B = foo(a);
        var b = B();
        var c = bar(a, b);
        return () => c;
    }

    public static IO<T> Combine<T>(IO<T> a, Action b) {
        return new Func<IO<T>, IO<T>>(x => { b(); return x; })(a);
    }

    public static IO<T> Where<T>(this IO<T> t, Func<T, bool> foo) {
        return () => (foo(t()) ? t : Combine(t, () => { Console.WriteLine("We screwed up!"); }))();
    }

    public static IO<R> Select<S, R>(this IO<S> s, Func<S, R> foo) {
        return () => new Func<IO<S>, R>(x => foo(x()))(s);
    }
}

public class IOTests {

    [Fact]
    public void Go() {
        var A = new IOMonad.IO<int>( () => { 
            Console.WriteLine("A");
            return 6;
        });
        
        var B = new IOMonad.IO<int>( () => {
            Console.WriteLine("B");
            return 7;
        });

        var C = new IOMonad.IO<int>( () => {
            Console.WriteLine("C");
            return 10;
        });

        var sum = 
            from a in A
            from b in B
            from c in C
            let x = 10
            where a > b
            select a + b + c + x;

        Assert.True(sum() == 33);
    }
}