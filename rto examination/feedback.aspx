<%@ Page Title="" Language="C#" MasterPageFile="~/client.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="rto_examination.feedback" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <br />
    <br />
    <style>
       

        .starempty {
    background-image: url(image/stars/starempty.png);
    width: 50px;
    height: 50px;
}

.starfilled {
    background-image: url(image/stars/starfilled.png);
    width: 50px;
    height: 50px;
}

.starwaiting {
    background-image: url(image/stars/starwaiting.png);
    width: 50px;
    height: 50px;
}
    .auto-style7 {
        width: 437px;
    }
        .auto-style8 {
            width: 228px;
            height: 58px;
        }
        .auto-style9 {
            width: 437px;
            height: 58px;
        }
    </style>
   
    <br />
    <br />
     <h2 style="background:#1E90FF; color:black; padding:20px; margin:auto; ">Feedback</h2><br />
    <br />
    <table border="2" align="center"  style="border-style: solid; border-width: 1px; background-color: #FF9966" class="auto-style6">
        <tr>
            <td class="auto-style5">Name</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="306px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Email</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="306px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter proper email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 228px">Phone</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="305px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid number" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 228px">City</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="306px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter city" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 228px">Rating</td>
            <td class="auto-style7">
                &nbsp;<cc1:rating ID="Rating1" runat="server" MaxRating="5"  CurrentRating="1" StarCssClass="starempty" FilledStarCssClass="starfilled" WaitingStarCssClass="starwaiting" EmptyStarCssClass="starempty" OnChanged="Rating1_Changed" AutoPostBack="true">
                        </cc1:rating>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
              

            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 23px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

   </asp:Content>
