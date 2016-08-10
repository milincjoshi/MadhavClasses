<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="SocialFeeds.aspx.cs" Inherits="MadhavClasses.SocialFeeds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Facebook-->
    <div id="fb-root"></div>
    <script>
        (function (d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=1632945703691493";
          fjs.parentNode.insertBefore(js, fjs);
        }
        (document, 'script', 'facebook-jssdk'));
    </script>
    <!--main container-->
    <div class="col-lg-12">
        <!--Facebook Feed-->
        <div class="col-lg-3 pull-left">
             <div 
                class="fb-page" 
                data-href="https://www.facebook.com/ClassesMadhav/" 
                data-tabs="timeline, events, messages" 
                data-small-header="false"
                data-height="100%"
                height="100%"
                data-width="500"
                data-adapt-container-width="true" 
                data-hide-cover="false" 
                data-show-facepile="true">
                    <blockquote 
                        cite="https://www.facebook.com/ClassesMadhav/" 
                        class="fb-xfbml-parse-ignore">
                            <a href="https://www.facebook.com/ClassesMadhav/">
                                Madhav Classes
                            </a>
                    </blockquote>
                </div>
        </div>
        <!--Messenger Code-->
        <div class="col-lg-2 col-lg-offset-2">
             <img class="col-lg-12 center_element center-block text-center" src="Images/messenger_code.png" />
             <span class="text-center center-block">
                 Messenger Code
             </span>
        </div>
        <!--twitter Code-->
        <div class="col-lg-3 pull-right">
            <a class="twitter-timeline" href="https://twitter.com/madhav_classes">
                Tweets by MilincJoshi
            </a> 
            <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
        </div>

    </div>

</asp:Content>
