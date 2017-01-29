var data = new int[] { 1,2,3};
var sum = data.Aggregate(0, (acc,x) => acc + x); // sum = 6
var pro = data.Aggregate(1, (acc,x) => acc * x); // pro = 6