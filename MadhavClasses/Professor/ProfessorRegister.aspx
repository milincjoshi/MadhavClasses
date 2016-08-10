<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/ProfessorMaster.Master" AutoEventWireup="true" CodeBehind="ProfessorRegister.aspx.cs" Inherits="MadhavClasses.Professor.ProfessorRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-header">
        <h3>Student Registration</h3>
    </div>
    <div class="row">
        <div class="col-lg-4 col-lg-offset-4">

        <div class="panel panel-primary">
            <div class="panel-heading">Register</div>
            <div class="panel-body">
                <asp:TextBox ID="professor_email" runat="server" TextMode="Email" CssClass="form-control marginTop2" placeholder="Email" required/>
                <asp:TextBox ID="professor_password" runat="server" TextMode="Password" CssClass="form-control marginTop2" placeholder="Password" required/>
                <asp:Button ID="register" runat="server" CssClass="btn btn-default marginTop2" Text="Register" OnClick="register_Click" />
                <div class="col-lg-12">
                    <a class="pull-right" href="ProfessorLogin.aspx">Login</a>
                </div>
            </div>
        </div>
        </div>

    </div>
</body>
</asp:Content>
