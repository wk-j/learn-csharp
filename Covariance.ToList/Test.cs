
using System;
using System.Collections.Generic;
using System.Linq;

class Animal { }
class Cat: Animal { }
class Dog: Animal { }

public class Program {
    public static void Main(String[] args) {
        {
            var cats = new List<Cat>() { new Cat() };
            var animals = (IEnumerable<Animal>) cats;

            var list = animals.ToList();
            list.Add(new Dog());

            // Cat
            // Dog
            list.ForEach(Console.WriteLine);
        }

        {
            Animal[] animals = new Animal[10];
            animals[0] = new Cat();
        }
    }
}