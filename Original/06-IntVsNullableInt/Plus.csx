

var first = new int?[] { null, null, null };
var second = new int[] { 2, 4, 6 };

Func<int?, int, int?> func = (x, y) => x + y;
Func<int?, int, bool> func2 = (x, y) => x > y;
Func<int?, int, bool> func3 = (x, y) => x <= y;

first.Zip(second, func); // { null, null, null }
first.Zip(second, func2); // { null, null, null }
first.Zip(second, func3); // { null, null, null }




