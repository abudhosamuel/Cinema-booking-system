<%@ Page Title="" Language="C#" MasterPageFile="~/Galaxy.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Galaxy.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="register.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="reg-container">
            <img src="images/register3.jpg" class="reg-img" />
            <div class="reg">
                <h2 class="reg-title">SIGN UP TO GALAXY</h2>
               <div class="reg-details">

                   <asp:Label ID="Label1" runat="server" class="label" Text="ID Number" ></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCustID" ErrorMessage="ID Number required" ForeColor="Red">*</asp:RequiredFieldValidator>

                   &nbsp;<asp:TextBox ID="txtCustID" CssClass="input" runat="server" placeholder="ID Number"></asp:TextBox>

                   <asp:Label ID="Label2" runat="server" CssClass="label"  Text="Email"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email required" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <asp:TextBox ID="txtEmail" CssClass="input" type="email" runat="server" placeholder="Email"></asp:TextBox>
                                      
                   <asp:Label ID="Label3" runat="server" CssClass="label" Text="First Name"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFname" ErrorMessage="First Name required" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <asp:TextBox ID="txtFname" CssClass="input" runat="server" placeholder="First Name" OnTextChanged="txtFname_TextChanged"></asp:TextBox>
                                      
                   <asp:Label ID="Label4" runat="server" CssClass="label" Text="Last Name"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLname" ErrorMessage="Email required" ForeColor="Red">*</asp:RequiredFieldValidator>

                   <asp:TextBox ID="txtLname" CssClass="input" runat="server" placeholder="Last Name"></asp:TextBox>
                                      
                   <br />
                                      
                   <asp:Label ID="Label5" runat="server" CssClass="label" Text="Date of Birth"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth required" ForeColor="Red">*</asp:RequiredFieldValidator>  
                   <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDob" ErrorMessage="You must be at least 18 years old to register" ForeColor="Red" MaximumValue="08/05/2005" MinimumValue="08/05/1953" Type="Date">*</asp:RangeValidator>
                   <asp:TextBox ID="txtDob" CssClass="input" placeholder="dd/mm/yy" type="date" runat="server"></asp:TextBox>
                   
                                                                 
                                          
                   <asp:Label ID="Label6" runat="server" CssClass="label" Text="Address"></asp:Label>
                   <asp:TextBox ID="txtAddress" CssClass="input" runat="server" placeholder="Address"></asp:TextBox>
                                                    
                   <asp:Label ID="Label7" runat="server" CssClass="label" Text="Password"></asp:Label>
                   <div class="passwd">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password required" ForeColor="Red">*</asp:RequiredFieldValidator>

                       <asp:TextBox ID="txtPass" type="password" CssClass="input" runat="server" OnTextChanged="txtPass_TextChanged"></asp:TextBox>
                   <i class="icon bi bi-eye-slash" id="togglePassword" onclick="togglePasswordVisibility()" ></i>
                   </div>

                   <asp:Label ID="Label8" runat="server" CssClass="label" Text="Confirm Password"></asp:Label>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCpass" ErrorMessage="Confirm Password required" ForeColor="Red">*</asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCpass" ErrorMessage="password and confirm passwords do not match" ForeColor="Red">*</asp:CompareValidator>
                   <asp:TextBox ID="txtCpass" type="password" CssClass="input" runat="server"></asp:TextBox>
                   
               
                   <asp:Label ID="LblStatus" runat="server" Text="Label"></asp:Label>
                  
                   <br />
                  
                   <asp:Button ID="BtnRegister" CssClass="btn-register" runat="server" OnClick="BtnRegister_Click" Text="Sign Up" />
                               

                  
                   <br />
                   

                   <br />

                  <div class="log">
                      <div>
                      <span>Already Signed In?</span><a href="login.aspx">Log In</a>
                      </div>
                  </div>
               </div>
            </div>
        </div>
    </section>
    <!-- used to ensure the icon at the password is functional -->
    <script>
        function togglePasswordVisibility() {
            var password = document.getElementById("<%=txtPass.ClientID %>");
            var icon = document.getElementById("togglePassword");
            if (password.type === "password") {
                password.type = "text";
                icon.classList.remove("bi-eye-slash");
                icon.classList.add("bi-eye");
            } else {
                password.type = "password";
                icon.classList.remove("bi-eye");
                icon.classList.add("bi-eye-slash");
            }
        }
    </script>

</asp:Content>
