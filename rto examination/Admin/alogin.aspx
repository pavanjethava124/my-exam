<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alogin.aspx.cs" Inherits="rto_examination.Admin.alogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <link href="css/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <img src="images/login%20img/logo.png" class="logo" />
            
            <h1>Login Here</h1>
            <p>Email</p>
            <input type="email" id="text1" name="email" placeholder="Enter email" required="email" runat="server">  
            <p>Password</p>
            <input type="password" id="text2" name="pass"  placeholder="Enter Password" required="" runat="server" > 
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        
        </div>
    </form>
    </body>
</html>
