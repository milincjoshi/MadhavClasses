<%@ Page Title="" Language="C#" MasterPageFile="Guest.Master" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="MadhavClasses.Location" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <header class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12 border materialGreenWhite">
      <div class="page-header col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="fontJosefin fontSize3em  col-lg-12 col-md-12 col-sm-12 col-xs-12 ">Location</div>
      </div>
    </header>

    <!--Map-->
    <!--Map Script-->
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script>
        var myCenter1 = new google.maps.LatLng(21.164574, 72.812698);
        var myCenter2 = new google.maps.LatLng(21.175346, 72.808123);

        function initialize() {
            var mapProp1 = {
                center: myCenter1,
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var mapProp2 = {
                center: myCenter2,
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map1 = new google.maps.Map(document.getElementById("googleMap1"), mapProp1);
            var map2 = new google.maps.Map(document.getElementById("googleMap2"), mapProp2);

            var marker1 = new google.maps.Marker({
                position: myCenter1,
            });
            var marker2 = new google.maps.Marker({
                position: myCenter2,
            });

            marker1.setMap(map1);
            marker2.setMap(map2);

        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    <!--End Map Script-->
    <section class="col-lg-12 col-md-12 col-sm-12 col-xs-12 margin5">
      <div class="col-lg-offset-2 col-lg-3 col-md-offset-2 col-md-3 col-sm-12 col-xs-12">
          <div id="googleMap1" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="width:350px;height:250px;"></div>
          <p class="fontSizeOneHalfem col-lg-12 col-md-12 col-sm-12 col-xs-12">
               S-44, Silver Point Complex,<br /> Bhatar Road ,<br /> Opp Vidhya Bharti School, <br /> Surat, <br />Gujarat, India
          </p>
      </div>
      <div class="col-lg-offset-2 col-lg-3  col-md-offset-2 col-md-3 col-sm-12 col-xs-12">
          <div id="googleMap2" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin:auto;width:350px;height:250px;"></div>
          <p class="fontSizeOneHalfem col-lg-12 col-md-12 col-sm-12 col-xs-12">
              L-8, Surya Kiran Complex, <br />Near St Xavier School,<br /> Ghod Dod Road, <br />Surat, <br /> Gujarat, India
          </p>

      </div>
    </section>
    

    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCN2fJ5jIB8iyPqbjIAeUubLIbS7SzTpUg"></script>
</asp:Content>
