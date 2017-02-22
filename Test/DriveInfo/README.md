## Function.csx

```csharp
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Net;

class F {
    public static Action<string> success = (message) => {
        Console.WriteLine($"[x]  {message}");
    };

    public static Func<object, string> space = (input) => {
        return String.Format("{0,8}", input);
    };

    public static Action<string> error = (message) => {
        Console.WriteLine($"[ ]  {message}");
    };

    public static Action<bool, string> show = (status, message) => {
        if(status) success(message);
        else error(message);
    };

    public static Func<string, Tuple<string,int>> findSocket = (path) => {
        var token = path.Split(':');
        return new Tuple<string,int>(token[0], Int32.Parse(token[1]));
    };

    public static Func<string, int, bool> ping = (host, port) => {
        try {
            var client = new TcpClient(host, port);
            return true;
        } catch (Exception ex) {
            return false;
        }
    };

    public static Func<string, bool> download = (url) => {
        var temp = System.IO.Path.GetTempFileName();
        try {
            var client = new WebClient ();
            client.DownloadFile(url, temp);
            return true;
        } catch (Exception ex) {
            return false;
        }
    };
}
```