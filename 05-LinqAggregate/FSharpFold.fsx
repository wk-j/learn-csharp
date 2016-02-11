
open System.Linq
let data = [|1;2;3|]
let sum = Array.fold (fun acc x -> acc + x) 0 data // sum = 6
let pro = Array.fold (fun acc x -> acc * x) 1 data // pro = 6

