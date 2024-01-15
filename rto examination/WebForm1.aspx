<%@ Page Title="" Language="C#" MasterPageFile="~/client.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="rto_examination.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <div>

    </div>
    <br />
      <div id="myCarousel" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>


     <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" img src="image/echallan-banner.jpg"  alt="First slide"  width="100%">
        </div>


        <div class="item">
          <img class="second-slide" src="image/banner-mparivahan-1.png" alt="Second slide" width="100%" >
        </div>


        <div class="item">
          <img class="third-slide"src="image/full.jpg" alt="Third slide" width="100%">
        </div>
        <div class="item">
          <img class="fourth-slide" src="image/banner-vltd-1.png"   alt="fourth slide" width="100%">
        </div>
         <br />
         <br />
         <table border="0" class="nav-justified">
             <tr>
                 <td>&nbsp;</td>
             </tr>
         </table>
      
      </div>


      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
          <br />
          <h2 class="center-position top-space-25" style="box-sizing: border-box; font-family: &quot;Open; Sans&quot; font-weight: 600; line-height: 1.5; color: rgb(0, 0, 0); margin-top: 25px !important; margin-bottom: 0.5rem; font-size: 26px; text-align: center !important; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">License Related Services</h2>
    </div><!-- /.carousel -->
        </div>

</asp:Content>

