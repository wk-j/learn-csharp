using System;
using System.Collections.Generic;

public class Animal {}
public class Cat: Animal {}
public class Dog: Animal {}

public class Program {
    public static void Main(string[] args) {
        var cats = new List<Cat>();

        // error: Cannot convert type `System.Collections.Generic.List<Cat>'
        // to `System.Collections.Generic.List<Animal>'
        //var animals1 = (List<Animal>) cats;

        // ok
        var animals2 = (IEnumerable<Animal>) cats;

        // System.InvalidCastException: Specified cast is not valid.
        //var animals3 = (ICollection<Animal>) cats;

        Animal[] animals  = new Cat[1];

        // error: System.ArrayTypeMismatchException
        // Attempted to access an element as a type incompatible with the array.
        animals[0] = new Dog();
    }
}

