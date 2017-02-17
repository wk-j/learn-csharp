
let data = [1;2;3]
let empty = []

let sum1 = List.reduce(fun acc x -> acc + x) data   // sum1 = 6
let sum2 = List.reduce(fun acc x -> acc + x) empty  // ERROR: The input list was empty.

let sum3 = List.fold(fun acc x -> acc + x) 0 data   // sum3 = 6
let sum4 = List.fold(fun acc x -> acc + x) 0 empty  // sum4 = 0


