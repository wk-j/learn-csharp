
var mainTemplate = @"
## Try `C#`

[![Build Status](https://travis-ci.org/wk-j/try-csharp.svg?branch=master)](https://travis-ci.org/wk-j/try-csharp)

{{links}}
";

var readmeTemplate = @"
## {{fileName}}

```csharp
{{source}}
```";

Task("Build-Readme").Does(() => {
    var links = new List<string>();
    
    var files = new System.IO.DirectoryInfo("./")
        .GetFiles("*.csx", System.IO.SearchOption.AllDirectories)
        .GroupBy(x => x.Directory.FullName)
        .Select(x => x.FirstOrDefault())
        .ToList();

    files.ForEach(file => {
        Console.WriteLine(file.FullName);
        var text = readmeTemplate; 
        var source = System.IO.File.ReadAllText(file.FullName);
        var name = file.Name;
        var newText = text
            .Replace("{{fileName}}", name)
            .Replace("{{source}}", source);

        var mdFile = System.IO.Path.Combine(file.Directory.FullName, "README.md");
        System.IO.File.WriteAllText(mdFile, newText);

        var dirName = file.Directory.Name;
        var parent = file.Directory.Parent.Name;
        var link = $"- [{parent}/{dirName}]({parent}/{dirName})";
        links.Add(link);
    });

    var mainText = mainTemplate.Replace("{{links}}", String.Join("\n", links));
    System.IO.File.WriteAllText("README.md", mainText);
});

Task("Restore").Does(() => {
    DotNetCoreRestore("CSharp7.sln");
});

Task("Test").Does(() => {
    DotNetCoreTest("src/TryDotNetCore/TryDotNetCore.csproj");
});

Task("Build").Does(() => {
    DotNetCoreBuild("CSharp7.sln");
});

var target = Argument("target", "default");
RunTarget(target);