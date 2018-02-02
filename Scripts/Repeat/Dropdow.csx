var x = Enumerable.Repeat("ต้องการปรับให้ช่อง Area ไม่จำกัด Character #104", 2000);

x.Select((X, I) => new { X, I }).ToList().ForEach(x => Console.WriteLine($"{x.I} - {x.X}"));