
using System;
using Xunit;

public class FixPoint {

    static Func<int, int> Factorial = 
        (n) => n <= 1 ? 1 : n * Factorial (n - 1);

    [Fact]
    public void Inter() {
        var name = "Joe";
        var age = 20;
        var message = $"My name is {name}, I'm {age} years old";
    }

    [Fact]
    public void Fix() {


        Func<S, R> fix<S, R>(Func<Func<S, R>, Func<S,R>> f) => x => f(fix(f))(x);
        var fact = fix<int,int>( f => x => x == 1 ? 1 : f (x - 1) * x);
        var result = fact(5);


        Assert.Equal(result, 120);
    }

    [Fact]
    public void Go() {
        var k = Factorial(5);
        Assert.True(k == 120);
    }
}