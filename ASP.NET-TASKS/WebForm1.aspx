<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASP.NET_TASKS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Login Form</h2>
             
            
                    <div class="mb-3">
                        <label for="exampleInputEmail1"  class="form-label">Email address</label>
                        <input  runat="server" type="email" class="form-control bg-info bg-opacity-10 border border-primary" id="email" aria-describedby="emailHelp" >
                                      <asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Email Please" CssClass="error" ControlToValidate="email" ValidationGroup="login">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="your email should contain @" ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+).\w+([-.]\w+)*" CssClass="error" ControlToValidate="email">*</asp:RegularExpressionValidator>

                        </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input  runat="server" type="password" class="form-control bg-info bg-opacity-10 border border-primary" id="pass">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Password Please" CssClass="error" ControlToValidate="pass" ValidationGroup="login">*</asp:RequiredFieldValidator>

                    </div>
                    <p class="small"><a class="text-primary" href="forget-password.html">Forgot password?</a></p>
                    <div class="d-grid">
           
                        <asp:Button ID="Button2" class="btn btn-primary" type="submit" runat="server" Text="Button" ValidationGroup="login" OnClick="Button2_Click1" />

                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" ValidationGroup="login" />
                    </div>

                <div class="mt-3">
                    <p class="mb-0  text-center">Don't have an account? <a href="signup.html"
                            class="text-primary fw-bold">Sign
                            Up</a></p>
                </div>
            </div>
        </div>
<%--    ---------------------------------------------------------------------------------------%>

    <section class="vh-100 bg-image">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

             


                <div class="form-outline mb-4">
                  <input  runat="server" type="email" id="email1" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter your email please" CssClass="error" ValidationGroup="signup" ControlToValidate="email1">*</asp:RequiredFieldValidator>


                <div class="form-outline mb-4">
                  <input  runat="server" type="password" id="passs" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cg">Password</label>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="fill yoyr password" CssClass="error" ControlToValidate="passs" ValidationGroup="signup">*</asp:RequiredFieldValidator>


                <div class="form-outline mb-4">
                  <input  runat="server" type="password" id="rep" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cdg">Repeat your password</label>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="fill your password" CssClass="error" ControlToValidate="rep" ValidationGroup="signup">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password not match" CssClass="error" ControlToValidate="rep" ControlToCompare="passs" ValidationGroup="signup">*</asp:CompareValidator>

               
                <div class="d-flex justify-content-center">
                    <asp:Button  class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" runat="server" Text="Button" ValidationGroup="signup" />
                 <%-- <button type="button"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>--%>

                </div>
                                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" CssClass="error" ValidationGroup="signup" />
                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="#!"
                    class="fw-bold text-body"><u>Login here</u></a></p>

      

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
