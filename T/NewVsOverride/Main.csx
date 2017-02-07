class Base {
    public void Method1() {
        Console.WriteLine("Base.Method1");
    }
}

class A : Base {
   public new void Method1() { 
       Console.WriteLine("A.Method1");
   } 
}

Base b = new A();
b.Method1(); 