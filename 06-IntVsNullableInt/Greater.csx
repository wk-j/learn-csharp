
var first = new int?[] { null, null, null };
var second = new int[] { 2, 4, 6 };

Func<int?, int, bool?> gt = (x, y) => x > y;
Func<int?, int, bool?> lte = (x, y) => x <= y;

first.Zip(second, gt);  // { false, false, false }
first.Zip(second, lte); // { false, false, false }


