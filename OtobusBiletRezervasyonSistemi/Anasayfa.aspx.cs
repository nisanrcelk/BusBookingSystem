using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace OtobusBiletRezervasyonSistemi
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        DbModel db = new DbModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (Sehir sehir in db.Sehirler)
            {
                neredenDropDown.Items.Add(sehir.SehirAdi);
                nereyeDropDown.Items.Add(sehir.SehirAdi);
            }
        }

        protected void seferGosterBtn_Click(object sender, EventArgs e)
        {
            string gidis = Gidistarihi.Text;
            string donus = DonusTarihi.Text;
            string kalkis = neredenDropDown.Text;
            string varis = nereyeDropDown.Text;
            bool gidisDonus = gidisdonus.Checked;
            if (gidisDonus)
            {
                Response.Redirect(String.Format("SeferAra.aspx?kalkisyeri={0}&varisyeri={1}&gidistarihi={2}&donustarihi={3}&gidisDonus=true", kalkis, varis, gidis, donus, gidisdonus));
            }
            else
            {
                Response.Redirect(String.Format("SeferAra.aspx?kalkisyeri={0}&varisyeri={1}&gidistarihi={2}", kalkis, varis, gidis));
            }
        }
    }
}