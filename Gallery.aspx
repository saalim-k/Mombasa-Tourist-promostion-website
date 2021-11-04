<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Assignement.Activity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="homeStyle.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Alegreya:wght@500&family=Oswald:wght@300&display=swap" rel="stylesheet"/>
    <title></title>
        <style type="text/css">
            .auto-style1 {
                right: 1166px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="zoom:80%">
        <header>
            <div class="wrapper">
                 <asp:Image AlternateText="TuskLogo" CssClass="logo2" runat="server" ImageUrl="~/Images/new tusks.jpg"/>
            <asp:Label ID="lblMsaIsland" runat="server">Mombasa Island</asp:Label>
            <asp:Image AlternateText="TreeLogo" CssClass="logo3" runat="server" ImageUrl="~/Images/treelogo.png" />
            <div class="menu">
                <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
                <asp:Button ID="btnGallery" runat="server" Text="Gallery" />
            </div>
            </div>
        </header>
        <div style="float:left;height:auto;width:auto;display:inline-block;width:10%;margin-left:1%; position:fixed;border:solid;box-shadow:0 5px 15px rgba(0, 0, 0, 0.91);background-color:#ffffff;margin-top:12%">
            <p style="text-align:center; font-size:20px;">Filter By</p>
            <hr />
            <asp:CheckBoxList ID="cblFilter" runat="server" OnSelectedIndexChanged="cblFilter_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Hotels</asp:ListItem>
                <asp:ListItem>Restaurants</asp:ListItem>
                <asp:ListItem>Sites</asp:ListItem>
                <asp:ListItem>Beaches</asp:ListItem>
                <asp:ListItem>Markets/Malls</asp:ListItem>
                <asp:ListItem>Misc</asp:ListItem>
            </asp:CheckBoxList>
            </div>
            <div id="rblHotelsBox" runat="server" style="float:left;display:inline-block;margin-left:11.5%;height:auto;width:auto;position:fixed;border:solid;box-shadow:0 5px 15px rgba(0,0,0,0.91);margin-top:15.5%;background-color:#ffffff;">
                <asp:RadioButtonList ID="rblHotels" runat="server" OnSelectedIndexChanged="rblHotels_SelectedIndexChanged" AutoPostBack="true" Visible="false">
                <asp:ListItem>Travellers</asp:ListItem>
                <asp:ListItem>Severin</asp:ListItem>
                <asp:ListItem>Sarova</asp:ListItem>
                <asp:ListItem>EnglishPoint</asp:ListItem>
            </asp:RadioButtonList>
            </div>
        <div id="DImages" runat="server" style="float:left;height:auto;width:auto;Border:solid;margin-left:18%;margin-right:10%;display:inline;margin-top:12%">

        </div>
        
    </form>
</body>
</html>
