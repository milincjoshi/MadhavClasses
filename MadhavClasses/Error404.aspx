<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="MadhavClasses.Error404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>404 - Madhav Classes </title>
    <!--Bootstrap Links-->  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!--MainCSS Link-->
    <link href="../CSS/mainCSS.css" rel="stylesheet" />
   
</head>
<body style="background-image:url('Images/404.gif');background-size:cover cover;">
    <form id="form1" runat="server">
    <div class="col-lg-12" style="color:white; font-size:2em;">
        <div class="col-lg-2 col-lg-offset-8 margin5">
            <span> 404 </span> 
            <br />
            <span>
                You requested something that does not exist.
            </span>    
            <span>
                Go <a href="http://madhavclasses.com/">Home</a>.
            </span>
        </div>
       
    </div>
    </form>
</body>
</html>
