<%@ Page Title="" Language="C#" MasterPageFile="~/Galaxy.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Galaxy.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="login.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
        <div class="reg-container">
            <img src="images/login5.jpg" class="reg-img" />
            <div class="reg">
                <h2 class="reg-title">LOG IN TO GALAXY</h2>
               <div class="reg-details">
                    <asp:Label ID="Label3" runat="server" CssClass="label" Text="ID Number"></asp:Label>
                   <asp:TextBox ID="txtId" runat="server" CssClass="input" placeholder="ID Number"></asp:TextBox>

                   <asp:Label ID="Label2" runat="server" CssClass="label" Text="Password"></asp:Label>
                   <div class="passwd">
                       <asp:TextBox ID="txtpass" type="password" CssClass="input" runat="server"></asp:TextBox>
                   <i class="icon bi bi-eye-slash" id="togglePassword" onclick="togglePasswordVisibility()"></i>
                   </div>

                   <asp:Button ID="btnLogin" class="btn-register" runat="server" Text="Log In" OnClick="Button1_Click" />
                  
                    <br />
                    <asp:Label ID="lblLogin" runat="server" Text="Label"></asp:Label>
                  
                  <div class="log">
                      <div>
                      <span>Don't have an account?</span><a href="register.aspx">Sign Up</a><br />
                      </div>
                      <div>
                          <a href="adminlog.aspx">Admin Login</a>
                      </div>
                  </div>
               </div>
            </div>
        </div>
    </section>

    <!-- script code to ensure the i con at the pass works -->
    <script>
        function togglePasswordVisibility() {
            var password = document.getElementById("<%=txtpass.ClientID %>");
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

