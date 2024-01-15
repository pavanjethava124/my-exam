<%@ Page Title="" Language="C#" MasterPageFile="~/client.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="rto_examination.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="image/css/register.css" rel="stylesheet" />
    <script>

    </script>
    <section class="h-100 bg-dark">
        <form class// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()needs-validation" novalidate autocomplete="off">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Registration form</h3>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example8">Full name according adhar card</label>
                    <input type="text" id="form3Example8" class="form-control form-control-lg"  required=""/>
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example8">Phone number</label>
                  <input type="text" id="form3Example8" class="form-control form-control-lg"  required=""/>
                </div>
  

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example8">Address</label>
                    <input type="text" id="form3Example8" class="form-control form-control-lg" />
                </div>

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="femaleGender"
                      value="option1" />
                    <label class="form-check-label" for="femaleGender">Male</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="maleGender"
                      value="option2" />
                    <label class="form-check-label" for="maleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0">
                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="otherGender"
                      value="option3" />
                    <label class="form-check-label" for="otherGender">Other</label>
                  </div>

                </div>

                <div class="row">
                  <div class="col-md-6 mb-4">

                    <select class="select">
                      <option value="1">State</option>
                      <option value="2">Gujarat</option>
                      <option value="3">Rajasthan</option>
                      <option value="4">Maharastra</option>
                    </select>

                  </div>
                  <div class="col-md-6 mb-4">

                    <select class="select">
                      <option value="1">City</option>
                      <option value="2">Junagadh</option>
                      <option value="3">Jaipur</option>
                      <option value="4">Pune</option>
                    </select>

                  </div>
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example9">DOB</label>
                    <input type="text" id="form3Example9" class="form-control form-control-lg"  required=""/>
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example90">Pincode</label>
                    <input type="text" id="form3Example90" class="form-control form-control-lg"  required=""/>
                </div>
                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example97">Email ID</label>
                  <input type="text" id="form3Example97" class="form-control form-control-lg"  required="email"/>

                </div>
                   <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example99">Password</label>
                       <input type="password" id="form3Example99" class="form-control form-control-lg" />
                  
                </div>
                   <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example99">Confirm password</label>
                       <input type="password" id="form3Example99" class="form-control form-control-lg" />
                  
                </div>

                <div class="d-flex justify-content-end pt-3">
                  <button type="button" class="btn btn-light btn-lg">Reset all</button>
                  <button type="button" class="btn btn-warning btn-lg ms-2">Submit form</button>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
        </section>
</asp:Content>
