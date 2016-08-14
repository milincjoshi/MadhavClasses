<%@ Page Title="" Language="C#" MasterPageFile="Guest.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MadhavClasses.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header class="text-center col-lg-12 col-md-12 col-sm-12 col-xs-12 border materialGreenWhite">
      <div class="page-header col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="fontJosefin fontSize3em  col-lg-12 col-md-12 col-sm-12 col-xs-12 ">Contact us</div>
      </div>
    </header>
    <section>
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border margin3">
              <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 col-lg-offset-3">
                  <div class="panel panel-primary">
                      <div class="panel-heading">Leave us a Message</div>

                       <!--First Name-->
                      <div class="col-lg-12">
                           <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <asp:TextBox ID="FirstName" runat="server" CssClass="mdl-textfield__input" />                       
                                <label class="mdl-textfield__label" for="sample3">First Name...</label>
                           </div>
                      </div>
                       <!--End First Name-->
                        <!--Last Name-->
                    <div class="col-lg-12">
                       <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <asp:TextBox ID="LastName" runat="server" CssClass="mdl-textfield__input" />                       
                           <label class="mdl-textfield__label" for="sample3">Last Name...</label>
                       </div>
                    </div>
                       <!--End Last Name-->
                      <!-- Email-->
                    <div class="col-lg-12">
                       <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                           <asp:TextBox ID="Email" runat="server" TextMode="Email" CssClass="mdl-textfield__input" />                       
                           <label class="mdl-textfield__label" for="sample3">Email...</label>
                       </div>
                     </div>
                        <!--End Email-->
                      <!--Subject-->
                    <div class="col-lg-12">
  
                       <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <asp:TextBox ID="Subject" runat="server" CssClass="mdl-textfield__input" />                       
                         <label class="mdl-textfield__label" for="sample3">Subject...</label>
                       </div>
                    </div>
                           <!--End Subject-->
                      <!--Message-->
                      <div class="col-lg-12">
                        <div class="mdl-textfield mdl-js-textfield">
                         <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" CssClass="mdl-textfield__input" />                       
                         <label class="mdl-textfield__label" for="sample5">Text lines...</label>
                      </div>
                      </div>
                       <!--End Message-->
                     <div class="col-lg-12">
                      <asp:Button ID="send" runat="server" CssClass="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" Text="Send" OnClick="Send_Click" />
                     </div>                  
               </div>
              </div>
               <!-- Update your html tag to include the itemscope and itemtype attributes. -->

      </div>
    </section>

</asp:Content>
