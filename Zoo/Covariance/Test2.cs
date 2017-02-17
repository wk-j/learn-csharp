
using System;
using System.Collections.Generic;

class Animal {}
class Fish: Animal {}

interface IInvariant<T> {
    // This interface can not be implicitly cast AT ALL
    // Used for non-readonly collections
    IList<T> GetList { get; }
    // Used when T is used as both argument *and* return type
    T Method(T argument);
}//interface

interface ICovariant<out T> {
    // This interface can be implicitly cast to LESS DERIVED (upcasting)
    // Used for readonly collections
    IEnumerable<T> GetList { get; }
    // Used when T is used as return type
    T Method();
}//interface

interface IContravariant<in T> {
    // This interface can be implicitly cast to MORE DERIVED (downcasting)
    // Usually means T is used as argument
    void Method(T argument);
}//interface

class Casting {

    IInvariant<Animal> invariantAnimal;
    ICovariant<Animal> covariantAnimal;
    IContravariant<Animal> contravariantAnimal;

    IInvariant<Fish> invariantFish;
    ICovariant<Fish> covariantFish;
    IContravariant<Fish> contravariantFish;

    public void Go() {

        // NOT ALLOWED invariants do *not* allow implicit casting:
        invariantAnimal = invariantFish;
        invariantFish = invariantAnimal; // NOT ALLOWED

        // ALLOWED covariants *allow* implicit upcasting:
        covariantAnimal = covariantFish;
        // NOT ALLOWED covariants do *not* allow implicit downcasting:
        covariantFish = covariantAnimal;

        // NOT ALLOWED contravariants do *not* allow implicit upcasting:
        contravariantAnimal = contravariantFish;
        // ALLOWED contravariants *allow* implicit downcasting
        contravariantFish = contravariantAnimal;

    }//method

}//class

// .NET Framework Examples:
public interface IList<T> : ICollection<T>, IEnumerable<T>, IEnumerable { }
public interface IEnumerable<out T> : IEnumerable { }


class Delegates {

    // When T is used as both "in" (argument) and "out" (return value)
    delegate T Invariant<T>(T argument);

    // When T is used as "out" (return value) only
    delegate T Covariant<out T>();

    // When T is used as "in" (argument) only
    delegate void Contravariant<in T>(T argument);

    // Confusing
    delegate T CovariantBoth<out T>(T argument);

    // Confusing
    delegate T ContravariantBoth<in T>(T argument);

    // From .NET Framework:
    public delegate void Action<in T>(T obj);
    public delegate TResult Func<in T, out TResult>(T arg);

}//class