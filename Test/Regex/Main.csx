using System.Text.RegularExpressions;

var x = Regex.Match("jdbc:postgresql://localhost:5432/${db.name}", @"([a-z]+):(\d+)" );
Console.WriteLine(x.Success);
Console.WriteLine(x.Groups[0].Value);
Console.WriteLine(x.Groups[1].Value);
Console.WriteLine(x.Groups[2].Value);

