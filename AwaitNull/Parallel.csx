

using System.Threading.Tasks;

var inputs = new [] { 1, 2, 3, 4, 5};
Parallel.ForEach(inputs, Console.WriteLine);
