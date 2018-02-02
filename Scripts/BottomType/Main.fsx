

let never<'T> : 'T = failwith "Invalid value"
let f1 (x: int) : int = never 
let f2 (x: 'T) : 'T = never 

