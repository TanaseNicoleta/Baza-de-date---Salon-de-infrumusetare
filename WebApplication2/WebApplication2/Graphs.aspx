<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Graphs.aspx.cs" Inherits="WebApplication2.form2" %>

<%@ Register assembly="ZedGraph.Web" namespace="ZedGraph.Web" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grafice</title>
    <style>
        #btnBack {
            background-color: antiquewhite;
            border: 1px brown solid;
            height: 40px;
            padding: 0 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server">
        </cc1:ZedGraphWeb>
        <div>
        <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
