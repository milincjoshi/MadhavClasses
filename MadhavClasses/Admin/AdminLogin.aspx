<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MadhavClasses.Admin.AdminLogin" %>

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
    <link href="../CSS/mainCSS.css" rel="stylesheet" />
    <link rel="stylesheet" href="/font-awesome/css/font-awesome.css" />
    
</head>
<body class="container colorGreyMaterialBG">
    <div class="page-header">
        <h3>Welcome Admin</h3>
    </div>
    <form id="form1" runat="server">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Login
                </div>
                <div class="panel-body">
                    <div class="col-lg-12 marginTop2">
                        <div class="col-lg-1 fontSizeOneHalfem">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </div>
                        <div class="col-lg-10">
                            <asp:TextBox ID="email" runat="server" TextMode="Email" CssClass="form-control" placeholder=" Email" required />
                        </div>
                    </div>
                    <div class="col-lg-12 marginTop2">
                        <div class="col-lg-1 fontSizeOneHalfem">
                            <i class="fa fa-key" aria-hidden="true"></i>
                        </div>
                        <div class="col-lg-10">
                            <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" required />
                        </div>
                    <div class="col-lg-12 marginTop2">  
                        <asp:Button ID="login" runat="server" Text="Login" CssClass="btn pull-right" OnClick="login_Click" />
                    </div>
                    <div class="col-lg-12 marginTop2">  
                        <a href="#" >Forgot Password?</a>
                    </div>
                   
                </div>
            </div>

        </div>
    
    </div>
    </form>
</body>
</html>
