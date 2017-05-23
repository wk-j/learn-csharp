
let rec fix f x = f (fix f) x

let factabs fact = function 
 | 0 -> 1
 | x -> x * fact (x-1)

let result = (fix factabs) 5  

printfn "%A" result
