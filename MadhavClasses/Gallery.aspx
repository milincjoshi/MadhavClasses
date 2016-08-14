<%@ Page Title="" Language="C#" MasterPageFile="Guest.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MadhavClasses.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
.demo-card-image.mdl-card {
  width: 256px;
  height: 256px;
 // background: url('../assets/demos/image_card.jpg') center / cover;
}
.demo-card-image > .mdl-card__actions {
  height: 52px;
  padding: 16px;
  background: rgba(0, 0, 0, 0.2);
}
.demo-card-image__filename {
  color: #fff;
  font-size: 14px;
  font-weight: 500;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="mdl-grid">
    <asp:ListView ID="image_gallery" runat="server">
        <ItemTemplate>
            <div class="mdl-cell mdl-cell--2-col demo-card-image mdl-card mdl-shadow--4dp" style="background:url('<%#Eval("image_path") %>') center / cover;">
              <div class="mdl-card__title mdl-card--expand"></div>
              <div class="mdl-card__actions">
                <span class="demo-card-image__filename">Image.jpg</span>
              </div>
             </div>

        </ItemTemplate>
    </asp:ListView>
</div>


    
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body"></div>
                </div>
            </div>
        </div>
    <script>
        $(document).ready(function () {
          $('img').on('click', function () {
            var src = $(this).attr('src');
            var img = '<img height="80%" width="80%" src="' + src + '" class="img-responsive material-shadow--4dp"/>';
            $('#myModal').modal();
            $('#myModal').on('shown.bs.modal', function () {
                $('#myModal .modal-body').html(img);
                $('#myModal .modal-body').addClass("center_element");
                $('#myModal .modal-body').addClass("colorPitchBlackBG");
                $('#myModal .modal-body').addClass("material-shadow--4dp");

            });
            $('#myModal').on('hidden.bs.modal', function () {
                $('#myModal .modal-body').html('');
            });
          });
        })
    </script>
</asp:Content>
