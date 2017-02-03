
class FizzBuzz {
    public static string Value(int value) =>
        string.Concat(
                new[] {
                    value % 3 == 0 ? "Fizz": null,
                    value % 5 == 0 ? "Buzz" : null }
                .Where(s => s != null)
                .DefaultIfEmpty(value.ToString())
            );
}

Enumerable.Range(1,100).Select(FizzBuzz.Value)