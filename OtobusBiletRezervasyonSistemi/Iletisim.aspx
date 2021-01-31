<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="OtobusBiletRezervasyonSistemi.Iletisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
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
                  <label class="baslabel" style="margin-left:200px;"> NİSA TURİZM  <i class="fas fa-bus"></i></label>
           </div>
        </nav>
     
          <div class="row">
               <div id="iletisim">
          </div>
              </div>
              <div class="row">
                  <div class="col-md-5">

                      <img  style="margin:100px;" id="img1"src="img/bir.png" alt="Alternate Text" />
                      <br />
                          <div style="margin-left:100px; color:white;"id="adres">
                <h3>Merkez</h3>
                              <h2>
                                        Adres : Atatürk Alanı No:1 61100 Çorum <br />
                  Telefon : +90 850 888 88 88 <br />
                  Fax : +90 364 888 88 88 <br />
                  E-Posta : nisancliik7@gmail.com
                
                              </h2>
            
            </div>
                      </div>
                  <div class="col-md-7">
            <iframe  style="margin:100px;"  class="maps" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d97033.2508654202!2d34.871863279777955!3d40.53520185429306!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40872a9f1a35ab71%3A0xa34943cf02a0f8d5!2zw4dvcnVtLCDDh29ydW0gTWVya2V6L8OHb3J1bQ!5e0!3m2!1str!2str!4v1607797843440!5m2!1str!2str" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
             </div>
                      </div>
        
        

        
    </form>
</body>
</html>
