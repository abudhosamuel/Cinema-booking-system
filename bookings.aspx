<%@ Page Title="" Language="C#" MasterPageFile="~/Galaxy.Master" AutoEventWireup="true" CodeBehind="bookings.aspx.cs" Inherits="Galaxy.bookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
            
    
    <link href="book.css" rel="stylesheet" type="text/css" />
    
            
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form">
    
    <h1>Movie Ticket Booking</h1>
    
        <label for="movie">Select a movie:</label>
        <asp:DropDownList ID="ddlMovies" CssClass="input" runat="server" DataSourceID="SqlDataSource1" DataTextField="MovieName" DataValueField="MovieName"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:galaxycinemaxConnectionString %>" SelectCommand="SELECT [MovieName] FROM [TblMovies]"></asp:SqlDataSource>
        <br>
        <label for="tickets">Number of tickets:</label>
        <asp:TextBox ID="txtTickets" type="number" CssClass="input" runat="server"></asp:TextBox>
        <label for="name">Name:</label>
        <asp:TextBox ID="txtName" CssClass="input" runat="server"></asp:TextBox>        
        <label for="email">Email:</label>
        <asp:TextBox ID="txtEmail" type="email" CssClass="input" runat="server"></asp:TextBox>        
        <label for="phone">Phone:</label>
        <asp:TextBox ID="txtPhone" CssClass="input" runat="server"></asp:TextBox>
        <label for="movie">Prices:</label>
        <asp:DropDownList ID="ddlPrice" CssClass="input" runat="server">
            <asp:ListItem>1000</asp:ListItem>
            <asp:ListItem>1500</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="btnSubmit" CssClass="btn-register" runat="server" Text="Book Now" OnClick="btnSubmit_Click" />
        
     
        </div>
   

</asp:Content>
