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
    public class TrySpec
    {
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
