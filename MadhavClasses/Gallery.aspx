﻿<%@ Page Title="" Language="C#" MasterPageFile="Guest.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MadhavClasses.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header text-center">
        <h3>Wall of Fame</h3>
    </div>
    <!--
    <asp:DataList id="image_list" runat="server" RepeatDirection="Horizontal" RepeatColumns="6"> 
        <ItemTemplate> 
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
                <img class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-responsive img-rounded" src=""/> 
            </div> 
            <span class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center marginTop2"></span> 
        </ItemTemplate> 
    </asp:DataList> 
    -->
    <asp:ListView ID="image_listView" runat="server">
        <ItemTemplate>
            <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6"> 
                <img class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-responsive img-rounded  mdl-shadow--4dp" src="<%# Eval("image_path") %>"/> 
                <span class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center marginTop2"><%# Eval("image_title") %></span> 
            </div> 
        </ItemTemplate>
    </asp:ListView>
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
    <!--End Modal Script-->
</asp:Content>
