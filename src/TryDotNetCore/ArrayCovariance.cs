using Xunit;
using System;

public class ArrayCovariance {

    [Fact]
    public void Test1() {
        string s1 = "Apple";
        object o1 = s1;

        string s3 = (string) o1;
    }

    [Fact]
    public void Test2() {
        string[] s1 = new [] { "Applie", "Banana" };
        object[] o1 = s1;

        o1[0] = "Orange";
        o1[1] = 1;
        o1.SetValue(DateTime.Now, 0);
    }
}