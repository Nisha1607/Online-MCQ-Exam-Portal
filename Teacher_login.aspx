<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_login.aspx.cs" Inherits="Teacher_login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--<style type="text/css">
       .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 224px;
        }
    </style>-->
    <link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/site.css" />
</head>
<body class="imgg">

	<header>
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
            <div class="container">
                <a class="navbar-brand" asp-area="" asp-controller="Home" asp-action="Index" Style="margin-left:90px;font-size:24px;color:darkblue; font-family: verdana;">Online Quiz System</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse">
                    
                    <ul class="navbar-nav flex-grow-1">
			 <form id="form1" runat="server">
                            <asp:Button ID="Button3" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button3_Click" Text="Student Login" Width="150px" Style="margin-top:10px;margin-left:400px" />
                            <asp:Button ID="Button4" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button4_Click" Text="Teacher Login" Width="150px" Style="margin-top:10px;margin-left:10px"/>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
   
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="Salmon" BorderStyle="None" Height="50" server="" Width="100%">
             <center><asp:Label runat="server" Text="Teacher Login" Font-Size="X-Large" ForeColor="White"></asp:Label></center></asp:Panel>
            <br />
            <br />
            <center>
             <table class="auto-style1" >
                <tr>
                    <td class="auto-style2">
                        Teacher Name</td>
                    <td> <asp:TextBox ID="id" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" ErrorMessage="Please Enter Your Username"  Width="219px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">
                        Password</td>
                    <td>
                        <asp:TextBox ID="pass" TextMode="Password" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" CssClass="auto-style1" Width="211px"  ></asp:TextBox></td>
                    
                </tr>
            </table>
                </center>
             <p>
            <center>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" Width="100px" /></center>
        </p>
        </div>
         <center>
	<asp:Button ID="Button1" runat="server" Text="Home" BackColor="RoyalBlue" OnClick="gotohome" Width="291px" CssClass="auto-style4" Height="50px"></asp:Button>
                </center>
    </form>
</body>
</html>
