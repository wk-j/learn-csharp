## :wine_glass: Main.csx

```csharp
// https://ayende.com/blog/176769/challenge-what-does-this-code-do

var doc = new Dictionary<string, object> {
    ["data"] = new Dictionary<string, object> {
        ["id"] = 1
    }
    ["name"] = "John"
}

var name = doc["name"];


```