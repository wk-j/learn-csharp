using System;

public class Program {
    static void IsCast() {
        var s = "Hello, is!";
        var ok =  (s is String);
    }

    static void Cast() {
        Object s = "Hello, cast!";
        var ss = (String) s;
    }

    static void AsCast() {
        var s = "Hello, as!";
        var ss = s as String;
    }

    public static void Main(String[] args) {
        var x = "Hello word";
    }
}
