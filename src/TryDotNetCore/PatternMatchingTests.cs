using Xunit;
using FluentAssertions;

public class PatternMaching
{

    [Fact]
    public void ShouldFizz()
    {

        (bool N3, bool N5) DivideBy(int i) => (i % 3 == 0, i % 5 == 0);

        string FB(int i) {
            switch (DivideBy(i)) {
                case var s when s.N3 && s.N5:
                    return "FizzBuzz";
                case var s when s.N3:
                    return "Fizz";
                case var s when s.N5:
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

    [Fact]
    public void ShouldMatchType()
    {
        string ToString(Geometry k) {
            switch (k)
            {
                case Triangle s :
                    return ($"{s.Width} {s.Height} {s.Base}");
                case Rectangle s :
                    return ($"{s.Width} {s.Height}");
                case Square s :
                    return ($"{s.Width}");
                default:
                    return ("<other>");
            }
        }

        Geometry g = new Square(5);
        var x = ToString(g);
        x.Should().Equals("5");
    }
}

public class Geometry { }

public class Triangle : Geometry
{
    public int Width { set;get;}
    public int Height { set;get;}
    public int Base { set;get;}
    Triangle(int Width, int Height, int Base) { }
}
public class Rectangle : Geometry
{
    public int Width { set;get;}
    public int Height { set;get;}
    public Rectangle(int Width, int Height) { }
}

public class Square : Geometry
{
    public int Width { set;get;}
    public Square(int width) { }
}