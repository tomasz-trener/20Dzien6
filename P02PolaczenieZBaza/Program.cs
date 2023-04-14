using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P02PolaczenieZBaza
{
    internal class Program
    {
        static void Main(string[] args)
        {
            PolaczenieZBaza pzb = new PolaczenieZBaza();

            object[][] wynik= pzb.WyslijPolecenieSQL("select * from zawodnicy");

            foreach (object[] wyn in wynik)
                Console.WriteLine(string.Join(" ",wyn));


            wynik = pzb.WyslijPolecenieSQL("insert into zawodnicy values (1,'jan','kowalski','pol','20230101',180,90)");

            Console.ReadKey();
        }
    }
}
