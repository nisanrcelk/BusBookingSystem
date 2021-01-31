using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Objects;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtobusBiletRezervasyonSistemi
{
    public partial class Biletlerim : System.Web.UI.Page
    {
        DbModel db = new DbModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var bulunanSeferler = (from sefer in db.Seferler
                                   join sehir in db.Sehirler on sefer.KalkisYeri equals sehir.ID
                                   join rez in db.Rezervasyonlar on sefer.ID equals rez.SeferID
                                   join yolcu in db.Yolcular on rez.YolcuTC equals yolcu.TC
                                   where sefer.ID == rez.SeferID
                                   select new
                                   {
                                       Sefer_No = sefer.ID,
                                       Kalkis_Yeri = sefer.KalkisSehri.SehirAdi,
                                       Varis_Yeri = sefer.VarisSehri.SehirAdi,
                                       Sefer_Tarihi=sefer.Tarih,
                                       Kalkis_Saati=sefer.KalkisSaati,
                                       Odenen_Ucret=sefer.Ucret
                                   }).ToList();
            biletGridview.DataSource = bulunanSeferler;
            biletGridview.DataBind();
            for (int i = 0; i < biletGridview.Rows.Count; i++)
            {
                biletGridview.Rows[i].Cells[3].Text = biletGridview.Rows[i].Cells[3].Text.Split(' ')[0];
            }
        }
    }
}