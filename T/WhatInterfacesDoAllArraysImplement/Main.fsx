open System
open System.Linq

let WriteLine(s: Object) = Console.WriteLine(s)

[|DateTime.Now|].GetType().GetInterfaces().ToList().ForEach(fun x -> WriteLine(x))
[|System.IO.DirectoryInfo(".")|].GetType().GetInterfaces().ToList().ForEach(fun x -> WriteLine(x))