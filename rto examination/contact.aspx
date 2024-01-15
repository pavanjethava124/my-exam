<%@ Page Title="" Language="C#" MasterPageFile="~/client.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="rto_examination.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        width: 200px;
    }
    .auto-style7 {
        width: 200px;
        height: 58px;
    }
    .auto-style8 {
        height: 58px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <h2 style="background:#1E90FF; color:black; padding:20px; margin:auto; ">Contact us</h2><br />
<i class="fa fa-envelope" style="font-size:87px;color:orange"></i>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Write to us:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">For any query regarding this website, please contact the Web Information Manager. :<br />
<table class="auto-style5">
    <tr>
        <td class="auto-style6">Your Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Email Address</td>
        <td> <span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
            <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter proper email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </span></td>
    </tr>
    <tr>
        <td class="auto-style6">Mobile Number</td>
        <td> <span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
            <asp:TextBox ID="TextBox3" runat="server" Width="220px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter mobile no" ForeColor="Red"></asp:RequiredFieldValidator>
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Message</td>
        <td class="auto-style8"> <span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
            <asp:TextBox ID="TextBox4" runat="server" Height="48px" TextMode="MultiLine" Width="220px"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter you want to send a message" ForeColor="Red"></asp:RequiredFieldValidator>
    </span>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Submit" Width="87px" />
        </td>
    </tr>
</table>
<br />
    <asp:Label ID="Label1" runat="server" ForeColor="#0000CC"></asp:Label>
    <br />
    </span>
    <br />

</asp:Content>
