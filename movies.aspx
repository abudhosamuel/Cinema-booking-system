<%@ Page Title="" Language="C#" MasterPageFile="~/Galaxy.Master" AutoEventWireup="true" CodeBehind="movies.aspx.cs" Inherits="Galaxy.movies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="movies.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="headings">
            <h2>All Movies</h2>
        </div>
         <div class="movies">
        <div class="movie-card">
            <img src="images/creed.jpg" class="movie-img"/>
            <h3>CREED III</h3>
            <div class="movie-card-details">
                <p>2023 </p>
                <div class="dot"></div>
                <p> Drama/Sport</p>
            </div>
            <div>
                <asp:LinkButton ID="LinkButton1" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
                
            </div>
        </div>
         <div class="movie-card">
            <img src="images/moana.jpg" class="movie-img"/>
            <h3>MOANA</h3>
            <div class="movie-card-details">
                <p>2016</p>
                <div class="dot"></div>
                <p>Animation</p>
            </div>
             <div>
                <asp:LinkButton ID="LinkButton2" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/babyDriver.jpg" class="movie-img"/>
            <h3>BABY DRIVER</h3>
            <div class="movie-card-details">
                <p>2017</p>
                <div class="dot"></div>
                <p>Action/Crime</p>
            </div>
             <div>
                <asp:LinkButton ID="LinkButton3" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/65.jpg" class="movie-img"/>
            <h3>65</h3>
            <div class="movie-card-details">
                <p>2023</p>
                <div class="dot"></div>
                <p>Action/Mystery</p>
            </div>
             <div>
               <asp:LinkButton ID="LinkButton4" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
         
        </div>

        <div class="movies">
        <div class="movie-card">
            <img src="images/antman2.jpg" class="movie-img"/>
            <h3>ANTMAN</h3>
            <div class="movie-card-details">
                <p>2023 </p>
                <div class="dot"></div>
                <p> Drama/Sport</p>
            </div>
            <div>
                <asp:LinkButton ID="LinkButton5" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/avatar.jpg" class="movie-img"/>
            <h3>AVATAR</h3>
            <div class="movie-card-details">
                <p>2016</p>
                <div class="dot"></div>
                <p>Animation</p>
            </div>
             <div>
                <asp:LinkButton ID="LinkButton6" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
                
            </div>
        </div>
         <div class="movie-card">
            <img src="images/evildead.jpg" class="movie-img"/>
            <h3>EVIL DEAD</h3>
            <div class="movie-card-details">
                <p>2017</p>
                <div class="dot"></div>
                <p>Action/Crime</p>
            </div>
             <div>
                <asp:LinkButton ID="LinkButton7" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/guardians.jpg" class="movie-img"/>
            <h3>GUARDIANS OF GALAXY</h3>
            <div class="movie-card-details">
                <p>2023</p>
                <div class="dot"></div>
                <p>Action/Mystery</p>
            </div>
             <div>
                <asp:LinkButton ID="LinkButton8" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
         
        </div>
        <div class ="movies">
            <div class="movie-card">
            <img src="images/johnWick.jpg" class="movie-img"/>
            <h3>JOHN WICK</h3>
            <div class="movie-card-details">
                <p>2023</p>
                <div class="dot"></div>
                <p>Action/Neo-noir</p>
            </div>
            <div>
               <asp:LinkButton ID="LinkButton9" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/air.jpg" class="movie-img"/>
            <h3>AIR</h3>
            <div class="movie-card-details">
                <p>2023</p>
                <div class="dot"></div>
                <p>Drama/Sci-fi</p>
            </div>
            <div>
               <asp:LinkButton ID="LinkButton10" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
            <div class="movie-card">
            <img src="images/knock.jpg" class="movie-img"/>
            <h4>KNOCK AT THE CABIN</h4>
            <div class="movie-card-details">
                <p>2023</p>
                <div class="dot"></div>
                <p>Action/Neo-noir</p>
            </div>
            <div>
                <asp:LinkButton ID="LinkButton11" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/tetris.jpg" class="movie-img"/>
            <h3>TETRIS</h3>
            <div class="movie-card-details">
                <p>2023</p>
                <div class="dot"></div>
                <p>Drama/Sci-fi</p>
            </div>
            <div>
                <asp:LinkButton ID="LinkButton12" Cssclass="bookk-btn" runat="server" PostBackUrl="~/bookings.aspx">Book Ticket</asp:LinkButton>
            </div>
        </div>

        </div>

    </section>
</asp:Content>
