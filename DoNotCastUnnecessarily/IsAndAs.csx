
object x = ...;
if (x is string) {
    var str = (string) x;
    // Use str
}

var str = x as string;
if (str != null) {
    // Use str
}

for (var str = x as string; str != null; str = null) {
    // Use str
}