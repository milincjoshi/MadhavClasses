<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MadhavClasses.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>


    </style>
</asp:Content>
<asp:Content CssClass="height100 margin-5" ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <section style="margin-top:-5% !important;"  class="height100 colorGreyMaterialBG">
        <div class="col-lg-12 height100 center_element">
            
            <div id="welcome_image" class="col-lg-8">
                <img height="300" width="300" src="Images/namaste.jpg" class="img-circle col-lg-offset-2" />
            </div>
            <div id="language_text" class="col-lg-4 fontSize4em">
                <span class="col-lg-12 ">संस्कृतम्</span>
                <span class="col-lg-12 ">हिंदी</span>
                <span class="col-lg-12 ">ગુજરાતી</span>
                <span class="col-lg-12 ">English</span>
            </div>
        </div>
        <div style="margin-top:-2%;" class="col-lg-12 fontSize2em continous_bounce">
            <a href="#icon_text1" style="text-decoration:none;color:black;">
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
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 padding5 fontSizeOneHalfem">
            <div class="col-lg-12" id="description">
                Founded by Mahendra Joshi, its been almost 11 years at Silver Point, Bhatar Road, Surat since Madhav Classes has started its journey.
                Since then, Mahendra Joshi has never looked back. Teaching Languages mainly Sanskrit, Hindi, Gujarati to kids for Grade 8 to 12,
                Madhav Classes has proved that it excels at every point. Students who have been a part of Madhav Classes has made history in Board Results, placing themselves
                in the top tier every time. Madhav Classes has constantly expanded its reach in Surat. 
            </div> 
        </div>
        <img class="col-lg-3 col-md-3 col-sm-12 col-xs-12 text-center center-block img-responsize border img-circle" src="images/MahendraJoshi.jpg" />
      </section>
      <!--End Founder-->
    

    <!--footer-->
    <footer class="footer fontSizeOneHalfem img-rounded col-lg-12 margin5 colorBlackBackground colorWhiteFront padding5" style="">
        <div class="col-lg-4 pull-left" >
            © 2016 All Copyrights Reserved.
            <br />
              Developed by <span><a href="https://www.linkedin.com/in/milincjoshi">Milin Joshi</a></span>
        </div>
        <nav class="col-lg-3 col-lg-offset-2">
            <a class="col-lg-12" href="#">Mobile</a>
            <a class="col-lg-12"  href="#">About</a>
            <a class="col-lg-12"  href="#">Video Lectures</a>
            <a class="col-lg-12"  href="#">Send Feedback</a>
            <a class="col-lg-12"  href="#">Help</a>
        </nav>
            <div class="col-lg-3 pull-right">
                <a class="col-lg-12" href="https://www.facebook.com/groups/madhavclasses/">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                    <span>Facebook</span>
                </a>
                <a class="col-lg-12" href="https://www.instagram.com/madhav_classes/" target="_blank">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                    <span>Instagram</span>
                </a>
                <a class="col-lg-12" href="https://twitter.com/madhav_classes" target="_blank">
                    <i class="fa fa-twitter" aria-hidden="true"></i>
                    <span>Twitter</span>
                </a>
                <a class="col-lg-12" href="#">
                    <i class="fa fa-google-plus" aria-hidden="true"></i>
                    <span>Google+</span>
                </a>
                <a  class="col-lg-12" href="#">
                    <i class="fa fa-snapchat-ghost" aria-hidden="true"></i>
                    <span>Snapchat</span>
                </a>
            </div>
        
      </footer>
    <script>
        $(function () {
            $('a[href*=#]:not([href=#])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
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
</asp:Content>
