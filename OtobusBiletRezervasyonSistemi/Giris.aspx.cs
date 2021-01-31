using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtobusBiletRezervasyonSistemi
{
    public partial class Giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" && TextBox2.Text == "password")
            {
                Response.Redirect("YoneticiPaneli.aspx");
            }
            else lblUyari.Text = "Geçersiz kullanıcı adı/şifre.";
        }
    }
}