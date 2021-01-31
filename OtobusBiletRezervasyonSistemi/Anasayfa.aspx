<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="OtobusBiletRezervasyonSistemi.Anasayfa" %>

<!doctype html>
<html lang="en">
  <head>
    <title>Otobüs Rezervasyon Sistemi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
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
               <label class="baslabel" style="margin-left:200px;"> NİSA TURİZM   <i class="fas fa-bus"></i> </label>
               

           </div>
        </nav>
        <div class="section ">
            <div class="container sectionContainer d-flex align-items-center justify-content-center">
                <div class="textSection">
                    <h1>EN UYGUN OTOBÜS BİLETİ Mİ ARIYORSUNUZ? İŞTE BURADA</h1>
                    <P>Konforlu bir seyahat için tüm imkanlarımızı hizmetinize sunuyoruz.</P>
                </div>
                <div class="inputSection">
                    <div class="radioContainer d-flex align-items-center">
                        <div class="radioItems d-flex align-items-center">
                            <asp:RadioButton ID="gidisdonus" runat="server" Text="Gidiş-Dönüş" GroupName="yon" />
                        </div>
                        <div class="radioItems d-flex align-items-center">
                            <asp:RadioButton ID="tekyon" runat="server" Text="Tek Yön" GroupName="yon" />
                        </div>
                    </div>
                    <div class="selectContainer d-flex align-items-center">
                        <div class="selectItems">
                            <label>NEREDEN</label>
                            <asp:DropDownList ID="neredenDropDown" runat="server"></asp:DropDownList>
                        </div>
                        <div class="selectItems">
                            <label>NEREYE</label>
                            <asp:DropDownList ID="nereyeDropDown" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="dateContainer d-flex align-items-center">
                            <div class="dateItems d-flex flex-column">
                                <label>GİDİŞ TARİHİ</label>
                                <asp:TextBox ID="Gidistarihi" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="dateItems d-flex flex-column">
                                <label>DÖNÜŞ TARİHİ</label>
                                <asp:TextBox ID="DonusTarihi" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                    </div>
                    <div class="seferleriGosterContainer d-flex align-items-center ">
                        <asp:Button ID="seferGosterBtn" CssClass="seferleriGoster" runat="server" Text="SEFERLERİ GÖSTER" OnClick="seferGosterBtn_Click" />
                    </div>
                </div>
        </div>
      </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
        </form>
    
  </body>
</html>