using System.Diagnostics;

class S {

    public static Func<double, double> toMb = (input) => { 
        return input / 1024.0 / 1024.0;
    };

    public static Func<List<Tuple<string, double, double>>> getSpaces = () => {
        var drives = System.IO.DriveInfo.GetDrives();
        return drives.Select(x => {
            var total = x.TotalSize;
            var ok = x.AvailableFreeSpace;
            var name = x.Name;
            return new Tuple<string, double, double>(name, toMb(total), toMb(ok));
        }).ToList();
    };

    public static Func<string, string, double> getFolderSize = (path, pattern) => {
        var total = 0.0;
        var exist = System.IO.Directory.Exists(path);
        if(exist) {
            var files = System.IO.Directory.EnumerateFiles(path, pattern, System.IO.SearchOption.AllDirectories);
            foreach (string currentFile in files)
            {
                var size = new System.IO.FileInfo(currentFile).Length;
                total += size;
            }
            return toMb(total);
        }
        return 0.0;
    };

    public static Func<double> totalMemory = () => {
        var pc = new PerformanceCounter ("Mono Memory", "Total Physical Memory");
        return toMb(pc.RawValue);
    };
}