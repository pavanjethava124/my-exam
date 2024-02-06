<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="addque.aspx.cs" Inherits="rto_examination.Admin.addque" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-md-8 col-md-offset-2">
    <table>
    <tr>
        <td>Select<br />
        </td>
        <td><asp:DropDownList ID="testlist" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" Height="16px" OnSelectedIndexChanged="testlist_SelectedIndexChanged" Width="116px">
            </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="testname" runat="server" Visible="false" Height="27px" Width="169px"></asp:TextBox>
&nbsp;
            <asp:Button ID="ntest" runat="server" Height="33px" Text="New test" Width="83px" OnClick="Button3_Click" />
            <br />
            <br />
        </td>
    </tr>
        <tr>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:mycon %>"
                SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>
        </tr>
    <tr>
        <td>Add Question</td>
        <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="67px" Width="358px"></asp:TextBox>
    </td>
        &nbsp;&nbsp;<td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please add your question" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    </tr>
        
            <tr>
                <td class="auto-style2">Upload image</td>
                <td class="auto-style2"><asp:FileUpload ID="FileUpload1" runat="server" /></td>

            </tr>
  
    <tr>
        <td>Option A</td>
        <td><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>&nbsp;&nbsp;
         <td><asp:RadioButton ID="RadioButton1" runat="server" />&nbsp;&nbsp;&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="please enter option A" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>

    <tr>
        <td>Option B</td>
        <td><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;&nbsp;
         <td><asp:RadioButton ID="RadioButton2" runat="server" />&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="please enter option B" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>

    <tr>
        <td>Option C </td>
        <td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;&nbsp;
         <td><asp:RadioButton ID="RadioButton3" runat="server" />&nbsp;
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="please enter option C" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </td>
    </tr>
        <td><asp:Button ID="Button1" runat="server" Text="Add questions" CssClass="btn btn-success" OnClick="Button1_Click" /></td>
        <td><asp:Button ID="Button2" runat="server" Text="Button"  CssClass="btn btn-danger" OnClick="Button2_Click"/>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
</table>
    </div>
</asp:Content>
