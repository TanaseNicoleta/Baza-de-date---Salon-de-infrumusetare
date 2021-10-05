<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form1.aspx.cs" Inherits="WebApplication2.form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestiune programari</title>
    <style>
        #label-wrapper {
            color: brown;
            font-size: 25px;
            font-weight: bold;
            margin: 50px 0;
        }

        #btnCLienti,
        #btnProgramari{
            background-color: antiquewhite;
            border: 1px brown solid;
            margin: 0 50px;
            height: 50px;
            width: 250px;
        }
        #emailSelect {
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="label-wrapper" align="center">
            <asp:Label ID="Label1" runat="server" Text="Label">Gestiunea programarilor unui salon de infrumusetare</asp:Label>
        </div>

        <div align="center">
            <asp:Button ID="btnCLienti" runat="server" Text="Clienti" OnClick="btnCLienti_Click" />
            <asp:Button ID="btnProgramari" runat="server" Text="Programari" OnClick="btnProgramari_Click" />
        </div>
        <div align="center"id="emailSelect">
        <asp:Label ID="Label2" runat="server" Text="Afisati programarile clientului selectat dupa email:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="btnEmailSelect" runat="server" Text="Afiseaza" />
        </div>
    </form>
</body>
</html>
