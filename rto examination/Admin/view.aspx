<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="rto_examination.Admin.view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
            Select a question paper to preview<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="testlist" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype" OnSelectedIndexChanged="testlist_SelectedIndexChanged"> 
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:mycon %>"
                SelectCommand="SELECT DISTINCT [settype] FROM [question] ORDER BY [settype]"></asp:SqlDataSource>
            <asp:HiddenField ID="HiddenField1" runat="server" />
          <div class="col-md-8 col-md-offset-2">
          <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" GridLines="None" CellSpacing="1" >
              <Columns>
                  <asp:BoundField DataField="qid" HeaderText="qid" SortExpression="qid" />
                  <asp:BoundField HeaderText="Questions" DataField="Questions" SortExpression="Questions" />
                  <asp:BoundField DataField="Settype" HeaderText="Settype" SortExpression="Settype" />
                  <asp:TemplateField HeaderText="image" SortExpression="image">
                 <ItemTemplate>
                     <asp:Image ID="Image2" runat="server" Height="149px" ImageUrl='<%# Bind("image") %>' Width="161px" />
                 </ItemTemplate>
             </asp:TemplateField>
                 <asp:BoundField DataField="qA" HeaderText="qA" SortExpression="qA" />
                  <asp:BoundField DataField="qB" HeaderText="qB" SortExpression="qB" />
                  <asp:BoundField DataField="qC" HeaderText="qC" SortExpression="qC" />
                  <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
              </Columns> 
              <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
              <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
              <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
              <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#594B9C" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#33276A" />
          </asp:GridView>
          
           </div>
</asp:Content>
