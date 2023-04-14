using P04PolaczenieZBaza;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace P03AplikacjaOkienkowa
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnWyslij_Click(object sender, EventArgs e)
        {
            PolaczenieZBaza pzb;


            if (string.IsNullOrWhiteSpace(txtParametryPolaczenia.Text)) // txtParametryPolaczenia.txt == ""
            {
                var d = MessageBox.Show("Nie podano parametró polaczenia z bazą. Czy chcesz użyć parametrów domyślnych?", "Pytanie",
                    MessageBoxButtons.YesNo, MessageBoxIcon.Question);

                if (d == DialogResult.Yes)
                    pzb = new PolaczenieZBaza();
                else
                    return;
            }
            else
                pzb = new PolaczenieZBaza(txtParametryPolaczenia.Text);


            if (string.IsNullOrWhiteSpace(txtPOlecenieSQL.Text))
            {
                MessageBox.Show("Nie podano polecenia SQL", "Ostrzeżenie", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return;
            }
            


            object[][] wynik= pzb.WyslijPolecenieSQL(txtPOlecenieSQL.Text);
        
            dgvDane.Rows.Clear();

            if(wynik.Length > 0)
            {
                dgvDane.ColumnCount = wynik[0].Length;

                foreach (var wiersz in wynik)
                    dgvDane.Rows.Add(wiersz);
            }
           

        }
    }
}
