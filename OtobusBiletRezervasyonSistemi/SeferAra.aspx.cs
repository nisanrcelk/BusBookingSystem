using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtobusBiletRezervasyonSistemi
{
    public partial class SeferAra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                DbModel db = new DbModel();
                string param1 = Request.QueryString["gidisdonus"];
                string kalkisyeri = Request.QueryString["kalkisyeri"];
                string varisyeri = Request.QueryString["varisyeri"];
                DateTime gidisTarihi = Convert.ToDateTime(Request.QueryString["gidistarihi"]);
                bool gidisDonus = (param1 == "true" ? true : false);
                Sefer seferAra = new Sefer();
                if (gidisDonus)
                {
                    seferAra.Tarih = Convert.ToDateTime(Request.QueryString["gidistarihi"]);
                    seferAra.KalkisYeri = db.getSehirID(Request.QueryString["kalkisyeri"]);
                    seferAra.VarisYeri = db.getSehirID(Request.QueryString["varisyeri"]);
                    var bulunanSeferler = (from sefer in db.Seferler
                                           join sehir in db.Sehirler on sefer.KalkisYeri equals sehir.ID
                                           where sefer.KalkisYeri == seferAra.KalkisYeri
                         && sefer.Tarih >= gidisTarihi
                                           select new
                                           {
                                               sefer.ID,
                                               KalkisYeri = sefer.KalkisSehri.SehirAdi,
                                               VarisYeri = sefer.VarisSehri.SehirAdi,
                                               sefer.Tarih,
                                               sefer.KalkisSaati,
                                               sefer.Ucret
                                           }).ToList();

                    seferTablosu.DataSource = bulunanSeferler;
                    seferTablosu.DataBind();
                }
                else
                {
                    seferAra.Tarih = Convert.ToDateTime(Request.QueryString["gidistarihi"]);
                    seferAra.KalkisYeri = db.getSehirID(Request.QueryString["kalkisyeri"]);
                    seferAra.VarisYeri = db.getSehirID(Request.QueryString["varisyeri"]);
                    var bulunanSeferler = (from sefer in db.Seferler
                                           join sehir in db.Sehirler on sefer.KalkisYeri equals sehir.ID
                                           where sefer.KalkisYeri == seferAra.KalkisYeri
                         && sefer.Tarih >= gidisTarihi && sefer.GidisDonus == 0
                                           select new
                                           {
                                               sefer.ID,
                                               KalkisYeri = sefer.KalkisSehri.SehirAdi,
                                               VarisYeri = sefer.VarisSehri.SehirAdi,
                                               sefer.Tarih,
                                               sefer.KalkisSaati,
                                               sefer.Ucret
                                           }).ToList();

                    seferTablosu.DataSource = bulunanSeferler;
                    seferTablosu.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Redirect("Anasayfa.aspx?hataliSecim");
            }
        }

        protected void seferTablosu_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void seferTablosu_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void RezervasyonBtn_Click(object sender, EventArgs e)
        {
            int RowId = ((GridViewRow)((Button)sender).Parent.Parent).RowIndex;

            Response.Redirect("YeniRezervasyon.aspx?SeferID=" + seferTablosu.Rows[RowId].Cells[1].Text);
        }
    }
}