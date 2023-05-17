<%@ Page Title="" Language="C#" MasterPageFile="~/Galaxy.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Galaxy.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Master.css" rel="stylesheet" type="text/css" />
    <link href="about.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="about-hero">
            
        </div>
        <div class="about-title">
            <h2>ABOUT US</h2>
            <div class="line"></div>
        </div>
        <div class="about-content">
            <p class="content">
                Founded in 2023, GALAXY is the largest and best-known cinema chain in the Kenya and East Africa.
                Since then, the world-famous GALAXY Nairobi Cinemax has hosted hundreds of East Africa's biggest
                film premieres and is now the first Dolby Cinema™ in Africa.
           </p>
           <p class="content">
                Bryan Mureithi in Nairobi saw the first GALAXY cinema open in 2023, and established the brand as
                not only somewhere to watch films, but somewhere to experience them too. Iconic art deco architecture
                and the very latest technology became synonymous with GALAXY where you didn’t just go to see a film, you went to the cinema.
           </p>
           <p class="content">
               Today we’re owned by Century Theatres, the largest movie exhibition company in Afrca, and our passion for
               film and the whole cinema experience is so deep-rooted that it is embodied in everything we do. 
           </p>

            <div class="about-images">
                <img src="images/cinema1.jpg" class="abt-img" />
                <img src="images/cinema2.jpg" class="abt-img" />
            </div>
            <p class="content">
            We’re determined to give every guest a great experience every time they visit, and so continuously strive to innovate
            and improve our hospitality and services.
            </p>
            <p class="content">
            We’ve always been at the forefront of cinematic experiences. Our iSense, Dolby and IMAX screens and sound technology offer
            extraordinary cinema viewing. 
            </p>
            <p class="content">
            We have two cinema membership schemes for our guests today. myGALAXY, our free-to-join membership scheme, allows members to
            enjoy a personalised experience, and a host of exclusive offers, rewards and content.
            </p>
            <p class="content">
            We also offer so much more than popcorn and soft drinks. We now have Java Coffee in many of our cinemas, a superb cocktail
            lounge called Oscar’s Bar at some sites and Galaxy Cinemax, which offers the ultimate in luxury cinema. 
            </p>
            <p class="content">
            We pride ourselves in delivering the very best cinema experience, cutting-edge technology and the widest choice of experiences.
            While we’re known for showing blockbuster films, we also host screenings of the world’s best live events. Dance, theatre, music,
            live sports, gaming and cultural events.
            </p >
        </div>
    </section>
</asp:Content>
