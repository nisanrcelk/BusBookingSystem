using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OtobusBiletRezervasyonSistemi
{
    public partial class YeniRezervasyon : System.Web.UI.Page
    {

        string rezID;
        bool musaitmi;
        DbModel db = new DbModel();
        string secilenKoltuk = "-1";
        int[] tekKoltuklar = {6,12,20,26,32,37,1,4,7,10,13,16,17,18,21,24,27,30,35,38 };
        int[] ciftKoltuklar = { 3, 2, 9, 8, 15, 14, 23, 22, 29, 28, 34, 33, 40, 39 };
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["SeferID"] == null)
                {
                    Response.Redirect("Anasayfa.aspx?HataliSecim");
                }
                rezID = Request.QueryString["SeferID"].ToString();
                KoltukGuncelle();
            }
            catch (Exception)
            {
                Response.Redirect("Anasayfa.aspx?HataliSecim");
            }
        }
        public void KoltukGuncelle()
        {
            List<Koltuk> koltuklar = db.Koltuklar.Where(x => x.SeferID.ToString() == rezID).ToList();
            for (int i = 0; i < 41; i++)
            {
                if (((ImageButton)FindControl("ImageButton" + i))!=null)
                {
                    ((ImageButton)FindControl("ImageButton" + i)).ImageUrl = "img/chair.png";
                }
            }
            foreach (Koltuk item in koltuklar)
            {
                if (item.Yolcu.Cinsiyet == "Erkek")
                {
                    ((ImageButton)FindControl("ImageButton" + item.No)).ImageUrl = "img/chair-blue.png";
                }
                else
                {
                    ((ImageButton)FindControl("ImageButton" + item.No)).ImageUrl = "img/chair-pink.png";
                }
            }
        }
        protected void rezOlustur_Click(object sender, EventArgs e)
        {
            if (labelUyari.Text.Contains("devam")&& Session["SecilenKoltuk"].ToString() != "-1")
            {
                if (tcTextbox.Text!=""&&adTextbox.Text!=""&&soyadTextbox.Text!=""&&dogumTarihi.SelectedDate!=null)
                {
                secilenKoltuk = Session["SecilenKoltuk"].ToString();
                List<Yolcu> yolcular = db.Yolcular.Where(x => x.TC == tcTextbox.Text).ToList();
                if (yolcular.Count == 0)
                {
                    //Yolcunun ilk rezervasyonu
                    Yolcu yeniYolcu = new Yolcu();
                    yeniYolcu.Ad = adTextbox.Text;
                    yeniYolcu.Soyad = soyadTextbox.Text;
                    yeniYolcu.TC = tcTextbox.Text;
                    yeniYolcu.Yas = DateTime.Now.Year - dogumTarihi.SelectedDate.Year;
                    yeniYolcu.DogumTarihi = dogumTarihi.SelectedDate;
                    yeniYolcu.Cinsiyet = erkekRadio.Checked ? "Erkek" : "Kadın";
                    Rezervasyon yeniRezervasyon = new Rezervasyon();
                    yeniRezervasyon.ID = db.Rezervasyonlar.Count();
                    yeniRezervasyon.RezervasyonTarihi = DateTime.Now;
                    yeniRezervasyon.SeferID = Convert.ToInt32(rezID);
                    yeniRezervasyon.Koltuk = Convert.ToInt32(secilenKoltuk);
                    yeniRezervasyon.YolcuTC = tcTextbox.Text;
                    yeniRezervasyon.Yolcu = yeniYolcu;
                    Koltuk koltuk = new Koltuk();
                    koltuk.SeferID = Convert.ToInt32(rezID);
                    koltuk.No = Convert.ToInt32(secilenKoltuk);
                    koltuk.YolcuTC = tcTextbox.Text;
                    db.Koltuklar.Add(koltuk);
                    db.Yolcular.Add(yeniYolcu);
                    db.Rezervasyonlar.Add(yeniRezervasyon);
                    db.SaveChanges();
                }
                else
                {
                    Rezervasyon yeniRezervasyon = new Rezervasyon();
                    yeniRezervasyon.ID = db.Rezervasyonlar.Count();
                    yeniRezervasyon.RezervasyonTarihi = DateTime.Now;
                    yeniRezervasyon.SeferID = Convert.ToInt32(rezID);
                    yeniRezervasyon.Koltuk = Convert.ToInt32(secilenKoltuk);
                    yeniRezervasyon.YolcuTC = tcTextbox.Text;
                    yeniRezervasyon.Yolcu = db.Yolcular.Find(tcTextbox.Text);
                    db.Rezervasyonlar.Add(yeniRezervasyon);
                    Koltuk koltuk = new Koltuk();
                    koltuk.SeferID = Convert.ToInt32(rezID);
                    koltuk.No = Convert.ToInt32(secilenKoltuk);
                    koltuk.YolcuTC = tcTextbox.Text;
                    db.Koltuklar.Add(koltuk);
                    db.SaveChanges();
                }
                Response.Redirect("Anasayfa.aspx?RezervasyonBasarili");
                }
                else
                {
                    labelUyari.Text = "Tüm alanları doldurmalısınız. ";
                }
            }
            else
            {
                labelUyari.Text = "Doğru koltuk seçimi yapmalısınız. ";
            }
        }
        private void Kontrol()
        {
            var sonKoltuk = db.Koltuklar.Where(x => x.SeferID.ToString() == rezID).ToList();
            int enbKoltuk;
            if (sonKoltuk.Count != 0)
            {
                enbKoltuk = sonKoltuk.Max(x => x.No);
            }
            else
            {
                enbKoltuk = 10;
            }
            int koltukNo = Convert.ToInt32(secilenKoltuk);
            List<Koltuk> koltuklar = db.Koltuklar.Where(x => x.SeferID.ToString() == rezID && x.No == koltukNo).ToList();
            musaitmi = koltuklar.Count == 0 ? true : false;
            if (musaitmi)
            {
                if (ciftKoltuklar.Contains(int.Parse(secilenKoltuk)))
                {
                    int index = Array.IndexOf(ciftKoltuklar, int.Parse(secilenKoltuk));
                    if (index%2==0)
                    {//Cam kenarı
                        Koltuk koltuk = db.Koltuklar.Find(ciftKoltuklar[index + 1]);
                        if (koltuk != null)
                        {
                            if (koltuk.Yolcu.Cinsiyet == "Erkek" && kadinRadio.Checked)
                            {
                                musaitmi = false;
                            }
                            else if (koltuk.Yolcu.Cinsiyet == "Kadın" && erkekRadio.Checked)
                            {
                                musaitmi = false;
                            }
                            else musaitmi = true;
                        }
                    }
                    else
                    {//-1
                        Koltuk koltuk = db.Koltuklar.Find(ciftKoltuklar[index - 1]);
                        if (koltuk != null)
                        {
                            if (koltuk.Yolcu.Cinsiyet == "Erkek" && kadinRadio.Checked)
                            {
                                musaitmi = false;
                            }
                            else if (koltuk.Yolcu.Cinsiyet == "Kadın" && erkekRadio.Checked)
                            {
                                musaitmi = false;
                            }
                            else musaitmi = true;
                        }
                    }
                }
            }
            if (!musaitmi)
            {
               labelUyari.Text = "Bu koltuk müsait görünmüyor, lütfen başka koltuk seçiniz.";
            }
            else
            {
               labelUyari.Text = "Rezervasyon işlemine devam edebilirsiniz.";
            }
            if (enbKoltuk<30)
            {
                if (int.Parse(secilenKoltuk) - 10 > enbKoltuk)
                {
                    labelUyari.Text = "Önce ön koltukları satın almalısınız.";
                    musaitmi = false;
                }
            }
            KoltukGuncelle();
        }
        protected void erkekRadio_CheckedChanged(object sender, EventArgs e)
        {
            Kontrol();
        }

        protected void kadinRadio_CheckedChanged(object sender, EventArgs e)
        {
            Kontrol();
        }

        protected void koltukSecim(object sender, ImageClickEventArgs e)
        {
            secilenKoltuk = ((ImageButton)sender).ID.Substring(11);
            Session["SecilenKoltuk"] = secilenKoltuk;
            Kontrol();
            if (erkekRadio.Checked)
            {
                ((ImageButton)sender).ImageUrl = "img/chair-blue.png";
            }
            else
            {
                ((ImageButton)sender).ImageUrl = "img/chair-pink.png";
            }
        }
    }
}