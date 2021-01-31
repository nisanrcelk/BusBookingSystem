<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Biletlerim.aspx.cs" Inherits="OtobusBiletRezervasyonSistemi.Biletlerim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bilet Ara</title>
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
        <div class="section d-flex align-items-center justify-content-center" style="flex-direction:column !important">
            <div class="biletlerimContainer d-flex flex-column align-items-center">
                <asp:Label ID="Label1" runat="server" Text="TC Kimlik Numaranız: " CssClass="biletlerimText"></asp:Label>
                <asp:TextBox ID="tcTextbox" runat="server" CssClass="girisTcText"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ara" />
            </div>
            <div>
                
        <asp:GridView ID="biletGridview" runat="server" Width="1001px">
        </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
