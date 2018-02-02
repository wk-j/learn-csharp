
## Main.csx

```csharp
// https://msdn.microsoft.com/en-us/library/mt654055.aspx
// http://stackoverflow.com/questions/665494/why-funct-bool-instead-of-predicatet
// https://blogs.msdn.microsoft.com/mirceat/2008/03/12/linq-framework-design-guidelines
// http://geekswithblogs.net/BlackRabbitCoder/archive/2011/11/24/c.net-little-wonders-the-predicate-comparison-and-converter-generic-delegates.aspx
// https://www.facebook.com/photo.php?fbid=10152194270782368&set=gm.522403751210560&type=3&theater
 
interface IInput { }
	interface IOutput { }

	public class MyInput : IInput { }
	public class MyOutput : IOutput { }

	public delegate bool MyPredicate<in T>(T obj);

	// Not covariant
	public delegate bool MyPredicate2<T>(T obj);

	public delegate bool MyPredicateSig<in T>(T obj);

	public class InOutSpec {

		private bool InputA(IInput input) => true;
		private bool InputB(MyInput input) => true;

		public void Predicate() {
			MyPredicate<IInput> p0 = new MyPredicate<IInput>(InputA);
			MyPredicate<MyInput> p1 = new MyPredicate<IInput>(InputA);
			MyPredicate<MyInput> p2 = new MyPredicate<MyInput>(InputB);

			//MyPredicate2<MyInput> p3 = new MyPredicate2<IInput>(InputA);
			MyPredicate2<MyInput> p4 = new MyPredicate2<MyInput>(InputB);

			MyPredicateSig<IInput> s1 = InputA;
			MyPredicateSig<MyInput> s2 = InputB;
		}

		public void Where() {
			var a = new[] { 1, 2, 3, 4, 5 };
		}
	}
```