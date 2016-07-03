<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="MadhavClasses.Student.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Madhav Classes</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!--Jquery-->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!--Bootstrap Links-->  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!--MainCSS Link-->
    <link href="../CSS/mainCSS.css" rel="stylesheet" /></head>
<body>
    <div class="page-header">
        <h3>Student Login</h3>
    </div>
    <form id="form1" runat="server">
    <div class="row">
        <div class="col-lg-4 col-lg-offset-4">

        <div class="panel panel-default">
            <div class="panel-heading">Login</div>
            <div class="panel-body">
                <asp:TextBox ID="student_email" runat="server" TextMode="Email" CssClass="form-control marginTop2" placeholder="Email" required/>
                <asp:TextBox ID="student_password" runat="server" TextMode="Password" CssClass="form-control marginTop2" placeholder="Password" required/>
                <asp:Button ID="register" runat="server" CssClass="btn btn-default marginTop2" Text="Login" OnClick="register_Click" />
                <asp:Label ID="invalid" runat="server" Text="Invalid Email/Password" CssClass="label label-danger" Visible="false" />
            </div>
        </div>
        </div>

    </div>
    </form>
</body>
</html>
