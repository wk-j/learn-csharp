
class BaseClass {}
class DerivedClass : BaseClass {
    public Type GetType () {
        return typeof (string); 
    }
}

DerivedClass d = new DerivedClass();
object o = new DerivedClass();
BaseClass b = new BaseClass();
d.GetType();
o.GetType();
b.GetType();
