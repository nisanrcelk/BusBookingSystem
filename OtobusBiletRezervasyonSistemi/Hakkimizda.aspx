<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="OtobusBiletRezervasyonSistemi.Hakkimizda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <title> HAKKIMIZDA</title>
    <style>
        #section{
            color:white;
            font-size:20px;
            margin-top:10px;
        }
        img{
            margin:50px;
            border-radius:10px;
        }
        h1{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
           <nav>
           <div class="container d-flex align-items-center">
            <a href="Anasayfa.aspx">Anasayfa</a>
            <a href="Biletlerim.aspx">Biletlerim</a>
                 <a href="Hakkimizda.aspx">Hakkımızda</a>
            <a href="Iletisim.aspx">İletişim</a>
                <a href="Giris.aspx">Yönetim</a>
               <label class="baslabel" style="margin-left:200px;"> NİSA TURİZM   <i class="fas fa-bus"></i></label>

           </div>
               </nav>

       <div id="section" style="color:white;">
            <h1>HAKKIMIZDA</h1>
           <br />
            <img id="imgid" src="img/oto.jpg" alt="Alternate Text" style="float:left;" />
            <p>2010 yılında kurulan NİSA TURİZM Otobüsleri A.Ş. Türkiye’nin ilk karayolu yolcu taşıma şirketi olarak 94 yıldır faaliyetlerine devam etmektedir. 
                Kurucular müşteri memnuniyeti ve iş ahlâkı ilkeleri ışığında sektöründe lider ve öncü olmaya devam etmektedir.
            </p>
            <br />
            <hr />
            <p>
                NİSA TURİZM, 2019 yılında Avrupa’nın en büyük şehirlerarası otobüs ağını kuran FlixBus’ın iş ortağı olmuştur. 2013 yılından beri 100 milyondan fazla yolcusuna hizmet veren FlixBus bugün 35 ülkede 2.500’den fazla güzergâhı birbirine bağlayarak herkes için çevreci ve akıllı seyahat imkanı sunmaktadır.
            <br />
                NİSA TURİZM, FlixBus iş ortaklığıyla sunduğu konforlu ve kaliteli seyahat deneyimine ek olarak, teknolojik hizmetlerini yeni bir seviyeye taşıyacak ve Türkiye’de 60 il ve 288 ilçede sunduğu seyahat noktasını iş ortağı ile birlikte Avrupa’nın 35 ülkesine kadar genişletecek. NİSA TURİZM, kurum misyonu olarak her zaman yolcu memnuniyetini ön planda tutmakta ve sektöre hizmet standardı belirleme konusunda öncü olmaktadır.
                <br />
                <br />
                Türkiye’nin şehirlerarası yolcu taşımacılığına sayısız ilkler ve yenilikler kazandırmıştır. 10 yıllık tecrübe ile günümüz yolcu ihtiyaçlarını doğru anlamakta ve yolcu memnuniyeti için personel ve donanım açısından yüksek bir hizmet kalitesi sunmaktadır.  NİSA TURİZM Otobüsleri A.Ş. bugün Türkiye’nin en büyük 500 firması arasında yer almaktadır.
            </p>
            
            <br />
        
        </div>
    </form>
</body>
</html>
