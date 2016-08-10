<%@ Page Title="" Language="C#" MasterPageFile="Guest.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MadhavClasses.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <header class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12 border">
      <div class="page-header col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="fontJosefin fontSize3em  col-lg-12 col-md-12 col-sm-12 col-xs-12 ">Contact us</div>
      </div>
    </header>


    <section>
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border margin2">
              <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 col-lg-offset-3">
                  <div class="panel panel-primary">
                      <div class="panel-heading">Leave us a Message</div>
                      <div class="panel-body">
                          <asp:TextBox ID="FirstName" runat="server" CssClass="form-control marginTop2" placeholder="First Name" />
                          <asp:TextBox ID="LastName" runat="server" CssClass="form-control marginTop2" placeholder="Last Name" />
                          <asp:TextBox ID="Email" runat="server" TextMode="Email" CssClass="form-control marginTop2" placeholder="Email"/>
                          <asp:TextBox ID="Subject" runat="server" CssClass="form-control marginTop2" placeholder="Subject" />
                          <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" CssClass="form-control marginTop2" placeholder="Message"/>
                          <asp:Button ID="Send" runat="server" Text="Send" CssClass="btn btn-primary marginTop2" OnClick="Send_Click" />
                      </div>
               </div>
              </div>
               <!-- Update your html tag to include the itemscope and itemtype attributes. -->

      </div>
    </section>
</asp:Content>
