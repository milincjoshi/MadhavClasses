<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentExploreDocuments.aspx.cs" Inherits="MadhavClasses.Student.StudentExploreDocuments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
    <script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">

    <div class="col-lg-3">
        <asp:TextBox ID="searchBox" runat="server" CssClass="form-control" placeholder="Search"/>
    </div>
    <div class="col-lg-2">
        <asp:Button ID="search" runat="server" CssClass="btn btn-primary" Text="Search" OnClick="search_Click" />
    </div>
    <div class="col-lg-12 margin3">
        <asp:Label ID="results_found" runat="server" Visible="false" />
    </div>
    <!--List view-->
    <div class="col-lg-12">
        <asp:ListView ID="doc_listView" runat="server">
            <ItemTemplate>
                <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6 fontSize1em padding1 margin_2 mdl-shadow--2dp" style="background-color:#EEEEEE;"> 
                    <span class="col-lg-12">
                        <%# Eval("document_title") %>
                    </span>
                    <span class="col-lg-12">
                        <%# Eval("document_desc") %>
                    </span>
                    <span class="col-lg-12">
                        <%# Eval("document_date") %>
                        <%# Eval("document_time") %>
                    </span>
                    <span class="col-lg-12">
                        <%# Eval("document_uploadedby") %>
                    </span>
                    <span class="col-lg-12">
                        <asp:LinkButton ID="LinkButton" runat="server" Text="Download" OnClick="lnkDownload_Click"
                        CommandArgument='<%# Eval("document_id") %>'>
                        </asp:LinkButton>
                    </span>                
            </div> 
                 
            </ItemTemplate>
        </asp:ListView> 

    </div>
</div>

</asp:Content>
