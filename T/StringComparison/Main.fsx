
open System


String.Compare("ß", "ss") |> printfn "%A"

"ß".StartsWith("ss",  StringComparison.Ordinal) |> printfn "%A"
"ß".StartsWith("ss",  StringComparison.InvariantCulture) |> printfn "%A"