<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="rto_examination.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            background: skyblue;
            font-weight: bold;
            color: white;
            border-radius: 0px;
            cursor: pointer;
            padding: 10px 5px;
            margin: 10px 5px;
        }

        .error {
            color: red;
            font-weight: bold;
            font-size: small;
        }
    </style>
    </style>
      <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>
      <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
      <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link href="image/css/register.css" rel="stylesheet" />
</head>
<body className='snippet-body'>
   
   <!--     <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'> !-->
    
    
        <%--Preview Text and Image--%>
        <script type="text/javascript">

            

            //forEmail
            $(document).ready(function () {
                $('#<%= txtEmail.ClientID %>').on('keyup', function () {
                    var textBoxValue = $(this).val();
                    $('#lblEmail').text(textBoxValue);
                });
            });

         

            //forAddress
            $(document).ready(function () {
                $('#<%= txtAddress.ClientID %>').on('keyup', function () {
                    var textBoxValue = $(this).val();
<%--                    //$('#<%= lblAddress.ClientID %>').text(textBoxValue);--%>
                    $('#lblAdd').text(textBoxValue);
                });
            });

            </script>
     <script type="text/javascript">

         //for Name
         function Name() {
             var name = document.getElementById('<%= txtFullName.ClientID %>');
             var spanname = document.getElementById('txtNameError');
             var regex1 = /^[a-zA-Z\s]*$/;

             // Check if the Name is not empty
             if (name.value.trim() === '' || !regex1.test(name.value)) {
                 spanname.innerText = 'Please enter a valid Name';
             } else {
                 spanname.innerText = '';
             }
         }

         //for Email
         function Email() {

             var email = document.getElementById('<%= txtEmail.ClientID %>');
                var spmalEmail = document.getElementById('emailError');
                var regex2 = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

                // Check if the Email is not empty
                if (email.value.trim() === '' || !regex2.test(email.value)) {
                    spmalEmail.innerText = 'Please enter a valid Email';
                } else {
                    spmalEmail.innerText = '';
                }
            }

            //for Address
            function Address() {

             var Address = document.getElementById('<%= txtAddress.ClientID %>');
             var spanAddress = document.getElementById('AddressError');
             var regex4 = /^[a-zA-Z0-9\s.,#-]+$/;

             // Check if the Address is not empty
             if (Address.value.trim() === '' || !regex4.test(Address.value)) {
                 spanAddress.innerText = 'Please enter a Address name';
             } else {
                 spanAddress.innerText = '';
             }
         }
         $(".next").click(function () {
             // Validate before proceeding to the next step
             if (validateStep1()) {
                 var current_fs = $(this).parent();
                 var next_fs = $(this).parent().next();

                 // Add Class Active
                 $("#progressbar li").eq($("fieldset:visible").index(next_fs)).addClass("active");

                 // Show the next fieldset
                 next_fs.show();
                 // Hide the current fieldset with style
                 current_fs.animate({ opacity: 0 }, {
                     step: function (now) {
                         // For making fieldset appear animation
                         var opacity = 1 - now;

                         current_fs.css({
                             'display': 'none',
                             'position': 'relative'
                         });
                         next_fs.css({ 'opacity': opacity });
                     },
                     duration: 600
                 });
             }
         });

         $(".previous").click(function () {
             var current_fs = $(this).parent();
             var previous_fs = $(this).parent().prev();

             // Remove class active
             $("#progressbar li").eq($("fieldset:visible").index(current_fs)).removeClass("active");

             // Show the previous fieldset
             previous_fs.show();

             // Hide the current fieldset with style
             current_fs.animate({ opacity: 0 }, {
                 step: function (now) {
                     // For making fieldset appear animation
                     var opacity = 1 - now;

                     current_fs.css({
                         'display': 'none',
                         'position': 'relative'
                     });
                     previous_fs.css({ 'opacity': opacity });
                 },
                 duration: 600
             });
         });

            });

     </script>

<div class="container-fluid" id="grad1">
    <div class="row justify-content-center mt-0">
        <div class="col-11 col-sm-9 col-md-7 col-lg-6 text-center p-0 mt-3 mb-2">
            <div class="card px-0 pt-4 pb-0 mt-3 mb-3">
                <h2><strong>Sign Up Your User Account</strong></h2>
                <p>Fill all form field to go to next step</p>
                <div class="row">
                    <div class="col-md-12 mx-0">
                        <form id="msform" runat="server">
                            
                            <!-- progressbar -->
                            <ul id="progressbar">
                                <li class="active" id="account"><strong>Account</strong></li>
                                <li id="personal"><strong>Personal</strong></li>
                                <li id="payment"><strong>Payment</strong></li>
                                <li id="confirm"><strong>Finish</strong></li>
                            </ul>
                            <!-- fieldsets -->
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Personal Information</h2>
                                                <asp:TextBox ID="txtFullName" runat="server" placeholder="Full Name" onkeyup="Name()" ClientIDMode="Static" AutoPostBack="true" ></asp:TextBox>
                                                <asp:Label ID="lblnameCheck" runat="server"></asp:Label>
                                                <span id="CheckName"></span>
                                                <span id="txtNameError" class="error"></span>
                                                <br />
                                                <asp:TextBox ID="txtAddress" runat="server" placeholder="Address" onkeyup="Address()" ClientIDMode="Static" AutoPostBack="true" TextMode="MultiLine"></asp:TextBox>
                                                <span id="AddressError" class="error"></span>
                                                <br>
                                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" onkeyup="Email()" ClientIDMode="Static" AutoPostBack="true"></asp:TextBox>
                                                <span id="emailError" class="error"></span>
                                        
                                        <asp:FileUpload ID="fuSellerImg" runat="server" onchange="ImagePreview(this);" />
                                                         
                              </div>                               
                                <input type="button" name="next" class="next action-button" value="Next Step" /> </fieldset>
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Account Information</h2>
                                    <input type="email" name="email" placeholder="Email Id" required="email" runat="server"/>
                                    <input type="text" name="uname" placeholder="UserName" required="" runat="server"/>
                                    <input type="password" name="pwd" placeholder="Password" required="" runat="server"/>
                                    <input type="password" name="cpwd" placeholder="Confirm Password" required="" runat="server"/>
                                </div>
                               
                                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                                <input type="button" name="next" class="next action-button" value="Next Step"/>
                            </fieldset>
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title">Payment Information</h2>
                                    <div class="radio-group">
                                        <div class='radio' data-value="credit"><img src="https://i.imgur.com/XzOzVHZ.jpg" width="200px" height="100px"></div>
                                        <div class='radio' data-value="paypal"><img src="https://i.imgur.com/jXjwZlj.jpg" width="200px" height="100px"></div>
                                        <br>
                                    </div>
                                    <label class="pay">Card Holder Name*</label>
                                    <input type="text" name="holdername" placeholder=""/>
                                    <div class="row">
                                        <div class="col-9">
                                            <label class="pay">Card Number*</label>
                                            <input type="text" name="cardno" placeholder=""/>
                                        </div>
                                        <div class="col-3">
                                            <label class="pay">CVC*</label>
                                            <input type="password" name="cvcpwd" placeholder="***"/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-3">
                                            <label class="pay">Expiry Date*</label>
                                        </div>
                                        <div class="col-9">
                                            <select class="list-dt" id="month" name="expmonth">
                                                <option selected>Month</option>
                                                <option>January</option>
                                                <option>February</option>
                                                <option>March</option>
                                                <option>April</option>
                                                <option>May</option>
                                                <option>June</option>
                                                <option>July</option>
                                                <option>August</option>
                                                <option>September</option>
                                                <option>October</option>
                                                <option>November</option>
                                                <option>December</option>
                                            </select>
                                            <select class="list-dt" id="year" name="expyear">
                                                <option selected>Year</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                                <input type="button" name="make_payment" class="next action-button" value="Confirm"/>
                            </fieldset>
                            <fieldset>
                                <div class="form-card">
                                    <h2 class="fs-title text-center">Success !</h2>
                                    <br><br>
                                    <div class="row justify-content-center">
                                        <div class="col-3">
                                            <img src="https://img.icons8.com/color/96/000000/ok--v2.png" class="fit-image">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="row justify-content-center">
                                        <div class="col-7 text-center">
                                            <h5>You Have Successfully Signed Up</h5>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
   </form>
    <script type='text/javascript' src='#'></script>
                                <script type='text/javascript' src='#'></script>
                                <script type='text/javascript' src='#'></script>
    <script src="image/css/reg.js"></script>

</body>
</html>
