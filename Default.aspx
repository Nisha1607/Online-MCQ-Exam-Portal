<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
</head>

<body style= "background-image:url('css/quiz.jpg'); margin-bottom: 550px;background-size: 1100px 510px; background-position:center;background-repeat:no-repeat;">
    <header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" asp-area="" asp-controller="Home" asp-action="Index" Style="margin-left:90px;font-size:24px;color:darkblue; font-family: verdana;">Online Quiz System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse" >
                    
                    <ul class="navbar-nav flex-grow-1">
                       
		         <form id="form1" runat="server"  align="center">
              
                            <asp:Button ID="Button1" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button1_Click" Text="Student Login" Width="150px" Style="margin-top:10px;margin-left:450px" />
                            <asp:Button ID="Button2" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button2_Click" Text="Teacher Login" Width="150px" Style="margin-top:10px;margin-left:10px" />
        
	                 </form>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
   

    <footer class="border-top footer text-muted" style=" position: absolute;
  bottom: 0;
  width: 100%;
  white-space: nowrap;
  line-height: 60px; ">
        <div class="container">
            &copy; 2021 - Online Quiz System - <a asp-controller="Home" asp-action="Privacy">Privacy</a>
        </div>
    </footer>
    <script src="~/lib/jquery/dist/jquery.min.js"></script>
    <script src="~/lib/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="~/js/site.js" asp-append-version="true"></script>
   
</body>
</html>
