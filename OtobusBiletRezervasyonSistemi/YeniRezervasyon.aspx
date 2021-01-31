<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YeniRezervasyon.aspx.cs" Inherits="OtobusBiletRezervasyonSistemi.YeniRezervasyon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/busstyle.css">
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
                <label class="baslabel" style="margin-left:200px;"> NİSA TURİZM   <i class="fas fa-bus"></i></label>
            </div>
        </nav>
        <div class="section d-flex align-items-center justify-content-center" style="flex-direction:row; margin-top:85px">
            <div class="rezervasyon-container">
                <asp:Label ID="labelRezervasyon" runat="server"></asp:Label>
                <div class="rezervasyon-item d-flex justify-content-between">
                    <asp:Label ID="Label1" runat="server" Text="TC"></asp:Label>
                    <asp:TextBox ID="tcTextbox" runat="server" CssClass="textinput"></asp:TextBox>
                </div>
                <div class="rezervasyon-item d-flex justify-content-between">
                    <asp:Label ID="adLabel" runat="server" Text="Ad"></asp:Label>
                    <asp:TextBox ID="adTextbox" runat="server" CssClass="textinput"></asp:TextBox>
                </div>
                <div class="rezervasyon-item d-flex justify-content-between">
                    <asp:Label ID="Label2" runat="server" Text="Soyad"></asp:Label>
                    <asp:TextBox ID="soyadTextbox" runat="server" CssClass="textinput"></asp:TextBox>
                </div>
                <div class="d-flex align-items-center erkek-radiolar">
                    <asp:RadioButton AutoPostBack="true" ID="erkekRadio" runat="server" Checked="True" Text="Erkek" GroupName="cins" OnCheckedChanged="erkekRadio_CheckedChanged" />
                </div>
                <div class="d-flex align-items-center">
                    <asp:RadioButton AutoPostBack="true" ID="kadinRadio" runat="server" Text="Kadın" GroupName="cins" OnCheckedChanged="kadinRadio_CheckedChanged" />
                </div>
                <asp:Label ID="Label4" runat="server" Text="Doğum Tarihi" CssClass="dogumtarihibaslik"></asp:Label>
                <asp:Calendar ID="dogumTarihi" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                
             <asp:Label ID="labelUyari" runat="server" Text="" CssClass="uyari"></asp:Label>
                <asp:Button ID="rezOlustur" runat="server" OnClick="rezOlustur_Click" Text="Rezervasyon Oluştur" CssClass="rezervasyon-olustur" />
                <div class="koltuk-numarasi-liste d-flex flex-column">
                    <asp:Label ID="Label3" runat="server" Text="Koltuk Numarası" CssClass="koltuk-numarasi-baslik"></asp:Label>
                    <div class="bus d-flex align-items-start flex-column " style="padding-top: 10px;background: wheat;">
                        <div class="bus-top">
                            <div class="bus-top-one d-flex">
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton3" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="tekSayi">3</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton6" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="tekSayi">6</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton9" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="tekSayi">9</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton12" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">12</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton15" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">15</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton20" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">20</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton23" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">23</p>
                                </div>
                                <div class="space"></div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton26" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">26</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton29" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">29</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton32" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">32</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton34" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">34</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton37" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">37</p>
                                </div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton40" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">40</p>
                                </div>

                            </div>
                            <div class="bus-top-two d-flex">
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton2" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="tekSayi">2</p>
                                </div>
                                <div class="space"></div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton8" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="tekSayi">8</p>
                                </div>
                                <div class="space"></div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton14" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">14</p>
                                </div>
                                <div class="space"></div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton22" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">22</p>
                                </div>
                                <div class="space"></div>
                                <div class="space"></div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton28" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">28</p>
                                </div>
                                <div class="space"></div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton33" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">33</p>
                                </div>
                                <div class="space"></div>
                                <div class="bus-image">
                                    <asp:ImageButton ID="ImageButton39" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                    <p class="ciftSayi">39</p>
                                </div>

                            </div>
                        </div>
                        <div class="bus-bottom d-flex">
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton1" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="tekSayi">1</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton4" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="tekSayi">4</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton7" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="tekSayi">7</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton10" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">10</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton13" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">13</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton16" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">16</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton17" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">17</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton18" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">18</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton21" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">21</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton24" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">24</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton27" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">27</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton30" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">30</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton35" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">35</p>
                            </div>
                            <div class="bus-image">
                                <asp:ImageButton ID="ImageButton38" ImageUrl="img/chair.png" runat="server" OnClick="koltukSecim" />
                                <p class="ciftSayi">38</p>
                            </div>
                        </div>
                    </div>
            </div>
                     
          </div>
        <div>
            
        </div>
            
    </form>
</body>
</html>