using System;
using Xunit;

namespace TryDotNetCore
{
    class A {
        public void M(object input) {
            // input ?? throw new ArgumentNullException(nameof(input));
            input = input ?? throw new ArgumentNullException(nameof(input));
        }
    }

    class TrySpec
    {
        [Fact]
        public void ShouldDestructTuple() {

            var (a, b) = (_,_) = (1,2);

            // var (x, y, *) = (1,2,3,4,5);

            Assert.Equal(1, a);
            Assert.Equal(2, b);
        }

        [Fact]
        public void ThrowExpression() {
            var a = new A();
            Assert.Throws<ArgumentNullException>(() => a.M(null));
        }

        [Fact]
        public void A()
        {
            Assert.Equal(1, 1);
        }
    }
}
