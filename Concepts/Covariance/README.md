
## Array.csx

```csharp
string s1 = "Apple";
object o1 = s1;

string s2 = (string) o1;

string[] string1 = new [] { "Apple", "Banana"};
object[] object1 =  string1;

object1[1] = "Orange";
object1[1] = 1;


int[] int1 = new [] { 1,2};
object[] object2 = int1;
```