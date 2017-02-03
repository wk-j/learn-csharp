## :wine_glass: Defer.csx

```csharp




var call = false;
Func<bool>[] source = { () => { call = true; return true; } }

var query = source.Where(value => value());
call != true;       // true

query = source.Where((value, index) => value());
call != true;       // true

query.Count() == 1; // true
call == true;       // true

```