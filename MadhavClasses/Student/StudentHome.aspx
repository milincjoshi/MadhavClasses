<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="MadhavClasses.Student.StudentHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
        
        <div class="col-lg-9">
            
        </div>

        <!--Notifications-->
        <div class="col-lg-3 primary_text">
            <h5 class="font">
                <i class="fa fa-bell" aria-hidden="true"></i>
                Notifications
            </h5>
            <hr style="border:solid 1px white;" />
            <asp:ListView ID="doc_listView" runat="server">
            <ItemTemplate>
                <div class="col-lg-12 fontRoboto" >
                    <span class="col-lg-12">
                         <%# Eval("document_uploadedby") %>
                        <span class="secondary_text">
                            uploaded
                        </span> 
                    
                        <span>
                             <%# Eval("document_title") %>
                        </span>

                    </span>

                     

                    <span class=" col-lg-6 pull-left">
                        <asp:LinkButton ID="LinkButton2" runat="server" Text="Download" OnClick="LinkButton2_Click"
                        CommandArgument='<%# Eval("document_id") %>'>
                        </asp:LinkButton>
                    </span>

                    <span class="col-lg-6">
                        <span class="pull-right hint_text">
                             <%# Eval("document_date") %>
                             <%# Eval("document_time") %>

                        </span>
                    </span>
                </div> 
                  <hr style="border:solid 1px white;" />
           
            </ItemTemplate>
        </asp:ListView> 
        </div>
        

        </div>   
    </div>
</asp:Content>
