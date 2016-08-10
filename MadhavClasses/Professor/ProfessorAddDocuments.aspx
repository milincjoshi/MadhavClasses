<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMaster.Master" AutoEventWireup="true" CodeBehind="ProfessorAddDocuments.aspx.cs" Inherits="MadhavClasses.Professor.ProfessorAddDocuments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.indigo-pink.min.css">
    <script defer src="https://code.getmdl.io/1.1.3/material.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="col-lg-12">
    <h4>
        Upload a Document
    </h4>
    <div class="col-lg-4">
        <asp:TextBox ID="doc_title" runat="server" CssClass="form-control margin3" placeholder="Title" required/>
        <asp:TextBox ID="doc_desc" runat="server" CssClass="form-control margin3" placeholder="Description" TextMode="MultiLine" required/>
     
        <asp:FileUpload ID="file" runat="server" CssClass="margin3 btn" />
        <asp:Button CssClass="margin3 btn" id="upload_doc" runat="server" Text="Upload" OnClick="upload_doc_Click" />

    </div>
</div>      
<div class="col-lg-12">


    <asp:ListView ID="doc_listView" runat="server">
        <ItemTemplate>
            <div class="col-lg-2 col-md-3 col-sm-6 col-xs-6 fontSize1em padding1 margin_2 mdl-shadow--2dp"> 
                <div class="col-lg-12">
                    <div class="col-lg-12"><strong><%# Eval("document_title") %></strong></div>
                    <div class="col-lg-12 margin10"><%# Eval("document_desc") %></div>
                    <div class="col-lg-6 margin10"><%# Eval("document_date") %></div>
                    <div class="col-lg-6 margin10"><%# Eval("document_time") %></div>
                </div>
                <strong>
                    <span class="col-lg-12 col-md-12 col-sm-12 col-xs-12  marginTop2"></span> 
                </strong>
                <span class="col-lg-12 col-md-12 col-sm-12 col-xs-12 margin4"></span> 
                <span onclick="">
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"
                        CommandArgument='<%# Eval("document_id") %>'></asp:LinkButton>
                </span>
                
            </div> 
        </ItemTemplate>
    </asp:ListView>

</div>     


</asp:Content>
