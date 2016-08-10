<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMaster.Master" AutoEventWireup="true" CodeBehind="ProfessorEditProfile.aspx.cs" Inherits="MadhavClasses.Professor.ProfessorEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
		<div class="col-lg-offset-1 col-lg-3 temp_border">
            <asp:Image CssClass="img-responsive round_border" Height="200" Width="200" ID="professor_profilepic" runat="server" ImageUrl="~/Images/person-icon.png" />
		    <asp:FileUpload ID="profile_pic" runat="server" />
        </div>
		<div class="col-lg-6  fontSize2em">
            <asp:Label ID="save_success" runat="server" CssClass="label label-success fontSize1em" Text="Saved Successfully" Visible="false"/>
            <!--First and last name-->
			<div class="row margin5">
                <div class="col-lg-12">
                    <span class="col-lg-1 glyphicon glyphicon-user"></span>
				    <div class="col-lg-5">
                        <asp:TextBox ID="professor_firstname" runat="server" CssClass="form-control" placeholder="First Name" />
				    </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="professor_lastname" runat="server" CssClass="form-control" placeholder="Last Name" />
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
                        <asp:TextBox ID="professor_email" runat="server" CssClass="form-control" placeholder="Email" />
                    </div>
				</div>
			</div>
            <!--End email-->
            <hr />
            <!--Email-->
			<div class="row margin2">
				<div class="col-lg-12">
                    <span class="col-lg-1 glyphicon glyphicon-envelope"></span>
                    <div class="col-lg-11">
                        <asp:TextBox ID="professor_username" runat="server" CssClass="form-control" placeholder="Email" />
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
                        <asp:TextBox ID="professor_phoneno" runat="server" CssClass="form-control" placeholder="Phone No" />
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
                        <asp:TextBox ID="professor_city" runat="server" CssClass="form-control" placeholder="City" />
                    </div>
				</div>
			</div>
            <!--End City-->
           <hr />
		    <!--State-->
			<div class="row margin2">
				<div class="col-lg-12">
                    <div class="col-lg-11 col-lg-offset-1">
                        <asp:TextBox ID="professor_state" runat="server" CssClass="form-control" placeholder="State" />
                    </div>
				</div>
			</div>
            <!--End State-->
            <hr />
		    <!--Country-->
			<div class="row margin2">
				<div class="col-lg-12">
                    <div class="col-lg-11 col-lg-offset-1">
                        <asp:TextBox ID="professor_country" runat="server" CssClass="form-control" placeholder="Country" />
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
                        <asp:TextBox ID="professor_about" TextMode="MultiLine" runat="server" CssClass="form-control" placeholder="About" />

                    </div>
				</div>
			</div>
            <!--End about-->
		    <!--save-->
			<div class="row margin2">
				<div class="col-lg-11 col-lg-offset-1 text-center center-block">
                    <asp:LinkButton OnClick="save_Click" ID="save" runat="server" Text="<i class='fa fa-floppy-o' aria-hidden='true'></i> Save" CssClass="btn btn-default "/>
				</div>
			</div>
            <!--End save-->
		
        </div>
	</div>
</asp:Content>
