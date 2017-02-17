## Bool.csx

```csharp

var first = new bool?[]  { true,true,true,false,false,false,null,null,null };
var second = new bool?[] { true,false,null,true,false,null,true,false,null };
Func<bool?,bool?,bool?> and = (x,y) => x & y;
Func<bool?,bool?,bool?> or = (x,y) => x | y;

first.Zip(second, and);
// first  { true, true, true, false, false, false, null, null, null };
// second { true, false, null, true, false, null,  true, false, null };
// rs     { true, false, null, false, false, false, null, false, null }

first.Zip(second, or);
// first  { true, true, true, false, false, false, null, null, null };
// second { true, false, null, true, false, null,  true, false, null };
// rs     { true, true, true, true, false, null,  true, null, null }


```