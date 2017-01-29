
var q = from x in new[] { 1, 2, 3} select x;
var s = from x in new[] { "a", "b", "c"} select x;

q.Aggregate((x,y) => x + y);
q.Aggregate(10, (x,y) => x + y);
q.Aggregate(10, (x, y) => x + y, i => i + 2);

s.Aggregate((x,y) => x + y);
s.Aggregate("$", (x,y) => x + y);

