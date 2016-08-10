<%@ Page Title="" Language="C#" MasterPageFile="Guest.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="MadhavClasses.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        html { height: 100%; }
        body { background: #FFF; font: 400 1.5em/1.5 "Droid Serif", serif; color: #111; text-align: center; height: 100%; }
        h1 { font: 700 2.8em/1.2 "Droid Sans", sans-serif; }
        h2 { font: 700 1.5em/1.5 "Droid Sans", sans-serif; margin: 1em 0; }
        #banner { background: url(Images/about.jpg) no-repeat fixed 0 0; background-size: cover; color: #fff; height: 100%; width: 100%; }
        #bannertext { width: 24em; position: fixed; top: 20%; left: 50%; border: .5em solid #fff; margin-left: -12em; padding: 2em 0; }
        #content { max-width: 28em; text-align: justify; margin: 0 auto; padding: 2em; }
        #content p { margin: 0 0 2em; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="banner">
	<div id="bannertext">
		<h1>About Madhav Classes</h1>
		<p>Finest Education since 2004</p>
	</div>
</div>

<div id="content">
	<h2>About us</h2>
    <p>
        Above four names were the parts of Inception of Madhav Classes. It all started at <i>Silver Point Complex, Bhatar Road, Surat</i>.
        Mahendra Joshi has just moved to Surat and was looking to coach student with his extensively high skills of langauge knowledge.
        He found out that these four girls were looking for a coach.
        And it all started.
        Since then Mahendra Joshi has been teaaching languages Sanksrit, Hindi, Gujarati to students from Grade 8 to 12.
        Madhav Classes has proved that it excels at every point. Students who have been a part of Madhav Classes has made history in Board Results, placing themselves
        in the top tier every time. Madhav Classes has constantly expanded its reach in Surat.
    </p>
</div>

<script>
    function EasyPeasyParallax() {
        scrollPos = $(this).scrollTop();
        $('#banner').css({
            'background-position': '50% ' + (-scrollPos / 4) + "px"
        });
        $('#bannertext').css({
            'margin-top': (scrollPos / 4) + "px",
            'opacity': 1 - (scrollPos / 250)
        });
    }
    $(document).ready(function () {
        $(window).scroll(function () {
            EasyPeasyParallax();
        });
    });
</script>   
</asp:Content>
