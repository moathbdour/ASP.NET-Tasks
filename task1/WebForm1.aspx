<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br />
    <style>
        .mycontainer{
            display:flex;
            justify-content:center;
            margin:35px;
        }
    </style>
  <div class="mycontainer">
      <div class="w-25">
    <!-- Email input -->
  <div class="form-outline mb-4">
      <asp:TextBox  id="form2Example1" class="form-control"  runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="form2Example1"  runat="server" ErrorMessage="please input your email" ValidationGroup="groub1">*</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="form2Example1" runat="server" ValidationGroup="groub1" ErrorMessage="wrong email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
<%--    <input runat="server" type="email" />--%>
    <label class="form-label" for="form2Example1">Email address</label>
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
      <asp:TextBox   id="form2Example2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ControlToValidate="form2Example2" ValidationGroup="groub1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="please input password">*</asp:RequiredFieldValidator>
      <label class="form-label" for="form2Example2">Password</label>
  </div>

  <!-- 2 column grid layout for inline styling -->
  <div class="row mb-4">
    <div class="col d-flex justify-content-center">
      <!-- Checkbox -->
      <div class="form-check">

        <input class="form-check-input"  type="checkbox" value="" id="form2Example31" checked />
        <label class="form-check-label" for="form2Example31"> Remember me </label>
      </div>
    </div>

    <div class="col">
      <!-- Simple link -->
      <a href="#!">Forgot password?</a>
                  <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ValidationGroup="groub1" />

    </div>
  </div>

  <!-- Submit button -->
          <asp:Button ValidationGroup="groub1" class="btn btn-primary btn-block mb-4" ID="Button2" runat="server" Text="Sign in" OnClick="Button2_Click" />
  <!-- Register buttons -->
  <div class="text-center">
    <p>Not a member? <a href="#!">Register</a></p>
    <p>or sign up with:</p>
    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-facebook-f"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-google"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-twitter"></i>
    </button>

    <button type="button" class="btn btn-link btn-floating mx-1">
      <i class="fab fa-github"></i>
    </button>
  </div>
          </div>
      <div>
          <!-- Section: Design Block -->
<section class="text-center">
  <!-- Background image -->
  
  <!-- Background image -->

  <div class="card mx-4 mx-md-5 shadow-5-strong" style="
        margin-top: -100px;
        background: hsla(0, 0%, 100%, 0.8);
        backdrop-filter: blur(30px);
        ">
    <div class="card-body py-5 px-md-5">

      <div class="row d-flex justify-content-center">
        <div class="col-lg-8">
          <h2 class="fw-bold mb-5">Sign up now</h2>
         
            <!-- 2 column grid layout with text inputs for the first and last names -->
            <div class="row">
              <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <asp:TextBox  id="form3Example1" class="form-control"  runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="form3Example1" ValidationGroup="groub2" ID="RequiredFieldValidator3" runat="server" ErrorMessage="please fill thefirst name" Text="*"></asp:RequiredFieldValidator>
                  <label class="form-label" for="form3Example1">First name</label>
                </div>
              </div>
              <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <asp:TextBox id="form3Example2" class="form-control" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ControlToValidate="form3Example2" ID="RequiredFieldValidator4" ValidationGroup="groub2" runat="server" ErrorMessage="please fill the last name" Text="*"></asp:RequiredFieldValidator>

                  <label class="form-label" for="form3Example2">Last name</label>
                </div>
              </div>
            </div>

            <!-- Email input -->
            <div class="form-outline mb-4">

                <asp:TextBox id="form3Example3" class="form-control" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="form3Example3"  runat="server" ErrorMessage="please input your email" ValidationGroup="groub2">*</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="form3Example3" runat="server" ValidationGroup="groub2" ErrorMessage="wrong email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

              <label class="form-label" for="form3Example3">Email address</label>
            </div>

            <!-- Password input -->
            <div class="form-outline mb-4">
                <asp:TextBox id="form3Example4" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="form3Example4" ID="RequiredFieldValidator6" runat="server" ValidationGroup="groub2" ErrorMessage="please input password" Text="*"></asp:RequiredFieldValidator>
              <label class="form-label" for="form3Example41">Re-Enter Password</label>
                                <asp:TextBox id="form3Example41" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="form3Example41" ID="RequiredFieldValidator7" ValidationGroup="groub2" runat="server" ErrorMessage="please input password" Text="*"></asp:RequiredFieldValidator>

                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords don't match" ValidationGroup="groub2" Text="*" ControlToCompare="form3Example4" ControlToValidate="form3Example41" Operator="Equal"></asp:CompareValidator>

            </div>

            <!-- Checkbox -->
            <div class="form-check d-flex justify-content-center mb-4">
              <label class="form-check-label" for="form2Example33">
                Subscribe to our newsletter
              </label><br />
              <br />  <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="groub2" />
            </div>

            <!-- Submit button -->
                        <asp:Button ValidationGroup="groub2"  class="btn btn-primary btn-block mb-4" ID="Button3" runat="server" Text="Sign up" OnClick="Button3_Click" UseSubmitBehavior="False" />
           

           
         
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Section: Design Block -->
      </div>
      </div>
</asp:Content>
