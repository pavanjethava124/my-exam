<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="rto_examination.Admin.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1" style="background:black;color:aqua;"><em>Admin</em></h1>
     
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/logout.aspx">LinkButton</asp:LinkButton>
        </div>
    </form>
</body>
</html>
