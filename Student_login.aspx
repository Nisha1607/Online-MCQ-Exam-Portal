<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_login.aspx.cs" Inherits="Student_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" href="lib/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/site.css" />
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
                <div class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse"  >
                    
                    <ul class="navbar-nav flex-grow-1">
                       
		        <form id="form1" runat="server"  align="right">
              
                            <asp:Button ID="Button3" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button3_Click" Text="Student Login" Width="150px" Style="margin-top:10px;margin-left:450px" />
                            <asp:Button ID="Button4" runat="server" BackColor="SeaGreen" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button4_Click" Text="Teacher Login" Width="150px" Style="margin-top:10px;margin-left:10px"/>
       
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    
        <div>
           <center><asp:Label ID="Label1" runat="server" BackColor="Salmon" BorderStyle="None" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="100px" Text="Student Login" Width="100%" Style="margin:auto;width:50%;padding:10px"></asp:Label></center> 
        </div>
	<p>&nbsp; &nbsp;</p>
	<div Style="margin:auto;width:20%;border:3px solid black;padding:10px">
        
        <center><p>
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="Susername" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="Spassword" runat="server" TextMode="Password" OnTextChanged="Spassword_TextChanged"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <p>
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </p></center>
	</div>

         <center>
	<p>&nbsp; &nbsp;</p>
	<asp:Button ID="Button2" runat="server" Text="Home" BackColor="RoyalBlue" OnClick="gotohome" Width="291px" CssClass="auto-style4" Height="50px"></asp:Button>
                </center>
    </form>
</body>
</html>
