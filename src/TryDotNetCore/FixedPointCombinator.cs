
using System;
using Xunit;

public class FixPoint {

    static Func<int, int> Factorial = 
        (n) => n <= 1 ? 1 : n * Factorial (n - 1);

    Func<S, R> Rec<S, R>(Func<Func<S, R>, Func<S,R>> f) {
        return x => f(Rec(f))(x);
    }

    [Fact]
    public void Go() {
        var k = Factorial(5);
        Assert.True(k == 120);

        var y = Rec<int, int>( fac =>  x => x == 0 ? 1 : fac(x - 1) * x)(5);
        Assert.True(y == 120);
    }
}