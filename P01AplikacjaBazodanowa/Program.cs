using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P01AplikacjaBazodanowa
{
    internal class Program
    {
        static void Main(string[] args)
        {
            SqlConnection connection; //nazwiązywanie połączenia z bazą 
            SqlCommand command; // przechowywanie polecen SQL 
            SqlDataReader sqlDataReader; // czytanie wyników z bazy 

            string connectionString = "Server=zawodnicyserv.database.windows.net;Database=zawodnicydb;User Id=zawodnicy_admin;Password=AlxAlx14042023!;";
            connection = new SqlConnection(connectionString);

            command = new SqlCommand("select * from zawodnicy",connection);
            connection.Open();

            sqlDataReader = command.ExecuteReader(); // wysłanie polecenia SQL do bazy danych 

            //// teraz musimy przeczytać wynik 
            //sqlDataReader.Read(); // czytaj koleny wiersz 
            //string wynik = (string)sqlDataReader.GetValue(2); // weź z tego pierwszego przeczytanego wiersza 
            //// wartośc z komórki nr 2            
            //Console.WriteLine(wynik);

            //sqlDataReader.Read();
            //wynik = (string)sqlDataReader.GetValue(2);
            //Console.WriteLine(wynik);

            while (sqlDataReader.Read()) 
            {
                string wynik = (string)sqlDataReader.GetValue(2) + " " +
                     (string)sqlDataReader.GetValue(3);
                Console.WriteLine(wynik);
            }

            connection.Close();

            Console.ReadKey();
        }
    }
}
