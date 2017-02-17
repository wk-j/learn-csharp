DateTime start = DateTime.Now;
 string x = "";
 for (int i=0; i < 100000; i++)
 {
     x += "!";
 }
 DateTime end = DateTime.Now;
 Console.WriteLine ("Time taken: {0}", end-start);