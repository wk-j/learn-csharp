using System.Text;

DateTime start = DateTime.Now;
 StringBuilder builder = new StringBuilder();
 for (int i=0; i < 100000; i++)
 {
     builder.Append("!");
 }
 string x = builder.ToString();
 DateTime end = DateTime.Now;
 Console.WriteLine ("Time taken: {0}", end-start);