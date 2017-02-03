## :wine_glass: Test.cs

```csharp

using System;
using System.Collections.Generic;
using System.Linq;

public class Animal {
    public String Name {set;get;}
}

public class Cat: Animal { }

class AnimalComparer<T> : IComparer<T> where T: Animal{
    public int Compare(T x, T y) {
        return x.Name.CompareTo(y.Name);
    }
    public int GetHashCode(T person) {
        return 0;
    }
}

public class Test {
    public static void Covariance() {
        var list = new List<Object>();
        list.Add("hello");
        list.Add(1);

        Console.WriteLine(list.OfType<Object>().Count() == 2);
        Console.WriteLine(list.OfType<String>().Count() == 1);
    }
    public static void CompareCats(IComparer<Cat> comparer) {
        var cat1 = new Cat { Name = "Otto" };
        var cat2 = new Cat { Name = "Troublemarker"};
        if (comparer.Compare(cat2, cat1) > 0) {
            Console.WriteLine("Troublemarker win!");
        }
    }

    public static void PrintAnimal(IEnumerable<Animal> animals) {
            animals.Select( x => x.Name)
                .ToList()
                .ForEach(Console.WriteLine);
    }
    public static void Main(String[] args){
        Covariance();
        var animals = new List<Cat>() { new Cat { Name = "Eve"}};
        PrintAnimal(animals);

        IComparer<Animal> compareAnimals = new AnimalComparer<Animal>();
        CompareCats(compareAnimals);
    }
}
```