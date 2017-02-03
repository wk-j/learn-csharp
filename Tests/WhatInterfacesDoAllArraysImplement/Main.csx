// http://stackoverflow.com/questions/4482557/what-interfaces-do-all-arrays-implement-in-c
// http://stackoverflow.com/questions/5968708/why-array-implements-ilist


/*
System.Collections.IEnumerable
System.Collections.Generic.IList`1[System.Int32]
System.Collections.Generic.IReadOnlyCollection`1[System.Int32]
System.Collections.IList
System.Collections.Generic.IReadOnlyList`1[System.Int32]
System.Collections.IStructuralComparable
System.Collections.IStructuralEquatable
System.Collections.Generic.ICollection`1[System.Int32]
System.Collections.ICollection
System.Collections.Generic.IEnumerable`1[System.Int32] */

var types = typeof(int[]).GetInterfaces().ToList();
types.ForEach(t => {
    Console.WriteLine(t);
});

