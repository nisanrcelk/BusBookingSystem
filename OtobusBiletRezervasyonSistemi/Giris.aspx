<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="OtobusBiletRezervasyonSistemi.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
</head>
<body>
    <form id="form1" autocomplete="off" runat="server">
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
        <div class="section d-flex align-items-center justify-content-center">
            <div class="girisSayfasi">
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" CssClass="girisYapButon" /><br />
                </div>
                <div class="girisSayfasiItem d-flex justify-content-between">
                    <asp:Label ID="lblUyari" runat="server" Text="" CssClass="girisUyari"></asp:Label>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
