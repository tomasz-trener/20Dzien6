using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P02PolaczenieZBaza
{
    internal class PolaczenieZBaza
    {
        string connectionString;

        public PolaczenieZBaza()
        {
            connectionString = "Server=zawodnicyserv.database.windows.net;Database=zawodnicydb;User Id=zawodnicy_admin;Password=AlxAlx14042023!;";
        }

        public PolaczenieZBaza(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public object[][] WyslijPolecenieSQL(string sql)
        {
            SqlConnection connection; //nazwiązywanie połączenia z bazą 
            SqlCommand command; // przechowywanie polecen SQL 
            SqlDataReader sqlDataReader; // czytanie wyników z bazy 

            connection = new SqlConnection(connectionString);
            command = new SqlCommand(sql, connection);
           
            connection.Open();
            sqlDataReader = command.ExecuteReader();

            int liczbaKolumn = sqlDataReader.FieldCount;

            List<object[]> listaWierszy = new List<object[]>();
            while (sqlDataReader.Read()) // czytaj wiersze 
            {
                object[] komorki = new object[liczbaKolumn];
                for (int i = 0; i < liczbaKolumn; i++)
                    komorki[i] = sqlDataReader.GetValue(i);

                listaWierszy.Add(komorki);
            }

            connection.Close();
            return listaWierszy.ToArray();
        }


    }
}
