var cats = System.Diagnostics.PerformanceCounterCategory.GetCategories();
for (int i = 0; i < cats.Length; i++)
{
    var cat = cats[i];
    var x = cat.CategoryName;
    Console.WriteLine("Category = " + x);

    var mypc = cat.GetCounters();
    for (int k = 0; k < mypc.Length; k++)
    {
        Console.WriteLine("> Counter = " + mypc[k].CounterName);
    }
}