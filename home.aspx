<%@ Page Title="" Language="C#" MasterPageFile="~/Galaxy.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Galaxy.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="Master.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" u'
    
    >
    <div>
        
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="images/antman.jpg" class="caro d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>Antman and The Wasp</h5>
                <p>March 2023</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="images/fastxx.jpg" class="caro d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>Fast X</h5>
                <p>June 2023</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="images/ij.jpg" class="caro d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>Indiana Jones and the Dial of Destiny</h5>
                <p>June 2023</p>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
        <div id="Movie">
            <h2>Now Showing</h2>
            <div class="line"></div>
        </div>
        <div class="movies">
        <div class="movie-card">
            <img src="images/creed.jpg" class="movie-img"/>
            <h5>CREED III</h5>
            <div class="movie-card-details">
                <p>2023 </p>
                <div class="dot"></div>
                <p> Drama/Sport</p>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/moana.jpg" class="movie-img"/>
            <h5>MOANA</h5>
            <div class="movie-card-details">
                <p>2016</p>
                <div class="dot"></div>
                <p>Animation</p>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/babyDriver.jpg" class="movie-img"/>
            <h5>BABY DRIVER</h5>
            <div class="movie-card-details">
                <p>2017</p>
                <div class="dot"></div>
                <p>Action/Crime</p>
            </div>
        </div>
         <div class="movie-card">
            <img src="images/fastx.jpg" class="movie-img"/>
            <h5>FAST X</h5>
            <div class="movie-card-details">
                <p>2023</p>
                <div class="dot"></div>
                <p>Action/Mystery</p>
            </div>
        </div>
        </div>
        <section>
            <div>
                <div class="exper">
                    <div class="line"></div>
                    <div class="line2"></div>
                    <div class="line"></div>
                </div>
            </div>
            <div>
                <div class="text">
                    <h2>COME FOR THE MOVIES, STAY FOR THE EXPERIENCE!</h2>
                </div>
            </div>
        </section>
        <section>
            <div>

            </div>
        </section>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</asp:Content>
