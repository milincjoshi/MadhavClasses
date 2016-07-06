<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMaster.Master" AutoEventWireup="true" CodeBehind="ProfessorProfile.aspx.cs" Inherits="MadhavClasses.Professor.ProfessorProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-offset-1 col-lg-3">
            <asp:Image CssClass="img-responsive" ID="professor_profilepic" runat="server" ImageUrl="~/Images/person-icon.png" />
        </div>
        <div class="col-lg-8 fontSizeOneHalfem">
            <!--First and last name-->
            <div class="row margin5">
                <div class="col-lg-12">

                    <div class="col-lg-3 col-lg-offset-1">
                        <asp:Label ID="professor_firstname" runat="server" Text="First Name" />
                    </div>
                    <div class="col-lg-8">
                        <asp:Label ID="professor_lastname" runat="server" Text="Last Name" />
                    </div>
                </div>
            </div>
            <!--End first and last name-->
            <hr />
            <!--Email-->
            <div class="row margin2">
                <div class="col-lg-12">
                    <span class="col-lg-1 glyphicon glyphicon-envelope"></span>
                    <div class="col-lg-11">
                        <asp:Label ID="professor_email" runat="server" Text="Email" />
                    </div>
                </div>
            </div>
            <!--End email-->
            <hr />
            <!--Phone no-->
            <div class="row margin2">
                <div class="col-lg-12">
                    <span class="col-lg-1 glyphicon glyphicon-phone"></span>
                    <div class="col-lg-11">
                        <asp:Label ID="professor_phoneno" runat="server" Text="Phone No" />
                    </div>
                </div>
            </div>
            <!--End Phone no-->
            <hr />
            <!--City-->
            <div class="row margin2">
                <div class="col-lg-12">
                    <span class="col-lg-1 glyphicon glyphicon-home"></span>
                    <div class="col-lg-11">
                        <asp:Label ID="professor_city" runat="server" Text="City" />
                    </div>
                </div>
            </div>
            <!--End City-->
            <hr />
            <!--State-->
            <div class="row margin2">
                <div class="col-lg-12">
                    <div class="col-lg-11 col-lg-offset-1">
                        <asp:Label ID="professor_state" runat="server" Text="State" />
                    </div>
                </div>
            </div>
            <!--End State-->
            <hr />
            <!--Country-->
            <div class="row margin2">
                <div class="col-lg-12">
                    <div class="col-lg-11 col-lg-offset-1">
                        <asp:Label ID="professor_country" runat="server" Text="Country" />
                    </div>
                </div>
            </div>
            <!--End Country-->
            <hr />
            <!--about-->
            <div class="row margin2">
                <div class="col-lg-12">
                    <span class="col-lg-1 glyphicon glyphicon-info-sign"></span>

                    <div class="col-lg-11">
                        <asp:Label ID="professor_about" runat="server" Text="About" />
                    </div>
                </div>
            </div>
            <!--End about-->

        </div>
    </div>

</asp:Content>
