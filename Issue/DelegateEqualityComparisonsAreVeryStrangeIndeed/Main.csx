class A {
    public void Main() {}
}

var a= new A();

Action a1 = a.Main , a2 = a.Main;
MulticastDelegate md1 = a1, md2 = a2;
Delegate d1 = a1, d2 = a2;
Object o1 = a1, o2 = a2;

        // Comparing with the same level in the type hierarchy...
Console.WriteLine("a1 == a2: " + (a1 == a2));
Console.WriteLine("md1 == md2: " + (md1 == md2));
Console.WriteLine("d1 == d2: " + (d1 == d2));
Console.WriteLine("o1 == o2: " + (o1 == o2));
        
        // Comparing one non-Action with Action
Console.WriteLine("md1 == a2: " + (md1 == a2));
Console.WriteLine("d1 == a2: " + (d1 == a2));
Console.WriteLine("o1 == a2: " + (o1 == a2));

        // Comparing one non-MulticastDelegate with MulticastDelegate
Console.WriteLine("d1 == md2: " + (d1 == md2));
Console.WriteLine("o1 == md2: " + (o1 == md2));