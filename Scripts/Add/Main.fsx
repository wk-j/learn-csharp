using System;

public class M {
	static int x = 0;
	public static int X { 
		get { return x; }
		set {
			x = value;
			Console.WriteLine("x = {0}", x);
		}
	}
}

M.X = 2;
M.X += M.X += M.X += M.X++;
