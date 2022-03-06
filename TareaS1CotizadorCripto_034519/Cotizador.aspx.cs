using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TareaS1CotizadorCripto_034519
{
    public partial class Cotizador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcesar_Click(object sender, EventArgs e)
        {
            string moneda = cmbMoneda.SelectedItem.Value;
            string cripto = cmbCripto.SelectedItem.Value;
            if (cmbMoneda.SelectedIndex > 0 && cmbCripto.SelectedIndex > 0)
            {
                string resultado = Consulta(cripto, moneda);
                System.Diagnostics.Debug.WriteLine(resultado);
                string price = Regex.Replace(resultado, @"[^\d,\.]", "");
                // Se esta utilizando String Literal para facilitar la insercion de datos en el string
                // pero a modo de prueba se deja, como se haria en la manera clasica
                // result.Text = "El precio es: " + cmbMoneda.SelectedItem.Value + "\t" + price;
                result.Text = $"El precio de {cmbCripto.SelectedItem.Value} es: {cmbMoneda.SelectedItem.Value} {price}";
            } else
            {
                result.Text = "Seleccione una divisa FIAT y una Cripto para recibir una cotizacion";
            }
        }

        public string Consulta(string cripto, string moneda)
        {
            string uri = $"https://min-api.cryptocompare.com/data/price?fsym={ cripto }&tsyms={ moneda }";
            // string uri = "https://min-api.cryptocompare.com/data/price?fsym="+cripto+"&tsyms="+moneda;
            System.Diagnostics.Debug.WriteLine(uri);
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(uri);
            request.AutomaticDecompression = DecompressionMethods.GZip | DecompressionMethods.Deflate;

            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream))
            {
                return reader.ReadToEnd();
            }
        }
    }
}