<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Programari.aspx.cs" Inherits="WebApplication2.Programari" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Programari</title>
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
            margin-left: 40px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="label-wrapper" align="center">
            <asp:Label ID="Label6" runat="server" Text="Label">Programari</asp:Label>
        </div>
        <div id="flex-wrapper">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Id_client" HeaderText="Id_client" SortExpression="Id_client" />
                <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" />
                <asp:BoundField DataField="ora" HeaderText="ora" SortExpression="ora" />
                <asp:BoundField DataField="serviciu" HeaderText="serviciu" SortExpression="serviciu" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Programari] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Programari] ([Id_client], [data], [ora], [serviciu]) VALUES (@Id_client, @data, @ora, @serviciu)" SelectCommand="SELECT [Id], [Id_client], [data], [ora], [serviciu] FROM [Programari]" UpdateCommand="UPDATE [Programari] SET [Id_client] = @Id_client, [data] = @data, [ora] = @ora, [serviciu] = @serviciu WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id_client" Type="Int32" />
                <asp:Parameter DbType="Date" Name="data" />
                <asp:Parameter DbType="Time" Name="ora" />
                <asp:Parameter Name="serviciu" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id_client" Type="Int32" />
                <asp:Parameter DbType="Date" Name="data" />
                <asp:Parameter DbType="Time" Name="ora" />
                <asp:Parameter Name="serviciu" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <div id="addForm">
        <div align="center">
            <asp:Label ID="Label7" runat="server" Text="Label">Adauga Programare</asp:Label>
        </div>
        <div>
        <asp:Label ID="Label4" runat="server" Text="Id_client"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="id_client" runat="server" Width="340px"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label1" runat="server" Text="Data"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="data" runat="server" Width="340px"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label2" runat="server" Text="Ora"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="ora" runat="server" Width="340px"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label3" runat="server" Text="Serviciu"></asp:Label>
        </div>
        <div align="center">
        <asp:TextBox ID="serviciu" runat="server" Width="340px"></asp:TextBox>
        </div>        
        <div align="center">
        <asp:Button ID="addBtn" runat="server" Text="Adaugare" Width="340px" OnClick="addBtn_Click"/>
        </div>
        </div>
       </div>
    </form>
</body>
</html>
