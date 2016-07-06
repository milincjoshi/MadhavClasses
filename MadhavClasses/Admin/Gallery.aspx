<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MadhavClasses.Admin.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:TextBox ID="image_title" runat="server" CssClass="form-control" placeholder="Title" required/>
     
    <asp:FileUpload ID="file" runat="server" />
    <asp:Button id="upload_image" runat="server" Text="Upload" OnClick="upload_image_Click" />
     
    <br />

      <asp:DataList id="image_list" runat="server" RepeatDirection="Horizontal" OnItemCommand="image_list_ItemCommand"> 
        <ItemTemplate> 
                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-responsive"> 
                     <img class="col-lg-12 col-md-12 col-sm-12 col-xs-12 img-responsive" src="<%# Eval("image_path") %>"/> 
                 <span class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                     <%# Eval("image_date") %>
                 </span> 
                 <span class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                     <%# Eval("image_title") %>
                 </span>
                 <span>
                     <asp:Button runat="server" CommandName="cmd_original" CommandArgument="image_id" ID="btnOriginal" Text="Original" />
   
                 </span>
              </div> 
        </ItemTemplate> 
     </asp:DataList> 


</asp:Content>
