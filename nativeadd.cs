using System;
using System.Runtime.InteropServices;

namespace nativeadd {
  public class Program {
    public static void Main(string[] args) {
       Console.WriteLine("nativeadd: result is " + addsomeshit(1,2));
    }

    [DllImport("nativeadd")]
    public static extern int addsomeshit(int x, int y);
  }
}
