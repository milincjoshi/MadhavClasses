<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MadhavClasses.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content CssClass="height100 margin-5" ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <section class="height100" style="background-image:url('Images/homepage2.jpg'); background-size:cover; background-repeat:no-repeat;">
        <div class="mdl-grid">
          <div class="mdl-cell mdl-cell--8-col"></div>
          <div class="mdl-cell mdl-cell--4-col margin10">
               <span class="colorWhiteFront fontSize4em font_chalk">
                    Come Join Finest Education in Surat.
                </span>
          </div>
        </div>

    </section>   
  
     <section id="icon_text1" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center center-block border margin1">
         <div class="mdl-grid">
            
            <div class="mdl-cell mdl-cell--4-col mdl-shadow--4dp colorBluishMaterialBG colorGreyMaterialFG" >
                <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border padding10" src="images/openbook.png" />
                <h4 class="margin10">
                    Like the tradition goes, we teach students with books.
                </h4>
            </div>
            <div class="mdl-cell mdl-cell--4-col mdl-shadow--4dp colorGreenMaterialBG colorGreyMaterialFG" >
                 <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border padding10"  src="images/computer.png" />
                <h4 class="margin10">
                    However we also have one foot in Modern Technology.
                </h4>
            </div>
            <div class="mdl-cell mdl-cell--4-col mdl-shadow--4dp colorRedMaterialBG  colorGreyMaterialFG" >
                 <img class="col-lg-8 col-md-12 col-sm-12 col-xs-12 img-rounded border padding10"  src="images/mobile.png" />
                <h4 class="margin10">
                    We try our best to keep up with the Technology.
                </h4>
            </div>
          </div>
         

    </section>
     <!--Founder-->
     <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 margin5 padding5" style="background-color:#37474f;color:#fff;">
            <div class="mdl-grid">        
                <div class="mdl-cell mdl-cell--8-col" >
                      <p class="mdl-typography--headline mdl-typography--font-thin margin10">
                        Founded by Mahendra Joshi, its been almost 11 years at Silver Point, Bhatar Road, Surat since Madhav Classes has started its journey.
                        Since then, Mahendra Joshi has never looked back. Teaching Languages mainly Sanskrit, Hindi, Gujarati to kids for Grade 8 to 12,
                        Madhav Classes has proved that it excels at every point. Students who have been a part of Madhav Classes has made history in Board Results, placing themselves
                        in the top tier every time. Madhav Classes has constantly expanded its reach in Surat. 
                     </p> 
                </div>
                <div class="mdl-cell mdl-cell--4-col mdl-shadow--4dp colorBluishMaterialBG colorGreyMaterialFG" >
                    <img class="mdl-cell mdl-cell--12-col mdl-shadow--4dp" src="images/MahendraJoshi.jpg" />
                </div>

            </div> 
        
      </section>
      <!--End Founder-->
    

    <%--<footer class="footer fontSizeOneHalfem img-rounded col-lg-12 margin5 colorBlackBackground colorWhiteFront padding5" style="">
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
                    <i  class="fa fa-google-plus" aria-hidden="true"></i>
                    <span>Google+</span>
                </a>
                <a  class="col-lg-12" href="#">
                    <i class="fa fa-snapchat-ghost" aria-hidden="true"></i>
                    <span>Snapchat</span>
                </a>
            </div>
        
      </footer>
   --%>
</asp:Content>
