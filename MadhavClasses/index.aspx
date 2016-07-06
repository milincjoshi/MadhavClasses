<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MadhavClasses.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="http://s.mlcdn.co/animate.css" />
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("#language_text").addClass("animated bounceInRight");
            $("#welcome_image").addClass("animated bounceInLeft");
        });
        $(function() {
          $('a[href*=#]:not([href=#])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
              var target = $(this.hash);
              target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
              if (target.length) {
                $('html,body').animate({
                  scrollTop: target.offset().top
                }, 1000);
                return false;
              }
            }
          });
        });
    </script>
  <style>
    @keyframes example {
        0%   {margin-top: -2%;}
        50%  {margin-top: -5%;}
        100% {margin-top: -2%;}
    }
    .continous_bounce{
        display: inline-block;
        animation-name: example;
        animation-duration: 2s;
        animation-iteration-count: infinite;
    }

  </style>
   
</asp:Content>
<asp:Content CssClass="height100 margin-5" ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <section style="background-color:#757575 !important; color:white; margin-top:-5% !important;"  class="height100">
        <div class="col-lg-12 height100 center_element">
            <div id="welcome_image" class="col-lg-8">
                <img height="300" width="300" src="Images/namaste.jpg" class="img-circle col-lg-offset-2" />
            </div>
            <div id="language_text" class="col-lg-4 fontSize4em">
                <span class="col-lg-12">संस्कृतम्</span>
                <span class="col-lg-12">हिंदी</span>
                <span class="col-lg-12">ગુજરાતી</span>
                <span class="col-lg-12">English</span>
            </div>
        </div>
        <div style="margin-top:-2%;" class="col-lg-12 fontSize2em continous_bounce">
            <a href="#icon_text1" style="text-decoration:none;color:white;">
                <span class="glyphicon glyphicon-menu-down text-center center-block"></span>
            </a>
        </div>

    </section>
     <section id="icon_text1" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center center-block border margin1">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12  colorBluishMaterialBG colorGreyMaterialFG border">
             <div class="col-lg-5 col-md-3 col-sm-12 col-xs-12 padding5 border ">
                 <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border " src="images/openbook.png" />
             </div>
             <div class="col-lg-7 padding10 margin1 img-rounded border">
                 <p class="fontSize2em  border margin5">
                     Like the tradition goes, we teach students with books.
                 </p>
             </div>
         </div>
         
         <div class="col-lg-12  colorGreenMaterialBG colorGreyMaterialFG margin1 border">
             <div class="col-lg-7 padding10 margin1 img-rounded border">
                 <p class="fontSize2em border margin5">However we also have one foot in Modern Technology.</p>
             </div>
             <div class="col-lg-5  padding5 margin5  border">
                 <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border"  src="images/computer.png" />
             </div>
             
         </div>
         <div class="col-lg-12  colorRedMaterialBG  colorGreyMaterialFG margin1 border">
             <div class="col-lg-5  padding5  border">
                 <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border"  src="images/mobile.png" />
             </div>
             <div class="col-lg-7  padding10 margin1  img-rounded border">
                 <p class="fontSize2em border margin5">We try our best to keep up with the Technology.</p>
             </div>
         </div>
     </section><!--End 3 Row Container Images-->

     <!--Founder-->
     <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 margin5">
        <p class="col-lg-9 col-md-9 col-sm-12 col-xs-12 padding5 fontSizeOneHalfem">
             Founded by
            <span class="fontRoboto"><strong><i><a target="_blank" href="https://www.facebook.com/mahendra.joshi.9022">Mahendra Joshi</a></i></strong></span>
            , its been almost 11 years at Silver Point, Bhatar Road, Surat since Madhav Classes has started its journey.
            Since then, Mahendra Joshi has never looked back. Teaching Languages mainly Sanskrit, Hindi, Gujarati to kids for Grade 8 to 12,
            Madhav Classes has proved that it excels at every point. Students who have been a part of Madhav Classes has made history in Board Results, placing themselves
            in the top tier every time. Madhav Classes has constantly expanded its reach in Surat.
        </p>
        <img class="col-lg-3 col-md-3 col-sm-12 col-xs-12 text-center center-block img-responsize border img-circle" src="images/MahendraJoshi.jpg" />
      </section>
      <!--End Founder-->
    
</asp:Content>
