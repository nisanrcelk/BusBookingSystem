using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtobusBiletRezervasyonSistemi
{
    public partial class YoneticiPaneli : System.Web.UI.Page
    {
        DbModel db = new DbModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (Sehir sehir in db.Sehirler)
            {
                kalkisYeriDropDown.Items.Add(sehir.SehirAdi);
                varisYeriDropdown.Items.Add(sehir.SehirAdi);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (seferTarihi.SelectedDate == DateTime.MinValue)
                {
                    Response.Redirect("YoneticiPaneli.aspx?HataliTarihSecimi", false);
                }
                Sefer sefer = new Sefer();
                sefer.KalkisSehri = db.Sehirler.Where(x => x.SehirAdi == kalkisYeriDropDown.SelectedValue).ToList()[0];
                sefer.VarisSehri = db.Sehirler.Where(x => x.SehirAdi == varisYeriDropdown.SelectedValue).ToList()[0];
                sefer.KalkisYeri = sefer.KalkisSehri.ID;
                sefer.VarisYeri = sefer.VarisSehri.ID;
                sefer.KalkisSaati = TimeSpan.Parse(kalkisSaatiTextbox.Text);
                sefer.Ucret = decimal.Parse(ucretTextBox.Text);
                sefer.GidisDonus = gidisDonusCheckbox.Checked ? 1 : 0;
                sefer.Tarih = seferTarihi.SelectedDate;
                sefer.ID = db.Seferler.Max(x => x.ID) + 1;
                db.Seferler.Add(sefer);
                db.SaveChangesAsync();
                Response.Redirect("YoneticiPaneli.aspx?KayitBasarili", false);
            }
            catch (FormatException)
            {
                Response.Redirect("YoneticiPaneli.aspx?HataliSaatGirisi");
            }
            catch (Exception ex)
            {
                kalkisSaatiTextbox.Text = ex.Message;
                Response.Redirect("YoneticiPaneli.aspx?HataliGiris" + ex.Message);
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int row = Convert.ToInt32(e.CommandArgument);
                db.Seferler.Remove(db.Seferler.Find(row));
                db.SaveChangesAsync();
                Response.Redirect("YoneticiPaneli.aspx");
            }
        }

        protected void rezTablosu_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int row = Convert.ToInt32(e.CommandArgument);
            int rezID = Convert.ToInt32(rezTablosu.Rows[row].Cells[0].Text);
            if (e.CommandName == "Delete")
            {
                db.Rezervasyonlar.Remove(db.Rezervasyonlar.Find(rezID));
                db.SaveChangesAsync();
                Response.Redirect("YoneticiPaneli.aspx");
            }

        }

        protected void rezTablosu_RowEditing(object sender, GridViewEditEventArgs e)
        {
            rezTablosu.EditIndex = e.NewEditIndex;
        }
    }
}