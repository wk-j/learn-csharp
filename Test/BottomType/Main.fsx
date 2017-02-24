

let never<'T> : 'T = failwith "Invalid value"
let f1 (x: int) : int = if x > 0 then 1 else never
let f2 (x: string) = if  x = "" then never else x

