using Xunit;
using FluentAssertions;

public class PatternMaching {

    [Fact]
    public void ShouldFizz() {

        (bool N3, bool N5) DivideBy(int i) => (i % 3 == 0, i % 5 == 0);

        string FB(int i) {
            switch( DivideBy (i)) {
                case var s when s.N3 && s.N5 :
                    return "FizzBuzz";
                case var s when s.N3 :
                    return "Fizz";
                case var s when s.N5 :
                    return "Buzz";
                default:
                    return i.ToString();
            }
        }

        FB(1).Should().Equals("1");
        FB(3).Should().Equals("Fizz");
        FB(5).Should().Equals("Buzz");
        FB(15).Should().Equals("FizzBuzz");
    }
}