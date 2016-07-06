<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="SocialFeeds.aspx.cs" Inherits="MadhavClasses.SocialFeeds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Facebook
    <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6&appId=1632945703691493";
          fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));
        </script>
    <div style="width:100%;" class="fb-page" data-href="https://www.facebook.com/ClassesMadhav/" 
        data-tabs="timeline" data-small-header="false" 
        data-adapt-container-width="true" data-hide-cover="false" 
        data-show-facepile="true">
        <blockquote cite="https://www.facebook.com/ClassesMadhav/" class="fb-xfbml-parse-ignore">
            <a href="https://www.facebook.com/ClassesMadhav/">Madhav Classes</a>
        </blockquote>
    </div>
    End Facebook-->
    <!--Twitter-->
    <div class="col-lg-6 col-lg-offset-3">
        <a class="twitter-timeline" href="https://twitter.com/MilincJoshi">
            Tweets by MilincJoshi
        </a> 
        <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
    </div>
    <!--End Twitter-->
</asp:Content>
