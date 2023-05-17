<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addmovie.aspx.cs" Inherits="Galaxy.addmovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dash">
   
    
      <div class="table_d">
    
             <table>
  <thead> 
    <tr>
      <th>Image</th>
      <th>Name</th>
      <th>Duration</th>
      <th>Year</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><asp:TextBox ID="txtImage" type="file" runat="server"></asp:TextBox></td>
      <td><asp:TextBox ID="txtmName" runat="server"></asp:TextBox></td>
      <td><asp:TextBox ID="txtDuration" runat="server"></asp:TextBox></td>
      <td><asp:TextBox ID="txtYear" runat="server"></asp:TextBox></td>
      <td><asp:Button ID="btnAdd" CssClass="mbutton" runat="server" Text="Add Movies" OnClick="btnAdd_Click" /></td>
      
    </tr>
  </tbody>
</table>
          </div>
        </div>
</asp:Content>
