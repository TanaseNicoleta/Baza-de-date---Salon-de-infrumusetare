<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clienti.aspx.cs" Inherits="WebApplication2.Clienti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clienti</title>
    <style>
        body {
            font-size: 18px;
        }

        #label-wrapper {
            color: brown;
            font-size: 25px;
            font-weight: bold;
            margin: 50px 0;
        }

        #Label7 {
            display: inline-block;
            margin-bottom: 20px;
        }

        input {
            margin-bottom: 15px;
            height: 22px;
        }

        #addForm {
            float: right;
            margin-left: 40px;
        }

        #form1{
            margin: 0 auto;
            width: 80%;
        }

        #addBtn {
            background-color: antiquewhite;
            border: 1px brown solid;
            height: 40px;
            margin: 20px 0;
        }

        #GridView1 {
            float: left;
            margin: 40px;
        }

        #flex-wrapper {
            display: flex;
            justify-content: center;
        }

        #Label8,
        #DropDownList1 {
            margin-left: 100px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="label-wrapper" align="center">
            <asp:Label ID="Label6" runat="server" Text="Label">Clienti</asp:Label>
        </div>

        <div>
        <asp:Label ID="Label8" runat="server" Text="Alege un tip de grafic" Width="340px"></asp:Label>
        </div>
        <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="24px" Width="340px">
            <asp:ListItem>Alege...</asp:ListItem>
            <asp:ListItem>Pie</asp:ListItem>
            <asp:ListItem>Bare</asp:ListItem>
        </asp:DropDownList>
        </div>

        <div id="flex-wrapper">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="nume" HeaderText="nume" SortExpression="nume" />
                <asp:BoundField DataField="prenume" HeaderText="prenume" SortExpression="prenume" />
                <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="varsta" HeaderText="varsta" SortExpression="varsta" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Clienti] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Clienti] ([nume], [prenume], [telefon], [email], [varsta]) VALUES (@nume, @prenume, @telefon, @email, @varsta)" SelectCommand="SELECT [Id], [nume], [prenume], [telefon], [email], [varsta] FROM [Clienti]" UpdateCommand="UPDATE [Clienti] SET [nume] = @nume, [prenume] = @prenume, [telefon] = @telefon, [email] = @email, [varsta] = @varsta WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nume" Type="String" />
                <asp:Parameter Name="prenume" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="varsta" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nume" Type="String" />
                <asp:Parameter Name="prenume" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="varsta" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div id="addForm">
        <div align="center">
            <asp:Label ID="Label7" runat="server" Text="Label">Adauga un client</asp:Label>
        </div>
        <div>
        <asp:Label ID="Label1" runat="server" Text="Nume"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="nume" runat="server" Width="340px"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label2" runat="server" Text="Prenume"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="prenume" runat="server" Width="340px"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label3" runat="server" Text="Telefon"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="telefon" runat="server" Width="340px"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="email" runat="server" Width="340px"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label5" runat="server" Text="Varsta"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="varsta" runat="server" Width="340px"></asp:TextBox>
        </div>
        <div align="center">
        <asp:Button ID="addBtn" runat="server" Text="Adaugare" OnClick="addBtn_Click" Width="340px"/>
        </div>
        </div>
       </div>

    </form>
</body>
</html>
