<%@ Page Title="" Language="C#" MasterPageFile="~/client.Master" AutoEventWireup="true" CodeBehind="extra.aspx.cs" Inherits="rto_examination.extra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            background-color: #FFCC99;
        }
        .auto-style6 {
            width: 228px;
        }
        .auto-style7 {
            width: 228px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
    </style>
    <p>
        Register Here:</p>
    <table class="auto-style5">
        <tr>
            <td class="auto-style6">Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Captcha</td>
            <td>
                <cap:captchacontrol ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="Yellow" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="46px" Width="200px" />
<br />
                <asp:TextBox ID="TextBox2" runat="server" Width="189px"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
    <div>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
    </div>
</asp:Content>
